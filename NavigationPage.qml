import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

Rectangle{
    id: navigationRec
    x:0; y:0; width: parent.width; height: parent.height

    signal typeSignal(int msg)

    Image{
        anchors.fill: parent
        source: "qrc:/Img/backgroundImg.png"
        fillMode: Image.Stretch
    }
    // ToolPage
    Image{
        id: gongjuBtnImgn
        visible: false
        x:615; y: 23; width: 96; height: 36
        source:"qrc:/Img/gongjuBtnHover.png"
    }
    Rectangle{
        x:615; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: gongjuBtnImgn.visible = true
            onExited: gongjuBtnImgn.visible = false
            onClicked:{
                typeSignal(3)
            }
        }
    }
    // DataPage
    Image{
        id: shujuBtnImgn
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
            onEntered: shujuBtnImgn.visible = true
            onExited: shujuBtnImgn.visible = false
            onClicked:{
                typeSignal(2)
            }
        }
    }
    // RegistrationPage
    Image{
        id: peizhunBtnImgn
        visible: false
        x:951; y: 23; width: 96; height: 36
        source:"qrc:/Img/peizhunBtnHover.png"
    }
    Rectangle{
        x:909; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: peizhunBtnImgn.visible = true
            onExited: peizhunBtnImgn.visible = false
            onClicked:{
                typeSignal(4)
            }
        }
    }
    //taskPanel
    ColumnLayout{
        id: taskPanel
        x: 1603; y: 81;width: 297; spacing: 10
        Rectangle{
            id: toolState
            width: parent.width; height: 150
            color: "transparent"
            Image{
                source: "qrc:/Img/toolState.png"
            }
        }
        Rectangle{
            id: input
            anchors.top: toolState.bottom
            anchors.topMargin: 15
            width: parent.width; height: 55
            color: "transparent"
            Image{
                id: inputImg
                anchors.fill: parent
                source: "qrc:/Img/input1.png"
            }
            Rectangle{
                width: 17; height:10
                x: 257; y: 27
                color: "transparent"
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (input.height==55){
                            input.height=129
                            inputImg.source = "qrc:/Img/input2.png"
                        }
                        else{
                            input.height=55
                            inputImg.source="qrc:/Img/input1.png"
                        }
                    }
                }
            }
        }
        Rectangle{
            id: registrationEnsure
            anchors.top: input.bottom
            anchors.topMargin: 15
            width: parent.width; height: 55
            color: "transparent"
            Image{
                id: registrationEnsureImg
                anchors.fill: parent
                source: "qrc:/Img/registrationEnsure1.png"
            }
            Rectangle{
                width: 17; height:10
                x: 257; y: 27
                color: "transparent"
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (registrationEnsure.height==55){
                            registrationEnsure.height=129
                            registrationEnsureImg.source = "qrc:/Img/registrationEnsure2.png"
                        }
                        else{
                            registrationEnsure.height=55
                            registrationEnsureImg.source="qrc:/Img/registrationEnsure1.png"
                        }
                    }
                }
            }
        }
        Rectangle{
            id: threedModel
            anchors.top: registrationEnsure.bottom
            anchors.topMargin: 15
            width: parent.width; height: 130
            color: "transparent"
            Image{
                id: threedModelImg
                anchors.fill: parent
                source: "qrc:/Img/3DModel1.png"
            }
            Rectangle{
                width: 17; height:10
                x: 257; y: 27
                color: "transparent"
                MouseArea{
                    anchors.fill: parent
                    onClicked:{
                        if (threedModel.height==130){
                            threedModel.height=483
                            threedModelImg.source = "qrc:/Img/3DModel2.png"
                        }
                        else{
                            threedModel.height=130
                            threedModelImg.source="qrc:/Img/3DModel1.png"
                        }
                    }
                }
            }
        }
    }//taskPanel


    //ctViewer
    GridLayout{
        id: ctViewer
        x: 107; y: 81
        rows: 2; columns: 2; rowSpacing: 3; columnSpacing: 4
        Rectangle{
            id: coronalWin
            width: 744; height: 477
            Image{
                anchors.fill: parent
                source: "qrc:/Img/coronal.png"
            }
        }
        Rectangle{
            id: axialWin
            width: 744; height: 477
            Image{
                anchors.fill: parent
                source: "qrc:/Img/axial.png"
            }
        }
        Rectangle{
            id: sagittalWin
            width: 744; height: 477
            Image{
                anchors.fill: parent
                source: "qrc:/Img/coronal.png"
            }
        }
        Rectangle{
            id: threeDWin
            width: 744; height: 477
            Image{
                anchors.fill: parent
                source: "qrc:/Img/axial.png"
            }
        }
    }//ctViewer

    //systemMenu
    SystemMenu{
        x: 1650; y: 8
    }

    //windowAdjust
    Rectangle{
        id: windowAdjust
        x: 20; y: 117; width: 70
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
                onClicked: {
                    if (windowSelExdShow){
                        windowSelLoader.sourceComponent = undefined
                        windowSelExdShow=false
                    }
                    else{
                        windowSelLoader.sourceComponent = windowSelCom
                        windowSelExdShow=true
                    }
                }
                Loader{
                    id: windowSelLoader
                    anchors.left:windowSelBtn.left; anchors.top:windowSelBtn.top
                    height:windowSelBtn.height; width: windowSelBtn.width*4
                }

                Component{
                    id: windowSelCom
                    Rectangle{
                        height: 70
                        Image{
                            anchors.fill: parent
                            source: "qrc:/Img/windowSelExd.png"
                        }
                    }
                }
            }
            ButtonToggle{
                id: zoomBtn
                width: parent.width; height: width
                imageDefault: "qrc:/Img/mainTool/zoomBtnDefault.png"
                imageHover:"qrc:/Img/mainTool/zoomBtnHover.png"
                imageClick:"qrc:/Img/mainTool/zoomBtnClick.png"
                property bool zoomExdShow: false
                onClicked:{
                    console.log(zoomExdShow)
                    if(zoomExdShow){
                        zoomExdLoader.sourceComponent = undefined
                        zoomExdShow = false
                    }
                    else{
                        zoomExdLoader.sourceComponent = zoomExdCom
                        zoomExdShow = true
                    }
                }
                Loader{
                    id: zoomExdLoader
                    anchors.left: zoomBtn.left; anchors.top:zoomBtn.top
                    height: zoomBtn.height; width: zoomBtn.width*5
                }
                Component{
                    id: zoomExdCom
                    Rectangle{
                        height: 70
                        Image{
                            anchors.fill: parent
                            source: "qrc:/Img/zoomExd.png"
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
                    if(whiteExdShow){
                        whiteExdLoader.sourceComponent = undefined
                        whiteExdShow = false
                    }
                    else{
                        whiteExdLoader.sourceComponent = whiteExdCom
                        whiteExdShow = true
                    }
                }
                Loader{
                    id: whiteExdLoader
                    anchors.left: whiteBtn.left; anchors.top:whiteBtn.top
                    height: whiteBtn.height; width: whiteBtn.width*3.5
                }
                Component{
                    id: whiteExdCom
                    Rectangle{
                        height: 70
                        Image{
                            anchors.fill: parent
                            source: "qrc:/Img/whiteExd.png"
                        }
                    }
                }
            }
            ButtonToggle{
                id: navigationMeasure
                width: parent.width; height: width
                imageDefault: "qrc:/Img/mainTool/navigationMeasure.png"
                imageHover:"qrc:/Img/mainTool/navigationMeasure.png"
                imageClick:"qrc:/Img/mainTool/navigationMeasure.png"
                onClicked: {
                    nMPopup.open()
                }
                Popup{
                    id: nMPopup
                    width: parent.width*4; height: parent.height
                    x: navigationMeasure.x+navigationMeasure.width
                    property int nMPCount:0
                    contentItem: Rectangle{
                        anchors.fill: parent
                        color: "black"
                        Rectangle{
                            id: nMPBtn
                            width: 80; height: 40
                            anchors.verticalCenter: parent.verticalCenter
                            color: "black"
                            border.color: "gray"; border.width: 2
                            radius: 5
                            Text{
                                id: nMPText
                                text: "开始点"
                                color: "white"
                                font.pixelSize: 20
                                anchors.centerIn: parent
                            }

                            MouseArea{
                                id: nMPMouseare
                                anchors.fill: parent
                                onClicked:{
                                    if (nMPopup.nMPCount%2 === 0)
                                        nMPText.color = "yellow"
                                    else
                                        nMPText.color = "white"
                                    nMPopup.nMPCount+=1
                                }
                            }
                        }
                        Text{
                            id: nMPNum
                            anchors.left: nMPBtn.right; anchors.leftMargin: 60
                            anchors.verticalCenter: parent.verticalCenter
                            font.pixelSize: 35; color:"lightgray"
                            text:"0.00mm"
                        }
                    }
                }
            }
            ButtonToggle{
                id: navigationDistance
                width: parent.width; height: width
                imageDefault: "qrc:/Img/mainTool/navigationDistance.png"
                imageHover:"qrc:/Img/mainTool/navigationDistance.png"
                imageClick:"qrc:/Img/mainTool/navigationDistance.png"
            }
            ButtonToggle{
                id: navigationExtend
                width: parent.width; height: width
                imageDefault: "qrc:/Img/mainTool/navigationExtend.png"
                imageHover:"qrc:/Img/mainTool/navigationExtend.png"
                imageClick:"qrc:/Img/mainTool/navigationExtend.png"
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
    PatientButton{

    }
}
