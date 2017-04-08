pragma Singleton
import QtQuick 2.5

QtObject {
    id: root

    property color specialMainColor: "white"
    property color specialTextColor:  "black"
    property color specialPressedColor: "grey"

    property color mainColor: "white"
    property color invertMainColor: "black"
    property color textColor: "black"
    property color pressedColor: "grey"
    property color secondMainColor: "lightgray"
    property color secondInvertMainColor: "grey"
    property color secondTextColor: "white"
    property color secondPressedColor: "darkgrey"

    function setTheme(A) {
        if (A === 1)
        {
            root.specialMainColor = "white"
            root.specialTextColor = "black"
            root.specialPressedColor = "#1abc9c"

            root.mainColor = "#1abc9c"
            root.textColor = "white"
            root.pressedColor = "#16a085"
            root.invertMainColor = "#16a085"

            root.secondMainColor = "#16a085"
            root.secondInvertMainColor = "#1abc9c"
            root.secondTextColor = "white"
            root.secondPressedColor = "#1abc9c"
        }

        else if(A === 2){
            root.specialMainColor = "white"
            root.specialTextColor = "black"
            root.specialPressedColor = "#2ecc71"

            root.mainColor = "#2ecc71"
            root.textColor = "white"
            root.pressedColor = "#27ae60"
            root.invertMainColor = "#27ae60"

            root.secondMainColor = "#27ae60"
            root.secondInvertMainColor = "#2ecc71"
            root.secondTextColor = "white"
            root.secondPressedColor = "#2ecc71"

        }

        else if(A === 3){
            root.specialMainColor = "grey"
            root.specialTextColor = "white"
            root.specialPressedColor = "#e74c3c"

            root.mainColor = "#e74c3c"
            root.textColor = "black"
            root.pressedColor = "#c0392b"
            root.invertMainColor = "#c0392b"

            root.secondMainColor = "#c0392b"
            root.secondInvertMainColor = "#e74c3c"
            root.secondTextColor = "black"
            root.secondPressedColor = "#e74c3c"

        }

        else if(A === 4){
            root.specialMainColor = "grey"
            root.specialTextColor = "white"
            root.specialPressedColor = "#f1c40f"

            root.mainColor = "#f1c40f"
            root.textColor = "black"
            root.pressedColor = "#f39c12"
            root.invertMainColor = "#f39c12"

            root.secondMainColor = "#f39c12"
            root.secondInvertMainColor = "#f1c40f"
            root.secondTextColor = "black"
            root.secondPressedColor = "#f1c40f"

        }

        else if(A === 5){
            root.specialMainColor = "white"
            root.specialTextColor = "black"
            root.specialPressedColor = "#34495e"

            root.mainColor = "#34495e"
            root.textColor = "white"
            root.pressedColor = "#2c3e50"
            root.invertMainColor = "#2c3e50"

            root.secondMainColor = "#2c3e50"
            root.secondInvertMainColor = "#34495e"
            root.secondTextColor = "white"
            root.secondPressedColor = "#34495e"
        }
    }
}
