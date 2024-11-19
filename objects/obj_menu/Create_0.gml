menuOpen = false;         // Controla se o menu está aberto
menuX = 0;                // Posição x do menu
menuY = 0;                // Posição y do menu
menuOptions = [];         // Lista de opções do menu (inicialmente vazia)
menuHovered = -1;         // Nenhuma opção está sendo destacada
menuCallback = noone;     // Função ou script a ser chamado ao clicar em uma opção
optionHeight = 45;
optionWidth = 120;

// Sprites default
sprMenuOption = noone;
sprMenuOptionTop = noone;
sprMenuOptionBot = noone;

// Sprites hover
sprMenuOptionHover = noone;
sprMenuOptionHoverTop = noone;
sprMenuOptionHoverBot = noone;