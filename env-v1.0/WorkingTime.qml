import QtQuick 2.9
import QtQuick.Controls 2.2

Row {
    id: row
    property bool flag1: false
    Rectangle{
        id: rectangle//序号
        width:parent.width/4
        height:parent.height
        color: "#00faff00"
        Button {
            id: status1
            text: qsTr("失效")
            font.pointSize: parent.height/8
            background:Item {

            }
            anchors.fill: parent
            onReleased: {
                row.flag1=!row.flag1
                if(row.flag1){
                    status1.text="激活"
                }else{
                    status1.text="失效"

                }
                busyIndicator1.running=row.flag1
            }
        }
        BusyIndicator {
            id: busyIndicator1
            x: 225
            y: 0
            anchors.fill: parent

            running: false
        }




    }
    Rectangle{
        id: rectangle1//灌溉时刻
        width:parent.width/2
        height:parent.height
        color: "#00ffffff"

        Threenum {
            id: threenum
            anchors.rightMargin: 10
            anchors.leftMargin: 10
            anchors.bottomMargin: 10
            anchors.topMargin: 10
            anchors.fill: parent

        }


    }
    Rectangle{//灌溉时长
        width:parent.width/4
        color: "#19f462"
        radius: width/4
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        Tumbler {
            id: tumbler
            anchors.bottomMargin: -row.height/2
            anchors.topMargin: -row.height/2
            wrap: true
            anchors.fill: parent
            visibleItemCount: 2
            currentIndex: 5
            rightPadding: 0
            leftPadding: 0
            font.pointSize: parent.height/4
            padding: 12
            bottomPadding: 0
            topPadding: 0
            model: 59
        }
    }
    Component.onCompleted: {
        busyIndicator1.running=false
    }
}















/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:7;anchors_height:480}
}
 ##^##*/
