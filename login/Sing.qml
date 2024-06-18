import QtQuick 2.14
import QtQuick.Controls 2.14
import QtQuick.Controls.Styles 1.4

Item{
    id: item1
    width: 300
    height: 400

    Button {
        id: button
        hoverEnabled: true
        text: qsTr("Continue")
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.horizontalCenter: parent.horizontalCenter
        contentItem:Text {
            id: name
            text: button.text
            horizontalAlignment: Text.AlignHCenter
            color: "#FFFFFF"
        }
        background:Rectangle {
            implicitWidth: 70
            implicitHeight: 30
            color: button.hovered ? backbutton: "transparent"
            border.color: backbutton
            radius: 5
        }
    }

    TextField{
        id: email
        width: 180
        height: 28
        color: "#fefdfd"
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        placeholderText: "Email"
        hoverEnabled: false
        font.family: "Times New Roman"
        anchors.verticalCenterOffset: -60
        anchors.horizontalCenter: parent.horizontalCenter
        background: Rectangle{
            color: "transparent"
            border.color: backbutton
            radius: 10
        }

 }

 TextField{
     id:pass
     width: 180
     height: 28
     color: "#fefdfd"
     anchors.verticalCenter: parent.verticalCenter
     echoMode: TextInput.PasswordEchoOnEdit
     placeholderText: "Passwoed"
     font.family: "Times New Roman"
     anchors.verticalCenterOffset: 0

     anchors.horizontalCenter: parent.horizontalCenter

     background: Rectangle{
         color: "transparent"
         border.color: backbutton
         radius: 10
     }
 }

 Label {
     id: label

     text: qsTr("8974")
     font.bold: true
     color: "#FFFFFF"
     font.pointSize: 25
     anchors.top: pass.bottom
     anchors.topMargin: 30
     anchors.horizontalCenter: parent.horizontalCenter
 }
 TextField{
     id:capcha
     width: 180
     height: 28
     color: "#fefdfd"
     echoMode: TextInput.PasswordEchoOnEdit
     font.family: "Times New Roman"
     anchors.top: label.bottom
     anchors.horizontalCenter: parent.horizontalCenter

     background: Rectangle{
         color: "transparent"
         border.color: backbutton
         radius: 10
     }
 }




}
