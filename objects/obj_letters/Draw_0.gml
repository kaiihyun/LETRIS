float_time += 0.08;

// Float up and down by 2 pixels
var yy = y + sin(float_time) * 2;

draw_set_font(global.fontism_bold);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_colour(c_white);
if type == 0{
draw_set_colour(color_part)
}
if type == 2{
draw_set_colour(color_part)
}
else if type == 1{
draw_set_colour(choose(c_maroon,c_olive,c_orange,c_red,c_yellow,c_fuchsia,c_purple))}






draw_text(x, yy, letter);


