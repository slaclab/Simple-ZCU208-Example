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

class Analysis(pr.Device):
    def __init__(self,**kwargs):
        super().__init__(**kwargs)

        self.add(pr.RemoteVariable(
            name         = 'Version',
            description  = 'Version Number',
            offset       = 0x000,
            bitSize      = 32,
            mode         = 'RO',
        ))

        for i in range(1,5):
            self.add(pr.RemoteVariable(
                name         = f'Config[{i}]',
                description  = 'Configuration Register',
                offset       = (i*0x4),
                bitSize      = 32,
                mode         = 'RW',
            ))

        self.add(pr.RemoteVariable(
            name         = 'ScratchPad',
            description  = 'Register to test reads and writes',
            offset       = 0xFFC,
            bitSize      = 32,
            mode         = 'RW',
        ))
