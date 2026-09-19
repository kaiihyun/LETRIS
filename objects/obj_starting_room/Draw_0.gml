var cx = display_get_gui_width() * 0.5;
var cy = display_get_gui_height() * 0.5;

draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_color(c_white);

var text_y = cy - 250;
var lh = 28;

draw_set_font(global.fontism_bold);
draw_set_colour(choose(c_maroon,c_olive,c_orange,c_red,c_yellow,c_fuchsia,c_purple))
draw_text_transformed(cx, text_y, "LETRIS", 3, 3, 0);

draw_set_colour(c_white)
text_y += 110;

draw_set_font(global.fontism_bold);
draw_text(cx, text_y, "WHAT TO DO");

text_y += lh * 2;

draw_set_font(global.fontism);
draw_text(cx, text_y, "1. type the letter shown on screen, but only if it's white or blue."); text_y += lh;
draw_text(cx, text_y, "2. if it's colorful, press SHIFT first, then press the letter. or else kaboom"); text_y += lh;
draw_text(cx, text_y, "3. eliminate all letters before the timer runs out."); text_y += lh;
draw_text(cx, text_y, "4. be chill as possible.");  text_y += lh;
draw_text(cx, text_y, "5. ENTER to restart"); text_y += lh;
draw_text(cx, text_y, "6. CAPSLOCK to in-out of fullscreen"); text_y += lh;
draw_text(cx, text_y, "7. SPACE to start game");

text_y += lh * 2;

draw_set_font(global.fontism_bold);
draw_text(cx, text_y, "NEVER");

text_y += lh * 2;

draw_set_font(global.fontism);
draw_text(cx, text_y, "1. freak out."); text_y += lh;
draw_text(cx, text_y, "2. wreck your keyboard."); text_y += lh;
draw_text(cx, text_y, "3. blame the developer.");