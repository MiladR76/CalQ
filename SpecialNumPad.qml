import QtQuick 2.0
import "."

Item {
    id: root

    signal buttonClicked(string A)

    SpecialNumButton{
        text: "√("
        buttonText: "√"

        anchors.fill: parent

        onClicked: root.buttonClicked(A)
    }
}
