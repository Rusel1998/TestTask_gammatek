import QtQuick 2.15
import QtQuick.Controls 2.15

Dialog {
    id: detailsDialog
    modal: true
    background: Rectangle {
        id: detailsbox
        radius: 6
        anchors.fill: parent
        color: "#FFF"
        Text {
            text: "Детали по устройству"
            color: "#1E2021"
            font.family: "Inter"
            font.pixelSize: 20
            font.styleName: "Normal"
            font.bold: true

            anchors.left: detailsbox.left
            anchors.top: detailsbox.top

            anchors.leftMargin: 24
            anchors.topMargin: 24
        }

        Rectangle {
            id: toprec
            width: 496
            height: description.height

            anchors.left: detailsbox.left
            anchors.top: detailsbox.top

            anchors.leftMargin: 24
            anchors.topMargin: 72

            clip: true

            Text {
                id: description
                width: parent.width
                text: "Какое-то описание прошивки может быть длинным в несколько строчек текста,\nрасположенном тут"
                color: "#002033"
                font.family: "IBM Plex Sans"
                font.pixelSize: 15
                font.styleName: "Normal"
                lineHeight: 1.1
                wrapMode: Text.WordWrap

                anchors.left: parent.left
                anchors.top: parent.top

            }
        }

        Rectangle {
            id: bottomrec
            width: detailsbox.width
            height: 104

            anchors.bottom: detailsbox.bottom
            anchors.left: detailsbox.left

            color: "#F8F8F8"
        }
    }

    Button {
        id: closeButton1
        anchors.top: detailsbox.top
        anchors.right: parent.right

        anchors.topMargin: 8
        anchors.rightMargin: 8

        contentItem: Image {
            source: "qrc:/close"
            height: 24
            width: 24
            anchors.top: parent.top
            anchors.left: parent.left

            anchors.centerIn: background
        }
        background: Rectangle {
            id: background
            width: 46
            height: 46
            color: parent.color
        }
        onClicked: {
            detailsDialog.close();
        }
    }

    Button {
        id: closeButton2
        text: qsTr("Закрыть")

        anchors.bottom: parent.bottom
        anchors.right: parent.right

        anchors.bottomMargin: 24
        anchors.rightMargin: 44

        contentItem: Text {
            anchors.centerIn: background1
            font.family: "Inter"
            font.pixelSize: 17
            font.styleName: "normal"
            font.weight: Font.Medium
            text: closeButton2.text
            color: "#1E2021"
        }
        background: Rectangle {
            id: background1
            width: 121
            height: 56
            color: bottomrec.color
        }
        onClicked: {
            detailsDialog.close();
        }
    }
}
