import QtQuick 2.0
import QtQuick.Layouts 1.1

Rectangle {
    id: dataPage
    anchors.fill: parent
    color: "transparent"
    signal typeSignal(int msg)
    Image{
        anchors.fill: parent
        source: "qrc:/Img/dataPage.jpg"
    }
    // ToolPage
    Image{
        id: gongjuBtnImg
        visible: false
        x:708; y: 23; width: 96; height: 36
        source:"qrc:/Img/gongjuBtnHover.png"
    }
    Rectangle{
        x:570; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: gongjuBtnImg.visible = true
            onExited: gongjuBtnImg.visible = false
            onClicked:{
                typeSignal(3)
            }
        }
    }
    // RegistrationPage
    Image{
        id: peizhunBtnImgd
        visible: false
        x:1043; y: 23; width: 96; height: 36
        source:"qrc:/Img/peizhunBtnHover.png"
    }
    Rectangle{
        x:909; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: peizhunBtnImgd.visible = true
            onExited: peizhunBtnImgd.visible = false
            onClicked:{
                typeSignal(4)
            }
        }
    }
    // NavigationPage
    Image{
        id: daohangBtnImgd
        visible: false
        x:1377; y: 23; width: 99; height: 40
        source:"qrc:/Img/daohangBtnHover.png"
    }
    Rectangle{
        x:1247; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: daohangBtnImgd.visible = true
            onExited: daohangBtnImgd.visible = false
            onClicked:{
                typeSignal(5)
            }
        }
    }

    WindowAdjust{
        id: windowAdjust
        x: 24; y: 98; width: 70
    }

    SystemMenu{
        x:1657; y:8
    }
    PatientButton{
        id: patientBtn
        x: 19; y:8
        width: 103; height: 62
    }
}
