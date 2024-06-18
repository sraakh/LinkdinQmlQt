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
        text: qsTr("Login")
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
        id: user
        width: 180
        height: 28
        color: "#fefdfd"
        anchors.verticalCenter: parent.verticalCenter
        verticalAlignment: Text.AlignVCenter
        placeholderText: "user"
        hoverEnabled: false
        font.family: "Times New Roman"
        anchors.verticalCenterOffset: -30
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
     placeholderText: "pass"
     font.family: "Times New Roman"
     anchors.verticalCenterOffset: 30
     anchors.horizontalCenter: parent.horizontalCenter

     background: Rectangle{
         color: "transparent"
         border.color: backbutton
         radius: 10
     }
 }





}
