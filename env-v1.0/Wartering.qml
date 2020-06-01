import QtQuick 2.9
import QtQuick.Controls 2.2
Page {
    id:pageid
    width: 600
    height: 400
    spacing: 10
    font.wordSpacing: 10
    background: Item {
    }

    Row{
        id:rowid
        width: pageid.width
        height: pageid.width/20
        Repeater{
            id: repeater
            model: ["状态","灌溉时刻","时长","状态","灌溉时刻","时长"]
            Text {
                text: modelData
                font.pointSize: parent.height/3
                anchors.verticalCenter: parent.verticalCenter
                renderType: Text.NativeRendering
                textFormat: Text.AutoText
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                width: (index===0 || index===2 || index===3|| index===5)? pageid.width/8:pageid.width*2/8


            }

        }


    }

    Grid {
        id: grid
        property bool flag1: false
        property bool flag2: false
        property bool flag3: false
        property bool flag4: false
        property bool flag5: false
        property bool flag6: false
        property bool flag7: false
        property bool flag8: false
        x: 0
        y: 55
        columns: 2
        rows: 4
        width: parent.width
        height: parent.height-rowid.height
        spacing: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        property int recwidth : pageid.width/8
        property int recheight : grid.height/4
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }
        WorkingTime{
            width:grid.recwidth*4
            height:grid.recheight
        }

    }

}











/*##^## Designer {
    D{i:7;anchors_x:84;anchors_y:210}D{i:5;anchors_y:55}
}
 ##^##*/
