import QtQuick
import QtQuick.Controls

Item{
    id: results
    width: 600
    height: 795

    Image {
        id: name
        source: "../imgs/background.png"
        Column {
            anchors.centerIn: parent
            spacing: 2
            Text {
                id: title
                color: "#FFFFFF"
                text: qsTr("KnowFoot")
                font.pixelSize: 60
                horizontalAlignment: Text.AlignJustify
            }
            Text {
                text: qsTr("Nome preenchido dinamicamente")
                color: "#FFFFFF"
            }
            Text {
                text: qsTr("Resultados")
                color: "#FFFFFF"
            }
            Button{
                text: qsTr("Refazer teste")
                width: 300
                height: 50
                font.pixelSize: 30
                background: Rectangle{ opacity: parent.down ? 0.1 : 0.3 }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: parent.down ? "#575976" : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
            Button{
                text: qsTr("Novo teste")
                width: 300
                height: 50
                font.pixelSize: 30
                background: Rectangle{ opacity: parent.down ? 0.1 : 0.3 }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: parent.down ? "#575976" : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
            Button{
                text: qsTr("Concluir")
                width: 300
                height: 50
                font.pixelSize: 30
                background: Rectangle{ opacity: parent.down ? 0.1 : 0.3 }
                contentItem: Text {
                    text: parent.text
                    font: parent.font
                    opacity: enabled ? 1.0 : 0.3
                    color: parent.down ? "#575976" : "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    elide: Text.ElideRight
                }
            }
        }
    }
}
