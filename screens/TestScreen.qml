import QtQuick
import QtQuick.Controls
import QtQuick.Window

Item {
    id: test
    width: 600
    height: 900

    signal clickedFPILeft()
    signal clickedFPIRight()

    signal clickedNavicularLeft()
    signal clickedNavicularRight()

    signal backHome()

    Image {
        id: name
        source: "../imgs/background.png"
        anchors.fill: parent
        Column{
            spacing: 2
            Row{
                Button{
                    background: Image {
                        id: backHome
                        source: "../imgs/back.png"
                        width: 100
                        height: 100
                    }
                    onClicked: test.backHome()
                }
                Text {
                    id: title
                    text: qsTr("KnowFoot")
                    width: 500
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    color: "#FFFFFF"
                    font.pointSize: 60
                    font.bold: true
                }
            }
            Text {
                text: qsTr("Testes")
                width: 600
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignTop
                font.pointSize: 24
                color: "#FFFFFF"
            }
            Column{
                spacing: 2
                Text {
                    text: qsTr("FPI")
                    width: 600
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    color: "#FFFFFF"
                    font.pointSize: 20
                }
                Text {
                    text: qsTr("O FPI é um método altamente recomendado para identificar qual tipo de pisada que uma pessoa possui. É composto por 6 medições")
                    width: 600
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    color: "#FFFFFF"
                    wrapMode: Text.WordWrap
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
                        onClicked: test.clickedFPILeft()
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
                        onClicked: test.clickedFPIRight()
                    }
                }
                Text {
                    text: qsTr("DROP DO NAVICULAR")
                    color: "#FFFFFF"
                    width: 600
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    font.pointSize: 20
                }
                Text{
                    text: qsTr("Identifica o tipo de pé por meio da diferença da altura do osso navicular entre as posturas sentada e em pé")
                    color: "#FFFFFF"
                    width: 600
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignTop
                    wrapMode: Text.WordWrap
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
                        onClicked: test.clickedNavicularLeft()
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
                        onClicked: test.clickedNavicularRight()
                    }
                }
            }
        }
    }
}
