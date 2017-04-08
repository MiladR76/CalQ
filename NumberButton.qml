import QtQuick 2.0
import "."

Rectangle {
    id: root

    color: Style.mainColor

    property bool invert: false

    property alias text: buttonText.text

    property alias buttonMouseArea: mouseArea
    property alias buttonFont: buttonText.font

    signal clicked(string A)

    Rectangle{
        id: circleRect

        color: Style.pressedColor

        anchors.centerIn: parent
        width: height
        height: 0

        radius: {if (root.width<root.height) return root.width-root.border.width; else return root.height-root.border.width }
    }

    Text{
        id: buttonText

        color: Style.textColor

        anchors.centerIn: parent
    }

    MouseArea{
        id: mouseArea

        anchors.fill: parent

        onPressed: {
            buttonPressed.start()
        }

        onReleased: {
            buttonReleased.start()
        }

        onClicked: {
            root.clicked(buttonText.text)
        }
    }

    PropertyAnimation{
        id: buttonPressed

        target: circleRect

        property: "height"

        to: {if (root.width<root.height) return root.width-root.border.width; else return root.height-root.border.width }

        duration: 150
    }
    PropertyAnimation{
        id: buttonReleased

        target: circleRect

        property: "height"

        to: 0

        duration: 150
    }

    onInvertChanged: {
        if (root.invert === false){
            buttonText.color = Qt.binding(function() {return Style.textColor} )
            circleRect.color = Qt.binding(function() {return Style.pressedColor} )
            root.color = Qt.binding(function() {return Style.mainColor} )
        }
        else{
            buttonText.color = Qt.binding(function() {return Style.secondTextColor} )
            circleRect.color = Qt.binding(function() {return Style.secondPressedColor} )
            root.color = Qt.binding(function() {return Style.secondMainColor} )
        }
    }
}
