draw_set_halign(fa_center)
draw_set_colour(damage_color);
draw_set_alpha(image_alpha)
draw_set_font(font_subtitle);



//color assignment
/*
if damage_color != c_lime {
	draw_set_colour(c_lime);
}
else if (damage <= 10) {
	draw_set_color(c_yellow);
}
else if (damage <= 25) {
	draw_set_color(c_orange);
}
else if (damage <= 50) {
	draw_set_color(c_red);
}
else {
	draw_set_color(c_purple);
}
*/



//draw_set_colour(damage_color);
var scale_bonus = (damage / 5) * 0.1;

draw_text_ext_transformed(
    x,
    y,
    string(damage),
    -1,
    -1,
    0.75 + scale_bonus, // x scale
    0.75 + scale_bonus, // y scale
    0
);

draw_set_alpha(1);