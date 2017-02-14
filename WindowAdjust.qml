import QtQuick 2.0
import QtQuick.Layouts 1.1

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
