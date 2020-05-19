.pragma library
var timer;
var swipe;

function pathToFile() {
    return "/home/leonardo/torizon/natalia-3anos/fotos/";
    // must include final backslash
    // return "/full/path/to/directory/with/photos/";
}

function getTimer(tm){
    timer = tm;
}

function getSwipe(sw){
    swipe = sw;
}

function start(){
    timer.start();
    swipe.currentIndex += 1;
}

function restart(){
    timer.stop();
    swipe.currentIndex = 0;
}
