import QtQuick
import QtQuick.Controls
import QtQuick.Window

Item {
    id: test
    width: 600
    height: 795
    Image {
        id: name
        source: "../imgs/background.png"
        anchors.fill: parent
        Column{
            anchors.centerIn: parent
            spacing: 2
            Text {
                id: title
                text: qsTr("KnowFoot")
                horizontalAlignment: Text.AlignJustify
                color: "#FFFFFF"
            }
            Text {
                text: qsTr("Testes")
                horizontalAlignment: Text.AlignHCenter
                color: "#FFFFFF"
            }
            Column{
                spacing: 2
                Text {
                    text: qsTr("FPI")
                    horizontalAlignment: Text.Text.AlignHCenter
                    color: "#FFFFFF"
                }
                Text {
                    text: qsTr("O FPI é um método altamente recomendado\npara identificar qual tipo de pisada\nque uma pessoa possui.\nÉ composto por 6 medições")
                    horizontalAlignment: Text.AlignJustify
                    color: "#FFFFFF"
                }
                Row{
                    spacing: 10
                    Button{
                        text: qsTr("Pé esquerdo")
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
                        text: qsTr("Pé direito")
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
                Text {
                    text: qsTr("DROP DO NAVICULAR")
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                }
                Text{
                    text: qsTr("Identifica o tipo de pé por meio da diferença da altura do osso navicular entre as posturas sentada e em pé")
                    color: "#FFFFFF"
                    horizontalAlignment: Text.AlignHCenter
                }
                Row{
                    spacing: 10
                    Button{
                        text: qsTr("Pé esquerdo")
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
                        text: qsTr("Pé direito")
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
    }
}
