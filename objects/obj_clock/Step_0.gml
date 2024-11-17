/// @description Insert description here
// You can write your code in this editor

timeCounter += 1;

if (timeCounter >= timeSpeed) {
    timeCounter = 0;
    globalSeconds += 1;
	
    if (globalSeconds >= 60) {
        globalSeconds = 0;
        globalMinutes += 1;
    }

    if (globalMinutes >= 60) {
        globalMinutes = 0;
        globalHours += 1;
    }

    if (globalHours >= 24) {
        globalHours = 0;
        globalDays += 1;
    }
}