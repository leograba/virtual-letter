import QtQuick 2.9
import QtQuick.Controls 2.2
import "config.js" as Cfg

ApplicationWindow {
    id: window
    visible: true

    width: 1280
    height: 800

    title: qsTr("Tabs")

    Component.onCompleted: {
        Cfg.getTimer(timerSlideshow);
        Cfg.getSwipe(swipeView);
    }

    Timer {
        id: timerSlideshow
        interval: 5000; repeat: true
        onTriggered: {
            if (swipeView.currentIndex < swipeView.count)
                swipeView.currentIndex += 1
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent

        Loader {
            id: introLoader
            active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem
            source: 'intro.qml'
        }

