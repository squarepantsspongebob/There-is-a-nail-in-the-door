import QtQuick 2.0

ButtonOne{
    id: patientBtn
    x:19; y:8
    width: 103; height: 62
    color: "transparent"
    imageDefault: "qrc:/Img/patientBtnDefault.png"
    imageHover: "qrc:/Img/patientBtnHover.png"
    imageClick: "qrc:/Img/patientBtnClick.png"
    onClicked: {
        typeSignal(1)
    }
}
