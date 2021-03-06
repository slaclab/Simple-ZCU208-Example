#-----------------------------------------------------------------------------
# This file is part of the 'axi-soc-ultra-plus-core'. It is subject to
# the license terms in the LICENSE.txt file found in the top-level directory
# of this distribution and at:
#    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
# No part of the 'axi-soc-ultra-plus-core', including this file, may be
# copied, modified, propagated, or distributed except according to the terms
# contained in the LICENSE.txt file.
#-----------------------------------------------------------------------------

import rogue.interfaces.stream as ris
import pyrogue as pr
import numpy as np
import math

import rogue
rogue.Version.minVersion('5.13.0')

# Class for streaming RX
class DspDbgProcessor(pr.DataReceiver):
    # Init method must call the parent class init
    def __init__( self,
            smplRate   = (312.5E+6/64.0), # Units of Hz
            hidden     = True,
        **kwargs):
        pr.Device.__init__(self, hidden=hidden, **kwargs)
        ris.Slave.__init__(self)

        self._enableOnStart = True

        # Configurable variables
        self._maxSize  = 2**10
        self._smplRate = smplRate
        self._timeBin  = (1.0E+6/self._smplRate) # units of microsec
        self._maxAve   = 4

        # Init variables
        self._freqBin  = ((0.5E+3/self._timeBin)/float(self._maxSize>>1)) # Units of kHz
        self._adcLsb   = 500.0/float(2**15) # units of mV
        self._idx      = 0
        self._aveSize  = 1
        self._real     = np.zeros(shape=self._maxSize, dtype=np.int16, order='C')
        self._imag     = np.zeros(shape=self._maxSize, dtype=np.int16, order='C')

        # Calculate the time/frequency x-axis arrays
        timeSteps = np.linspace(0, self._timeBin*(self._maxSize-1), num=self._maxSize)
        freqSteps = np.linspace(0, self._freqBin*((self._maxSize>>1)-1), num=(self._maxSize>>1))

        self.add(pr.LocalVariable(
            name        = 'RxEnable',
            description = 'Frame Rx Enable',
            value       = False,
        ))

        self.add(pr.LocalVariable(
            name         = 'FrameCount',
            description  = 'Frame Rx Counter',
            value        = 0,
            pollInterval = 1,
        ))

        self.add(pr.LocalVariable(
            name         = 'ErrorCount',
            description  = 'Frame Error Counter',
            value        = 0,
            pollInterval = 1,
        ))

        self.add(pr.LocalVariable(
            name         = 'ByteCount',
            description  = 'Byte Rx Counter',
            value        = 0,
            pollInterval = 1,
        ))

        self.add(pr.LocalVariable(
            name        = 'Time',
            description = 'Time steps (ns)',
            typeStr     = 'Float[np]',
            value       = timeSteps,
            hidden      = True,
        ))

        self.add(pr.LocalVariable(
            name        = 'Real',
            description = 'Real Data Frame Container',
            typeStr     = 'Int16[np]',
            value       = np.zeros(shape=self._maxSize, dtype=np.int16, order='C'),
            hidden      = True,
        ))

        self.add(pr.LocalVariable(
            name        = 'Imag',
            description = 'Imaginary Data Frame Container',
            typeStr     = 'Int16[np]',
            value       = np.zeros(shape=self._maxSize, dtype=np.int16, order='C'),
            hidden      = True,
        ))

        self.add(pr.LocalVariable(
            name        = 'Freq',
            description = 'Freq steps (ns)',
            typeStr     = 'Float[np]',
            value       = freqSteps,
            hidden      = True,
        ))

        self.add(pr.LocalVariable(
            name        = 'Magnitude',
            description = 'Magnitude Frame Container',
            typeStr     = 'Float[np]',
            value       = np.zeros(shape=self._maxSize, dtype=np.float, order='C'),
            hidden      = True,
        ))

        self.add(pr.LocalVariable(
            name        = 'Phase',
            description = 'Phase Frame Container',
            typeStr     = 'Float[np]',
            value       = np.zeros(shape=self._maxSize, dtype=np.float, order='C'),
            hidden      = True,
        ))

        self.add(pr.LocalVariable(
            name        = 'FftAveraging',
            description = 'Number of FFTs to average together',
            localSet    = self._fftAveraging,
            mode        = 'RW',
            typeStr     = 'UInt12',
            value       = self._maxAve,
            minimum     = 1,
            maximum     = self._maxAve,
        ))

        self._mag = np.zeros(shape=[self._maxAve,(self._maxSize>>1)], dtype=np.float, order='C')

    def _fftAveraging(self,value,changed):
        if changed:
            self.FftAveraging.set(int(value))
            self.rstFftAveraging()

    def rstFftAveraging(self):
        self._idx     = 0
        self._aveSize = 1

    def running_mean(self,x):
        # Calculate running average
        retVar = np.sum(x[:self._aveSize], axis=0, dtype=np.float)/float(self._aveSize)

        # Increment counters
        if (self._idx == self.FftAveraging.get()-1):
            self._idx = 0
        else:
            self._idx += 1
        if (self._aveSize != self.FftAveraging.get()):
            self._aveSize += 1

        # Return the results
        return retVar

    # Method which is called when a frame is received
    def process(self,frame):
        # Get payload size (int16)
        size = (frame.getPayload() >>1)

        # Check if too big
        size = self._maxSize<<1 if (size >= self._maxSize<<1) else size

        # To access the data we need to create a byte array to hold the data
        fullData = bytearray(size<<1)

        # Next we read the frame data into the byte array, from offset 0
        frame.read(fullData,0)

        # Get data from frame
        data = np.frombuffer(fullData, dtype='int16', count=size)

        # Parse the data for real/imag
        size = (len(data)>>1)
        for i in range(size):
            self._real[i] = data[2*i+0]
            self._imag[i] = data[2*i+1]

        # Update local variables
        self.Real.set(self._real,write=True)
        self.Imag.set(self._imag,write=True)

        # Calculate the FFT (only using REAL waveoform)
        freq = np.fft.fft(self._real)/float(self._maxSize)
        freq = freq[range(self._maxSize>>1)]

        # Prevent warning message when for divide by zero encountered in log10
        # Checking for inf later to fix this in the display
        np.seterr(divide = 'ignore')

        # Calculate the average magnitude
        mag = 20.0*np.log10(np.abs(freq)/32767.0) # Units of dBFS
        if sum(np.isinf(mag)) == 0:
            self._mag[self._idx] = mag
            magnitude = self.running_mean(self._mag)
            self.Magnitude.set(magnitude,write=True)
