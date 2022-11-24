import QtQuick 2.12
import QtQuick.Window 2.12

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML DataTypes Demo")

    property string mString: "Hello World"
    property string mString2: "https://doc.qt.io/"
    property int  mInt: 45
    property bool isFemale: true
    property int isAge: 20
    property double mDouble: 77.5
    property url mUrl: "https://doc.qt.io/"

    Rectangle{
        id: mRectId
        width: 200
        height: 100 + mInt
        anchors.centerIn: parent
        color: "yellow"
        Text {
            id: mTextId
            anchors.centerIn: parent
            text: mString
            font.bold: isFemale?true:false
        }
    }
    Component.onCompleted: {
//        console.log("The value of mString is : " + mString)
        print("The value of mString is : " + mString)
        console.log("The value of double is : " + mDouble)
        console.log("The " + mString + " box is clicked")
        console.log("The value of mInt is : " +  mInt)
        console.log("The value of mUrl is : " + mUrl)
        if(mString2 === mUrl){
            console.log("String are equal")
        }else{
            console.log("Values are not equal")
        }
    }
    MouseArea{
        anchors.fill: parent
        onClicked: {
            if(isFemale && isAge < 30){
                console.log("You may not enter the club")
            }else if (isFemale && isAge > 30){
                console.log("You may enter the club")
            }else {
                console.log("You may enter the club")
            }
        }
    }
}
