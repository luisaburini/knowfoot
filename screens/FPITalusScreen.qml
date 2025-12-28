import QtQuick
import QtQuick.Controls

Item{
    id: talus
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
                text: qsTr("F.P.I.")
                color: "#FFFFFF"
            }
            Text {
                text: qsTr("Palpação da cabeça do tálus")
                color: "#FFFFFF"
            }
            Image{
                source: "../imgs/fpiTalus-2.png"
            }
            Image{
                source: "../imgs/fpiTalus-1.png"
            }
            Image{
                source: "../imgs/fpiTalus0.png"
            }
            Image{
                source: "../imgs/fpiTalus1.png"
            }
            Image{
                source: "../imgs/fpiTalus2.png"
            }
        }
    }
}
