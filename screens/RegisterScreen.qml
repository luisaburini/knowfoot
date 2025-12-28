import QtQuick
import QtQuick.Controls

Item{
    id: register
    width: 600
    height: 900

    Image {
        id: name
        source: "../imgs/background.png"
        Column {
            spacing: 2
            Text {
                id: title
                color: "#FFFFFF"
                text: qsTr("KnowFoot")
                font.pixelSize: 60
                horizontalAlignment: Text.AlignJustify
            }
            TextEdit {
                text: qsTr("Digite seu nome")
                color: "#FFFFFF"
            }
            Row {
                Column{
                    Text{
                        text: qsTr("Altura")
                        color: "#FFFFFF"
                    }
                    Row{
                        TextEdit{
                            color: "#FFFFFF"
                        }
                        Text{
                            text: qsTr("cm")
                            color: "#FFFFFF"
                        }
                    }
                }
                Column{
                    Text{
                        text: qsTr("Idade")
                        color: "#FFFFFF"
                    }
                    Row{
                        TextEdit{
                            color: "#FFFFFF"
                        }
                        Text{
                            text: qsTr("anos")
                            color: "#FFFFFF"
                        }
                    }
                }
            }

            Row {
                Column{
                    Text{
                        text: qsTr("Peso")
                        color: "#FFFFFF"
                    }
                    Row{
                        TextEdit{
                            color: "#FFFFFF"
                        }
                        Text{
                            text: qsTr("kg")
                            color: "#FFFFFF"
                        }
                    }
                }
                Column{
                    Text{
                        text: qsTr("Sexo")
                        color: "#FFFFFF"
                    }
                    TextEdit{
                        color: "#FFFFFF"
                    }
                }
            }

            Column{
                Text{
                    text: qsTr("Já teve alguma lesão no pé?")
                }
                TextEdit{
                    color: "#FFFFFF"
                }
            }

            Column{
                Text{
                    text: qsTr("Qual?")
                }
                TextEdit{
                    color: "#FFFFFF"
                }
            }

            Column{
                Text{
                    text: qsTr("Pratica atividade física?")
                }
                TextEdit{
                    color: "#FFFFFF"
                }
            }

            Column{
                Text{
                    text: qsTr("Qual?")
                }
                TextEdit{
                    color: "#FFFFFF"
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
