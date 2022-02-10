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

import simple_zcu208_example                 as rfsoc
import axi_soc_ultra_plus_core.rfsoc_utility as rfsoc_utility

class DspCoreWrapper(pr.Device):
    def __init__(self,**kwargs):
        super().__init__(**kwargs)

        self.add(rfsoc.Analysis(
            offset   = 0x000_00000,
            expand   = True,
        ))

        self.add(rfsoc_utility.AppRingBuffer(
            offset   = 0x001_00000,
            numAdcCh = 4, # Must match NUM_ADC_CH_G config
            numDacCh = 0, # Must match NUM_DAC_CH_G config
            expand   = True,
        ))
