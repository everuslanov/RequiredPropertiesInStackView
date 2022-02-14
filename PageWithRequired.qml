import QtQuick 2.15

Rectangle {
    id: root

    property real openingProgress: 1.0
    required property var requiredProperty

    height: 300
    width: 400
    color: "blue"

    Component.onCompleted: {
        console.info("on completed");
    }

    Component.onDestruction: {
        console.info("destruction");
    }
}
