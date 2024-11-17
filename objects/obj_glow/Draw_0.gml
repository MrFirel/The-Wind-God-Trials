/// @description Insert description here
// You can write your code in this editor

if (mouseOver) {
    shader_set(shd_glow);

    // Define o valor do brilho (por exemplo, 0.2 para aumentar o brilho)
    var glow = 0.2;
    shader_set_uniform_f(shader_get_uniform(shd_glow, "u_glow"), glow);
}

// Desenha a sprite
draw_self();

if (mouseOver) {
    // Desativa o shader
    shader_reset();
}