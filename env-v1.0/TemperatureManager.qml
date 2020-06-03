import QtQuick 2.9
import QtQuick.Controls 2.2
/*
上通风、下通风、风机、湿帘、雾化、
*/

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
            model: ["","风机","湿帘","雾化","上通风","下通风"]
            Text {
                text: modelData
                font.pointSize: parent.height/3
                anchors.verticalCenter: parent.verticalCenter
                renderType: Text.NativeRendering
                textFormat: Text.AutoText
                verticalAlignment: Text.AlignBottom
                horizontalAlignment: Text.AlignHCenter
                width: pageid.width/6
            }
        }
    }
    Row {
        id: grid
        x: 0
        y: 55

        width: parent.width
        height: parent.height-rowid.height
        spacing: 0
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        property int recwidth : pageid.width/6
        property int recheight : grid.height/4
        TemperatureModel{
            width:grid.recwidth
            height:grid.recheight*4
        }
        TemperatureModel{
            width:grid.recwidth
            height:grid.recheight*4
        }
        TemperatureModel{
            width:grid.recwidth
            height:grid.recheight*4
        }
        TemperatureModel{
            width:grid.recwidth
            height:grid.recheight*4
        }
        TemperatureModel{
            width:grid.recwidth
            height:grid.recheight*4
        }
        TemperatureModel{
            width:grid.recwidth
            height:grid.recheight*4
        }



    }


}









/*##^## Designer {
    D{i:1;anchors_height:400;anchors_width:400;anchors_x:90;anchors_y:92}
}
 ##^##*/
