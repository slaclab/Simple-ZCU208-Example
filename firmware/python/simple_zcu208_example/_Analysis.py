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

        self.add(pr.RemoteVariable(
            name         = 'Config[1]',
            offset       = 0x004,
            bitSize      = 4,
            mode         = 'RW',
            description  = """
                Bits[1:0]: ‘00’, ‘01’ swap ADC inputs I/Q
                bits[1:0]=’10’ and ‘11’, all ADC inputs are set to zero.
                Bit [3]: receiver filter bank MAC initial value setting, default to ‘0’.
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[2]',
            offset       = 0x008,
            bitSize      = 4,
            mode         = 'RW',
            description  = """
                Bits[1:0]: transmitter MAC initial setting.Default to ‘00’.
                Bits[3:2]: transmitter output scale; scale  0.5,1,2,4
                bits[3:2]= 0~3. Default to ‘01’
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[3]',
            offset       = 0x00C,
            bitSize      = 10,
            mode         = 'RW',
            description  = """
                Delay to Transmitter FFT input valid. 10bits.
                Maximum delay is (2^10-1) clk cycles.
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[4]',
            offset       = 0x010,
            bitSize      = 1,
            mode         = 'RW',
            description  = """
                Switch baseband input to transmitter.
                ‘0’, receiver output to transmitter input directly; even->even, odd->odd.
                ‘1’, , transmitter baseband channels are set to constant data (I,Q)=(0.5,0.5).
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[5]',
            offset       = 0x014,
            bitSize      = 6,
            mode         = 'RW',
            description  = """
                receiver output streaming serial channel selection.
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[6]',
            offset       = 0x018,
            bitSize      = 32,
            mode         = 'RW',
            description  = """
                baseband lane valid control
                [15:0] control even mode
                [31:16] control odd mode
                Default value is 2^32-1, all channels are turned on
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[7]',
            offset       = 0x01C,
            bitSize      = 7,
            mode         = 'RW',
            description  = """
                transmitter FFT blocks output streaming.
                Selects the serial channel number for streaming
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'Config[8]',
            offset       = 0x020,
            bitSize      = 10,
            mode         = 'RW',
            description  = """
                Transmit filter bank reset delay
            """,
        ))

        self.add(pr.RemoteVariable(
            name         = 'ScratchPad',
            description  = 'Register to test reads and writes',
            offset       = 0xFFC,
            bitSize      = 32,
            mode         = 'RW',
        ))
