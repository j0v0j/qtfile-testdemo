import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: window
    property  bool f:true
    visible: true
    width:640
    height:480
    title: qsTr("设施园艺研究中心")
    background: Image {
        id: name
        anchors.fill: parent
        source: "qrc:/qicon/bg.jpg"
    }

    Label {
        id: label
        x: 95
        text: qsTr("温室环境控制系统")

        anchors.horizontalCenter: parent.horizontalCenter
        textFormat: Text.PlainText
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e31717"
        font.pointSize: parent.width/25
        anchors.top: parent.top
        anchors.topMargin: 9
        MouseArea {
            id: mouseArea
            anchors.fill: parent

            onClicked: {

                if(window.f){

                    window.visibility="Maximized"
                    window.width=640
                    window.height=480

                    window.f=0
                }else{
                    window.visibility="FullScreen"
                    window.f=1
                }


            }
        }

    }
    TabBar {
        id: tabBar
        x: 0
        y: 40
        width: window.width
        height: window.height/8
        font.pixelSize:parent.width/20
        anchors.top: label.bottom
        anchors.topMargin: 10
        currentIndex: swipeView.currentIndex


        TabButton {
            height: window.height/8
            text: qsTr("主页")
            font.pixelSize:parent.width/20

        }
        TabButton {
            height: window.height/8
            text: qsTr("水肥机")
            font.pixelSize:parent.width/20
        }
        TabButton {
            height: window.height/8
            text: qsTr("温度管理")
            font.pixelSize:parent.width/20
        }
        TabButton {
            height: window.height/8
            text: qsTr("湿度管理")
            font.pixelSize:parent.width/20
        }



    }

    SwipeView {
        id: swipeView
        x: 40
        width: window.width
        height: window.height-label.height-tabBar.height-10
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.top: tabBar.bottom
        anchors.topMargin: 6

        orientation: Qt.Horizontal

        currentIndex: tabBar.currentIndex

        PageMain{
        }
        Page1Form {

        }

        Page2Form {

        }

    }
}





























































/*##^## Designer {
    D{i:2;anchors_height:100;anchors_width:100;anchors_x:95;anchors_y:9}
}
 ##^##*/
