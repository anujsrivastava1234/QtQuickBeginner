import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers Demo")

    property string mFirstName: "Anuj"
   onMFirstNameChanged: {
       console.log("the first Name is changed to : "+mFirstName)
   }
    Rectangle{
        width: 300
        height: 100
        anchors.centerIn: parent
        color: "greenyellow"

        MouseArea{
            anchors.fill: parent
            onClicked: {
                mFirstName = "John"
            }
        }
    }
    Component.onCompleted: {
        console.log("the firstName is :"+mFirstName)
    }
}
