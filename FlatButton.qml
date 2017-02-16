import QtQuick 2.0
//import "."

Item {
    id: button

    width: (inline || label.paintedWidth > 56 * dp) ? (label.paintedWidth + 32 * dp) : (88 * dp)
    height: 36 * dp

    property bool inline: false
    property alias text: label.text
    property alias textPixelSize: label.font.pixelSize
    property alias textColor: label.color
    property color bgColorEnable: "#00999999"
    property color bgColorDisEnable: "#1a999999"
    property alias bgRadius: background.radius
    property var onClickOpacity: 0.25
    property color onClickColor: "#de000000"
    property color afterClickColor: bgColorEnable
    property bool fromCenter: false
    property var dp: 0.75
    property alias bgColor2: background.color

    onAfterClickColorChanged: {
        ripple.changeColor()
    }

//    onBgColorEnableChanged: {
//        console.log(model.num)
//        background.color = bgColorEnable
//    }

    signal clicked

    Rectangle {
        id: background
        anchors.fill: parent
        radius: 3 * dp
        //color: button.enabled ? bgColorEnable : bgColorDisEnable
        color: "#00999999"
    }

    Text {
        id: label
        anchors.centerIn: parent
        font.family: "Roboto"
        font.pointSize: 14
        font.bold: Font.DemiBold
        font.capitalization: Font.AllUppercase
        color: button.enabled ? "#de000000" : "#8a000000"
        opacity: button.enabled ? 1 : 0.62

        Behavior on opacity {
            NumberAnimation {
                duration: 200
                easing.type: Easing.Bezier; easing.bezierCurve: [0.4, 0, 0.2, 1, 1, 1]
            }
        }
    }

    PaperRipple {
        id: ripple
        radius: bgRadius
        mouseArea: mouseArea
        color: onClickColor
        fromCenterPR: fromCenter
    }

    MouseArea {
        id: mouseArea
        anchors.fill: parent
        enabled: button.enabled
        onClicked: button.clicked()
        Keys.enabled: true
    }
    Component.onCompleted: console.log(dp)
}
