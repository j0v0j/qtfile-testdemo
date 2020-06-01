import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Controls.Universal 2.2
import QtQuick.Extras 1.4


Page {
    id: page
    property alias luxvalue: attrs.lux
    property alias temperature: attrs.temperature
    background: Item {
        QtObject{
            id: attrs;
            property int  lux;
            property int  temperature;
            property int  counter;
            Component.onCompleted: {
                attrs.counter = 0;
                countDown.start();
            }
        }

    }
    Image {

        id: picture
        enabled: false
        anchors.fill: parent

        source: "qrc:/qicon/sun.ico"
    }

        Text {
            id: temperature
            width: parent.width/4
            height: parent.height/4
            text: attrs.temperature+qsTr("℃")
            anchors.top: parent.top
            anchors.topMargin: parent.height*2/3
            anchors.right: parent.right
            anchors.rightMargin: parent.height*1/5
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: parent.height/5
        }
        Text {
            id: lux
            width: parent.width/4
            height: parent.height/4
            text: attrs.lux+qsTr("lux")
            anchors.top: parent.top
            anchors.topMargin: parent.height*1/5
            anchors.right: parent.right
            anchors.rightMargin: parent.height/2
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: parent.height/5
        }




}



























/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:2;anchors_x:62;anchors_y:84}
}
 ##^##*/
