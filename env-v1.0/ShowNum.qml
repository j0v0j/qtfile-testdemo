import QtQuick 2.0

Item {
    property alias labelText: label.text
    property alias rectangleColor: rectangle.color
    Rectangle {
        id: rectangle
        color: "#22f42d"
        anchors.fill: parent

        Text {
            id: label
            text: qsTr("Text")
            anchors.fill: parent
            renderType: Text.NativeRendering
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: parent.width/2
        }
    }

}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_height:150;anchors_width:174;anchors_x:233;anchors_y:165}
}
 ##^##*/
