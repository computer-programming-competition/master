import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.1

Page {
    id: loginPage
    title: qsTr("Login")

    backgroundColor: Qt.rgba(100,100,100) // page background is translucent, we can see other items beneath the page
    useSafeArea: false // do not consider safe area insets of screen

    // login form background
    Rectangle {
        id: loginForm
        anchors.centerIn: parent
        color: "white"
        width: content.width + dp(48)
        height: content.height + dp(16)
        radius: dp(4)
    }

    // login form content
    GridLayout {
        id: content
        anchors.centerIn: loginForm
        columnSpacing: dp(20)
        rowSpacing: dp(10)
        columns: 2

        // headline
        AppText {
            Layout.topMargin: dp(8)
            Layout.bottomMargin: dp(12)
            Layout.columnSpan: 2
            Layout.alignment: Qt.AlignHCenter
            text: "Login"
        }

        // email text and field
        AppText {
            text: qsTr("Name")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtUsername
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
        }

        // password text and field
        AppText {
            text: qsTr("Password")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtPassword
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
           // echoMode: TextInput.Password
        }
        AppText {
            text: qsTr("确认密码")
            font.pixelSize: sp(12)
        }

        AppTextField {
            id: txtPassword2
            Layout.preferredWidth: dp(200)
            showClearButton: true
            font.pixelSize: sp(14)
            borderColor: Theme.tintColor
            borderWidth: !Theme.isAndroid ? dp(2) : 0
           // echoMode: TextInput.Password
        }

        // column for buttons, we use column here to avoid additional spacing between buttons
        Column {
            Layout.fillWidth: true
            Layout.columnSpan: 2
            Layout.topMargin: dp(12)

            // buttons
            AppButton {
                text: qsTr("注册")
                flat: false
                anchors.horizontalCenter: parent.horizontalCenter
                onClicked: {

                     console.debug("开始qml注册")
                    if(txtUsername.text.indexOf(txtPassword2.text))
                    {
                        client.mySignUp(txtUsername.text,txtPassword2.text)
                        console.debug("开始注册")

                    }


                  //  loginPage.forceActiveFocus() // move focus away from text fields

                }
            }




        }
    }
}
