import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls
Window {
    id : rootId
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Demo")

    property string texttoShow: "hello"

    Row {
        id : row1
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id : redRect
            width: 150
            height: 150
            color: "red"
            visible: true
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the red button")
                    texttoShow = "red"
                }
            }
        }

        Rectangle {
            id : greenRect
            width: 150
            height: 150
            color: "green"
            visible: true
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the green button")
                    texttoShow = "green"
                }
            }
        }

        Rectangle {
            id : blueRect
            width: 150
            height: 150
            color: "blue"
            visible: true
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on the blue button")
                    texttoShow = "blue"
                }
            }
        }

        Rectangle {
            id : textRectId
            width : 150
            height: 150
            radius : 100
            color: "dodgerblue"
            Text {
                anchors.centerIn: parent
                id: textId
                text: texttoShow
            }
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on dodger blue rectangle");
                    textId.text = "loop"
                }
            }
        }
    }

    Column {

    }
}
