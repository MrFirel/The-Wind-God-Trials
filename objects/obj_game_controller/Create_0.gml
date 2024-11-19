/// @description Insert description here
// You can write your code in this editor

global.globalRoomsList = ds_stack_create();

// Obter a resolução do monitor
var display_w = display_get_width();
var display_h = display_get_height();

// Calcula a proporção
var aspect_ratio = 1920 / 1080;

// Ajusta para a melhor proporção
if (display_w / display_h > aspect_ratio) {
    display_w = display_h * aspect_ratio;
} else {
    display_h = display_w / aspect_ratio;
}

// Ajusta a aplicação para manter a proporção
surface_resize(application_surface, display_w, display_h);
