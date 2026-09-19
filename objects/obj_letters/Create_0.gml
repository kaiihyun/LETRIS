letter = choose(
    "A","B","C","D","E","F","G","H","I","J","K","L","M",
    "N","O","P","Q","R","S","T","U","V","W","X","Y","Z"
);
order = 0;

type = choose(0,0,0,0,0,0,0,1,0,1,2)
shifting = false
HEAL_color = c_aqua
DESTROY_sound = letris_pop
BOMB_sound =  letris_bomb


function pressed_key(_DESTROY_sound = DESTROY_sound){
	var raj = audio_play_sound(_DESTROY_sound, 1, false);
	audio_sound_pitch(raj, random_range(0.5,1.5));
	instance_destroy()
	global.press = 0
	global.points++
}

if type == 0 {
color_part = c_white
}
else if type == 1 {
 color_part = choose(c_maroon,c_olive,c_orange,c_red,c_yellow,c_fuchsia,c_purple)
}
else if type == 2 {
color_part = HEAL_color
}


float_time = random(360);