import QtQuick 2.9
import QtQuick.Controls 2.2
import QtQuick.Layouts 1.3
import "../config.js" as Cfg
import "../userconfig.js" as UsrCfg

Page {
    id: page

    background: Rectangle {
        color: "lightGray"
    }

    Text {
        id: caption
        color: "#4b4646"
        text: texthere
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height * 0.2
        width: parent.width * 0.8
        horizontalAlignment: Text.AlignHCenter
        verticalAlignment: Text.AlignVCenter
        wrapMode: Text.WordWrap
        font.pixelSize: parent.height * 0.05
    }

    Rectangle {
        id: photoFrame
        color: "transparent"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: parent.height * 0.07
        anchors.horizontalCenter: parent.horizontalCenter
        height: parent.height - caption.height - anchors.bottomMargin
        width: caption.width
        Image {
            id: photo
            source: "file:///" + applicationDirPath + UsrCfg.pathToPhotos + "photohere"
            autoTransform: true
            anchors.fill: parent
            fillMode: Image.PreserveAspectFit
        }
    }
}
