import QtQuick
import QtQuick.Controls

Item{
    id: atn
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
                text: qsTr("Proeminência na região da articulação talonavicular (ATN)")
                color: "#FFFFFF"
            }
            Image{
                source: "../imgs/fpiATN-2.png"
            }
            Image{
                source: "../imgs/fpiATN-1.png"
            }
            Image{
                source: "../imgs/fpiATN0.png"
            }
            Image{
                source: "../imgs/fpiATN1.png"
            }
            Image{
                source: "../imgs/fpiATN2.png"
            }
        }
    }
}
