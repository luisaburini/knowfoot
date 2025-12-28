import QtQuick
import QtQuick.Controls
import QtMultimedia

Item{
    id: fpiScreen
    width: 600
    height: 900

    property var level

    signal clickedLevel(int level)
    signal nextPage()

    property var descriptionText


    onDescriptionTextChanged: {
        description.text = descriptionText
    }

    property var wordForImage

    onWordForImageChanged: {
        imageMinusTwo.source = "../imgs/fpi"+wordForImage+"-2.png"
        imageMinusOne.source = "../imgs/fpi"+wordForImage+"-1.png"
        imageZero.source = "../imgs/fpi"+wordForImage+"0.png"
        imageOne.source = "../imgs/fpi"+wordForImage+"1.png"
        imageTwo.source = "../imgs/fpi"+wordForImage+"2.png"
    }

    Image {
        id: name
        source: "../imgs/background.png"
        anchors.fill: parent
        Column {
            anchors.fill: parent
            spacing: 2
            Text {
                id: title
                color: "#FFFFFF"
                text: qsTr("KnowFoot")
                font.pixelSize: 60
                font.bold: true
                width: 600
                horizontalAlignment: Text.AlignHCenter
            }
            Rectangle{
                width: 600
                height: 50
                color: "#00000000"
                border.color: "#FFFFFF"
                border.width: 3
                Text {
                    text: qsTr("F.P.I.")
                    color: "#FFFFFF"
                    width: 600
                    horizontalAlignment: Text.AlignHCenter
                    verticalAlignment: Text.AlignVCenter
                    font.pointSize: 24
                }
            }

            Text {
                id: description
                text: qsTr("")
                wrapMode: Text.WordWrap
                font.pointSize: 24
                color: "#FFFFFF"
                width: 600
                horizontalAlignment: Text.AlignHCenter
            }
            Row {
                anchors.horizontalCenter: parent.horizontalCenter
                Button {
                    background: Image{
                        id: imageMinusTwo
                        source: "../imgs/fpiMalleolus-2.png"
                        Rectangle {
                            id: borderMinusTwo
                            border.color: "#FFFFFF"
                            border.width: 0
                            anchors.fill: parent
                            color: "#00000000"
                        }
                    }
                    onClicked: {
                        if (borderMinusTwo.border.width !== 0) {
                            borderMinusTwo.border.width = 0
                        } else {
                            borderTwo.border.width = 0
                            borderMinusOne.border.width = 0
                            borderZero.border.width = 0
                            borderOne.border.width = 0
                            borderMinusTwo.border.width = 5
                            fpiScreen.level = -2
                            fpiScreen.clickedLevel(-2)
                            errorMessage.visible = false
                        }
                    }
                }
                Button {
                    background: Image{
                        id: imageMinusOne
                        source: "../imgs/fpiMalleolus-1.png"
                        Rectangle {
                            id: borderMinusOne
                            border.color: "#FFFFFF"
                            border.width: 0
                            anchors.fill: parent
                            color: "#00000000"
                        }
                    }
                    onClicked: {
                        if (borderMinusOne.border.width !== 0) {
                            borderMinusOne.border.width = 0
                        } else {
                            borderMinusTwo.border.width = 0
                            borderTwo.border.width = 0
                            borderZero.border.width = 0
                            borderOne.border.width = 0
                            borderMinusOne.border.width = 5
                            fpiScreen.clickedLevel(-1)
                            fpiScreen.level = -1
                            errorMessage.visible = false
                        }
                    }
                }
                Button {
                    background: Image{
                        id: imageZero
                        source: "../imgs/fpiMalleolus0.png"
                        Rectangle {
                            id: borderZero
                            border.color: "#FFFFFF"
                            border.width: 0
                            anchors.fill: parent
                            color: "#00000000"
                        }
                    }
                    onClicked: {
                        if (borderZero.border.width !== 0) {
                            borderZero.border.width = 0
                        } else {
                            borderMinusTwo.border.width = 0
                            borderMinusOne.border.width = 0
                            borderTwo.border.width = 0
                            borderOne.border.width = 0
                            borderZero.border.width = 5
                            fpiScreen.clickedLevel(0)
                            fpiScreen.level = 0
                            errorMessage.visible = false
                        }
                    }
                }
                Button {
                    background: Image{
                        id: imageOne
                        source: "../imgs/fpiMalleolus1.png"
                        Rectangle {
                            id: borderOne
                            border.color: "#FFFFFF"
                            border.width: 0
                            anchors.fill: parent
                            color: "#00000000"
                        }
                    }
                    onClicked: {
                        if (borderOne.border.width !== 0) {
                            borderOne.border.width = 0
                        } else {
                            borderMinusTwo.border.width = 0
                            borderMinusOne.border.width = 0
                            borderZero.border.width = 0
                            borderTwo.border.width = 0
                            borderOne.border.width = 5
                            fpiScreen.clickedLevel(1)
                            fpiScreen.level = 1
                            errorMessage.visible = false
                        }
                    }
                }
                Button {
                    background: Image{
                        id: imageTwo
                        source: "../imgs/fpiMalleolus2.png"
                        Rectangle {
                            id: borderTwo
                            border.color: "#FFFFFF"
                            border.width: 0
                            anchors.fill: parent
                            color: "#00000000"
                        }
                    }
                    onClicked: {
                        if (borderTwo.border.width !== 0) {
                            borderTwo.border.width = 0
                        } else {
                            borderMinusTwo.border.width = 0
                            borderMinusOne.border.width = 0
                            borderZero.border.width = 0
                            borderOne.border.width = 0
                            borderTwo.border.width = 5
                            fpiScreen.clickedLevel(2)
                            fpiScreen.level = 2
                            errorMessage.visible = false
                        }
                    }
                }
            }
            Rectangle {
                width: 600
                height: 400
                color: "#00000000"
                Text{
                    text: qsTr("FOTO")
                    color: "#FFFFFF"
                    font.pixelSize: 30
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                }
                MediaDevices {
                    id: mediaDevices
                }
                CaptureSession {
                    camera: Camera {
                        cameraDevice: mediaDevices.defaultVideoInput
                    }
                    videoOutput: viewfinder
                }
                VideoOutput {
                    id: viewfinder
                    visible: true
                    anchors.fill: parent
                }
            }
            Button {
                text: qsTr("Próximo")
                width: 300
                height: 50
                font.pixelSize: 30
                anchors.horizontalCenter: parent.horizontalCenter
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
                onClicked: {
                    if (borderMinusTwo.border.width === 0 &&
                            borderMinusOne.border.width === 0 &&
                            borderZero.border.width === 0 &&
                            borderOne.border.width === 0 &&
                            borderTwo.border.width === 0) {
                        errorMessage.visible = true
                        return
                    }
                    fpiScreen.nextPage()
                }
            }
            Text {
                id: errorMessage
                visible: false
                color: "#FF0000"
                font.pixelSize: 20
                wrapMode: Text.WordWrap
                anchors.horizontalCenter: parent.horizontalCenter
                text: qsTr("Aperte no desenho mais parecido com o seu pé")
            }
        }
    }
}
