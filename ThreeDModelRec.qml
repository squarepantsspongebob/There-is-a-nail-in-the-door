import QtQuick 2.0
import QtQuick.Layouts 1.1
import QtQuick.Controls 1.4
import QtQuick.Controls 2.0

Rectangle{
    width: 1605; height: 555
    Text{
        text: "3D模型"
        x: 107; y: 16
        font.pixelSize: 24; font.bold: true; color:"white"
    }

    ListView {
        id: listView
        width: 100; height: 300
        y:200

        model: myModel
        delegate: threeDModelDelegate
        header: threeDModelHeaderDelegate
        Component{
            id: threeDModelHeaderDelegate
            Rectangle{
                width: listView.width; height:20
                Text{
                    text:"名称"
                    font.pixelSize: 14; x: 43
                }
                Text{
                    text:"颜色"
                    font.pixelSize: 14; x: 89
                }
                Text{
                    text:"显示"
                    font.pixelSize: 14; x: 136
                }
                Text{
                    text:"透明度"
                    font.pixelSize: 14; x: 184
                }
                Text{
                    text:"轮廓线"
                    font.pixelSize: 14; x: 239
                }
            }
        }

        Component {
            id: threeDModelDelegate
            Rectangle{
                width: 287; height: 43
                color: index%2==0?"#4A4A4A":"#100E09"
                Component.onCompleted: {
                    gridLayout.data[index].color = model.modelData.color
                    gridLayout.data[index].opacity = opacity1?1:0.3
                    gridLayout.data[index].visible = show? true: false
                    gridLayout.data[index].border.width = contour? 10:0
                }
                CheckBox{
                    id: checkBox
                    x:14; y: 13
                    width: 15; height: width
                    visible: false
                    indicator: Rectangle {
                        implicitWidth: 15
                        implicitHeight: 15
                        radius: 9
                        border.color: checkBox.down ? "#17a81a" : "#21be2b"

                        Rectangle {
                            width: 10
                            height: 10
                            radius: 9
                            x:3;y:3
                            color: checkBox.down ? "#17a81a" : "#21be2b"
                            visible: checkBox.checked
                        }
                    }
                }
                Text {
                    x:36; y: 13
                    text: name;
                    font.pixelSize: 14
                    color: "white"
                }
                Rectangle{
                    id: colorButton
                    x: 90; y: 12
                    width: 18; height: 18
                    color: model.modelData.color
                    Loader{
                        id: colorPicker
                    }
                    MouseArea{
                        anchors.fill: parent
                        onClicked:colorPopup.open()
                    }
                }
                Popup{
                    id: colorPopup
                    width: 100; height: 100
                    contentItem:Rectangle{
                        width: 100; height: 100
                        Rectangle{
                            width: 100; height: 100
                            anchors.fill: parent
                            signal emitColor(color clr)
                            color: "white"
                            onFocusChanged: colorPicker.sourceComponent=undefined

                            GridLayout{
                                anchors.centerIn: parent
                                columns: 3; rows: 3; rowSpacing:3; columnSpacing: 3
                                property int widths: 20
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#FF7575"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorPicker.sourceComponent=undefined
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#FF79BC"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#FF44FF"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#BE77FF"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#6A6AFF"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#0072E3"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#00CACA"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#02F7BE"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                }
                                Rectangle{
                                    width: parent.widths; height: width
                                    color: "#28FF28"
                                    MouseArea{
                                        anchors.fill: parent
                                        onClicked: {
                                            colorButton.color = parent.color
                                            gridLayout.data[index].color = parent.color
                                            model.modelData.color = parent.color
                                            colorPopup.close()
                                        }
                                    }
                                } //之后可以用js进行改进，动态添加色块，并为色块涂色
                            }
                        }
                    }
                }
                ButtonToggle{
                    id: showButton
                    x:134; y:14
                    width: 26; height: 16
                    imageDefault:"qrc:/img/showOn.png"
                    imageHover:"qrc:/img/showOn.png"
                    imageClick:"qrc:/img/showOff.png"
                    state: show?"default":"clicked"
                    checked: !show
                    onClicked:{
                        show = !show
                        gridLayout.data[index].visible = show? true: false
                    }
                }
                ButtonToggle{
                    id: opacityButton
                    x: 192; y:12
                    width: 20; height: width
                    imageDefault:"qrc:/img/opacityOff.png"
                    imageHover:"qrc:/img/opacityOff.png"
                    imageClick:"qrc:/img/opacityOn.png"
                    state: opacity1?"default":"clicked"
                    checked: !opacity1
                    onClicked:{
                        opacity1=!opacity1
                        gridLayout.data[index].opacity = opacity1?1:0.3
                    }
                }
                Rectangle{
                    id:contourButton
                    x: 245; y: 12
                    width: 20; height: width
                    radius:10
                    border.width: contour?4:3
                    border.color: contour?"yellow":"gray"
                    MouseArea{
                        anchors.fill:parent
                        onClicked: {
                            if (contour)
                            {
                                contour = !contour
                                gridLayout.data[index].border.width = 0
                            }
                            else
                            {
                                contour = !contour
                                gridLayout.data[index].border.width = 10
                                gridLayout.data[index].border.color = 'black'
                            }
                        }
                    }
                }
            }
        }
    }
    RowLayout{
        id: colorButtonLayout
        spacing:23
        x: 25; y: 417
        ButtonToggle{
            id: blueGroup1
            width: 44; height: 44
            visible: false
            checkable: true
            exclusiveGroup: colorButtonGroup
            imageDefault: "qrc:/img/blueLightOffBtn.png"
            imageHover: "qrc:/img/blueLightOffBtn.png"
            imageClick: "qrc:/img/blueLightOnBtn.png"
            onClicked: {
                if (checked == true){
                    listView.model = myGroup1
                }
                else{
                    listView.model = myModel
                }
                console.log(1)
            }
        }
        ButtonToggle{
            id: greenGroup2
            width: 44; height: 44
            visible: false
            checkable: true
            exclusiveGroup: colorButtonGroup
            imageDefault: "qrc:/img/greenLightOffBtn.png"
            imageHover: "qrc:/img/greenLightOffBtn.png"
            imageClick: "qrc:/img/greenLightOnBtn.png"
            onClicked: {
                if (checked == true){
                    listView.model = myGroup2
                }
                else{
                    listView.model = myModel
                }
            }
        }
        ButtonToggle{
            id: orangeGroup3
            width: 44; height: 44
            visible: false
            checkable: true
            exclusiveGroup: colorButtonGroup
            imageDefault: "qrc:/img/orangeLightOffBtn.png"
            imageHover: "qrc:/img/orangeLightOffBtn.png"
            imageClick: "qrc:/img/orangeLightOnBtn.png"
            onClicked: {
                if (checked == true){
                    listView.model = myGroup3
                }
                else{
                    listView.model = myModel
                }
            }
        }
        ButtonToggle{
            id: purpleGroup4
            width: 44; height: 44
            visible: false
            checkable: true
            exclusiveGroup: colorButtonGroup
            imageDefault: "qrc:/img/purpleLightOffBtn.png"
            imageHover: "qrc:/img/purpleLightOffBtn.png"
            imageClick: "qrc:/img/purpleLightOnBtn.png"
            onClicked: {
                if (checked == true){
                    listView.model = myGroup4
                }
                else{
                    listView.model = myModel
                }
            }
        }
        ButtonToggle{
            id: createGroup
            width: 44; height: 44
            checkable: true
            imageDefault: "qrc:/img/newGroup.png"
            imageHover: "qrc:/img/newGroup.png"
            imageClick: "qrc:/img/newGroup.png"
            property int groupNum:1
            onClicked:{
                colorButtonLayout.data[groupNum].visible = true
                colorButtonLayout.data[groupNum].checked = true
                colorButtonLayout.data[groupNum].clicked()
                if (groupNum == 4){
                    createGroup.visible = false
                }
                else{
                    groupNum=groupNum+1
                }

            }
        }
        ExclusiveGroup{
            id: colorButtonGroup
        }
    } //colorButtonRowLayout
    //    GridLayout{
    //        id: gridLayout
    //        rows: 2; columns: 2; rowSpacing: -15; columnSpacing: -15
    //        Rectangle{
    //            id: rec1
    //            width: 100
    //            height: 100
    //            radius: 50
    //            border.color: 'black'
    //            Text{
    //                text: "1"
    //                font.pixelSize: 90
    //                anchors.centerIn: parent
    //                font.bold: true
    //            }
    //        }
    //        Rectangle{
    //            id: rec2
    //            width: 100
    //            height: 100
    //            radius: 50
    //            border.color: 'black'
    //            Text{
    //                text: "2"
    //                font.pixelSize: 90
    //                anchors.centerIn: parent
    //                font.bold: true
    //            }
    //        }
    //        Rectangle{
    //            id: rec3
    //            width: 100
    //            height: 100
    //            radius: 50
    //            border.color: 'black'
    //            Text{
    //                text: "3"
    //                font.pixelSize: 90
    //                anchors.centerIn: parent
    //                font.bold: true
    //            }
    //        }
    //        Rectangle{
    //            id: rec4
    //            width: 100
    //            height: 100
    //            radius: 50
    //            border.color: 'black'
    //            Text{
    //                text: "4"
    //                font.pixelSize: 90
    //                anchors.centerIn: parent
    //                font.bold: true
    //            }
    //            //            Behavior on x {
    //            //                enabled: spawned;
    //            //                SpringAnimation{ spring: 2; damping: 0.2 }
    //            //            }
    //            //            Behavior on y {
    //            //                SpringAnimation{ spring: 2; damping: 0.2 }
    //            //            }
    //        }
    //    }
}
