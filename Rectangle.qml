import QtQuick 2.4
import QtQuick.Window 2.2
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4

Rectangle {
	width: 320
	height: 480
	color: "transparent"
	
	border.color: "blue"
	border.width: 2
	radius: 12
	
	Button {
		id: quit
		text: "退出"
		anchors.leftMargin: 4
		z: 1.5
		visible: true
		
		style: ButtonStyle {  
            background: Rectangle {  
                implicitWidth: 70;  
                implicitHeight: 25;  
                border.width: control.pressed ? 2 : 1;  
                border.color: (control.hovered || control.pressed) ? "green" : "#888880";  
            }  
        }  
		
		onClicked: {
			Qt.quit()
		}
	}
	
	Item {
		children: [
			Text{
				text: "textOne"
			},
			Text{
				text: "textTwo"
			}
		]
		
		Component.onCompleted: {
			for (var i = 0; i < children.length; i++)
				console.log("text of label ",i, " : ", children[i].text)
		}
	}
	
	Item {
		anchors.fill: parent
		focus: true
		Keys.onPressed: {
			if (event.key == Qt.Key_Left) {
				console.log("move left")
				event.accepted = true
			}
		}
	}
}