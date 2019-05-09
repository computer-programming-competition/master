//guchangrong
import VPlayApps 1.0
import QtQuick 2.0
import user 1.0
import community 1.0
Page {
    id:activityPage
    property int number:0
    Component{
        id:memberlist
        MemberList{

        }
    }

    rightBarItem: IconButtonBarItem {
        icon: IconType.list //列表
        onClicked:{
          activityPage.navigationStack.push(memberlist)
        }
    }
    Rectangle{
        id:introduction
        width: parent.width-dp(10)
        height: 1/4 * parent.height
        anchors.top: navigationbar.bottom
        anchors.topMargin: dp(5)
        anchors.horizontalCenter: parent.horizontalCenter
        border.width: dp(2)
//        color: "red"
        border.color: "lightgray"
        radius: dp(6)
        Text{
            id:introTitle
            text: qsTr("简介")
            font.pixelSize: sp(20)
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: dp(5)
        }
        Text{
            id:introContent
            width: parent.width - dp(2)*2
            text: communityitem.nowCIntroduce(number)
            wrapMode: Text.WrapAnywhere
            lineHeight: 1.5
            font.pixelSize: sp(10)
            anchors.top: introTitle.bottom
            anchors.bottomMargin: dp(5)
            anchors.horizontalCenter: parent.horizontalCenter
        }
    }
    Rectangle{
        id:activity1
        width: parent.width-dp(10)
        height: 1/3 * parent.height
        anchors.top: introduction.bottom
        anchors.topMargin: dp(10)
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: "lightgray"
        border.width: dp(2)
        radius: dp(6)
        Text{
            id:title
            text: qsTr("动力精彩——篮球社与街舞社的VS")
            font.pixelSize: sp(20)
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.top: parent.top
            anchors.topMargin: dp(5)
        }
        Text{
            id:activityIntro
            width: parent.width - dp(2)*2
            text:qsTr("    活动简介：本活动将于2019年3月12日9：00举办，地点：篮球场。本次活动中，篮球社成员将与街舞社成员分别表演节目，最后表演共同节目“动力精彩”。希望同学们到场观看。")
            wrapMode: Text.WrapAnywhere
            lineHeight: 1.5
            font.pixelSize: sp(10)
            anchors.top: title.bottom
            anchors.bottomMargin: dp(5)
            anchors.horizontalCenter: parent.horizontalCenter
        }
        AppButton{
            id:joinin
            width: dp(50)
            height: dp(20)
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.horizontalCenter: parent.horizontalCenter
            text: qsTr("参与")
            textSize: sp(15)
            onClicked: {
                joinin.backgroundColor = "lightgray"
                console.debug("成功加入活动")
            }
        }
    }
//    AppButton{
//        id:joinOrganization
//        z:1
//        width: dp(50)
//        height: dp(20)
//        anchors.bottom: parent.bottom
//        anchors.bottomMargin: dp(20)
//        anchors.horizontalCenter: parent.horizontalCenter
//        text: qsTr("加入我们")
//        textSize: sp(15)
//        onClicked: {

//            user.setCommunity("篮球社")
//            console.debug("我的社团：",user.community)
//            joinOrganization.backgroundColor = "lightgray"

//        }

//    }
}
