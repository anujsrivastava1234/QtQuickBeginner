import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qt global Object Demo")
    property var fonts: Qt.fontFamilies()
    Rectangle{
        width: 300
        height: 100
        color: "red"
        anchors.centerIn: parent
        MouseArea{
            anchors.fill: parent
            onClicked: {
                //Quit the application
                console.log("Quitting the Application")
                Qt.quit()

                //List the avaialble fonts
                for(var i=0;i<fonts.length;i++)
                {
                    console.log("[ "+i+" ] : "+fonts[i])
                }

                //Hash a string
                var mName = "Anuj Srivastava"
                var mNameHash=Qt.md5(mName)
                console.log("the hash of the name is :"+mNameHash)


                //Open url extrenally
//                Qt.openUrlExternally("https://www.google.com")

                //Open local files with  with default program
                Qt.openUrlExternally("file:///C:/Users/anuj1/Desktop/icons/doc.png")

                //capture platform info
                console.log("The current platform is : "+Qt.platform.os)
            }
        }
    }
}
