import PySide6
from __feature__ import true_property  # noqa
import sys
from collections import deque
import PySide6.QtWidgets as qtw
import PySide6.QtCharts as qtc
from PySide6.QtSerialPort import QSerialPort, QSerialPortInfo
from PySide6 import QtCore
from PySide6.QtCore import Qt

APP = None
ENABLED_CHANNELS = [1, 3, 5, 8]


class MainWindow(qtw.QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Howdy Doody")

        self.measurement_data = {(i+1): deque([], maxlen=500) for i in range(8)}

        self.menu = self.menuBar()
        self.file_menu = self.menu.addMenu('File')
        self.connect_menu = self.menu.addMenu('Connect')

        exit_action = self.file_menu.addAction('Exit', self._close)
        exit_action.shortcut = 'Ctrl+Q'

        self.port = None
        self.port_infos = QSerialPortInfo.availablePorts()
        for port_info in self.port_infos:
            self.connect_menu.addAction(port_info.portName(), lambda: self.connect_com_port(port_info))

        central_widget = qtw.QWidget()
        main_layout = qtw.QVBoxLayout(central_widget)

        self.calibrate_button = qtw.QPushButton('Calibrate')
        self.calibrate_button.clicked.connect(self.start_calibrate)
        self.reset_button = qtw.QPushButton('Reset ADC')
        self.reset_button.clicked.connect(self.reset_adc)

        self.measure_button = qtw.QPushButton('Readout Channels')
        self.measure_button.clicked.connect(self.readout_adc)

        main_layout.addWidget(self.calibrate_button)
        main_layout.addWidget(self.reset_button)
        main_layout.addWidget(self.measure_button)

        self.history_chart_view = qtc.QChartView()
        self.history_chart = qtc.QChart()
        self.history_chart_min = 10
        self.history_chart_max = -1

        self.history_chart_view.setChart(self.history_chart)
        self.history_chart_series = {}
        for i in ENABLED_CHANNELS:
            series = qtc.QLineSeries()
            series.name = f'Channel {i}'
            self.history_chart_series[i] = series
            self.history_chart.addSeries(series)
        self.history_chart.createDefaultAxes()

        main_layout.addWidget(self.history_chart_view)

        self.serial_display = qtw.QPlainTextEdit()
        self.serial_display.readOnly = True

        main_layout.addWidget(self.serial_display)

        self.setCentralWidget(central_widget)

        self.readback_timer = QtCore.QTimer(self)
        self.readback_timer.interval = 100  # ms
        self.readback_timer.timeout.connect(self.read_port)

    def connect_com_port(self, port_info):
        self.disconnect_com_port()
        self.log(f"Connecting to port: {port_info.portName()}")
        self.port = QSerialPort(port_info)
        self.port.baudRate = QSerialPort.BaudRate.Baud9600
        self.port.breakEnabled = False
        self.port.dataBits = QSerialPort.DataBits.Data8
        self.port.flowControl = QSerialPort.FlowControl.NoFlowControl
        self.port.parity = QSerialPort.Parity.NoParity
        self.port.stopBits = QSerialPort.StopBits.OneStop
        if not self.port.open(QtCore.QIODevice.ReadWrite):
            print("Failed to open port!")
            self.port = None
            return
        self.log("Port Opened")
        self.log(f"\t{port_info.description()}")
        self.log(f"\tManufacturer: {port_info.manufacturer()}")
        self.log(f"\tVendor ID: {port_info.vendorIdentifier()}")
        self.log(f"\tProduct ID: {port_info.productIdentifier()}")
        self.log(f"\tSerial Number: {port_info.serialNumber()}")
        self.log(f"\tbaudRate: {self.port.baudRate}")
        self.log(f"\tbreakEnabled: {self.port.breakEnabled}")
        self.log(f"\tdataBits: {self.port.dataBits}")
        self.log(f"\tflowControl: {self.port.flowControl}")
        self.log(f"\tparity: {self.port.parity}")
        self.log(f"\tstopBits: {self.port.stopBits}")
        self.port.clear()
        self.port._error_handler = self.port.errorOccurred.connect(self.log_port_error)
        self.write_port('reset')
        self.readback_timer.start()

    def log_port_error(self, error):
        self.log(error)

    def disconnect_com_port(self):
        if self.port is not None:
            self.log(f"Disconnecting from port: {self.port.portName()}")
            self.readback_timer.stop()
            if hasattr(self.port, '_error_handler'):
                self.port.errorOccurred.disconnect(self.port._error_handler)
            self.port.close()
            self.port = None

    def _close(self):
        self.disconnect_com_port()
        self.close()

    def log(self, text: str):
        self.serial_display.appendPlainText(text)

    def write_port(self, message: str):
        if self.port is None:
            return
        # print(">>> " + message)
        self.log(">>> " + message)
        self.port.write(message.encode() + b'\n')

    def read_port(self) -> None:
        if self.port is None:
            return
        data = self.port.readLine()
        data = QtCore.QTextStream(data).readAll().strip()
        if data:
            self.log("<<< " + data)
        if data.startswith('measure'):
            _, channel_id, value = data.split()
            channel_id = int(channel_id)
            value = int(value, 16) / (2**24 - 1)
            if value > self.history_chart_max:
                self.history_chart_max = value
            if value < self.history_chart_min:
                self.history_chart_min = value
            self.measurement_data[channel_id].append(value)

            idx = len(self.measurement_data[channel_id])
            self.history_chart_series[channel_id].append(idx, value)
            self.history_chart.axes(Qt.Orientation.Horizontal)[0].setRange(0, idx+1)
            y_range = self.history_chart_max - self.history_chart_min
            self.history_chart.axes(Qt.Orientation.Vertical)[0].setRange(self.history_chart_min - y_range*0.1,
                                                                         self.history_chart_max + y_range*0.1)
            # self.history_chart_view.repaint()
            # self.history_chart.

    def start_calibrate(self):
        self.write_port('calibrate')

    def reset_adc(self):
        self.write_port('reset')

    def readout_adc(self):
        for channel_id in ENABLED_CHANNELS:
            self.write_port(f'measure {channel_id}')


def main():
    global PORT, APP
    APP = qtw.QApplication()
    window = MainWindow()
    window.resize(800, 600)
    window.show()
    # port_selection = SerialPopup.get_port_selection()
    # if port_selection is None:
    # print(port_selection)
    sys.exit(APP.exec())


if __name__ == "__main__":
    main()
