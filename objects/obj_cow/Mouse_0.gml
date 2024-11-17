// Acessa o menu global
with (obj_menu) {
    menuOpen = true;                         // Abre o menu
    menuX = mouse_x;                         // Define a posição do menu
    menuY = mouse_y;
    menuOptions = ["Alimentar", "Ordenhar", "Examinar"]; // Define as opções
    menuCallback = scriptMenuActionCow;      // Define a função de callback
}