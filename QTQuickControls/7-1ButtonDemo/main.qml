import QtQuick 2.11
import QtQuick.Window 2.11
import QtQuick.Controls 2.4
import QtQuick.Layouts 1.3
Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")

    ColumnLayout{
        anchors.centerIn: parent
        Button{
            id: btn1;
            text: "Button 1"
            Layout.fillHeight: true
            onClicked: {
                console.log("Button 1 is clicked");
            }
            onDoubleClicked: {
                console.log("Double button is clicked")
            }
        }

        Button{
            id:btn2;
            text: "Button 2"
            Layout.fillHeight: true
        }
    }
}
