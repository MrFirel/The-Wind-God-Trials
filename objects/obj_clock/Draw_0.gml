/// @description Insert description here
// You can write your code in this editor

function pad_with_zeros(value, target_length) {
    var str = string(value);
    while (string_length(str) < target_length) {
        str = "0" + str;
    }
    return str;
}

var clockText = pad_with_zeros(globalHours, 2) + ":" + 
                pad_with_zeros(globalMinutes, 2) + ":" +
				pad_with_zeros(globalSeconds, 2);
				 
var dayText = "Day: " + string(globalDays);

// Desenhar na tela
draw_set_color(c_white);
draw_text(10, 10, clockText);
draw_text(10, 30, dayText);