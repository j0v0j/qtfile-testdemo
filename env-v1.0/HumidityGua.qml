import QtQuick 2.0
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras.Private 1.0
Item {
    id: element1
    width: 200
    height: 200
    property alias circularGaugeValue: circularGauge.value
    function colorRange(value){
        if(value>=80){
            return "#FF0000"

        }else if(value>=60){
            return "#FF3D3D"

        }else if(value>=40){
            return "#00FFFF"

        }else if(value>=20){
            return "#00FF00"
        }else if(value>=0){
            return "#ffffff"
        }
    }
    Rectangle {
        id: element
        color: "black"
        radius: width>height ? height/2:width/2
        anchors.fill: parent
        CircularGauge {
            id: circularGauge
            anchors.fill: parent
            minimumValue: 0
            maximumValue: 100
            value:45
            style: CircularGaugeStyle {
                labelInset: outerRadius * 0.2
                minimumValueAngle:-145
                maximumValueAngle:145
                background: Canvas{
                    anchors.fill: parent
                    width:element.width
                    height: element.height
//                    onPaint:{
//                        var r=(circularGauge.width<circularGauge.height ? circularGauge.width/2:circularGauge.height/2)
//                        var rx=element1.width/2
//                        var ry=element1.height/2
//                        var ctx=getContext("2d")
//                        ctx.beginPath()


//                        var gradient=context.createLinearGradient(50,50,150,170);

//                        gradient.addColorStop(0,"white");
//                        gradient.addColorStop(0.7,"yellow");
//                        gradient.addColorStop(2,"white");
//                        ctx.fillStyle = gradient
//                        ctx.strokeStyle = gradient

//                        ctx.lineWidth = 2
//                        ctx.arc(rx,ry,r*4/6,0, (Math.PI*2), false);
//                        ctx.fill();
//                        ctx.stroke()


//                    }



                }
                tickmarkLabel:  Text {
                    text: styleData.value
                    font.pixelSize: element1.width>element1.height ? element1.height/12:element1.width/12

//                    color: styleData.value >= 80 ? "#e34c22" : "#e5e5e5"
                    color:  colorRange(styleData.value)
                    antialiasing: true
                }
                needle: Rectangle {
                    y: outerRadius * 0.15
                    implicitWidth: outerRadius * 0.03
                    implicitHeight: outerRadius * 0.9
                    antialiasing: true
                    color: "red"
                }
            }
        }
    }

    Text {
        id: numshow
        x: 0
        y: 206
        width: 55
        height: 27
        color: "#e5e3e3"
        anchors.horizontalCenterOffset: 0
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
        text: circularGauge.value+"%"

        anchors.bottomMargin: parent.height/5
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        font.pixelSize: parent.width>parent.height ? parent.height/6:parent.width/6



    }

}








































































































/*##^## Designer {
    D{i:4;anchors_x:140;anchors_y:8}D{i:6;anchors_height:47;anchors_width:200;anchors_x:0;anchors_y:206}
D{i:1;anchors_height:214;anchors_x:228;anchors_y:170}
}
 ##^##*/
