import QtQuick 2.0
import Qt.labs.settings 1.0
import "."

Item {
    id: root
    state: "main"

    property int tabX: 0
    property int currentTheme: 1

    transitions: [
        Transition {
            reversible: true
            from: "main"
            to: "options"

            NumberAnimation {
                target: root
                property: "tabX"
            }
        }
    ]

    states: [
        State {
            name: "main"
            PropertyChanges {target: root; tabX: 0}
        },
        State {
            name: "options"
            PropertyChanges {target: root; tabX: -root.width}
        }
    ]

    MainWindow{
        id: mainWindow

        x: tabX

        width: parent.width
        height: parent.height

        onTextChanged: mainWindow.text ? mainWindow.answerText = eval(mainWindow.text):""

        onOptionsPressed: {
            root.state = "options"
        }
    }

    OptionsPage{
        id: rect

        x: tabX + parent.width

        width: parent.width
        height: parent.height

        onThemeClicked: {
            root.currentTheme = A
            backPressed()
        }

        onBackPressed: root.state = "main"
    }

    onCurrentThemeChanged: Style.setTheme(root.currentTheme)

    Settings {
        id: settings
        property alias rootCurrentTheme: root.currentTheme
    }

    Component.onCompleted: {
        Style.setTheme(root.currentTheme)
    }
}
