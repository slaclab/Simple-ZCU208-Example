#-----------------------------------------------------------------------------
# This file is part of the 'SPACE SMURF RFSOC'. It is subject to
# the license terms in the LICENSE.txt file found in the top-level directory
# of this distribution and at:
#    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
# No part of the 'SPACE SMURF RFSOC', including this file, may be
# copied, modified, propagated, or distributed except according to the terms
# contained in the LICENSE.txt file.
#-----------------------------------------------------------------------------

import time

import rogue
import rogue.interfaces.stream as stream
import rogue.utilities.fileio

import pyrogue as pr
import pyrogue.protocols
import pyrogue.utilities.fileio
import pyrogue.utilities.prbs

import simple_zcu208_example                 as rfsoc
import axi_soc_ultra_plus_core.rfsoc_utility as rfsoc_utility

rogue.Version.minVersion('5.10.0')

class Root(pr.Root):
    def __init__(self,
                 ip          = '10.0.0.200', # ETH Host Name (or IP address)
                 defaultFile = None,
                 **kwargs):

        # Pass custom value to parent via super function
        super().__init__(**kwargs)

        # Local Variables
        self.defaultFile = defaultFile

        # File writer
        self.dataWriter = pr.utilities.fileio.StreamWriter()
        self.add(self.dataWriter)

        ##################################################################################
        ##                              Register Access
        ##################################################################################

        # Start a TCP Bridge Client, Connect remote server at 'ethReg' ports 9000 & 9001.
        self.tcpReg = rogue.interfaces.memory.TcpClient(ip,9000)

        # Added the RFSoC HW device
        self.add(rfsoc.XilinxZcu208(
            memBase    = self.tcpReg,
            offset     = 0x04_0000_0000, # Full 40-bit address space
            expand     = True,
        ))

        ##################################################################################
        ##                              Data Path
        ##################################################################################

        # Connect to ring buffer streams (port 10000+512*lane+2*tdest)
        self.ringBufferAdc = [stream.TcpClient(ip,10000+(512*0)+2*(i+0))  for i in range(8)]
        self.ringBufferDac = [stream.TcpClient(ip,10000+(512*0)+2*(i+16)) for i in range(8)]
        self.ringBufferRxDbg = stream.TcpClient(ip,10512) # Starting Stream TcpServer at Port=10512 and Port=10513 for DMA[1][0]
        self.ringBufferTxDbg = stream.TcpClient(ip,10514) # Starting Stream TcpServer at Port=10512 and Port=10513 for DMA[1][0]

        # Create stream processors
        self.processorAdc = [rfsoc_utility.RingBufferProcessor(name=f'AdcProcessor[{i}]',sampleRate=5.0E+9) for i in range(8)]
        self.processorDac = [rfsoc_utility.RingBufferProcessor(name=f'DacProcessor[{i}]',sampleRate=5.0E+9) for i in range(8)]
        self.processorRxDbg = rfsoc.DspDbgProcessor(name='DspDbgRxProcessor',smplRate=(312.5E+6/64.0))
        self.processorTxDbg = rfsoc.DspDbgProcessor(name='DspDbgTxProcessor',smplRate=(312.5E+6/64.0))

        # DSP Debug Ring Buffer Path
        self.ringBufferRxDbg >> self.dataWriter.getChannel(32)
        self.ringBufferRxDbg >> stream.RateDrop(True,1.0) >> self.processorRxDbg
        self.add(self.processorRxDbg)

        # DSP Debug Ring Buffer Path
        self.ringBufferTxDbg >> self.dataWriter.getChannel(33)
        self.ringBufferTxDbg >> stream.RateDrop(True,1.0) >> self.processorTxDbg
        self.add(self.processorTxDbg)

        # Connect the rogue stream arrays
        for i in range(8):

            # ADC Ring Buffer Path
            self.ringBufferAdc[i] >> self.dataWriter.getChannel(i+0)
            self.ringBufferAdc[i] >> stream.RateDrop(True,1.0) >> self.processorAdc[i]
            self.add(self.processorAdc[i])

            # DAC Ring Buffer Path
            self.ringBufferDac[i] >> self.dataWriter.getChannel(i+8)
            self.ringBufferDac[i] >> stream.RateDrop(True,1.0) >> self.processorDac[i]
            self.add(self.processorDac[i])

    ##################################################################################

    def start(self,**kwargs):
        super(Root, self).start(**kwargs)

        # Useful pointers
        lmk      = self.XilinxZcu208.Hardware.Lmk
        i2cToSpi = self.XilinxZcu208.Hardware.I2cToSpi
        dspCore  = self.XilinxZcu208.Application.DspCoreWrapper

        # Set the SPI clock rate
        i2cToSpi.SpiClockRate.setDisp('115kHz')

        # Configure the LMK for 4-wire SPI
        lmk.LmkReg_0x0000.set(value=0x10) # 4-wire SPI
        lmk.LmkReg_0x015F.set(value=0x3B) # STATUS_LD1 = SPI readback

        # Check for default file path
        if (self.defaultFile is not None) :

            # Load the Default YAML file
            print(f'Loading path={self.defaultFile} Default Configuration File...')
            self.LoadConfig(self.defaultFile)

            # Load the LMK configuration from the TICS Pro software HEX export
            for i in range(2): # Seems like 1st time after power up that need to load twice
                lmk.enable.set(True)
                lmk.PwrDwnLmkChip()
                lmk.PwrUpLmkChip()
                lmk.LoadCodeLoaderHexFile('config/lmk/HexRegisterValues.txt')
                lmk.Init()
                lmk.enable.set(False)

            # Reset the RF Data Converter
            self.XilinxZcu208.RfDataConverter.Reset.set(0x1)

            # Load the waveform data into AdcSigGen
            if self.XilinxZcu208.Application.AdcSigGen.CsvFilePath.value() != '':
                self.XilinxZcu208.Application.AdcSigGen.LoadCsvFile()
            else:
                self.XilinxZcu208.Application.AdcSigGenLoader.LoadSingleTones()

            # Load the waveform data into DacSigGen
            if self.XilinxZcu208.Application.DacSigGen.CsvFilePath.value() != '':
                self.XilinxZcu208.Application.DacSigGen.LoadCsvFile()
            else:
                self.XilinxZcu208.Application.DacSigGenLoader.LoadSingleTones()

            # Enable the DSP core now that LMK is up and running
            dspCore.Analysis.enable.set(True)

            # Set reset, update the shadow variable to hardware then release reset
            dspCore.DspDebug.RstDspCore.set(0x1)
            dspCore.Analysis.writeAndVerifyBlocks(force=True, recurse=True)
            dspCore.DspDebug.RstDspCore.set(0x0)

            # Update the default debug channel select
            dspCore.DspDebug.DebugRxAddr.set(82)
            dspCore.DspDebug.DebugTxAddr.set(82)

            # Update all SW remote registers
            self.ReadAll()

    ##################################################################################
