import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QMl Basic Elements Demo")

    Item{
        id : containerItemId
//        x: 50
//        y:50
        width: 400
        height: 400
        anchors.centerIn: parent
        Rectangle{
            anchors.fill: parent
            color: "beige"
            border.color: "black"
        }

        Rectangle{
            x: 0
            y:10
            width: 50
            height: 50
            color: "red"
            MouseArea{
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 60
            y:10
            width: 50
            height: 50
            color: "green"
            MouseArea{
                onClicked: {

                }
            }
        }
        Rectangle{
            x: 120
            y:10
            width: 50
            height: 50
            color: "blue"
            MouseArea{
                onClicked: {

                }
            }
        }

        Rectangle{
            x: 180
            y:10
            width: 50
            height: 50
            color: "magenta"
            MouseArea{
                onClicked: {

                }
            }
        }

        Text{
            x:100
            y:100
            id:mTextId
            text: "Hello World!"
//            font.family: "Helvetica"
//            font.pointSize: 24
            font: {
                family:"Helvetica"
                pointSize:13
                bold:true

            }

            color: "red"
        }

        Image{
            x: 10
            y: 150
            width: 100
            height: 100
//            anchors.centerIn: parent
            source: "file:avatar.png"
        }
        Image {
            id: img2
            x: 150
            y:150
            width: 200
            height: 200
            //Loading image from the resource file
            source: "images/doctor.png"
        }
        Image {
            id: img3
            x: 300
            y:150
            width: 100
            height: 100
            //Loading image from the resource file
            source: "file:///C:/Users/anuj1/Desktop/icons/download.png"
        }
    }
}
