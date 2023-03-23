import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Busy Indicator Demo")

    ColumnLayout{
        BusyIndicator{
            id: busyIndicatorId
            Layout.alignment: Qt.AlignCenter
            visible: false
        }

        anchors.centerIn: parent

        ColumnLayout{
            width: parent.width;
            height: parent.height
            Button{
                id:btn1;
                text: "Button running"
                Layout.fillWidth: true
                onClicked: {
                    busyIndicatorId.running=true
                    busyIndicatorId.visible=true
                }
            }
            Button{
                id:btn2;
                text: "Button not running"
                Layout.fillWidth: true
                onClicked: {
                     busyIndicatorId.running=false
                    busyIndicatorId.visible=false
                }
            }
        }
    }
}
