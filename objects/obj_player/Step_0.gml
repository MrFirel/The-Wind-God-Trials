/// @description Insert description here
// You can write your code in this editor
var movementSpeed = 2;

if (keyboard_check(ord("W"))) {
    y -= movementSpeed;
}

if (keyboard_check(ord("A"))) {
    x -= movementSpeed;
}

if (keyboard_check(ord("S"))) {
    y += movementSpeed;
}
if (keyboard_check(ord("D"))) {
    x += movementSpeed;
}

