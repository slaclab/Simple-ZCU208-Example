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
            bitSize      = 5,
            mode         = 'RW',
        ))

        self.add(pr.RemoteVariable(
            name         = 'DebugTest',
            offset       = 0x04,
            bitSize      = 6,
            bitOffset    = 5,
            mode         = 'RW',
        ))

        self.add(pr.RemoteVariable(
            name         = 'DebugTxAddr',
            offset       = 0x08,
            bitSize      = 5,
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
