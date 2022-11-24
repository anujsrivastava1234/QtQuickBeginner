import QtQuick 2.12
import QtQuick.Window 2.12
Item{
    id:rootId
    property alias buttontext: btnTextId.text
    width: containerRectId.width
    height: containerRectId.height
    signal buttonClicked
    Rectangle{
        id:containerRectId
        width: btnTextId.implicitWidth + 20
        height: btnTextId.implicitHeight + 20
        color:"red"
        border{
            color: "blue"
            width: 3
        }

        Text {
            id: btnTextId
            anchors.centerIn: parent
            text: qsTr("Button")
        }

        MouseArea{
            anchors.fill: parent
            onClicked: {
//                console.log("CLicked ON : "+btnTextId.text)
                rootId.buttonClicked()
    //            Qt.quit()
            }
        }
    }

}

