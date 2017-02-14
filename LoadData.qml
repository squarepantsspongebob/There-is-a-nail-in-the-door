import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 2.0

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


Rectangle {
    id: rootItem
    implicitWidth: 1920; implicitHeight: 1920
    color: "black"
    property int loadNum:0
    signal typeSignal(int msg)
    Rectangle{
        width: parent.width; height: 80
        color: "darkgray"
        Text{
            text: "Load Data"
            font.bold: true
            font.pixelSize: 30
            color: "white"
            anchors.left: parent.left
            anchors.leftMargin: 20
            anchors.verticalCenter: parent.verticalCenter
        }
    }
    Text{
        x: 50; y: 120
        text: "既往病例"
        font.bold: true
        font.pixelSize: 30
        color: "gray"
    }
    ListView{
        id: listView
        model: DataModel{}
        clip: true
        focus: true
        x: 154; y: 178
        height: 691; width: 1569
        delegate: patientDataDelegate
        header: patientDataHeader
        //        highlightFollowsCurrentItem: true

        Component{
            id: patientDataHeader
            Rectangle{
                height: 45; width: 1569
                property int fontSize: 24
                color: "LightGray"
                Text{
                    id: nameH
                    x: 100
                    text: "姓名"
                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: genderH
                    text: "性别"
                    anchors.left: nameH.right; anchors.leftMargin: 100
                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: ageH
                    text: "年龄"
                    anchors.left: genderH.right; anchors.leftMargin: 100
                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: dateH
                    text: "创建日期"
                    anchors.left: ageH.right; anchors.leftMargin: 100
                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: registrationH
                    text: "配准"
                    anchors.left: dateH.right; anchors.leftMargin: 100
                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: navigationH
                    text: "导航"
                    anchors.left: registrationH.right; anchors.leftMargin: 100
                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
            }
        }

        Component{
            id: patientDataDelegate
            Rectangle{
                id: rec
                height: 35; width: 1569
                color: index===listView.currentIndex? "#6A4C1A":(index%2==1?"gray":"darkgray")

                //color: index===listView.currentIndex? "blue":"darkgray"
                property int fontSize:24
                Image{
                    height: parent.height+10; width: 46
                    x: -2; y: -2
                    visible: rec.ListView.isCurrentItem
                    source: "qrc:/Img/icon/LoadDataHighlight.png"
                    z:100
                }

                Text{
                    id: nameD
                    text: model.name
                    x:111; anchors.verticalCenter: parent.verticalCenter
                    font.bold: true; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: checkedD.right; anchors.leftMargin: 50
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }

                Text{
                    id: genderD
                    text: model.gender
                    x:400; anchors.verticalCenter: parent.verticalCenter
                    font.bold: true; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: nameD.right; anchors.leftMargin: 120
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: ageD
                    text: model.age
                    x:666; anchors.verticalCenter: parent.verticalCenter
                    font.bold: true; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: genderD.right; anchors.leftMargin: 120
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: dateD
                    text: model.date
                    x:874; anchors.verticalCenter: parent.verticalCenter
                    font.bold: true; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: ageD.right; anchors.leftMargin: 120
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: registrationD
                    text: model.registration?"√":"×"
                    x:1176; anchors.verticalCenter: parent.verticalCenter;
                    font.bold: true; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: dateD.left; anchors.leftMargin: 260
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: navigationD
                    text: model.navigation? "√":"×"
                    x:1430; anchors.verticalCenter: parent.verticalCenter;
                    font.bold: true; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: registrationD.right; anchors.leftMargin: 120
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
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
    Button{
        id: loadButton
        x: 1200; y: 900
        width: 100; height: 60
        background: Rectangle{
            width: 100; height: 60
            radius: 10
            color: loadButton.pressed?"darkgray":"gray"
            border.width: loadButton.hovered? 3: 1
            border.color: "lightgray"
            Text{
                text: "载入"
                font.pixelSize: 20; font.bold: true; color:"white"
                anchors.centerIn: parent
            }
        }
        onClicked:{
            typeSignal(2)
        }
    }
    Button{
        id: newButton
        x: 1350; y: 900
        width: 100; height: 60
        background: Rectangle{
            width: 100; height: 60
            radius: 10
            color: newButton.pressed?"darkgray":"gray"
            border.width: newButton.hovered? 3:1
            border.color: "lightgray"
            Text{
                text: "新建"
                font.pixelSize: 20; font.bold: true; color:"white"
                anchors.centerIn: parent
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
    SystemMenu{}
}
