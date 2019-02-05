import QtQuick 2.11
import QtQuick.Controls 2.4

ApplicationWindow {
    visible: true
    width: 640
    height: 480
    title: qsTr("RC Car Control")

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page1Form {
            btn_stop.onClicked: {
                label_drive.text = qsTr("STOP!");
                }
            btn_left.onClicked: {
                label_drive.text = qsTr("LEFT");
                }
            btn_reverse.onClicked: {
                label_drive.text = qsTr("REVERSE");
                }
            btn_right.onClicked: {
                label_drive.text = qsTr("RIGHT");
                }
            btn_forward.onClicked: {
                label_drive.text = qsTr("FORWARD");
            }
        }

        Page2Form {
            portInfoButton.onClicked: {       
                 portInfoLabel.text = qsTr( portInfo.showSerialInfo());
                }
            apply_button.onClicked: {
                  portInfoLabel.text = qsTr("");
                }
            selectPortBox.onHighlighted: {
                location_label.text = qsTr("TESTING");
                }
            selectPortBox.onActivated: {
                //vendor_label.text = qsTr("TESTING");
            }
        }
    }

    footer: TabBar {
        id: tabBar
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Control")
        }
        TabButton {
            text: qsTr("Settings")
        }
    }
}
