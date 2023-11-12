import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 1300
    minimumWidth: 1000
    height: 600
    minimumHeight: 419
    visible: true
//    modality: Qt.WindowModal;
//    flags: Qt.Dialog | Qt.FramelessWindowHint | Qt.WindowSystemMenuHint
    color: "#00000000"
    Rectangle {
        id: window1
        color: "#F0EEEE"
        radius: 10
        opacity: 1.0
        anchors.fill: parent

        InformationBoard {
            height: 383
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.right: parent.right

            anchors.topMargin: 36
            anchors.leftMargin: 118
            anchors.rightMargin: 64
        }

        LeftBorder {
            radius: parent.radius
        }

        DetailsDialog {
            id: detailsDialog
            implicitWidth: 544
            implicitHeight: 277

            anchors.centerIn: parent
            }

        DetailsButton {
            anchors.left: parent.left
            anchors.top: parent.top

            anchors.leftMargin: 146
            anchors.topMargin: 334.88

            onClicked: {
                detailsDialog.open();
            }
        }
    }
}
