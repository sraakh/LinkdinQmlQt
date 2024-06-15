import QtQuick 2.15
import QtQuick.Window 2.15

Item {
    Loader {
        id: mainWindowLoader
        active: false
        source: "qrc:/window.qml"
        asynchronous: true
        onLoaded: {
            item.visible = true;
            splashScreenLoader.item.visible = false;
            splashScreenLoader.source = "";
        }
    }

    Loader {
        id: splashScreenLoader
        source: "qrc:/splash.qml"

    }
    Connections{
        target: splashScreenLoader.item
        function onMyclick() {
            mainWindowLoader.active = true
        }
    }
}
