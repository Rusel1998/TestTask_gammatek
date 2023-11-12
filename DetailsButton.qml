import QtQuick 2.15
import QtQuick.Controls 2.15

Button {
    id: detailsButton
    text: qsTr("Детали")

    contentItem: Text {
        anchors.centerIn: background
        font.family: "Inter"
        font.pixelSize: 15
        font.styleName: "normal"
        font.weight: Font.Medium
        text: detailsButton.text
        color: "#FFF"
    }
    background: Rectangle {
        id: background
        width: 85
        height: 44
        radius: 5
        color: "#4480F3"
    }
}
