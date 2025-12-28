import QtQuick
import QtQuick.Controls

Item{
    id: longitudinal
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
                text: qsTr("Altura do arco longitudinal medial")
                color: "#FFFFFF"
            }
            Image{
                source: "../imgs/fpiLongitudinal-2.png"
            }
            Image{
                source: "../imgs/fpiLongitudinal-1.png"
            }
            Image{
                source: "../imgs/fpiLongitudinal0.png"
            }
            Image{
                source: "../imgs/fpiLongitudinal1.png"
            }
            Image{
                source: "../imgs/fpiLongitudinal2.png"
            }
        }
    }
}
