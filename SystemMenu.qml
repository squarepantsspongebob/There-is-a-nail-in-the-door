import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

Rectangle{
    id: systemMenu
    x: 1650; y: 44; width: 56
    color: "transparent"
    Popup{
        id: infoPopup
        x: -1610; y:10
        width: 1850; height: 974
        contentItem: Rectangle{
            width: 1850; height: 974
            Image{
                anchors.fill: parent
                source: "qrc:/Img/info.png"
            }
            Rectangle{
                x: 1775; y: 25
                width: 40; height: 40
                color: "transparent"
                MouseArea{
                    anchors.fill: parent
                    onClicked: infoPopup.close()
                }
            }
        }
    }

    Popup{
        id: setPopup
        x: -800; y: 200
        width: 629; height: 351
        Image{
            anchors.fill: parent
            source: "qrc:/Img/2-12/setPage.jpg"
        }
    }

    Popup{
        id: quitPopup
        x: -800; y: 200
        width: 629; height: 351
        Image{
            anchors.fill: parent
            source: "qrc:/Img/2-12/quitPage.jpg"
        }
    }

    RowLayout{
        anchors.fill: parent
        spacing: 9
        ButtonOne{
            id: informationBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/systemIcon/infoBtnDefault.png"
            imageClick: "qrc:/Img/systemIcon/infoBtnClick.png"
            imageHover: "qrc:/Img/systemIcon/infoBtnHover.png"
            onClicked: infoPopup.open()
        }
        ButtonOne{
            id: setBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/systemIcon/setBtnDefault.png"
            imageClick:"qrc:/Img/systemIcon/setBtnClick.png"
            imageHover:"qrc:/Img/systemIcon/setBtnHover.png"
            onClicked: setPopup.open()
        }
        ButtonOne{
            id: snapShotBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/systemIcon/snapshotBtnDefault.png"
            imageHover:"qrc:/Img/systemIcon/snapshotBtnHover.png"
            imageClick:"qrc:/Img/systemIcon/snapshotBtnClick.png"
        }

        ButtonToggle{
            id: quitBtn
            width: parent.width; height: width
            Image{
                source: "qrc:/Img/quit.png"
                fillMode: Image.PreserveAspectFit
            }
            onClicked: Qt.quit()
        }
    }
}
