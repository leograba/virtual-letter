import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "config.js" as Cfg

Page {
    id: introPage

    background: Rectangle {
        color: "lightGray"
    }

    Text {
        id: intro
        color: "#4b4646"
        text: qsTr("<b>Goodbye</b><br>" +
                   "You can add a long multi-line text here. Read the intro " +
                   "for more details.<br>See you!"
                   )
        textFormat: Text.RichText
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height * 0.7
        width: parent.width * 0.8
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        font.pixelSize: parent.height * 0.05
        elide: Text.ElideRight
    }

    Button {
        id: startTimerBtn
        text: "Add your \"Wanna restart?\" message here"
        anchors.top: intro.bottom
        anchors.topMargin: (parent.height -  intro.height) / 4
        anchors.horizontalCenter: parent.horizontalCenter
        height: (parent.height -  intro.height) / 2
        width: parent.width * 0.8
        font.pixelSize: parent.height * 0.05
        highlighted: true
        font.bold: true

        onClicked: Cfg.restart()
    }

}
