import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: window
    visible: true
    width:640
    height:480
    property bool f : true
    title: qsTr("设施园艺研究中心")

    Label {
        id: label
        x: 95
        text: qsTr("温室环境控制系统")
        anchors.horizontalCenter: parent.horizontalCenter
        textFormat: Text.PlainText
        verticalAlignment: Text.AlignVCenter
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#e31717"
        font.pointSize: 33
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
        font.pointSize: 20
        anchors.top: label.bottom
        anchors.topMargin: 10
        currentIndex: swipeView.currentIndex

        TabButton {
            text: qsTr("Page 1")
        }
        TabButton {
            text: qsTr("Page 2")
        }
        TabButton {
            text: qsTr("my page")
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

        Page1Form {

        }

        Page2Form {
        }

        PageMain{


        }
    }



}



















/*##^## Designer {
    D{i:2;anchors_height:100;anchors_width:100;anchors_x:95;anchors_y:9}
}
 ##^##*/
