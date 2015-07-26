import QtQuick 2.4
import QtQuick.Window 2.2

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

    onWidthChanged: {
        txt.x = (win.width - txt.width)/2
    }

    onHeightChanged: {
        txt.y = (win.height - txt.height)/2
    }
}
