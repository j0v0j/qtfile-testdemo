import QtQuick 2.0
import QtQuick.Controls 2.2

Column {
    id:root
    width: 240
    Rectangle{
        id: rectangle
        width:parent.width
        height:parent.height/4

        Switch {
            id: element
            x: 0
            width: 91
            height: 40
            text: qsTr("关")
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter


        }

    }
    Rectangle{
        width:parent.width
        height:parent.height/4

    }
    Rectangle{
        width:parent.width
        height:parent.height/4
    }
    Rectangle{
        width:parent.width
        height:parent.height/4
    }

}







/*##^## Designer {
    D{i:2;anchors_x:0;anchors_y:480}
}
 ##^##*/
