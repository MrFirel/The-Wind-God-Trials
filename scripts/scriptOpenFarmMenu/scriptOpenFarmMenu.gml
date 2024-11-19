// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scriptOpenFarmMenu(objMenuOptions, objMenuCallback) {
    if (instance_exists(obj_menu)) {
        with(obj_menu) {
            menuOpen = true; // Abre o menu
            menuX = mouse_x; // Define a posição do menu
            menuY = mouse_y;

            // Configura sprites
            sprMenuOption = spr_farm_menu;
            sprMenuOptionTop = spr_farm_menu_top;
            sprMenuOptionBot = spr_farm_menu_bot;
            sprMenuOptionHover = spr_farm_menu;
            sprMenuOptionHoverTop = spr_farm_menu_top;
            sprMenuOptionHoverBot = spr_farm_menu_bot;

            // Configura opções e callback
            menuOptions = objMenuOptions;
            menuCallback = objMenuCallback;
        }
    }
}

function openFarmMenuChicken() {
    var option = argument0;

    switch (option) {
        case "Alimentar":
            show_message("Você alimentou a galinha!");
            break;

        case "Coletar ovos":
            show_message("Você coletou os ovos da galinha!");
            break;
    }
}

function openFarmMenuCow() {
    var option = argument0;

    switch (option) {
        case "Alimentar":
            show_message("Você alimentou a vaca!");
            break;

        case "Ordenhar":
            show_message("Você ordenhou a vaca!");
            break;

        case "Examinar":
            show_message("Você examinou a vaca!");
            break;
    }
}