import QtQuick 2.9
import QtQuick.Controls 2.2

Page {
    id:pageid
    width: 600
    height: 400
    background: Item {
    }

    Row{
        width: pageid.width
        height: 27
        anchors.top: parent.top
        anchors.topMargin: 22
        Repeater{
            model: ["序号","灌溉时刻","灌溉状态","状态","序号","灌溉时刻","灌溉状态","状态"]
            Text {
                text: modelData
                font.pixelSize: pageid.width/40
                renderType: Text.NativeRendering
                textFormat: Text.AutoText
                verticalAlignment: Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: pageid.width/8

            }

        }


    }

        Grid {
            id: grid
            x: 0
            y: 55
            columns: 8
            rows: 4
            width: 600
            height: 345
            Repeater{
                model: ["序号","灌溉时刻","灌溉状态","状态","序号","灌溉时刻","灌溉状态","状态","qq"]
                Text {
                    text: modelData
                    font.pixelSize: pageid.width/40
                    renderType: Text.NativeRendering
                    textFormat: Text.AutoText
                    verticalAlignment: Text.AlignVCenter
                    horizontalAlignment: Text.AlignHCenter
                    width: pageid.width/8

                }

            }
        }


    }













