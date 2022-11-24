import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt Global object Demo")

    property var  fonts: Qt.fontFamilies()
    Rectangle{
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea{
             anchors.fill: parent
             onClicked: {
                 // Quit the application
                 console.log("Quiting the App")
                 Qt.quit()

                 //List the available fonts
                 for(var i=0;i<fonts.length ; i++){
                     console.log("["+i+"] : "+fonts[i])
                 }

                 //Hash a String
                 var mName = "Anuj Srivastava"
                 var mNameHash=Qt.md5(mName)
                 console.log("The Hash for the given String : "+mNameHash)
             }
        }
    }
}
