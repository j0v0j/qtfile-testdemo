import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras.Private 1.0
Item {
    id: element1
    width: 200
    height: 200
    property alias circularGaugeValue: circularGauge.value
    Rectangle {
        id: element
        color: "black"
        radius: width>height ? height/2:width/2
        anchors.fill: parent
        CircularGauge {
            id: circularGauge
            anchors.fill: parent
            minimumValue: -10
            maximumValue: 100

            style: CircularGaugeStyle {
                minimumValueAngle:-145
                maximumValueAngle:145

                background: Canvas{
                    anchors.fill: parent
                    width:element.width
                    height: element.height
                    onPaint:{
                        var r=(circularGauge.width<circularGauge.height ? circularGauge.width/2:circularGauge.height/2)
                        var rx=circularGauge.width/2
                        var ry=circularGauge.height/2
                        var ctx=getContext("2d")
                        ctx.beginPath()


                        var gradient=context.createLinearGradient(50,50,150,170);

                        gradient.addColorStop(0,"white");

                        gradient.addColorStop(1,"black");
                        ctx.fillStyle = gradient
                        ctx.strokeStyle = gradient

                        ctx.lineWidth = 2
                        ctx.arc(rx,ry,r*4/6,0, (Math.PI*2), false);
                        ctx.fill();
                        ctx.stroke()


                    }



                }
                tickmarkLabel:  Text {
                      font.pixelSize: Math.max(6, outerRadius * 0.1)
                      text: styleData.value
                      color: styleData.value >= 80 ? "#e34c22" : "#e5e5e5"
                      antialiasing: true
                  }
                needle: Rectangle {
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    color: Qt.rgba(0.66, 0.3, 0, 1)
                }
            }
        }
    }

    Item {
        id: element2
        x: 0
        y: 206
        width: 200
        height: 47
        anchors.bottomMargin: parent.height/8
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter

        Text {
            id: element3
            text: circularGauge.value+"℃"
            anchors.fill: parent
            horizontalAlignment: Text.AlignHCenter
            transformOrigin: Item.Center
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 20
        }


    }

}








/*##^## Designer {
    D{i:4;anchors_x:140;anchors_y:8}D{i:1;anchors_height:214;anchors_x:228;anchors_y:170}
D{i:7;anchors_x:6;anchors_y:0}D{i:6;anchors_height:47;anchors_width:200;anchors_x:0;anchors_y:206}
}
 ##^##*/
