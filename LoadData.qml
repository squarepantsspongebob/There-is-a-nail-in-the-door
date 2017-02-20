import QtQuick 2.7
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4 as Control14
import QtQuick.Controls 2.0
import QtQuick.Window 2.0
import QtGraphicalEffects 1.0
import QtQuick.Controls.Styles 1.4

Rectangle {
    id: rootItem
    anchors.fill: parent
    implicitWidth: 1920; implicitHeight: 1080
    color: "#ae000000"
    property int loadNum:0
    signal typeSignal(int msg)
    focus: true
    Component.onCompleted: forceActiveFocus()

    Rectangle{
        id: rootRec
        anchors.fill: parent
        radius: 20
        gradient: Gradient{
            GradientStop{position: 0; color: "#d7d7d7"}
            GradientStop{position: 0.4; color: "#eeeeee"}
            GradientStop{position: 0.9; color: "#eeeeee"}
            GradientStop{position: 0.95; color: "#b3b3b3"}
            GradientStop{position: 1; color: "#eeeeee"}
        }
        focus: true
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
        //ListView
        Rectangle{
            id: myList
            x: 176; y: 222
            height: 663; width: 1570
            color:"transparent"
            ListView{
                id: listView
                height: 664; width: 1570
                anchors.fill: parent
                model: DataModel{}
                focus: true
                clip: true //自动截掉超出范围的内容
                delegate: patientDataDelegate
                headerPositioning: ListView.OverlayHeader
                Keys.onUpPressed: decrementCurrentIndex()
                Keys.onDownPressed: incrementCurrentIndex()
                keyNavigationWraps: true
                cacheBuffer: 10
                //keyNavigationEnabled: true
                //highlightFollowsCurrentItem: true
                //highlightRangeMode : ListView.ApplyRange
                //                populate: Transition {
                //                    NumberAnimation { properties: "x,y"; duration: 300 }
                //                }
            }
        }
        //ListView

        //ListView的Header
        Item{
            id: listViewHeader
            x:176; y: 161
            height: 45+16; width: 1616
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


        }//ListView的Header

        Component{
            id: patientDataDelegate
            Rectangle{
                id: rec
                height: 35; width: 1570
                color: index===rec.ListView.view.currentIndex? "#6A4C1A":(index%2==0?"#36d8d8d8":"transparent")
                border.color: "#979797"
                border.width: index===rec.ListView.view.currentIndex? 1:0
                radius: 5
                property int fontSize:24
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                        rec.ListView.view.currentIndex = index
                        //                        rec.ListView.view.forceActiveFocus()//和下面这句话效果相同
                        rec.ListView.view.focus = true
                        console.log(rec.ListView.view)
                    }
                }
                Image{
                    height: parent.height+8; width: 56
                    x: -3; y: -1
                    visible: rec.ListView.isCurrentItem
                    source: "qrc:/Img/icon/LoadDataHighlight.png"
                    z:100
                }

                Text{
                    id: nameD
                    text: name
                    x:111; anchors.verticalCenter: parent.verticalCenter
                    font.bold: false; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: checkedD.right; anchors.leftMargin: 50
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }

                Text{
                    id: genderD
                    text: gender
                    x:400; anchors.verticalCenter: parent.verticalCenter
                    font.bold: false; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: nameD.right; anchors.leftMargin: 120
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: ageD
                    text: age
                    x:666; anchors.verticalCenter: parent.verticalCenter
                    font.bold: false; font.pixelSize: fontSize; color:"white"
                    //                    anchors.left: genderD.right; anchors.leftMargin: 120
                    //                    font.bold: true; font.pixelSize: fontSize; color: "white"
                }
                Text{
                    id: dateD
                    text: date
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
                    source: registration?"qrc:/Img/icon/ldTrue.png":""
                }

                Image{
                    id: navigationD
                    x:1430;anchors.verticalCenter: parent.verticalCenter; width: 22; height: 22
                    source: "qrc:/Img/icon/ldFalse.png"
                }
                Image{
                    x: 1434; anchors.verticalCenter: parent.verticalCenter; width:20;height:14
                    source: navigation?"qrc:/Img/icon/ldTrue.png":""
                }
            }
        }

        Button{
            id: loadButton
            x: 807; y: 949
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
            x: 1048; y: 949
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
                loadFail.visible = true
                loadFailShadow.visible = true
            }
        }// 新建按钮 打开一个文件夹

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
        }//载入成功

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

        //ScrollBar
        Rectangle {
            id: scrollbar
            color:"#1bd8d8d8"
            width: 20; height: 663;
            anchors.right: listViewHeader.right
            anchors.top: myList.top
            radius: 14
            clip: true
            Rectangle{
                id: sBI1
                x: 0; y: 0; width: parent.width; height: 9+9+5
                color: "transparent"
                Image{
                    width: 12; height: 9;
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.top: parent.top; anchors.topMargin: 9
                    source: "qrc:/Img/icon/scrollBarIndicator.png"
                    rotation: 180
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: {
                    }
                }
            }
            Image{
                id: sBI2
                width: 12; height: 9;
                anchors.horizontalCenter: parent.horizontalCenter
                anchors.bottom: parent.bottom; anchors.bottomMargin: sBI1.anchors.topMargin
                source: "qrc:/Img/icon/scrollBarIndicator.png"
            }
            Item{
                id: item1
                anchors.top: sBI1.bottom; anchors.topMargin: 5;
                width: parent.width; height: parent.height-36-anchors.topMargin*2
                clip: true
                // 按钮
                Rectangle {
                    id: button
                    x: 0
                    y: listView.visibleArea.yPosition * item1.height
                    width: parent.width-2; anchors.horizontalCenter: parent.horizontalCenter
                    height: listView.visibleArea.heightRatio * item1.height;
                    color: "#737373"
                    radius: 16
                    // 鼠标区域
                    MouseArea {
                        id: mouseArea
                        anchors.fill: button
                        drag.target: button
                        drag.axis: Drag.YAxis
                        drag.minimumY: 0
                        drag.maximumY: item1.height - button.height
                        // 拖动
                        onMouseYChanged: {
                            listView.contentY = button.y / item1.height * listView.contentHeight
                        }
                    }
                }
            }
        }

        SystemMenu{ x: 1657; y: 8}
        PatientButton{}
        //下方的横线线
        Rectangle{
            x: 139; y: 897
            width: 1685; height: 2
            color: "#979797"
        }//下方的横线线

        // 搜索输入框
        Rectangle{
            id: searchRec
            anchors.right: listViewHeader.right; y: 103
            width: 306; height: 43
            color: "#b9d8d8d8"
            border.width: 1; border.color: "#b9979797"
            radius: 4
            Control14.TextField {
                anchors.left:searchImg.right
                width: 224; height: parent.height
                placeholderText: qsTr("关键词搜索")
                style: TextFieldStyle {
                    textColor: "black"
                    background: Rectangle {
                        color: "transparent"
                    }
                }
            }
            Rectangle{
                id: searchImg
                x: 0; y: 0; width: 43; height: parent.height
                color: "transparent"
                Image{
                    x: 17; y: 10
                    width: 26; height: width
                    source: "qrc:/Img/icon/search.png"
                }
                MouseArea{
                    anchors.fill: parent
                }
            }
            Rectangle{
                x: 268; y: 0
                width: 39; height: parent.height
                color: "transparent"
                Image{
                    x: 0; anchors.verticalCenter: parent.verticalCenter
                    width: 31; height: width
                    source: "qrc:/Img/icon/close.png"
                }
            }
        }
        InnerShadow {
            anchors.fill: searchRec
            radius: 16
            samples: 24
            horizontalOffset: 0
            verticalOffset: 2
            color: Qt.rgba(0,0,0,0.50)
            source: searchRec
            spread: 0.5
            //box-shadow:inset 0 2px 3px 0 rgba(0,0,0,0.50); 我也不知道怎么设
        }
        //搜索输入框+内阴影

        //筛选按钮
        Rectangle {
            id:comboBox
            property variant items: ["按时间排序↑", "按时间排序↓", "按姓氏排序↑", "按姓氏排序↓", "按年龄排序↑","按年龄排序↓"]
            property alias selectedItem: chosenItemText.text;
            property alias selectedIndex: listView1.currentIndex;
            signal comboClicked;
            x: 1269; y: 103
            width: 153;
            height: 43;
            smooth:true;
            color: "transparent"
            Rectangle {
                id:chosenItem
                radius:4;
                width:parent.width;
                height:comboBox.height;
                color: "#7ad8d8d8"
                smooth:true;
                //box-shadow:inset 0 2px 3px 0 rgba(0,0,0,0.50);

                Text {
                    anchors.centerIn: parent
                    id:chosenItemText
                    text:comboBox.items[0];
                    font.pixelSize: 24;
                    opacity: 0.7
                    color: "#000000"
                    smooth:true
                }
                MouseArea {
                    anchors.fill: parent;
                    onClicked: {
                        comboBox.state = comboBox.state==="dropDown"?"":"dropDown"
                    }
                }
            }
            InnerShadow {
                anchors.fill: chosenItem
                radius: 16
                samples: 24
                horizontalOffset: 0
                verticalOffset: 2
                color: Qt.rgba(0,0,0,0.50)
                source: chosenItem
                spread: 0.5
                //            box-shadow:inset 0 2px 3px 0 rgba(0,0,0,0.50);
            }
            Rectangle{
                anchors.top: parent.top; anchors.left: chosenItem.right; anchors.leftMargin: 2
                radius: 4
                width: 43; height: 43
                border.width: 1; border.color: "#88979797"
                gradient: Gradient{
                    GradientStop{position:0.1; color: "#88ffffff"}
                    GradientStop{position: 1; color: "#88b0b0b0"}
                }
                Image{
                    anchors.centerIn: parent
                    width: 17; height: 10
                    source:"qrc:/Img/icon/xiala.png"
                }
                MouseArea{
                    anchors.fill: parent
                    onClicked: comboBox.state = comboBox.state==="dropDown"?"":"dropDown"
                }
            }

            Rectangle {
                id:dropDown
                width:comboBox.width;
                height:0
                clip:true;
                radius:4;
                anchors.top: chosenItem.bottom;
                anchors.topMargin: 2
                color: "lightgray"
                Rectangle{
                    id: dropDownMask
                    height: 3
                    width:parent.width
                    anchors.bottom: listView1.top
                }
                ListView {
                    id:listView1
                    height:250
                    width: dropDown.width-4
                    anchors.horizontalCenter: parent.horizontalCenter
                    //                anchors.top: dropDownMask.bottom
                    anchors.topMargin: -1
                    z:1
                    model: comboBox.items
                    currentIndex: 0
                    delegate: Item{
                        width:listView1.width;
                        height: comboBox.height;
                        Rectangle {
                            id: mouseMoveHighLight
                            width:listView1.width;
                            height:comboBox.height;
                            color: "darkgray";
                            opacity: 0
                            radius: 4
                            z:0
                        }
                        Text {
                            text: modelData
                            anchors.centerIn: parent
                            font.pixelSize: 24;
                            z:1
                        }
                        MouseArea {
                            anchors.fill: parent;
                            hoverEnabled: true
                            onClicked: {
                                comboBox.state = ""
                                var preSelection = chosenItemText.text
                                chosenItemText.text = modelData
                                if(chosenItemText.text != preSelection){
                                    comboBox.comboClicked();
                                }
                                listView1.currentIndex = index;
                            }
                            onEntered: mouseMoveHighLight.opacity = 0.5;
                            onExited: mouseMoveHighLight.opacity = 0;
                        }
                    }
                    highlight: Rectangle {
                        width:listView1.width;
                        height:comboBox.height;
                        color: "darkgray";
                        radius: 4
                    }
                }
                MouseArea{
                    anchors.fill: dropDown
                    hoverEnabled: true
                    onExited: {
                        if(!containsMouse)
                            comboBox.state = "";
                    }
                }
            }
            states: State {
                name: "dropDown";
                PropertyChanges { target: dropDown; height:43*comboBox.items.length+4 }
            }
            transitions: Transition {
                NumberAnimation { target: dropDown; properties: "height"; easing.type: Easing.OutExpo; duration: 500 }
            }
        }
        Text{
            x: 862; y: 1054
            opacity: 0.8
            font.pixelSize: 18
            text: "AccuNavi-A 2.0"
        }
        Text{
            x: 1699; y: 1054
            opacity: 0.8
            font.pixelSize: 18
            text: "2017-02-16"
        }
    }


    FuzzyPanel{
        id: loadFail
        visible: false
        target: rootRec
        color: Qt.rgba(74,73,74,0.64);
        radius: 13
        width: 1056; height: 550
        x: 431; y: 281
        clip: true
        z: 100
        focus: true
        Text{
            x: 354; y: 257;font.pixelSize: 48; color: "#ffffff"
            text: qsTr("· 数据导入失败")
        }
        Rectangle{
            x: 450; y: 66
            width: 155; height: 155
            radius: 78
            color: "#d0011b"
            Image{
                anchors.centerIn: parent
                width: 66; height: width
                source: "qrc:/Img/icon/loadFail.png"
            }
        }
        Button{
            x: 377; y:378; width: 301; height: 80
            contentItem: Text {
                text: "关闭"
                font.pixelSize: 36
                color:"#FFFFFF"
                elide: Text.ElideRight
                verticalAlignment: Text.AlignHCenter
                horizontalAlignment: Text.AlignVCenter
            }
            background: Rectangle {
                color: "#000000"
                radius: 41
                gradient: Gradient{
                    GradientStop{position: 1; color:"#EA5959"}
                    GradientStop{position:0; color:"#F98b60"}
                }
                Rectangle{
                    width: 295; height: 74
                    anchors.centerIn: parent
                    color:"#000000"
                    radius: 40
                }
            }
            onClicked:{
                loadFail.visible = false
            }
        }
    }    //载入失败
    DropShadow {
        id: loadFailShadow
        visible:false
        anchors.fill: loadFail
        horizontalOffset: 0
        verticalOffset: 1
        radius: 8.0
        samples: 17
        color: "#80000000"
        source: loadFail
        //box-shadow:0 1px 7px 0
    }
    //载入失败的阴影
}
