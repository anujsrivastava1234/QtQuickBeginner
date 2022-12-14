import QtQuick 2.12

Item {
    id:container
    property alias cellColor: rectangle.color
    signal clicked(cellColor: color)

    width: 30
    height: 30

    Rectangle{
        id:rectangle
        border.color: white
        anchors.fill: parent
    }

    MouseArea{
        anchors.fill: parent
        onClicked: {
            container.clicked(container.cellColor)
        }
    }
}
