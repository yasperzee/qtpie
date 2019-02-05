import QtQuick 2.11
import QtQuick.Controls 2.4

Page {
    id: control
    width: 600
    height: 400
    property alias btn_stop: btn_stop
    title: "Control"
    property alias btn_left: btn_left
    property alias btn_reverse: btn_reverse
    property alias btn_right: btn_right
    property alias label_drive: label_drive
    property alias btn_forward: btn_forward

    header: Label {
        text: qsTr("Control")
        font.pixelSize: Qt.application.font.pixelSize * 2
        padding: 10
    }

    Button {
        id: btn_left
        x: 66
        y: 93
        width: 86
        height: 32
        text: qsTr("Left")
    }

    Button {
        id: btn_right
        x: 250
        y: 98
        width: 117
        height: 32
        text: qsTr("Right")
    }

    Button {
        id: btn_forward
        x: 159
        y: 17
        text: qsTr("Forward")
        transformOrigin: Item.Center
    }

    Button {
        id: btn_reverse
        x: 162
        y: 166
        text: qsTr("Reverse")
    }

    Label {
        id: label_drive
        x: 424
        y: 249
        width: 109
        height: 45
        text: qsTr("DRIVE!")
    }

    RoundButton {
        id: btn_stop
        x: 181
        y: 98
        text: "+"
    }
}
