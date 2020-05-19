import QtQuick 2.9
import QtQuick.Controls 2.2

ApplicationWindow {
    id: window
    visible: true

    width: 1280
    height: 800

    title: qsTr("Tabs")

    SwipeView {
        id: swipeView
        anchors.fill: parent

        Loader {
            id: introLoader
            active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem
            source: 'intro.qml'
        }

