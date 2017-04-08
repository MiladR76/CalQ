import QtQuick 2.0
import "."

Item {
    id: root

    property alias delMouseArea: bdel.buttonMouseArea
    property alias equalMouseArea: be.buttonMouseArea

    signal buttonClicked(string A)

    NumberButton{
        id: b1

        text: '1'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:0
        y:parent.height/5

    }

    NumberButton{
        id:b2

        text:'2'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/4
        y:parent.height/5
    }

    NumberButton{
        id:b3

        text:'3'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/2
        y:parent.height/5

    }

    NumberButton{
        id:b4

        text:'4'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:0
        y:parent.height*2/5

    }

    NumberButton{
        id:b5

        text:'5'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/4
        y:parent.height*2/5

    }

    NumberButton{
        id:b6

        text:'6'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/2
        y:parent.height*2/5

    }

    NumberButton{
        id:b7

        text:'7'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:0
        y:parent.height*3/5

    }

    NumberButton{
        id:b8

        text:'8'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/4
        y:parent.height*3/5

    }

    NumberButton{
        id:b9

        text:'9'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/2
        y:parent.height*3/5

    }

    NumberButton{
        id:bp

        text:'.'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:0
        y:parent.height*4/5

    }

    NumberButton{
        id:b0

        text:'0'

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/4
        y:parent.height*4/5

    }

    NumberButton{
        id:be

        text:'='

        onClicked: root.buttonClicked(A)

        buttonFont.pointSize: 15

        width:parent.width/4
        height:parent.height/5

        x:parent.width/2
        y:parent.height*4/5

    }

    NumberButton{
        id:bm

        invert: true

        text:'*'

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:parent.width*3/4
        y:parent.height/5

    }

    NumberButton{
        id:bd

        invert: true

        text:'/'

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:parent.width*3/4
        y:parent.height*2/5

    }

    NumberButton{
        id:bl

        invert: true

        text:'+'

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:parent.width*3/4
        y:parent.height*3/5

    }

    NumberButton{
        id:bi

        invert: true

        text:'-'

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:parent.width*3/4
        y:parent.height*4/5

    }

    NumberButton{
        id:bdel

        invert: true

        text:'Del'

        width:parent.width/4
        height:parent.height/5

        x:parent.width*3/4
        y:0

    }

    NumberButton{
        id:po

        invert: true

        text:"("

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:0
        y:0


    }

    NumberButton{
        id:pc

        invert: true

        text:")"

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:parent.width/4
        y:0

    }

    NumberButton{
        id:dr

        invert: true

        text:"%"

        onClicked: root.buttonClicked(A)

        width:parent.width/4
        height:parent.height/5

        x:parent.width/2
        y:0


    }
}
