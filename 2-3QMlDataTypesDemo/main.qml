import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Extras 1.4

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Qml Var Data Types")


    property var aNumber: 100
    property var aBool: false
    property var aString: "Hello world!"
    property var anotherString: String("#FF008800")
    property var aColor: Qt.rgba(0.2, 0.3, 0.4, 0.5)
    property var aRect: Qt.rect(10, 10, 10, 10)
    property var aPoint: Qt.point(10, 10)
    property var aSize: Qt.size(10, 10)
    property var aVector3d: Qt.vector3d(100, 100, 100)
    property var anArray: [1, 2, 3, "four", "five", (function() { return "six"; })]
    property var anObject: { "foo": 10, "bar": 20 }
    property var aFunction: (function() { return "one"; })

    property var  aFont: Qt.font({family:"Consolas", pointsize:30 , bold:false})
    property date aDate: "2022-11-14"


    Rectangle{
        width: 200
        height: 200
        anchors.centerIn: parent
        color: aColor

        Text{
            id: mTextid
            anchors.centerIn: parent
            text: "Hello World"
            //            font.bold: aBool?true:false
            font: aFont
        }

        Component.onCompleted: {
            print("---------------- Playing with var datatypes ------------------- ")
            console.log("The value of aNumber is : " + aNumber)
            console.log("The value of aBool is : " + aBool)
            console.log("The value of aString is : " + aString)
            console.log("The value of anotherString is : " + anotherString)
            console.log("The value of aColor is : " + aColor)

            console.log("The value of x : "+aRect.x
                        +" The value of y : " + aRect.y
                        +" The value of width : "+aRect.width
                        + " The value of width : "+aRect.height)

            console.log("The length of the array is : "+anArray.length)

            for(var i=0;i<anArray.length;i++){
                if(anArray[i] === 5){
                    console.log(anArray[i]())
                }else{
                    console.log("The value of index ["+i+"] is "+anArray[i])
                }

                anArray.forEach(function(value,index){
                    if(index === 5){
                        console.log(value())
                    }else{
                        console.log(value)
                    }
                })
            }

            console.log("The Date is : "+aDate.getDate())
            console.log("The function value is : "+aFunction())

        }}


//    Rectangle{
//        width: 640
//        height: 480
//        color: "black"
//        anchors.fill: parent

//        CircularGauge {
//            value: accelerating ? maximumValue : 0
//            anchors.centerIn: parent

//            property bool accelerating: false

//            Keys.onSpacePressed: accelerating = true
//            Keys.onReleased: {
//                if (event.key === Qt.Key_Space) {
//                    accelerating = false;
//                    event.accepted = true;
//                }
//            }

//            Component.onCompleted: forceActiveFocus()

//            Behavior on value {
//                NumberAnimation {
//                    duration: 1000
//                }
//            }
//        }

//    }



}
