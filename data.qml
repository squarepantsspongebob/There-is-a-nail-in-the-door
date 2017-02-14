import QtQuick 2.0

Rectangle {
    id: dataPage
    width: 1920; height: 1080
    color: "transparent"
    visible: true
    Image{
        anchors.fill: parent
        source: "qrc:/Img/dataPage.png"
    }
    Rectangle{
        x:570; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            onClicked{

            }
        }
    }
}
