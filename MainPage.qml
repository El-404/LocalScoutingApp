import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Dialogs
import QtCore

Page {
    background: Rectangle {
        color: "#404040"
    }

    ScrollView {
        width: parent.width
        height: parent.height
        ScrollBar.horizontal.policy: ScrollBar.AlwaysOff
        ScrollBar.vertical.policy: ScrollBar.AsNeeded
        ScrollBar.vertical.visible: false
        FlexboxLayout {
            id: flexLayout
            width: window.width - gap * 2
            height: parent.height
            x: gap
            wrap: FlexboxLayout.Wrap
            direction: FlexboxLayout.Row
            justifyContent: FlexboxLayout.JustifySpaceAround
            gap: 20
            Rectangle {
                id: auto
                color: 'beige'
                implicitWidth: parent.width
                implicitHeight: 200
                Text {
                    text: "Autonomous"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    color: "black"
                }
            }
            Rectangle {
                id: teleOp
                color: 'beige'
                implicitWidth: parent.width
                implicitHeight: 200
                Text {
                    text: "Teleoperated"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    color: "black"
                }
            }
            Rectangle {
                id: endGame
                color: 'beige'
                implicitWidth: parent.width
                implicitHeight: 200
                Text {
                    text: "End Game"
                    anchors.centerIn: parent
                    font.pixelSize: 20
                    color: "black"
                }
            }
            Rectangle {
                //Scroll view doesn't scroll all the way down, so this changes that
                implicitHeight: 100
            }
        }
    } // ScrollView
}
