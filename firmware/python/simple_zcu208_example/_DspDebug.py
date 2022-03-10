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

class DspDebug(pr.Device):
    def __init__(self,**kwargs):
        super().__init__(**kwargs)

        self.add(pr.RemoteVariable(
            name         = 'RstDspCore',
            offset       = 0x00,
            bitSize      = 1,
            mode         = 'RW',
        ))

        self.add(pr.RemoteVariable(
            name         = 'DebugRxAddr',
            offset       = 0x04,
            bitSize      = 11,
            mode         = 'RW',
        ))

        self.add(pr.RemoteVariable(
            name         = 'DebugTxAddr',
            offset       = 0x08,
            bitSize      = 11,
            mode         = 'RW',
        ))

        self.add(pr.RemoteVariable(
            name         = 'DebugDelay',
            offset       = 0x0C,
            bitSize      = 4,
            mode         = 'RW',
        ))

        @self.command()
        def toggleReset():
            self.RstDspCore.set(1)
            self.RstDspCore.set(0)

        self.add(pr.LinkVariable(
            name         = 'DebugRxChFreqMin',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMin = {self.GetFreqMHz(value=self.DebugRxAddr.value(),offset=-1.0):.1f} MHz',
            dependencies = [self.DebugRxAddr],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugRxChFreqMean',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMean = {self.GetFreqMHz(value=self.DebugRxAddr.value(),offset=0.0):.1f} MHz',
            dependencies = [self.DebugRxAddr],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugRxChFreqMax',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMax = {self.GetFreqMHz(value=self.DebugRxAddr.value(),offset=1.0):.1f} MHz',
            dependencies = [self.DebugRxAddr],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugTxChFreqMin',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMin = {self.GetFreqMHz(value=self.DebugTxAddr.value(),offset=-1.0):.1f} MHz',
            dependencies = [self.DebugTxAddr],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugTxChFreqMean',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMean = {self.GetFreqMHz(value=self.DebugTxAddr.value(),offset=0.0):.1f} MHz',
            dependencies = [self.DebugTxAddr],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugTxChFreqMax',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMax = {self.GetFreqMHz(value=self.DebugTxAddr.value(),offset=1.0):.1f} MHz',
            dependencies = [self.DebugTxAddr],
            hidden       = True,
        ))

    def GetFreqMHz(self,value=0,offset=0.0):
        if value<1024:
            return (float(value)+offset)*5E3/2048.0
        else:
            return (float(2047-value)-offset)*-5E3/2048.0
