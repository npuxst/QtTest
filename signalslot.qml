import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.4

Window {
    id: win
    visible: true
    width: 300
    height: 200
    color: "black"

    Text {
        id : txt
        text: "Center Text"
        font.pointSize: 18
        color: "blue"
    }

    Button {
        x: 0
        y: 0
        id: btn
        text: "Quit"
    }

    onWidthChanged: widthChanged()

    onHeightChanged: {
        txt.y = (win.height - txt.height)/2
    }

    function widthChanged(){
        txt.x = (win.width - txt.width)/2
    }

    function quitFunc(){
        Qt.quit()
    }

/*
    Component.onCompleted: {
        btn.clicked.connect(quitFunc)
    }
    */

    Connections {
        target: btn
        onClicked: quitFunc()
    }
}

