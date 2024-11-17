menuOpen = !menuOpen; // Alterna o estado do menu

if (menuOpen) {
    // Posiciona o menu onde o mouse foi clicado
    menuX = mouse_x;
    menuY = mouse_y;

    // Define as opções do menu dinamicamente
    menuOptions = ["Opção 1", "Opção 2", "Opção 3"]; // Personalize conforme necessário
}

if (menuOpen && menuHovered != -1) {
    // Executa ação com base na opção clicada
    show_message("Você escolheu: " + string(menuOptions[menuHovered]));

    // Fecha o menu após a seleção
    menuOpen = false;
}
