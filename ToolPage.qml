import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4

Rectangle {
    id: toolPage
    anchors.fill: parent
    color: "transparent"
    visible: false
    signal typeSignal(int msg)
    Rectangle{
        id: toolPage1
        anchors.fill: parent
        Image{
            anchors.fill: parent
            source: "qrc:/Img/toolPage.jpg"
        }

    }// ToolPage1

    //ToolPageAdapter
    Rectangle{
        id: toolPageAdapter
        anchors.fill: parent
        color: "transparent"
        visible: false
        property int finishedCircle: 0
        property int clickedCircle: 0
        Image{
            anchors.fill: parent
            source: "qrc:/Img/toolPageAdapter.jpg"
        }
        // 标定按钮
        Rectangle{
            x:1592; y: 763; width: 200; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    toolPageAdapter.finishedCircle = toolPageAdapter.clickedCircle
                }
            }
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color:"transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    toolPageAdapter.visible = false
                    toolPage1.visible = true
                }
            }
        }

        // 放置15个标定圆圈的矩形
        Rectangle{
            id: rec1
            x: 1131; y: 263
            width: 652; height: 373
            color: "#9B9B9B"
            opacity: 1
            radius: 12
            property int bili: 9

            ListView{
                id: firstRow
                model: adapterModel1
                width: 1131; height: 150
                focus: true
                delegate: Item{
                    id: item1
                    width: model.r*rec1.bili+20; height: firstRow.height
                    Rectangle{
                        width: model.r*rec1.bili; height: width
                        anchors.centerIn: parent
                        color: toolPageAdapter.clickedCircle===model.num?(toolPageAdapter.finishedCircle ===model.num?"#f8e81b":"darkgray"):"#d8d8d8"
                        radius: width/2
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                toolPageAdapter.clickedCircle = model.num
                                toolPageAdapter.finishedCircle = 0
                            }
                        }
                    }
                    Text{
                        text: model.num; y: 110; anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 40; color: "#d8d8d8"
                    }
                }
                orientation: Qt.Horizontal
            }
            ListView{
                id: secondRow
                model: adapterModel2
                focus:false
                width: 1131; height: 200
                anchors.left: firstRow.left
                anchors.leftMargin: -18
                anchors.top: firstRow.bottom
                delegate: Item{
                    id: item2
                    width: model.r*rec1.bili+50; height: firstRow.height
                    FlatButton{
                        width: model.r*rec1.bili; height: width
                        anchors.centerIn: parent
                        bgColorEnable: toolPageAdapter.clickedCircle===model.num?(toolPageAdapter.finishedCircle ===model.num?"#f8e81b":"darkgray"):"#d8d8d8"
                        bgRadius: width/2
                        onClicked: {
                            toolPageAdapter.clickedCircle = model.num
                            toolPageAdapter.finishedCircle = 0
                        }
                    }

                    Rectangle{
                        width: model.r*rec1.bili; height: width
                        anchors.centerIn: parent
                        color: toolPageAdapter.clickedCircle===model.num?(toolPageAdapter.finishedCircle ===model.num?"#f8e81b":"darkgray"):"#d8d8d8"
                        radius: width/2
                        MouseArea{
                            anchors.fill: parent
                            onClicked: {
                                toolPageAdapter.clickedCircle = model.num
                                toolPageAdapter.finishedCircle = 0
                            }
                        }
                    }
                    Text{
                        text: model.num; y: 110; anchors.horizontalCenter: parent.horizontalCenter
                        font.pixelSize: 40; color: "#d8d8d8"
                    }
                }
                orientation: Qt.Horizontal
            }
        } // 放置15个标定圆圈的矩形
        Rectangle{
            x: 1394; y: 652
            width: 22; height: 40
            color: "#212121"
            Text{
                anchors.centerIn: parent
                text: toolPageAdapter.finishedCircle===0?"":toolPageAdapter.finishedCircle
                color: "#f8e81b"
                font.pixelSize: 30
            }
        }
    }
    // 探针标定
    Rectangle{
        id: toolPageProbe
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/toolPageProbe.jpg"
        }
        Rectangle{
            x:1592; y: 763; width: 200; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    toolPageProbe.visible = false
                    toolPage1.visible = true
                }
            }
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color:"transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    toolPageProbe.visible = false
                    toolPage1.visible = true
                }
            }
        }
    }

    SystemMenu{
        x:1657; y: 8
    }
    PatientButton{
    }
    // registrationPage
    Image{
        id: peizhunBtnImgt
        visible: false
        x:1041; y: 23; width: 96; height: 36
        source:"qrc:/Img/peizhunBtnHover.png"
    }
    Rectangle{
        x:909; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: peizhunBtnImgt.visible = true
            onExited: peizhunBtnImgt.visible = false
            onClicked:{
                typeSignal(4)
            }
        }
    }
    // navigationPage
    Image{
        id: daohangBtnImgt
        visible: false
        x:1383; y: 23; width: 99; height: 40
        source:"qrc:/Img/daohangBtnHover.png"
    }
    Rectangle{
        x:1247; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: daohangBtnImgt.visible = true
            onExited: daohangBtnImgt.visible = false
            onClicked:{
                typeSignal(5)
            }
        }
    }
    // DataPage
    Image{
        id: shujuBtnImgt
        visible: false
        x:280; y: 23; width: 96; height: 36
        source:"qrc:/Img/shujuBtnHover.png"
    }
    Rectangle{
        x:280; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: shujuBtnImgt.visible = true
            onExited: shujuBtnImgt.visible = false
            onClicked:{
                typeSignal(2)
            }
        }
    }
    Rectangle{
        x:216; y: 899; width: 300; height: 80
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                toolPage1.visible = false
                toolPageProbe.visible = true
            }
        }
    }
    Rectangle{
        x:612; y: 899; width: 300; height: 80
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            onClicked:{
                toolPage1.visible = false
                toolPageAdapter.visible = true
            }
        }
    }

    ListModel{
        id: adapterModel2
        ListElement{
            num: 9
            r: 3.5
        }
        ListElement{
            num: 10
            r: 3.2
        }
        ListElement{
            num: 11
            r: 3
        }
        ListElement{
            num: 12
            r: 2.7
        }
        ListElement{
            num: 13
            r: 2.5
        }
        ListElement{
            num: 14
            r: 2
        }
        ListElement{
            num: 15
            r: 1.5
        }
    }

    ListModel{
        id: adapterModel1
        ListElement{
            num: 8
            r: 4
        }
        ListElement{
            num: 7
            r: 4.5
        }
        ListElement{
            num: 6
            r: 5
        }
        ListElement{
            num: 5
            r: 6
        }
        ListElement{
            num: 4
            r: 6.5
        }
        ListElement{
            num: 3
            r: 7.5
        }
        ListElement{
            num: 2
            r: 8.5
        }
        ListElement{
            num: 1
            r: 10
        }
    }// adpaterModel
}
