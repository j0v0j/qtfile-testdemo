import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras.Private 1.0
Item {
    id: name
    x: 200
    y: 100
    width: 200
    height: 200
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

                        ctx.beginPath()
                        ctx.arc(rx,ry,r*1/8,0, (Math.PI*2), false);
                        ctx.fillStyle = "red"
                        ctx.strokeStyle = "red"
                        ctx.fill();
                        ctx.stroke()
                    }



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

}





/*##^## Designer {
    D{i:1;anchors_height:200;anchors_width:200;anchors_x:200;anchors_y:100}
}
 ##^##*/
