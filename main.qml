import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.2

Window {
    visible: true
    width: 60*8
    color: "red"

    Text {
        id: hello
        anchors.centerIn: parent
        text: "Hello World!"
        font.bold: true
        font {
            pointSize: 20
            italic: true
        }
    }

    MouseArea {
        anchors.fill: parent
        onClicked: {
            hello.text = "hello"
            hello.font.pointSize = 40
        }
    }
}
