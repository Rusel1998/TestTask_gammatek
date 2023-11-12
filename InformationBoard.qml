import QtQuick 2.15
import QtQuick.Controls 2.15
import Qt.labs.qmlmodels 1.0

Rectangle {
    id: box
    color: "#FFF"
    radius: 8
    Text {
        text: qsTr("Обновление устройства DTYU4656")
        color: "#000"
        font.pixelSize: 24
        font.family: "Inter"
        font.styleName: "normal"
        lineHeight: 25
        anchors.left: parent.left
        anchors.top: parent.top

        anchors.topMargin: 38.8
        anchors.leftMargin: 28
    }

    Text {
        text: qsTr("Информация по прошивке")
        color: "#000"
        font.pixelSize: 18
        font.styleName: "normal"
        font.family: "Inter"
        lineHeight: 25
        anchors.left: parent.left
        anchors.top: parent.top

        anchors.leftMargin: 28
        anchors.topMargin: 87.88
    }

    Rectangle {
        id: tableWindow
        width: 711
        height: 179
        anchors.left: parent.left
        anchors.top: parent.top

        anchors.leftMargin: 28
        anchors.topMargin: 130.88

        TableView {
            id: tableView
            property var columnWidths: [129, 551]
            columnWidthProvider: function (column) { return columnWidths[column] }
            anchors.fill: tableWindow
            columnSpacing: 32
            rowSpacing: 12

            model: TableModel {
                TableModelColumn { display: "name"}
                TableModelColumn { display: "text" }

                rows: [
                    {
                        "name": "Версия прошивки:",
                        "text": "32.578.11.0.1"
                    },
                    {
                        "name": "Дата прошивки:",
                        "text": "21.06.2022"
                    },
                    {
                        "name": "описание",
                        "text": "Какое то описание прошивки может быть длинным в несколько строчек текста расположенном тут"
                    },
                    {
                        "name": "Кэш",
                        "text": "rtyjghngbERTYJGHBvvcbgxR578765434fdgHJHnbvcxesdtfyghbv"
                    }
                ]
            }

            delegate: Rectangle {
                implicitHeight: (displaytext.height > 20) ? 40 : 20

                    Text {
                        id: displaytext
                        width: parent.width
                        text: display
                        anchors.left: parent.left
                        color: "#002033"
                        font.pixelSize: 14
                        font.styleName: "normal"
                        font.family: "Inter"
                        wrapMode: Text.WordWrap
                }
            }
        }

    }
}
