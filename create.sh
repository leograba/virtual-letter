#!/bin/bash

cp templates/mainTemplate.qml main.qml
cp templates/qmlTemplate.qrc qml.qrc
mkdir -p slides

for foto in $(ls --sort=time fotos)
do
    fotoext=$(echo $foto | cut -d "." -f1 | sed 's/-//g') # remove extension
    cp templates/PageTemplate.qml slides/Page$fotoext.qml
    sed -i "s/photohere/$foto/g" slides/Page$fotoext.qml
    echo "        Loader {" >> main.qml
    echo "            id: ${fotoext}Loader" >> main.qml
    echo "        active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem" >> main.qml
    echo "        source: 'slides/Page$fotoext.qml'" >> main.qml
    echo "    }" >> main.qml
    echo "        <file>slides/Page$fotoext.qml</file>" >> qml.qrc
done

echo "        Loader {" >> main.qml
echo "            id: outroLoader" >> main.qml
echo "        active: SwipeView.isCurrentItem || SwipeView.isNextItem || SwipeView.isPreviousItem" >> main.qml
echo "        source: 'outro.qml'" >> main.qml
echo "    }" >> main.qml
echo "    }" >> main.qml
echo "    PageIndicator {" >> main.qml
echo "        id: indicator" >> main.qml
echo "        count: swipeView.count" >> main.qml
echo "        currentIndex: swipeView.currentIndex" >> main.qml
echo "        anchors.bottom: swipeView.bottom" >> main.qml
echo "        anchors.horizontalCenter: parent.horizontalCenter" >> main.qml
echo "    }" >> main.qml
echo "}" >> main.qml
echo "    </qresource>" >> qml.qrc
echo "</RCC>" >> qml.qrc