import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Controls 2.15

Window {
    id: window
    width: 900
    height: 600
    visible: true
    title: qsTr("Hello World")

    StackView {
        id: stackView

        anchors.centerIn: parent
        height: 300
        width: 400
        initialItem: Rectangle {
            height: 300
            width: 400

            color: "red"
        }
    }

    Row {
        anchors {
            top: stackView.bottom
            horizontalCenter: parent.horizontalCenter
        }

        spacing: 5

        Button {
            text: "Page with req. prop."
            onClicked: {
                stackView.push(Qt.resolvedUrl("PageWithRequired.qml"), { requiredProperty: 1 });
            }
        }

        Button {
            text: "Page without req. prop."
            onClicked: {
                stackView.push(Qt.resolvedUrl("PageWithoutRequired.qml"), { nonRequiredProperty: 1 });
            }
        }
    }
}
