import QtQuick 2.6
import "."

Rectangle{
    id: themeRect
    width: parent.width
    color: Style.specialMainColor

    signal backPressed()
    signal aboutClicked()
    signal manualClicekd()
    signal themeClicked(int A)

    Text{
        id: themeText
        text: "Theme"
        padding: 6
        font.pointSize: Qt.platform.os == "android" ? 20:15
        height: backRect.height
        color: Style.specialTextColor
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Row{
        id: themesRow
        width: parent.width*4/5

        anchors{
            top: themeText.bottom
            horizontalCenter: parent.horizontalCenter
        }

        spacing: 6

        Repeater {
            id: repeater
            model: 5

            property var colorSet1: ["#1abc9c", "#2ecc71", "#e74c3c", "#f1c40f", "#34495e"]
            property var colorSet2: ["#16a085", "#27ae60", "#c0392b", "#f39c12", "#2c3e50"]

            delegate: Rectangle{
                height: width
                width: (themesRow.width-24)/5
                color: "red"

                Rectangle{
                    height: parent.height/2

                    color: repeater.colorSet1[index]

                    anchors{
                        top: parent.top
                        left: parent.left
                        right: parent.right
                    }
                }
                Rectangle{
                    height: parent.height/2

                    color: repeater.colorSet2[index]

                    anchors{
                        bottom: parent.bottom
                        left: parent.left
                        right: parent.right
                    }
                }

                MouseArea{
                    anchors.fill: parent

                    onClicked: themeClicked(index+1)
                }
            }
        }
    }

    Rectangle{
        id: backRect

        color: Style.specialMainColor

        height: parent.height/10
        width: height

        anchors{
            top: parent.top
            left: parent.left
        }

        Text {
            id: optionsText
            text: "<--"
            color: Style.specialTextColor
            anchors.centerIn: parent
        }

        MouseArea{
            id: optionsMouseArea
            anchors.fill: parent

            onClicked: {
                backPressed()
            }
        }
    }
}


