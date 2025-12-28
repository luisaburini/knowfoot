import QtQuick
import QtQuick.Controls
import QtQuick.Window
import "./screens/"

Window {
    width: 600
    height: 795
    visible: true
    title: qsTr("KnowFoot")

    StackView{
        id: stack
        initialItem: homeScreen
        anchors.fill: parent
    }

    FPIMalleolusScreen{
        id: fpiMalleolusScreen
        visible: false
    }
    FPIAbductionScreen{
        id: fpiAbductionScreen
        visible: false
    }
    FPICalcaneusScreen{
        id: fpiCalcaneousScreen
        visible: false
    }
    FPILongitudinalScreen{
        id: fpiLongitudinalScreen
        visible: false
    }
    FPIATNScreen{
        id: fpiATNScreen
        visible: false
    }
    FPITalusScreen{
        id: fpiTalusScreen
        visible: false
    }
    ResultsScreen{
        id: resultsScreen
        visible: false
    }

    ManageScreen{
        id: manageScreen
        visible: false
    }
    RegisterScreen{
        id: registerScreen
        visible: false
    }

    TestScreen{
        id: testScreen
        visible: false
    }

    HomeScreen{
        id: homeScreen
        onClickedTests: {
            testScreen.visible = true
            stack.pop()
        }
    }
}
