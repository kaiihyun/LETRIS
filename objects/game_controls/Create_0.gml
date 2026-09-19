
global.fontism = font_add_sprite(spr_fontism,32, true, 2);
global.fontism_small = font_add_sprite(spr_fontism_small,32, true, 2);
global.fontism_bold = font_add_sprite(spr_fontism_bold,32, true, 2);


randomise()
global.correct_key = true;
global.points = 0
global.press = 0 //checks if pressed a letter
bomb_amount = 0


//GAME SETTINGS
orig_timer = 60*15 //17 seconds
timer_speed = -1
timer_decrement = 40; //half a second
bomb_increase = 1 //amount of bomb increase per level

global.bomb_time_decrease = 180 //seconds




global.full_time = orig_timer;
global.timer = global.full_time;

global.game_over = false


