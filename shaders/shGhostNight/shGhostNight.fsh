varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{

    vec4 col = texture2D(gm_BaseTexture, v_vTexcoord);

    // Darken
    col.rgb *= 0.70;

    // Cool moonlight tint
    col.r *= 0.85;
    col.g *= 0.90;
    col.b *= 1.05;

    gl_FragColor = col * v_vColour;
}
