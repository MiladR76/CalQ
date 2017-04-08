import QtQuick 2.0
import "."

Item {
    id: root

    property string text
    property string answerText

    signal optionsPressed()

    Rectangle{
        id: textsRect

        color: Style.specialMainColor

        height: parent.height/5

        anchors{
            top: parent.top
            left: parent.left
            right: parent.right
        }

        Rectangle{
            id: optionsRect

            color: Style.specialMainColor

            height: parent.height/2
            width: height

            anchors{
                top: parent.top
                right: parent.right
            }

            Text {
                id: optionsText
                text: "-->"
                color: Style.specialTextColor
                anchors.centerIn: parent
            }

            MouseArea{
                id: optionsMouseArea
                anchors.fill: parent

                onClicked: {
                    root.optionsPressed()
                }
            }
        }

        Rectangle{
            id: firstRect

            color: Style.specialMainColor

            height: parent.height/2

            anchors{
                top: parent.top
                left: parent.left
                right: optionsRect.left
            }

            Text {
                id: firstText

                color: Style.specialTextColor

                anchors.centerIn: parent

                text: root.answerText

                font.bold: true
            }
        }

        Rectangle{
            id: secondRect

            color: Style.specialMainColor

            height: parent.height/2

            anchors{
                bottom: parent.bottom
                left: parent.left
                right: parent.right
            }

            Text {
                id: secondText

                color: Style.specialTextColor

                anchors.centerIn: parent

                text: root.text
            }
        }
    }

    Rectangle{
        id: circleRect

        color: Style.specialPressedColor

        anchors{
            verticalCenter: numPad.top
            horizontalCenter: parent.horizontalCenter
        }

        width: height
        height: 0

        radius: textsRect.height
    }

    NumPad{
        id: numPad

        anchors{
            top: textsRect.bottom
            left: parent.left
            right: parent.right
            bottom: parent.bottom
        }

        onButtonClicked: {
            root.text = root.text + A
        }

        equalMouseArea.onClicked: {
            root.text = root.answerText
        }

        delMouseArea.onClicked: {
            root.text = root.text.slice(0,-1)
        }

        delMouseArea.onPressAndHold: {
            circleRectExpand.start()
        }
    }

    PropertyAnimation{
        id: circleRectExpand

        target: circleRect

        property: "height"

        to: textsRect.width

        duration: 300

        onStopped: {
            circleRectRevert.start()
            root.text = ""
            root.answerText = ""
        }
    }
    PropertyAnimation{
        id: circleRectRevert

        target: circleRect

        property: "height"

        to: 0

        duration: 100
    }
}
