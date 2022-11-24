import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signal and slots")

    Rectangle{
        id: rootId
        signal greet(String notice)
        width: 200
        height: 200
        color: "red"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                //Emit the green signal
                ongreet:{
                    console.log("Signal is triggerred" + message)
                }
            }
        }
    }
}
