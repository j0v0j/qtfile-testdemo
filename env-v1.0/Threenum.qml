import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.1
Item {
    id: element2


    function formatText(count, modelData) {
        var data = count === 12 ? modelData + 1 : modelData;
        return data.toString().length < 2 ? "0" + data : data;
    }

    FontMetrics {
        id: fontMetrics
    }

    Component {
        id: delegateComponent

        Label {
            text: formatText(Tumbler.tumbler.count, modelData)
            opacity: 1.0 - Math.abs(Tumbler.displacement) / (Tumbler.tumbler.visibleItemCount / 2)
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pointSize: frame.width/8

        }
    }

    Rectangle {
        id: frame
        color: "#00ffffff"
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.fill: parent

        Row {
            id: row
            Tumbler {
                background: Rectangle{
                    height:frame.height
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: height/2
                    gradient: Gradient {
                        GradientStop {
                            position: 0.318
                            color: "#ffffff"
                        }

                        GradientStop {
                            position: 0.866
                            color: "#ffffff"
                        }

                        GradientStop {
                            position: 1
                            color: "#000000"
                        }

                    }

                }
                id: amPmTumbler
                height:frame.height*2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: frame.height/2

                width:frame.width/3
                visibleItemCount: 1
                model: 24
                delegate: delegateComponent
            }
            Tumbler {
                background: Rectangle{
                    height:frame.height
                    anchors.top: parent.top
                    anchors.topMargin: height/2
                    gradient: Gradient {
                        GradientStop {
                            position: 0.318
                            color: "#ffffff"
                        }

                        GradientStop {
                            position: 0.866
                            color: "#ffffff"
                        }

                        GradientStop {
                            position: 1
                            color: "#000000"
                        }

                    }

                }
                id: hoursTumbler
                height:frame.height*2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: frame.height/2
                width:frame.width/3
                visibleItemCount: 2
                model: 60
                delegate: delegateComponent
            }

            Tumbler {
                background: Rectangle{
                    height:frame.height
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: height/2
                    gradient: Gradient {
                        GradientStop {
                            position: 0.318
                            color: "#ffffff"
                        }

                        GradientStop {
                            position: 0.866
                            color: "#ffffff"
                        }

                        GradientStop {
                            position: 1
                            color: "#000000"
                        }

                    }

                }
                id: minutesTumbler

                height:frame.height*2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: frame.height/2
                width:frame.width/3
                visibleItemCount: 2
                model: 60
                delegate: delegateComponent
            }


        }

        Text {
            id: element
            y: 74
            width:parent.width/3
            height: parent.height
            text: qsTr(":")
            anchors.left: parent.left
            anchors.leftMargin: parent.width/6
            anchors.verticalCenter: parent.verticalCenter
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
            font.pixelSize: width/2
        }

        Text {
            id: element1
            x: 403
            y: 0
            width: parent.width/3
            height: parent.height
            text: qsTr(":")
            anchors.right: parent.right
            anchors.rightMargin: parent.width/6
            anchors.verticalCenter: parent.verticalCenter
            font.pixelSize: width/2
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignHCenter
        }
    }
}
























































/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}D{i:25;anchors_width:213.33333333333334}
}
 ##^##*/
