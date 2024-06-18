import QtQml 2.14
import QtQuick 2.14
import QtQuick.Window 2.14
import QtQuick.Controls 2.14

ApplicationWindow {
    id: mainWindow
    flags: Qt.FramelessWindowHint
    width: Screen.width
    height: Screen.height

    visibility: Window.FullScreen
    visible: false
    title: "Scresh Screen Test"

    Component.onCompleted: {
        var timeout = new Date().valueOf() + 3000;
        while(timeout > new Date().valueOf()) {}
    }

    Loader {
        id: login
        source: "qrc:/login.qml"
        anchors.fill: parent
    }
}
