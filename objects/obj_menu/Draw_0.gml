if (menuOpen) {
    for (var i = 0; i < array_length(menuOptions); i++) {
        var optionY = menuY + i * optionHeight;

        var spriteWidth = sprite_get_width(spr_farm_menu);
        var spriteHeight = sprite_get_height(spr_farm_menu);

        // Calcula a escala necessária para preencher o espaço da opção
        var scaleX = optionWidth / spriteWidth;
        var scaleY = optionHeight / spriteHeight;

        // Desenha a sprite correspondente
        if (menuHovered == i) {
			if (i == (array_length(menuOptions) - 1)) {
                draw_sprite_ext(sprMenuOptionHoverBot, 0, menuX, optionY, scaleX, scaleY, 0, c_black, 1);
            } else if (i == 0) {
                draw_sprite_ext(sprMenuOptionHoverTop, 0, menuX, optionY, scaleX, scaleY, 0, c_black, 1);
            } else {
                draw_sprite_ext(sprMenuOptionHover, 0, menuX, optionY, scaleX, scaleY, 0, c_black, 1);
            }
        } else {
            if (i == (array_length(menuOptions) - 1)) {
                draw_sprite_ext(sprMenuOptionBot, 0, menuX, optionY, scaleX, scaleY, 0, c_white, 1);
            } else if (i == 0) {
                draw_sprite_ext(sprMenuOptionTop, 0, menuX, optionY, scaleX, scaleY, 0, c_white, 1);
            } else {
                draw_sprite_ext(sprMenuOption, 0, menuX, optionY, scaleX, scaleY, 0, c_white, 1);
            }
        }

        // Desenha o texto por cima da sprite
        draw_text(menuX + 10, optionY + 8, menuOptions[i]);
    }
}