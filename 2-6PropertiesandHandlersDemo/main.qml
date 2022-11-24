import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties andHandlers Demo")

    property string mFirstName: "Anuj"
    onMFirstNameChanged: {
        console.log("The firstname changed to : "+nFirstName)
    }

    Rectangle{
        width: 300
        height: 100
        color: "greenyellow"
        anchors.centerIn: parent

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName = "John"
            }
        }
    }
    Component.onCompleted :{

    }
}
