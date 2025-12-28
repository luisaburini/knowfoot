import QtQuick
import QtQuick.Controls

Item{
    id: malleolus
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
                text: qsTr("Curvaturas acima e abaixo do maléolo lateral")
                color: "#FFFFFF"
            }
            Image{
                source: "../imgs/fpiMalleolus-2.png"
            }
            Image{
                source: "../imgs/fpiMalleolus-1.png"
            }
            Image{
                source: "../imgs/fpiMalleolus0.png"
            }
            Image{
                source: "../imgs/fpiMalleolus1.png"
            }
            Image{
                source: "../imgs/fpiMalleolus2.png"
            }
        }
    }
}
