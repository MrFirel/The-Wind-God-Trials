if (menuOpen) {
    var optionHeight = 32; // Altura de cada opção do menu
    menuHovered = -1;      // Nenhuma opção está destacada por padrão

    for (var i = 0; i < array_length(menuOptions); i++) {
        var optionY = menuY + i * optionHeight;

        // Verifica se o mouse está sobre a opção atual
        if (mouse_x > menuX && mouse_x < menuX + 150 &&
            mouse_y > optionY && mouse_y < optionY + optionHeight) {
            menuHovered = i; // Destaca a opção atual
            break;
        }
    }
}

if (menuOpen && mouse_check_button_pressed(mb_left)) {
    // Clique em uma opção do menu
    if (menuHovered != -1 && menuCallback != noone) {
        script_execute(menuCallback, menuOptions[menuHovered]); // Executa o callback
    }

    // Fecha o menu ao clicar fora ou em uma opção
    menuOpen = false;
}