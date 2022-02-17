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

        name = ['EvenReal','EvenImag','OddReal','OddImag']

        self.add(pr.LocalVariable(
            name    = 'Index',
            typeStr = 'Int16[np]',
            value   = np.linspace(0, 15, num=16, dtype=np.int16),
            hidden  = True,
        ))

        for i in range(len(name)):
            self.add(pr.RemoteVariable(
                name         = name[i],
                offset       = (16*2*i),
                bitSize      = 16*16,
                bitOffset    = 0,
                numValues    = 16,
                valueBits    = 16,
                valueStride  = 16,
                updateNotify = True,
                bulkOpEn     = True, # TRUE for small variables
                overlapEn    = False,
                verify       = True,
                base         = pr.Int,
                mode         = "RO",
                pollInterval = 1,
                hidden       = True,
            ))

        self.add(pr.RemoteVariable(
            name         = 'RstDspCore',
            offset       = 0xFFC,
            bitSize      = 1,
            mode         = 'RW',
        ))
