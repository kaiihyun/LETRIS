shifting = keyboard_check(vk_shift)


if not global.game_over {
	
	if keyboard_check_pressed(ord(letter)) and global.press == 1 {
		switch(type){
			case 0: //normal type, should not be shifting to remove
					if not shifting
					{
						pressed_key()
					}
					break;
			case 1: //bomb type, should shift to remove, if not it will reduce
		
					pressed_key()
					if not shifting {
						var raj = audio_play_sound(BOMB_sound, 1, false);
						audio_sound_pitch(raj, random_range(0.5,1.5));
		
						
						global.timer -= global.bomb_time_decrease;
						
						var effe = floating_effects(spr_crepeblast,)

						effe.image_blend = color_part
						
						effects_floating_text("-" + string(global.bomb_time_decrease/60)+ " seconds",c_orange)
					}
					break;
			case 2://healing type
					if not shifting{
						pressed_key()
						global.timer += 60
						effects_floating_text("+1 sec",HEAL_color)
					}
					
		}
		
	}
	
}