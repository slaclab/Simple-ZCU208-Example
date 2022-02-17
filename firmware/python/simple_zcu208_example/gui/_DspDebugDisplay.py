#-----------------------------------------------------------------------------
# This file is part of the 'axi-soc-ultra-plus-core'. It is subject to
# the license terms in the LICENSE.txt file found in the top-level directory
# of this distribution and at:
#    https://confluence.slac.stanford.edu/display/ppareg/LICENSE.html.
# No part of the 'axi-soc-ultra-plus-core', including this file, may be
# copied, modified, propagated, or distributed except according to the terms
# contained in the LICENSE.txt file.
#-----------------------------------------------------------------------------

from pydm.widgets.frame import PyDMFrame
from pydm.widgets import  PyDMWaveformPlot, PyDMPushButton

from qtpy.QtCore import Qt
from qtpy.QtWidgets import QVBoxLayout, QHBoxLayout, QFormLayout, QGroupBox, QDoubleSpinBox

from pyrogue.pydm.data_plugins.rogue_plugin import nodeFromAddress
from pyrogue.pydm.widgets import PyRogueLineEdit

import pyrogue as pr

class DspDebugDisplay(PyDMFrame):
    def __init__(self, parent=None, init_channel=None):
        PyDMFrame.__init__(self, parent, init_channel)
        self._node     = None
        self.path      = f'{init_channel}.XilinxZcu208.Application.DspCoreWrapper.DspDebug'
        self.color     = ["white","red", "yellow", "dodgerblue"]

    def resetScales(self):
        for i in range(4):
            # Reset the auto-ranging
            self.plot[i].resetAutoRangeX()
            self.plot[i].resetAutoRangeY()

    def connection_changed(self, connected):
        build = (self._node is None) and (self._connected != connected and connected is True)
        super(DspDebugDisplay, self).connection_changed(connected)

        if not build:
            return

        self._node = nodeFromAddress(self.channel)

        vb = QVBoxLayout()
        self.setLayout(vb)

        name = ['EvenReal','EvenImag','OddReal','OddImag']
        self.plot = [None  for i in range(4)]

        #-----------------------------------------------------------------------------

        for i in range(4):

            gb = QGroupBox(name[i])
            vb.addWidget(gb)

            fl = QFormLayout()
            fl.setRowWrapPolicy(QFormLayout.DontWrapRows)
            fl.setFormAlignment(Qt.AlignHCenter | Qt.AlignTop)
            fl.setLabelAlignment(Qt.AlignRight)
            gb.setLayout(fl)

            self.plot[i] = PyDMWaveformPlot()
            self.plot[i].addChannel(
                x_channel = f'{self.path}.Index',
                y_channel = f'{self.path}.{name[i]}',
                color     = self.color[i],
                symbolSize = 10, # Size of the symbol
                symbol     = 'star', # https://github.com/slaclab/pydm/blob/v1.13.0/pydm/widgets/baseplot.py#L49
            )
            self.plot[i].setLabel("bottom", text='Index')
            self.plot[i].setLabel("left",   text='Counts')
            fl.addWidget(self.plot[i])

        #-----------------------------------------------------------------------------

        rstButton = PyDMPushButton(label="Full Scale")
        rstButton.clicked.connect(self.resetScales)
        fl.addWidget(rstButton)

        #-----------------------------------------------------------------------------
