import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4
import "login/"
Item {
    anchors.fill: parent

    readonly property color backbutton: "#4caf50"
    readonly property color pressbutton: "#cddc39"

    Image {
        anchors.fill: parent
        source: "qrc:/image/splash.png"
    }
    Image {
        id: shutdown
        source: "qrc:/image/shutdown.png"
        anchors.left: parent.left
        anchors.top: parent.top
        width: 32
        height: 32
        anchors.topMargin: 5
        anchors.leftMargin: 5
        MouseArea{
            anchors.fill: parent
            onClicked: close()
        }
    }
    Rectangle {
        id: rectangle
        anchors.centerIn: parent
        width: 300
        height: 450
        color: "#99121212"
        radius: 7
        border.color: backbutton
        border.width: 2
        Button {
            id: button
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.top: rectangle.top
            font.family: "Times New Roman"
            text: qsTr("Login")
            width: parent.width /3
            height: 30
            onClicked:{
                swipeView.currentIndex =0
            }

            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 25
                border.width: button.activeFocus ? 2 : 1
                border.color: backbutton
                radius: 5
                gradient: Gradient {
                    GradientStop { position: 0 ; color: button.pressed ? pressbutton : backbutton }
                    GradientStop { position: 1 ; color: button.pressed ? pressbutton : backbutton }
                }
            }
        }

        Button {
            id: button1
            anchors.right: parent.right
            anchors.rightMargin: 15
            width: parent.width /3
            anchors.top: rectangle.top
            font.family: "Times New Roman"
            height: 30
            text: qsTr("Sign in")
            onClicked:{
                swipeView.currentIndex =1
            }
            background: Rectangle {
                implicitWidth: 100
                implicitHeight: 25
                border.width: button1.activeFocus ? 2 : 1
                border.color: backbutton
                radius: 5
                gradient: Gradient {
                    GradientStop { position: 0 ; color: button1.pressed ? pressbutton : backbutton }
                    GradientStop { position: 1 ; color: button1.pressed ? pressbutton : backbutton }
                }
            }
        }
        SwipeView {
            id: swipeView
            anchors.left: parent.left
            anchors.right: parent.right
            anchors.top: parent.top
            anchors.bottom: parent.bottom
            anchors.leftMargin: 0
            anchors.rightMargin: 0
            anchors.topMargin: 29
            anchors.bottomMargin: 0
            clip: true
            Login{
            }

            Sing{

            }

        }


    }


}
