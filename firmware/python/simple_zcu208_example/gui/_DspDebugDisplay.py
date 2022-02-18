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
from pydm.widgets import PyDMWaveformPlot, PyDMSpinbox, PyDMPushButton

from qtpy.QtCore import Qt
from qtpy.QtWidgets import QVBoxLayout, QHBoxLayout, QFormLayout, QGroupBox, QDoubleSpinBox, QLabel

from pyrogue.pydm.data_plugins.rogue_plugin import nodeFromAddress
from pyrogue.pydm.widgets import PyRogueLineEdit

import pyrogue as pr

class DspDebugDisplay(PyDMFrame):
    def __init__(self, parent=None, init_channel=None):
        PyDMFrame.__init__(self, parent, init_channel)
        self._node      = None
        self.path       = f'{init_channel}.DspDbgProcessor'
        self.DebugChSel = f'{init_channel}.XilinxZcu208.Application.DspCoreWrapper.DebugChSel'
        self.color      = ["white","red", "yellow", "dodgerblue"]

    def resetScales(self):
        # Reset the auto-ranging
        self.realPlot.resetAutoRangeX()
        self.realPlot.resetAutoRangeY()
        self.imagPlot.resetAutoRangeX()
        self.imagPlot.resetAutoRangeY()

    def connection_changed(self, connected):
        build = (self._node is None) and (self._connected != connected and connected is True)
        super(DspDebugDisplay, self).connection_changed(connected)

        if not build:
            return

        self._node = nodeFromAddress(self.channel)

        vb = QVBoxLayout()
        self.setLayout(vb)

        #-----------------------------------------------------------------------------

        gb = QGroupBox('Real Channel')
        vb.addWidget(gb)

        fl = QFormLayout()
        fl.setRowWrapPolicy(QFormLayout.DontWrapRows)
        fl.setFormAlignment(Qt.AlignHCenter | Qt.AlignTop)
        fl.setLabelAlignment(Qt.AlignRight)
        gb.setLayout(fl)

        self.realPlot = PyDMWaveformPlot()
        self.realPlot.setLabel("bottom", text='Time (microsec)')
        self.realPlot.setLabel("left",   text='Counts')
        self.realPlot.addChannel(x_channel=f'{self.path}.Time', y_channel=f'{self.path}.Real', color=self.color[0])
        fl.addWidget(self.realPlot)

        #-----------------------------------------------------------------------------

        gb = QGroupBox('Imaginary Channel')
        vb.addWidget(gb)

        fl = QFormLayout()
        fl.setRowWrapPolicy(QFormLayout.DontWrapRows)
        fl.setFormAlignment(Qt.AlignHCenter | Qt.AlignTop)
        fl.setLabelAlignment(Qt.AlignRight)
        gb.setLayout(fl)

        self.imagPlot = PyDMWaveformPlot()
        self.imagPlot.setLabel("bottom", text='Time (microsec)')
        self.imagPlot.setLabel("left",   text='Counts')
        self.imagPlot.addChannel(x_channel=f'{self.path}.Time', y_channel=f'{self.path}.Imag', color=self.color[1])
        fl.addWidget(self.imagPlot)

        #-----------------------------------------------------------------------------

        gb = QGroupBox( 'Display Controls')
        vb.addWidget(gb)

        fl = QHBoxLayout()
        gb.setLayout(fl)

        w = QLabel('Channel Select:')
        w.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        fl.addWidget(w)

        w = PyDMSpinbox(parent=None, init_channel=self.DebugChSel)
        w.setAlignment(Qt.AlignRight)
        w.setRange(0,2047)
        w.precision             = 0
        w.showUnits             = False
        w.precisionFromPV       = False
        w.alarmSensitiveContent = False
        w.alarmSensitiveBorder  = True
        w.showStepExponent      = False
        w.writeOnPress          = True
        fl.addWidget(w)

        w = QLabel('')
        w.setAlignment(Qt.AlignRight)
        fl.addWidget(w)

        rstButton = PyDMPushButton(label="Full Scale")
        rstButton.clicked.connect(self.resetScales)
        fl.addWidget(rstButton)

        w = QLabel('')
        w.setAlignment(Qt.AlignRight)
        fl.addWidget(w)

        #-----------------------------------------------------------------------------
