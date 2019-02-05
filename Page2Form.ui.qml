import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    id: page
    width: 600
    height: 400
    property alias selectPortBox: selectPortBox
    property alias portInfoButton: portInfoButton
    property alias apply_button: apply_button
    property alias portInfoLabel: portInfoLabel
    property alias dataBitsBox: dataBitsBox
    contentWidth: 3

    header: Label {
        text: qsTr("Settings")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Label {
        id: label
        x: 40
        y: 6
        text: qsTr("Select Serial port")
    }

    ComboBox {
        id: selectPortBox
        x: 40
        y: 29
    }

    Label {
        id: label1
        x: 343
        y: 14
        text: qsTr("BaudRate")
    }

    ComboBox {
        id: baudRateBox
        x: 443
        y: 6
        currentIndex: 4
        model: ListModel {
            ListElement {
                text: "9600"
            }
            ListElement {
                text: "19200"
            }
            ListElement {
                text: "38400"
            }
            ListElement {
                text: "57600"
            }
            ListElement {
                text: "115200"
            }
            ListElement {
                text: "Custom"
            }
        }
    }

    Label {
        id: label2
        x: 343
        y: 56
        text: qsTr("DataBits")
    }

    ComboBox {
        id: dataBitsBox
        x: 443
        y: 48
        currentIndex: 3
        model: ListModel {
            ListElement {
                text: "5"
            }
            ListElement {
                text: "6"
            }
            ListElement {
                text: "7"
            }
            ListElement {
                text: "8"
            }
        }
    }

    Label {
        id: label3
        x: 343
        y: 102
        text: qsTr("Parity")
    }
    ComboBox {
        id: parityBox
        x: 443
        y: 94
        currentIndex: 0
        model: ListModel {
            ListElement {
                text: "Even"
            }
            ListElement {
                text: "Odd"
            }
            ListElement {
                text: "Mark"
            }
            ListElement {
                text: "Space"
            }
        }
    }

    Label {
        id: label4
        x: 345
        y: 150
        text: qsTr("StopBits")
    }

    ComboBox {
        id: stopBitsBox
        x: 443
        y: 142
        model: ListModel {
            ListElement {
                text: "1"
            }
            ListElement {
                text: "2"
            }
        }
    }

    Label {
        id: label5
        x: 345
        y: 199
        text: qsTr("FlowControl")
    }

    ComboBox {
        id: flowControlBox
        x: 443
        y: 191
        currentIndex: 0
        model: ListModel {
            ListElement {
                text: "None"
            }
            ListElement {
                text: "RTS/CTS"
            }
            ListElement {
                text: "XON/XOFF"
            }
        }
    }

    CheckBox {
        id: localEchocheckBox
        x: 39
        y: 259
        text: qsTr("Local Echo")
    }

    Button {
        id: apply_button
        x: 507
        y: 265
        text: qsTr("Apply")
    }

    Button {
        id: portInfoButton
        x: 345
        y: 265
        text: qsTr("Port info")
        checked: true
    }

    Label {
        id: portInfoLabel
        x: 40
        y: 69
        width: 156
        height: 184
        text: qsTr("   Serialport info")
        horizontalAlignment: Text.AlignLeft
    }
}
