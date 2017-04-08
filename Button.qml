import QtQuick 2.0
import "."

Rectangle{
    id: root
    color: "#16a085"

    property alias text: buttonText.text
    //property alias backgroundSource: background.source

    property color buttonColor: "#16a085"
    property color onHoverColor: "#1BD0AD"
    property color onPressColor: "#7f8c8d"

    signal clicked()

    width: 80
    height: 40

    MouseArea{
        anchors.fill: parent

        hoverEnabled: true
        onEntered: {
            animateHoverColor.start()
        }

        onExited: {
            animateColor.start()
        }

        onPressed: {
            animatePressColor.start()
        }

        onReleased: {
            animateColor.start()
        }

        onClicked: {
            root.clicked()
        }
    }

    PropertyAnimation {id: animateHoverColor; target: root; properties: "color"; to: onHoverColor; duration: 150 }
    PropertyAnimation {id: animateColor; target: root; properties: "color"; to: buttonColor; duration: 150 }
    PropertyAnimation {id: animatePressColor; target: root; properties: "color"; to: onPressColor; duration: 80 }

    BorderImage {
        id: background
        source: "images/images/TransparentBackground.png"
        anchors.fill: parent
        border.left: 5; border.top: 5
        border.right: 5; border.bottom: 5
    }

    Text{
        id:buttonText
        color: "white"
        height: 25

        anchors{
            centerIn: parent
        }
    }
}
