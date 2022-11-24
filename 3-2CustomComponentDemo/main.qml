import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    //    Column{
    //        spacing:20
    //        Rectangle{
    //            width: 300
    //            height: 100
    //            color: "red"
    //        }
    //        Rectangle{
    //            width: 300
    //            height: 100
    //            color: "blue"
    //        }
    //    }

//    Row{
//        spacing:20
//        Rectangle{
//            width: 300
//            height: 100
//            color: "red"
//        }
//        Rectangle{
//            width: 300
//            height: 100
//            color: "blue"
//        }
//    }

//    Rectangle{
//        width: btnTextId.implicitWidth + 20
//        height: btnTextId.implicitHeight + 20
//        color:"red"
//        border{
//            color: "blue"
//            width: 3
//        }

//        Text {
//            id: btnTextId
//            anchors.centerIn: parent
//            text: qsTr("Button")
//        }

//        MouseArea{
//            anchors.fill: parent
//            onClicked: {
//                console.log("CLicked ON : "+btnTextId.text)
//                Qt.quit()
//            }
//        }
//    }
    Column{
        MButton{
            id:mButton1
            buttontext:  "Button1"
            onButtonClicked: {
                console.log("Clicked on Button 1 from main file")
            }
        }

        MButton{
            buttontext: "Button 2"
            onButtonClicked: {
                console.log("Clicked on Button 2 from main file")
            }
        }
    }



}
