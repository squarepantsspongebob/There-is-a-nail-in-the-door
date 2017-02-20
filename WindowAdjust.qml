import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Controls 1.4 as Control14
import QtQuick.Controls.Styles 1.4

Rectangle{
    id: windowAdjust
    x: 24; y: 98; width: 70
    ColumnLayout{
        anchors.fill: parent
        spacing: 7
        ButtonToggle{
            id: windowSelBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/windowsBtnDefault.png"
            imageHover: "qrc:/Img/mainTool/windowsBtnHover.png"
            imageClick: "qrc:/Img/mainTool/windowsBtnClick.png"
            property bool windowSelExdShow: false
            onClicked:{
                if (windowSelExdShow === false){
                    windowSelExdShow = true; windowExd.open()
                }
                else{
                    windowSelExdShow = false; windowExd.close()
                }
            }
        }
        //            Popup{
        //                id: windowSelExd
        //                height:90; width: 180
        //                id: zoomExd
        //                height: 90; width: 316;
        //                x: parent.x+parent.width+14; y: parent.y -11- parent.height-6
        //                closePolicy:  Popup.CloseOnEscape | Popup.CloseOnPressOutside|Popup.CloseOnPressOutsideParent
        //                property variant items: [25,50,75,100, 125, 150, 200, 400, 800]
        //                property int i: 3
        //                onClosed: {
        //                    zoomBtn.zoomExdShow = false
        //                    zoomBtn.state = zoomBtn.mouseArea.containsMouse? "clicked":"default"
        //                }
        //                background: Rectangle{
        //                    height: 90; width: 316; radius: 15
        //                    gradient: Gradient{
        //                        GradientStop{position: 1; color:"#d7787a7a"}
        //                        GradientStop{position: 0.87; color: "#d7404040"}
        //                        GradientStop{position: 0.59; color: "#d7171717"}
        //                        GradientStop{position:0; color: "#d70b0b0b"}
        //                    }
        //                    border.width: 3; border.color: Qt.rgba(0,0,0,0.52)
        //                }
        //                contentItem: Item{
        //                    anchors.fill: parent

        //                }



        ButtonToggle{
            id: zoomBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/zoomBtnDefault.png"
            imageHover:"qrc:/Img/mainTool/zoomBtnHover.png"
            imageClick:"qrc:/Img/mainTool/zoomBtnClick.png"
            property bool zoomExdShow: false
            onClicked:{
                if (zoomExdShow === false){
                    zoomExdShow = true; zoomExd.open()
                }
                else{
                    zoomExdShow = false; zoomExd.close()
                }
            }
            Popup{
                id: zoomExd
                height: 90; width: 316;
                x: parent.x+parent.width+14; y: parent.y -11- parent.height-6
                closePolicy:  Popup.CloseOnEscape | Popup.CloseOnPressOutside|Popup.CloseOnPressOutsideParent
                property variant items: [25,50,75,100, 125, 150, 200, 400, 800]
                property int i: 3
                onClosed: {
                    zoomBtn.zoomExdShow = false
                    zoomBtn.state = zoomBtn.mouseArea1.containsMouse? "clicked":"default"
                }
                background: Rectangle{
                    height: 90; width: 316; radius: 15
                    gradient: Gradient{
                        GradientStop{position: 1; color:"#d7787a7a"}
                        GradientStop{position: 0.87; color: "#d7404040"}
                        GradientStop{position: 0.59; color: "#d7171717"}
                        GradientStop{position:0; color: "#d70b0b0b"}
                    }
                    border.width: 3; border.color: Qt.rgba(0,0,0,0.52)
                }
                contentItem: Item{
                    anchors.fill: parent
                    RowLayout{
                        id: zoomInitial
                        x: 9; y: 10; spacing: 25
                        Rectangle{
                            id: zoomIn
                            width: 69; height: 70; radius: 15
                            border.width: 3; border.color: Qt.rgba(0, 0, 0, 0.52)
                            gradient: Gradient{
                                GradientStop{position: 0; color: "#787a7a"}
                                GradientStop{position: 0.41; color: "#404040"}
                                GradientStop{position: 0.73; color: "#171717"}
                                GradientStop{position: 1; color: "#0b0b0b"}
                            }
                            MouseArea{
                                anchors.fill: parent
                                onClicked: {if (zoomExd.i<8) zoomExd.i += 1}
                            }
                        }

                        Rectangle{
                            id: zoomOut
                            width: 69; height: 70; radius: 15
                            border.width: 3; border.color: Qt.rgba(0, 0, 0, 0.52)
                            gradient: Gradient{
                                GradientStop{position: 0; color: "#787a7a"}
                                GradientStop{position: 0.41; color: "#404040"}
                                GradientStop{position: 0.73; color: "#171717"}
                                GradientStop{position: 1; color: "#0b0b0b"}
                            }
                            MouseArea{
                                anchors.fill: parent
                                onClicked: {if (zoomExd.i >= 1) zoomExd.i -= 1}
                            }
                        }

                        Rectangle{
                            id: zoomData
                            width: 109; height: 70; radius: 15
                            border.width: 3; border.color: Qt.rgba(0, 0, 0, 0.52)
                            gradient: Gradient{
                                GradientStop{position: 0; color: "#787a7a"}
                                GradientStop{position: 0.41; color: "#404040"}
                                GradientStop{position: 0.73; color: "#171717"}
                                GradientStop{position: 1; color: "#0b0b0b"}
                            }
                            Text{
                                width: 93; height: 51; anchors.centerIn: parent
                                text: zoomExd.items[zoomExd.i]+"%"; color: "#979797"; font.pixelSize: 36
                            }
                        }

                    }
                }
            }
        }
        ButtonOne{
            id: resetBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/positionBtnDefault.png"
            imageHover:"qrc:/Img/mainTool/positionBtnHover.png"
            imageClick:"qrc:/Img/mainTool/positionBtnClick.png"
        }
        ButtonToggle{
            id: lockBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/lockBtnDefault.png"
            imageHover:"qrc:/Img/mainTool/lockBtnHover.png"
            imageClick:"qrc:/Img/mainTool/lockBtnClick.png"
        }
        ButtonToggle{
            id: rulerBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/rulerBtnDefault.png"
            imageHover:"qrc:/Img/mainTool/rulerBtnHover.png"
            imageClick:"qrc:/Img/mainTool/rulerBtnClick.png"
            property bool rulerExdShow: false
            onClicked:{
                if(rulerExdShow){
                    rulerExdLoader.sourceComponent = undefined
                    rulerExdShow = false
                }
                else{
                    rulerExdLoader.sourceComponent = rulerExdCom
                    rulerExdShow = true
                }
            }
            Loader{
                id: rulerExdLoader
                anchors.left: rulerBtn.left; anchors.top:rulerBtn.top
                height: rulerBtn.height; width: rulerBtn.width*3.5
            }
            Component{
                id: rulerExdCom
                Rectangle{
                    height: 70
                    Image{
                        anchors.fill: parent
                        source: "qrc:/Img/rulerExd.png"
                    }
                }
            }
        }
        ButtonToggle{
            id: whiteBtn
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/whitebalanceBtnDefault.png"
            imageHover:"qrc:/Img/mainTool/whitebalanceBtnHover.png"
            imageClick:"qrc:/Img/mainTool/whitebalanceBtnClick.png"
            property bool whiteExdShow: false
            onClicked:{
                if (whiteExdShow === false){
                    whiteExdShow = true; whiteExd.open()
                    console.log(3)
                }
                else{
                    whiteExdShow = false; whiteExd.close()
                    console.log(4)
                }
            }
            Popup{
                closePolicy:  Popup.CloseOnEscape | Popup.CloseOnPressOutside|Popup.CloseOnPressOutsideParent
                onClosed: {
                    whiteBtn.whiteExdShow = false
                    whiteBtn.state = whiteBtn.mouseArea1.containsMouse? "clicked":"default"
                    console.log(2)
                }
                id: whiteExd
                height: 150; width: 291
                x: parent.x+parent.width+14
                background: Rectangle{
                    height: 150; width: 297; radius: 15
                    gradient: Gradient{
                        GradientStop{position: 0; color:"#d7787a7a"}
                        GradientStop{position: 0.59; color: "#d7404040"}
                        GradientStop{position: 0.87; color: "#d7171717"}
                        GradientStop{position:1; color: "#d70b0b0b"}
                    }
                    border.width: 3; border.color: Qt.rgba(0,0,0,0.52)
                }
                contentItem: Item{
                    anchors.fill: parent
                    Label{ text: "窗宽"; font.pixelSize: 28; x: 22; y: 15; color: "#ffffff"}
                    Label{text: "窗位"; font.pixelSize: 28; x: 22; y: 68; color: "#ffffff"}
                    Control14.Slider{
                        id: chuangKuan
                        x: 94; y: 28
                        style: SliderStyle {
                            groove: Rectangle {
                                implicitWidth: 181
                                implicitHeight: 16
                                color: "transparent"
                                radius: 14
                                border.width: 1; border.color: "#ffd692"
                            }
                            handle: Rectangle {
                                anchors.centerIn: parent
                                width: 30; height: 16; radius: 14
                                color: "#ffd692"; border.width: 1; border.color: "#979797"
                                //color: control.pressed ? "white" : "lightgray"
                            }
                        }
                    }

                    Control14.Slider{
                        id: chuangWei
                        x: 94; y: 82
                        style: SliderStyle {
                            groove: Rectangle {
                                implicitWidth: 181
                                implicitHeight: 16
                                color: "transparent"
                                radius: 14
                                border.width: 1; border.color: "#ffd692"
                            }
                            handle: Rectangle {
                                anchors.centerIn: parent
                                width: 30; height: 16; radius: 14
                                color: "#ffd692"; border.width: 1; border.color: "#979797"
                                //color: control.pressed ? "white" : "lightgray"
                            }
                        }
                    }
                }
                //                    ButtonGroup{id: whiteGroup; button: whiteInitial.children}
                RowLayout{
                    id: whiteInitial
                    x: 2; y: 110;
                    RadioButton{
                        id: boneInitial
                        text: "骨骼";font.pixelSize: 20
                        onCheckedChanged: {
                            if (checked){
                                chuangKuan.value=0.2;chuangWei.value = 0.3
                            }
                        }
                    }
                    RadioButton{
                        text: "皮肤";font.pixelSize: 20
                        onCheckedChanged: {
                            if (checked){
                                chuangKuan.value=0.5;chuangWei.value = 0.9
                            }
                        }
                    }
                    RadioButton{
                        text: "软组织";font.pixelSize: 20
                        onCheckedChanged: {
                            if (checked){
                                chuangKuan.value=0.8;chuangWei.value = 0.5
                            }
                        }
                    }
                }
            }
        }
        ButtonToggle{
            id: center
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/centerBtnDefault.png"
            imageHover:"qrc:/Img/mainTool/centerBtnHover.png"
            imageClick:"qrc:/Img/mainTool/centerBtnClick.png"
        }
        ButtonToggle{
            id: center1
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/emptyBt.png"
            imageHover:"qrc:/Img/mainTool/emptyBt.png"
            imageClick:"qrc:/Img/mainTool/emptyBt.png"
        }
        ButtonToggle{
            id: center2
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/emptyBt.png"
            imageHover:"qrc:/Img/mainTool/emptyBt.png"
            imageClick:"qrc:/Img/mainTool/emptyBt.png"
        }
        ButtonToggle{
            id: center3
            width: parent.width; height: width
            imageDefault: "qrc:/Img/mainTool/emptyBt.png"
            imageHover:"qrc:/Img/mainTool/emptyBt.png"
            imageClick:"qrc:/Img/mainTool/emptyBt.png"
        }
    }
}
