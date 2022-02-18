#-----------------------------------------------------------------------------
# This file is part of the 'Camera link gateway'. It is subject to
# the license terms in the LICENSE.txt file found in the top-level directory
# of this distribution and at:
#    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
# No part of the 'Camera link gateway', including this file, may be
# copied, modified, propagated, or distributed except according to the terms
# contained in the LICENSE.txt file.
#-----------------------------------------------------------------------------

import pyrogue as pr

import numpy as np
import click

class DacSigGenLoader(pr.Device):
    def __init__(self,DacSigGen=None,**kwargs):
        super().__init__(**kwargs)

        self.DacSigGen = DacSigGen

        self.add(pr.LocalVariable(
            name    = 'Frequency',
            typeStr = 'Float[np]',
            units   = 'Hz',
            value   = 250.E+6,
        ))

        for i in range(8):

            self.add(pr.LocalVariable(
                name    = f'Amplitude[{i}]',
                typeStr = 'Int16[np]',
                units   = 'Counts',
                value   = 30000,
            ))

            self.add(pr.LocalVariable(
                name    = f'Phase[{i}]',
                typeStr = 'Float[np]',
                units   = 'degrees',
                value   = (i%4)*90.0,
            ))

        self._smplRate    = 5.0E+9 # Units of Hz
        self._timeBin     = (1.0/self._smplRate) # Units of ns
        self.smplPerCycle = 16     # Samples per cycle
        self.ramDepth     = 2**10  # RAM depth

        @self.command()
        def LoadSingleTones():
            # Calculate the number of point with respect to 1 unit interval
            length = int(self._smplRate/self.Frequency.value())

            # Find an integer multiple of unit interval with respect to # of sample per clock cycle
            wordLength = 1
            for i in range(1,(self.ramDepth//self.smplPerCycle)+1):
                if (i*length)%self.smplPerCycle == 0:
                    wordLength = (i*length)

            ## Check if couldn't find integer multiple
            if wordLength%self.smplPerCycle != 0:
                click.secho('Unable to find an integer multiple of unit interval with respect to # of sample per clock cycle', fg='red')
                return

            # Loop through the channels
            for ch in range(8):

                # Calculate angular frequency & phase
                w   = 2*np.pi*self.Frequency.value()
                phi = self.Phase[ch].value()*np.pi/180.0

                # Load the waveforms data
                for t in range(wordLength):

                    # Calculate the value
                    timeStep = float(t)*self._timeBin
                    value    = float(self.Amplitude[ch].value())*np.sin(w*timeStep + phi)

                    # Update only the shadow variable value (write performance reasons)
                    self.DacSigGen.Waveform[ch].set(value=int(value),index=t,write=False)

                # Push all shadow variables to hardware
                self.DacSigGen.Waveform[ch].write()

            # Update the BufferLength register to be normalized to smplPerCycle (zero inclusive)
            self.DacSigGen.BufferLength.set((wordLength//self.smplPerCycle)-1)

            # Toggle flags (if flags already active)
            self.DacSigGen.RefreshDacFsm()
