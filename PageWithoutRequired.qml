import QtQuick 2.15

Rectangle {
    id: root

    property int nonRequiredProperty

    height: 300
    width: 400
    color: "green"

    Component.onCompleted: {
        console.info("on completed");
    }

    Component.onDestruction: {
        console.info("destruction");
    }
}
