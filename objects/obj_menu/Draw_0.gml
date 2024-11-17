if (menuOpen) {
    var optionHeight = 32;
    var optionWidth = 150;

    for (var i = 0; i < array_length(menuOptions); i++) {
        var optionY = menuY + i * optionHeight;

        var spriteWidth = sprite_get_width(spr_menu_option_normal);
        var spriteHeight = sprite_get_height(spr_menu_option_normal);

        // Calcula a escala necessária para preencher o espaço da opção
        var scaleX = optionWidth / spriteWidth;
        var scaleY = optionHeight / spriteHeight;

        // Desenha a sprite correspondente
        if (menuHovered == i) {
            draw_sprite_ext(spr_menu_option_normal, 0, menuX, optionY, scaleX, scaleY, 0, c_black, 1);
        } else {
            draw_sprite_ext(spr_menu_option_normal, 0, menuX, optionY, scaleX, scaleY, 0, c_white, 1);
        }

        // Desenha o texto por cima da sprite
        draw_text(menuX + 10, optionY + 8, menuOptions[i]);
    }
}