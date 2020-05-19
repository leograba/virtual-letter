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
        text: qsTr("<b>Hello</b><br>" +
                   "You can add a long multi-line text here. It will <i>wrap and " +
                   "display on the front-end</i>. Use <font color=\"#FF0000\">" +
                   "HTML tags</font> for rich formatting, see " +
                   "<a href=https://doc.qt.io/qt-5/richtext-html-subset.html>https://doc.qt.io/qt-5/richtext-html-subset.html</a> " +
                   "for more details.<br> Just be careful to not exceed the " +
                   "screen size!"
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
        text: "Add your \"Let's start?\" message here"
        anchors.top: intro.bottom
        anchors.topMargin: (parent.height -  intro.height) / 4
        anchors.horizontalCenter: parent.horizontalCenter
        height: (parent.height -  intro.height) / 2
        width: parent.width * 0.8
        font.pixelSize: parent.height * 0.05
        highlighted: true
        font.bold: true

        onClicked: Cfg.start()
    }

}
