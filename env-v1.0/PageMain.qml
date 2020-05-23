import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Extras 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Extras.Private 1.0

Page{
    width: 600
    height: 400


    CircularGauge {
        id: circularGauge
        anchors.fill: parent
        minimumValue: 10
        maximumValue: 50
        value: 10

        style: CircularGaugeStyle {
            minimumValueAngle:-45
            maximumValueAngle:45

            background: Image {
                id: name
                anchors.fill: parent
                source: "qrc:/qicon/beautgir.jpg"
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





















/*##^## Designer {
    D{i:1;anchors_x:189;anchors_y:80}
}
 ##^##*/
