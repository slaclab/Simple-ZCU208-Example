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

import surf.axi as axi

import simple_zcu208_example                 as rfsoc
import axi_soc_ultra_plus_core.rfsoc_utility as rfsoc_utility

class DspCoreWrapper(pr.Device):
    def __init__(self,**kwargs):
        super().__init__(**kwargs)

        self.add(rfsoc.Analysis(
            offset  = 0x000_00000,
            enabled = False, # Do not configure until after LMK is up
            expand  = True,
        ))

        self.add(rfsoc_utility.AppRingBuffer(
            offset   = 0x001_00000,
            numAdcCh = 1,
            numDacCh = 1,
            expand   = True,
        ))

        self.add(rfsoc.DspDebug(
            offset = 0x002_00000,
            expand = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugChSel',
            mode         = 'RW',
            disp         = '{:d}',
            value        = 0,
            linkedGet    = lambda: self.DspDebug.DebugAddr.value()+32*self.Analysis.Config[5].value(),
            linkedSet    = lambda value, write: self.DspDebug.DebugAddr.set(value&0x1F) or self.Analysis.Config[5].set(value>>5),
            dependencies = [self.DspDebug.DebugAddr,self.Analysis.Config[5]],
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugChFreqMin',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMin = {self.GetFreqMHz(value=self.DebugChSel.value(),offset=-1.0):.1f} MHz',
            dependencies = [self.DebugChSel],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugChFreqMean',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMean = {self.GetFreqMHz(value=self.DebugChSel.value(),offset=0.0):.1f} MHz',
            dependencies = [self.DebugChSel],
            hidden       = True,
        ))

        self.add(pr.LinkVariable(
            name         = 'DebugChFreqMax',
            mode         = 'RO',
            linkedGet    = lambda: f'FreqMax = {self.GetFreqMHz(value=self.DebugChSel.value(),offset=1.0):.1f} MHz',
            dependencies = [self.DebugChSel],
            hidden       = True,
        ))

    def GetFreqMHz(self,value=0,offset=0.0):
        if value<1024:
            return (float(value)+offset)*5E3/2048.0
        else:
            return (float(2047-value)-offset)*-5E3/2048.0
