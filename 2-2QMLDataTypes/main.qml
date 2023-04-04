import QtQuick 2.12
import QtQuick 2.11
import QtQuick.Window 2.12
import QtQuick.Window 2.11
Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML data-types")

    property string m1Text: "Hello"
    property string mString: "https://doc.qt.io/"
    property int mInt: 45
    property bool isFemale: true
    property double mDouble: 77.5
    property url mUrl: "https://doc.qt.io/"

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

    property var aFont: Qt.font({family: "Helvetica",pointSize: 30,bold: false})

    property  var mDate: "04:04:2023"

    Row {
        anchors.centerIn: parent

        Rectangle {
            id:mbtn
            width: 200
            height: 200
            radius: 20
            visible: true
            color:aColor

            Text {
                id: mtext
                anchors.centerIn: parent
                text: mUrl
                font: aFont
            }
            MouseArea {
                anchors.fill: parent;
                onClicked: {
                    console.log("Click me is clicked")


                }
            }
        }

        Rectangle {

            width: 200
            height: 200
            radius: 10
            visible: true
            color: "green"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    mbtn.visible=false
                    mtext.text="Green Btn is clicked"
                }
            }

        }

        Component.onCompleted: {
            console.log("The value of the property is : "+mString)
            console.log("The value of mInt property is :"+mInt)

            if(isFemale)
            {
                console.log("You may wear a dress")
            }else {
                console.log("You may wear a suit")
            }

            console.log("The value of mDouble is : "+mDouble)

            if(mUrl===mString)
            {
                console.log("They are same")
            }else {
                console.log("They are not same")
            }

            console.log("Playing with Data types")

            console.log("The value of aNumber : "+aNumber)
            console.log("The value of aBool : "+aBool)
            console.log("The value of aString : "+aString)
            console.log("The length of aArray :"+anArray.length)

            console.log("The value of aRect at x: "+aRect.x+" y : "+aRect.y+" width : "+aRect.width+" height : "+aRect.height)

//            anArray.forEach(function(value,index){
//                if(index === 5) {
//                    console.log(value())
//                }else {
//                    console.log(value)
//                }
//            }
//            )

            for(var i=0;i<anArray.length;i++)
            {
                if(i === 5)
                {
                    console.log(anArray[i]())
                }else {
                    console.log(anArray[i])
                }
            }

            console.log("The current date : "+mDate)

            console.log("The value of the function "+aFunction())
        }
    }
}
