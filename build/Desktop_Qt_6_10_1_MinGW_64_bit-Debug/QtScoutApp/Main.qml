import QtQuick
import QtQuick.Layouts
import QtQuick.Controls
import QtQuick.Dialogs
import QtCore
import 'main.js' as Logic

Window {
    id: window
    width: 640
    height: 480
    visible: true
    color: "#404040"
    title: qsTr("Bomb Botz Scouting App")

    StackView{
        id: stackView
        width: parent.width
        height: parent.height - header.height
        y: header.height + 20
        initialItem: "MainPage.qml"
    }//stackView

    Rectangle {
        id: header
        width: window.width
        height: 50
        color: "#606060"
        property string gameName: "Missing Game Data"
        Text {
            id: gameName
            anchors.rightMargin: 20
            text: parent.gameName
            font.pixelSize: parent.height / 2
            color: "beige"
            font.weight: 800
            MouseArea {
                anchors.fill: parent
                onClicked: stackView.push("MainPage.qml")
            }
        }
        Button {
            anchors.left: gameName.right
            anchors.rightMargin: 20
            id: gameButton
            height: header.height
            width: 150
            Text {
                anchors.centerIn: parent
                text: "Upload Game Data"
                color: 'black'
            }
            onClicked: gameDialog.open()
        }
        FileDialog {
            id: gameDialog
            nameFilters: ["json files (*.json *.JSON *.Json)"]
            currentFolder: StandardPaths.standardLocations(StandardPaths.DocumentsLocation)[0]
            onAccepted: Logic.newGame(currentFile, header)
        }
        Button {
            anchors.left: gameButton.right
            anchors.rightMargin: 20
            id: exportButton
            height: header.height
            width: 150
            Text {
                anchors.centerIn: parent
                text: "Export Game Data"
                color: 'black'
            }
            onClicked: stackView.push("QrCodePage.qml")
        }
        ComboBox {
            anchors.left: exportButton.right
            id: scoutDropdown
            height: header.height
            width: 150

            model: ["Select Scout", "Joe Coyle", "El Campus", "Ryan Brill"]
            Rectangle {
                color: "#808080"
                anchors.fill: parent
            }
        }
        ComboBox {
            anchors.left: scoutDropdown.right
            id: matchDropdown
            height: header.height
            width: 150

            model: ["Select Match", "PR1", "PR2", "PR3", "..."]
            Rectangle {
                color: "#808080"
                anchors.fill: parent
            }
        }
        ComboBox {
            anchors.left: matchDropdown.right
            id: allianceDropdown
            height: header.height
            width: 150

            model: ["Select Alliance", "Red 1",  "Red 2", "Red 3", "Blue 1", "Blue 2", "Blue 3"]
            Rectangle {
                color: "#808080"
                anchors.fill: parent
            }
        }

        Button {
            id: homeButton
            height: header.height
            width: 150
            anchors.right: parent.right
            Text {
                anchors.centerIn: parent
                text: "Home"
                color: 'black'
            }
            onClicked: stackView.push("MainPage.qml")
        }
    }//header

}//window


