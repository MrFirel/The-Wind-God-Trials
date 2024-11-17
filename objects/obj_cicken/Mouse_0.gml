// Acessa o menu global
with (obj_menu) {
    menuOpen = true;                         // Abre o menu
    menuX = mouse_x;                         // Define a posição do menu
    menuY = mouse_y;
    menuOptions = ["Alimentar", "Coletar ovos"]; // Define as opções
    menuCallback = scriptMenuActionChicken;      // Define a função de callback
}