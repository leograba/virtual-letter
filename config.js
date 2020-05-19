.pragma library

// Variables to hold object handlers
var timer;
var swipe;

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
