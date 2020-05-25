import QtQuick 2.0
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Item {
    id: name
    width: 640
    property alias sliderValue: myslider.value

    Slider {
        id: myslider
        y: 392
        width: 600
        height: 20
        anchors.horizontalCenterOffset: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 68
        anchors.horizontalCenter: parent.horizontalCenter
        onValueChanged: {

        }
        value: 0.5
        stepSize: 1
        maximumValue: 100
        minimumValue: 0

        style: SliderStyle {
            handle: Image {
                id: img
                width: 60
                height: 60
                sourceSize.height: -2
                fillMode: Image.PreserveAspectFit
                antialiasing: true
                source: myslider.pressed ? "qrc:/qicon/R_MG.ico" : "qrc:/qicon/G_MG.ico"
                smooth: true

                Text {
                    id: shownum
                    x: img.x + 18
                    y: img.y + 60
                    text: myslider.value
                    textFormat: Text.RichText
                    renderType: Text.NativeRendering
                    elide: Text.ElideNone
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    font.pixelSize: 24
                }
            }
            groove: Rectangle {
                id: line_parent
                implicitHeight: 8
                height: 30
                radius: 8
                color: "#201f1a"
                Rectangle {
                    id: line_child
                    height: line_parent.height
                    anchors.top: parent.top
                    anchors.left: parent.left
                    width: (myslider.width / 100.0) * myslider.value
                    color: "#fedc81"
                }
            }
        }
    }

}






