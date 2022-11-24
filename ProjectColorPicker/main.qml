import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Text Color Picker")


    Rectangle{
        id: page
        width: 320
        height: 480
        color: "lightgray"
        anchors.centerIn: parent
        Text{
            id: helloText
            text: "Hello World !"
            y: 30
            anchors.horizontalCenter: parent.horizontalCenter
            font.pointSize: 24
            font.bold: true
        }

        Grid{
            id: colorPicker
            x:4
            anchors.bottom: page.bottom
            anchors.bottomMargin: 4
            rows: 2
            columns: 3
            spacing: 3

            Cell{
                cellColor: "red" ; onClicked: helloText.color = cellColor
            }
            Cell{
                cellColor: "green" ; onClicked: helloText.color = cellColor
            }
            Cell{
                cellColor: "blue" ; onClicked: helloText.color = cellColor
            }
            Cell{
                cellColor: "yellow" ; onClicked: helloText.color = cellColor
            }
            Cell{
                cellColor: "pink" ; onClicked: helloText.color = cellColor
            }
            Cell{
                cellColor: "black" ; onClicked: helloText.color = cellColor
            }
        }
    }

}
