from isas.dashboard.qt import BaseContentLayout
from isas.dashboard.qt import Layout
from PySide6 import QtWidgets


class ContentLayout(BaseContentLayout):
    def __call__(self):
        return {
            'Dash Board': self.dashboard,
            'Sensor': self.sensor,
            }

    def dashboard(self, parent=None):
        layout = Layout('vbox', parent)

        frame = QtWidgets.QFrame(parent)
        layout_1 = Layout('hbox', frame)
        frame.setStyleSheet('background-color:white;')

        label = QtWidgets.QLabel('Hello World.')
        label.setFrameStyle(QtWidgets.QFrame.VLine | QtWidgets.QFrame.Raised)
        layout_1.addWidget(label)
        label = QtWidgets.QLabel('Hello Hello World.')
        label.setFrameStyle(QtWidgets.QFrame.VLine | QtWidgets.QFrame.Raised)
        layout_1.addWidget(label)
        layout_1.addWidget(QtWidgets.QLabel('Hello Hello Hello World.'))
        layout.addWidget(frame)

        layout_2 = Layout('hbox', parent)
        layout_2.addSubpackage('visualization_template_dropdowns')
        layout_2.addSubpackage('visualization_template_textdrawer')
        layout.addLayout(layout_2)
        return layout

    def sensor(self, parent=None):
        layout = Layout('vbox', parent)
        layout.addWidget(QtWidgets.QLabel('This is a sensor page.'))
        return layout
