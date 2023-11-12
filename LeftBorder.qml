import QtQuick 2.15

Rectangle {
    id: leftBorder
    width: 82
    height: parent.height
    radius: parent.radius
    color: "#242E40"
    gradient: Gradient {
        GradientStop { position: 0.07; color: "#242E40" }
        GradientStop { position: 0.005; color: "#008C95" }
    }
    Rectangle {
        width: 10
        height: leftBorder.height
        color: leftBorder.color
        anchors.right: leftBorder.right
        gradient: leftBorder.gradient
    }

    Image {
        id: img
        source: "qrc:/Group 21"
        height: 61
        width: 58
        anchors.top: parent.top
        anchors.left: parent.left

        anchors.topMargin: 16.21
        anchors.leftMargin: 11.26

        Text {
            text: qsTr("Д")
            color: "#F0EEEE"
            font.pixelSize: 16
            font.family: "ALS Sector"
            font.styleName: "normal"
            font.letterSpacing: -0.24
            font.weight: Font.Bold
            lineHeight: 16
            anchors.left: img.left
            anchors.top: img.top

            anchors.topMargin: 15.0
            anchors.leftMargin: 23.7
        }
    }
}
