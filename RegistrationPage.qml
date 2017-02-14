import QtQuick 2.0

Rectangle {
    id: registrationPageRoot
    anchors.fill: parent
    color: "transparent"
    visible: false
    signal typeSignal(int msg)
    Rectangle{
        id: registrationPage
        anchors.fill: parent
        Image{
            id: registrationPageBG
            anchors.fill: parent
            source: "qrc:/Img/registrationPage.jpg"
        }

        Rectangle{
            x: 145; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    registrationPagePoint.visible = true
                }
            }
        }
        Rectangle{
            x: 588; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    ireachBeginPage.visible = true
                }
            }
        }
        Rectangle{
            x: 1032; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    sanshierPage.visible = true
                }
            }
        }
        Rectangle{
            x: 1475; y: 791; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPage.visible = false
                    surfacePage.visible = true
                }
            }
        }
    }

    Rectangle{
        id: registrationPagePoint
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/registrationPagePoint.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    registrationPagePoint.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:1197; y: 538; width: 200; height: 60
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    registrationPagePoint.visible = false
                    accuracyCheckPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: surfacePage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/surface.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    typeSginal(5)
                }
            }
        }
        Rectangle{
            x:1488; y: 895; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    surfacePage.visible = false
                    accuracyCheckPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: sanshierPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/32.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    sanshierPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: ireachBeginPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/ireachBegin.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachBeginPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:86; y: 258; width: 1000; height: 700
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachBeginPage.visible = false
                    ireachFailPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: ireachFailPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/ireachFail.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachFailPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x:86; y: 258; width: 1000; height: 700
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ireachFailPage.visible = false
                    ireachSuccessPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: ireachSuccessPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/ireachSuccess.jpg"
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    ireachSuccessPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x: 618; y: 681; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ireachSuccessPage.visible = false
                    accuracyCheckPage.visible = true
                }
            }
        }
        Rectangle{
            x: 973; y: 681; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked: {
                    ireachSuccessPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
    }
    Rectangle{
        id: accuracyCheckPage
        anchors.fill: parent
        color: "transparent"
        visible: false
        Image{
            anchors.fill: parent
            source: "qrc:/Img/accuracyCheck.jpg"
        }
        Rectangle{
            x:618; y: 931; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    typeSignal(5)
                }
            }
        }
        Rectangle{
            x: 973; y:931; width: 300; height: 80
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    accuracyCheckPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
        Rectangle{
            x: 54; y: 112; width: 36; height: 36
            color: "transparent"
            MouseArea{
                anchors.fill: parent
                onClicked:{
                    accuracyCheckPage.visible = false
                    registrationPage.visible = true
                }
            }
        }
    }

    // SHARE!!!
    PatientButton{}
    // ToolPage
    Image{
        id: gongjuBtnImgr
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
            onEntered: gongjuBtnImgr.visible = true
            onExited: gongjuBtnImgr.visible = false
            onClicked:{
                typeSignal(3)
            }
        }
    }
    // DataPage
    Image{
        id: shujuBtnImgr
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
            onEntered: shujuBtnImgr.visible = true
            onExited: shujuBtnImgr.visible = false
            onClicked:{
                typeSignal(2)
            }
        }
    }
    // NavigationPage
    Image{
        id: daohangBtnImgr
        visible: false
        x:1382; y: 23; width: 100; height: 40
        source:"qrc:/Img/daohangBtnHover.png"
    }
    Rectangle{
        x:1247; y:8
        width: 373; height: 63
        color: "transparent"
        MouseArea{
            anchors.fill: parent
            hoverEnabled: true
            onEntered: daohangBtnImgr.visible = true
            onExited: daohangBtnImgr.visible = false
            onClicked:{
                typeSignal(5)
            }
        }
    }
    //SystemMenu
    SystemMenu{
        x: 1657; y: 8
    }
}
