import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Window 2.2

Window {
    id: splashScreen
    modality: Qt.ApplicationModal
    flags: Qt.SplashScreen
    width: 800
    height: 600
    signal myclick()
    Rectangle {
        id: splashRect
        color: "#90cAF9"
        anchors.fill: parent
        border.width: 1
        border.color: "black"
        Image {
            source: "qrc:/image/splash.png"
            anchors.fill: parent
            opacity: 0.5
        }
        Text {
            id: initializationErrorMessage
            text: "Welcom Linkdin"
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: 50
            font.bold: true
            font.pixelSize: 20
            horizontalAlignment: Text.AlignHCenter
            styleColor: "#292626"
            style: Text.Outline
            font.underline: true
            font.family: "Times New Roman"
            color: "black"
        }

        Text {
            id: text
            text: "LinkedIn is one of the most popular social media platforms for professionals and businesses.
             With over 760 million registered users, it has become an essential tool for business owners, marketers, and job seekers.
             In this article, we will discuss the benefits of LinkedIn for business and why you should consider using it to promote your brand."
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: initializationErrorMessage.bottom
            anchors.topMargin: 50
            font.pixelSize: 14
            horizontalAlignment: Text.AlignHCenter
            font.family: "Times New Roman"
            wrapMode: Text.WrapAnywhere
            color: "black"
        }
        BusyIndicator {
            id: busy
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 100
            width: 100
            height: 100
            running: false
            anchors.horizontalCenter: parent.horizontalCenter

        }

        Rectangle{
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 50
            anchors.horizontalCenter: parent.horizontalCenter
            height: 40
            width: 70
            radius: 20
            color: "#607D8B"
            Text {

                text: qsTr("start")
                anchors.centerIn: parent
                font.family: "Times New Roman"
                font.pixelSize: 12
                font.bold: true
                color: "#FFFFFF"

            }
            MouseArea{
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    busy.running = true
                    myclick()
                }
                onEntered: {
                    parent.color = "green"


                }
                onExited: {
                    parent.color = "#607DB8"
                }
            }
        }

    }

    Component.onCompleted: visible = true
}
