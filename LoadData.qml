import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0

Rectangle {
    id: rootItem
    anchors.fill: parent
    implicitWidth: 1920; implicitHeight: 1080
    color: "black"
    property int loadNum:0
    signal typeSignal(int msg)
    Rectangle{
        anchors.fill: parent
        radius: 20
        color: "#ffffff"
        // 黑色大方块
        Rectangle{
            x: 4; y: 71
            width: 1900; height: 960;
            border.width: 5; border.color: "#828181"
            radius: 12
            gradient:Gradient{
                GradientStop{position: 0.00; color: "#444444"}
                GradientStop{position: 0.59; color: "#282828"}
                GradientStop{position: 0.89; color: "#3c3c3c"}
            }
        } //黑色大方块

        ListView{
            id: listView
            model: DataModel{}
            clip: true //自动截掉超出范围的内容
            focus: true
            x: 177; y: 162
            height: 691; width: 1823
            delegate: patientDataDelegate
            header: patientDataHeader
            //        highlightFollowsCurrentItem: true

            Component{
                id: patientDataHeader
                Item{
                    height: 45+16; width: 1823
                    property int fontSize: 24
                    //                    property color patientDHColor: ""
                    Gradient{
                        id: patientDHGradient
                        GradientStop{position: 0.1; color:"#66ffffff"}
                        GradientStop{position: 1; color:"#66b0b0b0"}
                    }
                    RowLayout{
                        x: 0; y: 0; spacing:2
                        Item{
                            width: 45; height: 45
                            Rectangle{
                                id: pHRec1
                                width: 45; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                            }
                            DropShadow {
                                anchors.fill: pHRec1
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec1
                            }
                        }

                        Item{
                            width: 252; height: 45
                            Rectangle{
                                id: pHRec2
                                width: 252; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                                Text{
                                    //                                text: qsTr("姓名")
                                    anchors.centerIn: parent
                                    text: "姓名"
                                    opacity: 0.7
                                    color: "#000000"
                                    font.pixelSize: 24
                                }
                            }

                            DropShadow {
                                anchors.fill: pHRec2
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec2
                            }
                        }

                        Item{
                            width: 252; height: 45
                            Rectangle{
                                id: pHRec3
                                width: 252; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                                Text{
                                    text: qsTr("性别")
                                    anchors.centerIn: parent
                                    opacity: 0.7
                                    color: "#000000"
                                    font.pixelSize: 24
                                }
                            }
                            DropShadow {
                                anchors.fill: pHRec3
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec3
                            }
                        }

                        Item{
                            width: 252; height: 45
                            Rectangle{
                                id: pHRec4
                                width: 252; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                                Text{
                                    text: qsTr("年龄")
                                    anchors.centerIn: parent
                                    opacity: 0.7
                                    color: "#000000"
                                    font.pixelSize: 24
                                }
                            }
                            DropShadow {
                                anchors.fill: pHRec4
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec4
                            }
                        }

                        Item{
                            width: 252; height: 45
                            Rectangle{
                                id: pHRec5
                                width: 252; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                                Text{
                                    text: qsTr("创建日期")
                                    anchors.centerIn: parent
                                    opacity: 0.7
                                    color: "#000000"
                                    font.pixelSize: 24
                                }
                            }
                            DropShadow {
                                anchors.fill: pHRec5
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec5
                            }
                        }

                        Item{
                            width: 252; height: 45
                            Rectangle{
                                id: pHRec6
                                width: 252; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                                Text{
                                    text: qsTr("配准")
                                    anchors.centerIn: parent
                                    opacity: 0.7
                                    color: "#000000"
                                    font.pixelSize: 24
                                }
                            }
                            DropShadow {
                                anchors.fill: pHRec6
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec6
                            }
                        }

                        Item{
                            width: 252; height: 45
                            Rectangle{
                                id: pHRec7
                                width: 252; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                                Text{
                                    text: qsTr("导航")
                                    anchors.centerIn: parent
                                    opacity: 0.7
                                    color: "#000000"
                                    font.pixelSize: 24
                                }
                            }
                            DropShadow {
                                anchors.fill: pHRec7
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec7
                            }
                        }

                        Item{
                            width: 45; height: 45
                            Rectangle{
                                id: pHRec8
                                width: 45; height: 45
                                gradient: patientDHGradient
                                border.width: 1; border.color: "#979797"
                                radius: 2
                            }
                            DropShadow {
                                anchors.fill: pHRec8
                                horizontalOffset: 3
                                verticalOffset: 3
                                radius: 8.0
                                samples: 17
                                color: Qt.rgba(0,0,0,0.5)
                                source: pHRec8
                            }
                        }
                    }


                }
            }

            Component{
                id: patientDataDelegate
                Rectangle{
                    id: rec
                    height: 36; width: 1569
                    color: index===listView.currentIndex? "#6A4C1A":(index%2==1?"#36d8d8d8":"transparent")
                    border.color: "#979797"
                    border.width: index===listView.currentIndex? 1:0
                    radius: 5
                    property int fontSize:24
                    Image{
                        height: parent.height+8; width: 56
                        x: -3; y: -1
                        visible: rec.ListView.isCurrentItem
                        source: "qrc:/Img/icon/LoadDataHighlight.png"
                        z:100
                    }

                    Text{
                        id: nameD
                        text: model.name
                        x:111; anchors.verticalCenter: parent.verticalCenter
                        font.bold: false; font.pixelSize: fontSize; color:"white"
                        //                    anchors.left: checkedD.right; anchors.leftMargin: 50
                        //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                    }

                    Text{
                        id: genderD
                        text: model.gender
                        x:400; anchors.verticalCenter: parent.verticalCenter
                        font.bold: false; font.pixelSize: fontSize; color:"white"
                        //                    anchors.left: nameD.right; anchors.leftMargin: 120
                        //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                    }
                    Text{
                        id: ageD
                        text: model.age
                        x:666; anchors.verticalCenter: parent.verticalCenter
                        font.bold: false; font.pixelSize: fontSize; color:"white"
                        //                    anchors.left: genderD.right; anchors.leftMargin: 120
                        //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                    }
                    Text{
                        id: dateD
                        text: model.date
                        x:864; anchors.verticalCenter: parent.verticalCenter
                        font.bold: false; font.pixelSize: fontSize; color:"white"
                        //                    anchors.left: ageD.right; anchors.leftMargin: 120
                        //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                    }
                    Image{
                        id: registrationD
                        x:1176;anchors.verticalCenter: parent.verticalCenter; width: 22; height: 22
                        source: "qrc:/Img/icon/ldFalse.png"
                    }
                    Image{
                        x: 1180; anchors.verticalCenter: parent.verticalCenter; width:20;height:14
                        source: model.registration?"qrc:/Img/icon/ldTrue.png":""
                    }

                    Image{
                        id: navigationD
                        x:1430;anchors.verticalCenter: parent.verticalCenter; width: 22; height: 22
                        source: "qrc:/Img/icon/ldFalse.png"
                    }
                    Image{
                        x: 1434; anchors.verticalCenter: parent.verticalCenter; width:20;height:14
                        source: model.navigation?"qrc:/Img/icon/ldTrue.png":""
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked: {
                            listView.currentIndex = index
                        }
                    }
                }
            }
        }
//        Keys.onDownPressed: {
//            listView.incrementCurrentIndex()
//            console.log(listView.currentIndex)
//        }
//        Keys.onUpPressed: listView.decrementCurrentIndex()
        //载入按钮
        Button{
            id: loadButton
            x: 803; y: 861
            width: 106; height: 45
            contentItem: Text {
                text: "载入"
                font.pixelSize: 18
                color:"#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            background: Rectangle {
                color: "#000000"
                radius: 41
                gradient: Gradient{
                    GradientStop{position: 1; color:"#EA5959"}
                    GradientStop{position:0; color:"#F98b60"}
                }
                Rectangle{
                    width: 102; height: 41
                    anchors.centerIn: parent
                    color:"#000000"
                    radius: 40
                }
            }
            onClicked:{
                typeSignal(2)
            }
        }//载入按钮

        Button{
            id: newButton
            x: 1048; y: 861
            width: 106; height: 45
            contentItem: Text {
                text: "新建"
                font.pixelSize: 18
                color:"#FFFFFF"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                elide: Text.ElideRight
            }
            background: Rectangle {
                color: "#000000"
                radius: 41
                gradient: Gradient{
                    GradientStop{position: 1; color:"#EA5959"}
                    GradientStop{position:0; color:"#F98b60"}
                }
                Rectangle{
                    width: 102; height: 41
                    anchors.centerIn: parent
                    color:"#000000"
                    radius: 40
                }
            }
            onClicked: {
                folderImg.visible=true
            }
        }
        Rectangle{
            id: folderImg
            Image{
                source: "qrc:/Img/folder.png"
            }
            visible: false
            x: 500; y: 200
            Rectangle{
                x: 777; y: 526
                width: 90; height: 30
                color: "transparent"
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        folderImg.visible=false
                        if(loadNum%2===0)
                            loadFail.open()
                        else
                            loadSuccess.open()
                        loadNum+=1
                    }
                }
            }
        }
        Popup{
            id: loadFail
            width: 1000; height: 500
            x: 500; y: 200
            clip: true
            background: Rectangle{
                anchors.fill: parent
                width: 800; height: 500
                color: "transparent"
            }
            contentItem: Rectangle{
                anchors.fill: parent
                width: 800; height: 500
                color: "gray"
                Image{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 50; height: 50
                    source: "qrc:/Img/loadFailImg.png"
                }
                Text{
                    anchors.centerIn: parent
                    text:"数据导入失败"
                    font.pixelSize: 20; font.bold: true; color: 'white'
                }
                Button{
                    id: closeFailButton
                    x: 800; y: 400
                    width: 100; height: 60
                    background: Rectangle{
                        width: 100; height: 60
                        radius: 10
                        color: closeFailButton.pressed?"darkgray":"gray"
                        border.width: closeFailButton.hovered? 3:1
                        border.color: "lightgray"
                        Text{
                            text: "关闭"
                            font.pixelSize: 20; font.bold: true; color:"white"
                            anchors.centerIn: parent
                        }
                    }
                    onClicked: {
                        loadFail.close()
                    }
                }
            }
        }
        Popup{
            id: loadSuccess
            width: 1000; height: 500
            x: 500; y: 200
            clip: true
            background: Rectangle{
                anchors.fill: parent
                width: 800; height: 500
                color: "transparent"
            }
            contentItem: Rectangle{
                anchors.fill: parent
                width: 800; height: 500
                color: "gray"
                Image{
                    anchors.horizontalCenter: parent.horizontalCenter
                    width: 50; height: 50
                    //source: "qrc:/Img/loadFailImg.png"
                }
                Text{
                    anchors.centerIn: parent
                    text:"数据导入成功，是否对该数据进行载入？"
                    font.pixelSize: 20; font.bold: true; color: 'white'
                }
                Button{
                    id: loadConfirmButton
                    x: 700; y: 400
                    width: 100; height: 60
                    background: Rectangle{
                        width: 100; height: 60
                        radius: 10
                        color: loadConfirmButton.pressed?"darkgray":"gray"
                        border.width: loadConfirmButton.hovered? 3:1
                        border.color: "lightgray"
                        Text{
                            text: "是"
                            font.pixelSize: 20; font.bold: true; color:"white"
                            anchors.centerIn: parent
                        }
                    }
                    onClicked: {
                        loadSuccess.close()
                        typeSignal(2)
                    }
                }
                Button{
                    id: loadCancelButton
                    x: 850; y: 400
                    width: 100; height: 60
                    background: Rectangle{
                        width: 100; height: 60
                        radius: 10
                        color: loadCancelButton.pressed?"darkgray":"gray";
                        border.width: loadCancelButton.hovered? 3:1
                        border.color: "lightgray";
                        Text{
                            text: "取消";
                            font.pixelSize: 20; font.bold: true; color:"white"
                            anchors.centerIn: parent
                        }
                    }
                    onClicked: {
                        loadSuccess.close()
                        listView.model.append({"checked": true, "name":"小楠","gender": "女","age":"18","date":"2016年12月25日","registration":false,"navigation":false})
                    }
                }
            }
        }

        // 上方黑色渐变长条
        Rectangle{
            width: 1456; height: 56
            x: 156; y: 8
            radius: 100
            border.width: 3
            border.color: "#000000"
            gradient: Gradient{
                GradientStop{position: 1; color: "#0b0b0b" }
                GradientStop{position: 0.65; color: "#171717"}
                GradientStop{position: 0.54; color: "#404040"}
                GradientStop{position: 0; color: "#787a7a"}
            }
            Text{
                x: 638; anchors.verticalCenter: parent.verticalCenter
                text:"Patient Manager"
                font.pixelSize: 36
                color: "#ffffff"
            }
        }// 上方黑色渐变长条

        SystemMenu{ x: 1657; y: 8}
        PatientButton{
        }
    }
}



//Rectangle {
//    id: rootItem
//    implicitWidth: 1920; implicitHeight: 1920
//    color: "black"
//    property int loadNum:0
//    signal typeSignal(int msg)

//    Rectangle{
//        id: patient1
//        anchors.fill: parent
//        Image{
//            anchors.fill: parent
//            source: "qrc:/Img/2-12/patient-1.jpg"
//        }
//        Rectangle{
//            x: 785; y: 949
//            width: 105; height: 44
//            color: "transparent"
//            MouseArea{
//                anchors.fill: parent
//                onClicked: typeSignal(2)
//            }
//        }
//        Rectangle{
//            x: 1030;y:949
//            width: 105; height: 44
//            color: "transparent"
//            MouseArea{
//                anchors.fill: parent
//                onClicked: {
//                    folderImg.visible = true
//                }
//            }
//        }

//        Rectangle{
//            id: folderImg
//            Image{
//                source: "qrc:/Img/folder.png"
//            }
//            visible: false
//            x: 500; y: 200
//            Rectangle{
//                x: 777; y: 526
//                width: 90; height: 30
//                color: "transparent"
//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: {
//                        folderImg.visible=false
//                        if(loadNum%2===0){
//                            folderImg = false
//                            patient2.visible = true
//                        }
//                        else{
//                            folderImg = false
//                            patient3.visible = true
//                        }
//                        loadNum+=1
//                    }
//                }
//            }
//        }
//        Rectangle{
//            id: patient2
//            anchors.fill: parent
//            visible: false
//            Image{
//                anchors.fill: parent
//                source: "qrc:/Img/2-12/patient-2.jpg"
//            }
//            Rectangle{
//                x: 618; y: 660
//                width: 300; height: 80
//                color: "transparent"
//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: {
//                        patient2.visible = false
//                        typeSignal(2)
//                    }
//                }
//            }
//            Rectangle{
//                x: 973;y:660
//                width: 300; height: 80
//                color: "transparent"
//                MouseArea{
//                    anchors.fill: parent
//                    onClicked: {
//                        patient2.visible = false
//                        patient1.visible = true
//                    }
//                }
//            }
//        }
//    }


//    Rectangle{
//        id: patient3
//        anchors.fill: parent
//        visible: false
//        Image{
//            anchors.fill: parent
//            source: "qrc:/Img/2-12/patient-3.jpg"
//        }
//        Rectangle{
//            x: 811; y:660
//            width: 300; height: 80
//            color: "transparent"
//            MouseArea{
//                anchors.fill: parent
//                onClicked: {
//                    patient3.visible = false
//                    patient1.visible = true
//                }
//            }
//        }
//    }

//    PatientButton{}
//    SystemMenu{
//        x: 1657; y: 8
//    }
//}
