import QtQuick 2.0
import QtQuick.Layouts 1.1
import "."

Rectangle {
    id: rootItem
    implicitHeight: 1080; implicitWidth: 1920
    color: "black"
    signal typeSignal(int msg)
    Text{
        text: "欢迎界面"
        font.pixelSize: 40
        font.bold: true
        color: "white"
        x: 200; y:200
    }
    RowLayout{
        spacing: 100
        x: 450; y: 400
        height: 300
        //CMFRec
        Rectangle{
            id: cmfRec
            height: parent.height; width: height
            color: focus?"darkgray":cmfMouseArea.containsMouse?"darkgray":"gray"
            radius: 30
            Text{
                text: "CMF"
                anchors.centerIn: parent
                font.bold: true; font.pixelSize: 50
                color: "white"
            }
            MouseArea{
                id: cmfMouseArea
                anchors.fill: parent
                hoverEnabled: true
                onHoveredChanged: {
                    if (cmfMouseArea.containsMouse)
                        cmfRec.focus = true
                }
            }
            KeyNavigation.right: entRec
            KeyNavigation.down: entRec
        }//CMFRec

        //EntRec
        Rectangle{
            id: entRec
            height: parent.height; width: height
            color: focus?"darkgray":entMouseArea.containsMouse?"darkgray":"gray"
            radius: 30
            focus: true
            Text{
                text: "ENT"
                anchors.centerIn: parent
                font.bold: true; font.pixelSize: 50
                color: "white"
            }
            MouseArea{
                id: entMouseArea
                anchors.fill: parent
                hoverEnabled: true
                onClicked: {
                    rootItem.typeSignal(1)
                }
                onHoveredChanged: {
                    if (entMouseArea.containsMouse)
                        entRec.focus = true
                }
            }
            KeyNavigation.right: cranialRec
            KeyNavigation.down: cranialRec
            Keys.enabled: true
            Keys.onSpacePressed: {
                rootItem.typeSignal(1)
            }
            Keys.onEnterPressed: {
                rootItem.typeSignal(1)
            }// 为什么不管用？？？
        }//EntRec

        // CranialRec
        Rectangle{
            id: cranialRec
            height: parent.height; width: height
            color: focus?"darkgray":cranialMouseArea.containsMouse?"darkgray":"gray"
            radius: 30
            Text{
                text: "Cranial"
                anchors.centerIn: parent
                font.bold: true; font.pixelSize: 50
                color: "white"
            }
            MouseArea{
                id: cranialMouseArea
                hoverEnabled: true
                anchors.fill: parent
                onHoveredChanged: {
                    if (cranialMouseArea.containsMouse)
                        cranialRec.focus = true
                }
            }
            KeyNavigation.right: cmfRec
            KeyNavigation.down: cmfRec
        } //CranialRec
        //
        FlatButton{
            id: cranialRec1
            height: parent.height; width: height
            text: "Cranial"
            textPixelSize: 50
            bgColorEnable: "darkgray"
            bgRadius: 30
            onClickColor: "yellow"
            afterClickColor: bgColorEnable
        }//
    }
}
