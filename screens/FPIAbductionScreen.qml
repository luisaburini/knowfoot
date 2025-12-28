import QtQuick
import QtQuick.Controls

Item{
    id: home
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
                text: qsTr("Abdução e Adução do antepé sobre o retropé")
                color: "#FFFFFF"
            }
            Image{
                source: "../imgs/fpiAbduction-2.png"
            }
            Image{
                source: "../imgs/fpiAbduction-1.png"
            }
            Image{
                source: "../imgs/fpiAbduction0.png"
            }
            Image{
                source: "../imgs/fpiAbduction1.png"
            }
            Image{
                source: "../imgs/fpiAbduction2.png"
            }
        }
    }
}
