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
from pydm.widgets import PyDMWaveformPlot, PyDMSpinbox, PyDMPushButton, PyDMLabel

from qtpy.QtCore import Qt
from qtpy.QtWidgets import QVBoxLayout, QHBoxLayout, QFormLayout, QGroupBox, QDoubleSpinBox, QLabel

from pyrogue.pydm.data_plugins.rogue_plugin import nodeFromAddress
from pyrogue.pydm.widgets import PyRogueLineEdit

import pyrogue as pr

class DspDebugDisplay(PyDMFrame):
    def __init__(self, parent=None, init_channel=None, dispType='Rx'):
        PyDMFrame.__init__(self, parent, init_channel)
        self._node    = None
        self.dispType = dispType
        self.path     = f'{init_channel}.DspDbg{dispType}Processor'
        self.dspPath  = f'{init_channel}.XilinxZcu208.Application.DspCoreWrapper'
        self.color    = ["white","red"]

    def resetScales(self):
        # Reset the auto-ranging
        self.timePlot.resetAutoRangeX()
        self.timePlot.resetAutoRangeY()
        self.freqPlot.resetAutoRangeX()
        self.freqPlot.setMinYRange(-140.0)
        self.freqPlot.setMaxYRange(0.0)

    def connection_changed(self, connected):
        build = (self._node is None) and (self._connected != connected and connected is True)
        super(DspDebugDisplay, self).connection_changed(connected)

        if not build:
            return

        self._node = nodeFromAddress(self.channel)

        vb = QVBoxLayout()
        self.setLayout(vb)

        #-----------------------------------------------------------------------------

        gb = QGroupBox( f'Time Domain: {self.color[0]}=REAL, {self.color[1]}=IMAGERY' )
        vb.addWidget(gb)

        fl = QFormLayout()
        fl.setRowWrapPolicy(QFormLayout.DontWrapRows)
        fl.setFormAlignment(Qt.AlignHCenter | Qt.AlignTop)
        fl.setLabelAlignment(Qt.AlignRight)
        gb.setLayout(fl)

        self.timePlot = PyDMWaveformPlot()
        self.timePlot.setLabel("bottom", text='Time (microsec)')
        self.timePlot.setLabel("left",   text='Counts')
        self.timePlot.addChannel(x_channel=f'{self.path}.Time', y_channel=f'{self.path}.Real', color=self.color[0])
        self.timePlot.addChannel(x_channel=f'{self.path}.Time', y_channel=f'{self.path}.Imag', color=self.color[1])
        fl.addWidget(self.timePlot)

        #-----------------------------------------------------------------------------

        gb = QGroupBox('Frequency Domain')
        vb.addWidget(gb)

        fl = QFormLayout()
        fl.setRowWrapPolicy(QFormLayout.DontWrapRows)
        fl.setFormAlignment(Qt.AlignHCenter | Qt.AlignTop)
        fl.setLabelAlignment(Qt.AlignRight)
        gb.setLayout(fl)

        self.freqPlot = PyDMWaveformPlot()
        self.freqPlot.setLabel("bottom", text='Frequency (kHz)')
        self.freqPlot.setLabel("left",   text='Amplitude (dBFS)')
        self.freqPlot.addChannel(x_channel=f'{self.path}.Freq', y_channel=f'{self.path}.Magnitude', color=self.color[0])
        self.freqPlot.setAutoRangeY(False)
        self.freqPlot.setMinYRange(-160.0)
        self.freqPlot.setMaxYRange(0.0)
        fl.addWidget(self.freqPlot)

        #-----------------------------------------------------------------------------

        gb = QGroupBox('Frequency Band Control')
        vb.addWidget(gb)

        fl = QHBoxLayout()
        gb.setLayout(fl)

        w = QLabel('Channel Select:')
        w.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        fl.addWidget(w)

        w = PyDMSpinbox(parent=None, init_channel=f'{self.dspPath}.DspDebug.Debug{self.dispType}Addr')
        w.setRange(0,2047)
        w.setAlignment(Qt.AlignRight)
        w.precision             = 0
        w.showUnits             = False
        w.precisionFromPV       = False
        w.alarmSensitiveContent = False
        w.alarmSensitiveBorder  = True
        w.showStepExponent      = False
        w.writeOnPress          = True
        fl.addWidget(w)

        w = PyDMLabel(parent=None, init_channel=f'{self.dspPath}.DspDebug.Debug{self.dispType}ChFreqMin')
        w.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        fl.addWidget(w)

        w = PyDMLabel(parent=None, init_channel=f'{self.dspPath}.DspDebug.Debug{self.dispType}ChFreqMean')
        w.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        fl.addWidget(w)

        w = PyDMLabel(parent=None, init_channel=f'{self.dspPath}.DspDebug.Debug{self.dispType}ChFreqMax')
        w.setAlignment(Qt.AlignRight | Qt.AlignVCenter)
        fl.addWidget(w)

        rstButton = PyDMPushButton(label="Full Scale")
        rstButton.clicked.connect(self.resetScales)
        fl.addWidget(rstButton)

        # w = QLabel('')
        # w.setAlignment(Qt.AlignRight)
        # fl.addWidget(w)

        #-----------------------------------------------------------------------------
