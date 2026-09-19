if room == Room1{


var w = room_width * (1 - global.timer / global.full_time);

draw_sprite_stretched(
    spr_timer,
    0,
    0,
    0,
    w,
    room_height
);

draw_set_font(global.fontism)
draw_set_halign(fa_center)
draw_set_colour(c_white)
draw_text_transformed(room_width/2,10, "Points: " + string(global.points),0.25,0.25,0)


if global.game_over{
	draw_set_font(global.fontism_bold)
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(room_width/2, room_height/2, "Game Over");
	
}}