//
// Simple passthrough fragment shader
//
// Fragment Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_glow; // Uniform para controle do brilho

void main()
{
    vec4 cor = texture2D(gm_BaseTexture, v_vTexcoord);
    cor.rgb += u_glow; // Aumenta o brilho adicionando um valor constante
    gl_FragColor = v_vColour * cor;
}
