import QtQuick
import QtQuick.Controls

Item{
    id: calcaneus
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
                text: qsTr("Posição do calcâneo")
                color: "#FFFFFF"
            }
            Image{
                source: "../imgs/fpiCalcaneus-2.png"
            }
            Image{
                source: "../imgs/fpiCalcaneus-1.png"
            }
            Image{
                source: "../imgs/fpiCalcaneus0.png"
            }
            Image{
                source: "../imgs/fpiCalcaneus1.png"
            }
            Image{
                source: "../imgs/fpiCalcaneus2.png"
            }
        }
    }
}
