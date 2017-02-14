import QtQuick 2.7
import QtQuick.Window 2.2
import QtQuick.Controls 2.0
import QtQuick.Layouts 1.3

Window {
    id: root
    visible: true
    width: 1920
    height: 1080
    title: qsTr("Hello World")
    flags: Qt.FramelessWindowHint|Qt.WindowSystemMenuHint|Qt.WindowMinimizeButtonHint|Qt.Window

    property color topBottomBarColor: "#323233"
    property color topBtnColor: "#D8D8D8"
    property color topBtnFontColor1: "#D0D0D0"
    property color r1Color: "#4A4A4A"
    property color viewerColor: "black"
    property color grColor: "#5FD0C0"
    property color orColor: "orange"
    property color drColor: "darkgray"

    StackLayout{
        id: layout
        anchors.fill: parent
        currentIndex: 0
        WelcomePage{
            width: parent.width; height: parent.height
            onTypeSignal: {
                layout.currentIndex = msg
            }
        }
        LoadData{
            width: parent.width; height: parent.height
            onTypeSignal: layout.currentIndex = msg
        }

        DataPage{
            width: parent.width; height: parent.height
            onTypeSignal: layout.currentIndex = msg
        }

        ToolPage{
            id: toolPage
            onTypeSignal: layout.currentIndex = msg
        }

        RegistrationPage{
            width: parent.width; height: parent.height
            onTypeSignal: layout.currentIndex = msg
        }

        NavigationPage{
            width: parent.width; height: parent.height
            onTypeSignal: layout.currentIndex = msg
        }

    } //StackLayout
}
