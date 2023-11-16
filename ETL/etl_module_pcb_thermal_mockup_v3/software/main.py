import sys
import PySide6.QtWidgets as qtw
from PySide6.QtSerialPort import QSerialPort, QSerialPortInfo
from PySide6 import QtCore

APP = None


class MainWindow(qtw.QMainWindow):
    def __init__(self):
        super().__init__()
        self.setWindowTitle("Howdy Doody")

        self.menu = self.menuBar()
        self.file_menu = self.menu.addMenu('File')
        self.connect_menu = self.menu.addMenu('Connect')

        exit_action = self.file_menu.addAction('Exit', self._close)
        exit_action.setShortcut('Ctrl+Q')

        self.port = None
        self.ports = QSerialPortInfo.availablePorts()
        for port in self.ports:
            self.connect_menu.addAction(port.portName(), lambda: self.connect_com_port(port))

        central_widget = qtw.QWidget()
        main_layout = qtw.QVBoxLayout(central_widget)

        self.calibrate_button = qtw.QPushButton('Calibrate')
        self.calibrate_button.clicked.connect(self.start_calibrate)
        self.reset_button = qtw.QPushButton('Reset ADC')
        self.reset_button.clicked.connect(self.reset_adc)

        main_layout.addWidget(self.calibrate_button)
        main_layout.addWidget(self.reset_button)

        self.serial_display = qtw.QPlainTextEdit()
        self.serial_display.setReadOnly(True)

        main_layout.addWidget(self.serial_display)

        self.setCentralWidget(central_widget)

        self.readback_timer = QtCore.QTimer(self)
        self.readback_timer.setInterval(100)  # ms
        self.readback_timer.timeout.connect(self.read_port)

    def connect_com_port(self, port):
        self.disconnect_com_port()
        print(f"Connecting to port: {port.portName()}")
        self.port = QSerialPort(port.portName())
        if not self.port.open(QtCore.QIODevice.ReadWrite):
            print("Failed to open port!")
            self.port = None
            return
        self.port.clear()
        self.port._error_handler = self.port.errorOccurred.connect(self.log_port_error)
        self.write_port('reset')
        self.readback_timer.start()

    def log_port_error(self, error):
        print(error)

    def disconnect_com_port(self):
        if self.port is not None:
            print(f"Disconnecting from port: {self.port.portName()}")
            self.readback_timer.stop()
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

    def read_port(self) -> str:
        if self.port is None:
            return ""
        data = self.port.readLine()
        data = QtCore.QTextStream(data).readAll().strip()
        # print("<<< " + data)
        if data:
            self.log("<<< " + data)
        return data

    def start_calibrate(self):
        self.write_port('calibrate')

    def reset_adc(self):
        self.write_port('reset')


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
