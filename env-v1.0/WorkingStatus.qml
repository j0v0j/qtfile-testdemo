import QtQuick 2.9
import QtQuick.Controls 2.2

import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
Item {
    id: name
    property alias elementText: element.text
    property alias busyIndicatorRunning: busyIndicator.running

    BusyIndicator {
        id: busyIndicator
        anchors.fill: parent

        Text {
            id: element
            width: 200
            height: 200
            text: qsTr("Text")
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            anchors.fill: parent
            font.pixelSize: 12
        }
    }



}








/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_x:222;anchors_y:168}D{i:1;anchors_x:170;anchors_y:236}
}
 ##^##*/
