import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Controls.Material 2.2
import QtQuick.Controls.Universal 2.2
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4

Page{
    id: page
    width: 600
    height: 400
    background: Item {


    }

    TerperaTure {
        id: terperaTure
        width: parent.width/4
        height: width*3/4
        anchors.top: parent.top
        anchors.topMargin: 28
        anchors.left: parent.left
        anchors.leftMargin: parent.width/8
        luxvalue:attrs.counter
        temperature:attrs.counter
    }

    HumidityGua {
        id: humidityGua
        x: 394
        width: parent.width/4
        height: width
        anchors.top: parent.top
        anchors.topMargin: 28
        anchors.right: parent.right
        anchors.rightMargin: parent.width/8
        circularGaugeValue:attrs.counter
    }
    Timer{
        id:countDown;
        interval: 1000;
        repeat: true;
        triggeredOnStart: true;

        onTriggered: {
            attrs.counter += 1;
            if(attrs.counter >100 )
            {
                attrs.counter = 0;
            }
        }
    }

    QtObject{
        id: attrs;
        property int  counter;
        property bool  f1;

        Component.onCompleted: {
            attrs.f1=false;
            attrs.counter = 0;
            countDown.start();

        }
    }

    Row {
        id: row
        x: 0
        y: 221
        width: parent.width
        height: parent.height/5
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height/10
        Repeater{

            model: ListModel{
                id:thmodel
                ListElement{name:"湿帘";qicon:"qrc:/qicon/honghuang.ico"}
                ListElement{name:"风机";qicon:"qrc:/qicon/honghuang.ico"}
                ListElement{name:"上通风";qicon:"qrc:/qicon/honghuang.ico"}
                ListElement{name:"下通风";qicon:"qrc:/qicon/honghuang.ico"}
                ListElement{name:"水肥机";qicon:"qrc:/qicon/honghuang.ico"}
                ListElement{name:"雾化降温";qicon:"qrc:/qicon/honghuang.ico"}
                ListElement{name:"基质加热";qicon:"qrc:/qicon/honghuang.ico"}
            }
            Rectangle{
                id: rectangle
                width:row.width/7
                height:row.height
                color: "#00000000"
                Image {
                    height: parent.height
                    anchors.horizontalCenter: parent.horizontalCenter
                    width:height
                    verticalAlignment: Text.AlignVCenter
                    source: qicon
                }
                Text {
                    text: name
                    font.pixelSize: parent.height/5
                    font.capitalization: Font.AllUppercase
                    elide: Text.ElideMiddle
                    font.bold: true
                    anchors.fill: parent
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter

                }

            }


        }









    }



}





































































































































































































































/*##^## Designer {
    D{i:6;anchors_height:144;anchors_width:600;anchors_x:0;anchors_y:221}
}
 ##^##*/
