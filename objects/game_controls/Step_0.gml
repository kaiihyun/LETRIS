// caps to fullscreen
	//if (keyboard_check_pressed(20))
	//	{window_set_fullscreen(!window_get_fullscreen());}

// esc to out fullscreen
if (keyboard_check_pressed(vk_escape) && window_get_fullscreen())
	{ window_set_fullscreen(false);}


//checks what letter is pressed
	if not global.game_over {
		if (keyboard_lastkey >= ord("A") && keyboard_lastkey <= ord("Z")){
		   show_debug_message(chr(keyboard_lastkey));
			global.press = 1
	
		}
	}


// timer
	if instance_exists(obj_letters) and global.timer > 0 {
		global.timer += timer_speed
	}

//level done
	if not instance_exists(obj_letters){
		
		global.full_time -= timer_decrement;
		global.timer = global.full_time;
		bomb_amount += bomb_increase;
		with(obj_spawner){
			//spawn_amount += 2
			spawn_letters(floor(other.bomb_amount/2), true)
			spawn_letters(spawn_amount)
		}
	
		
	}


randomise()


//gameover
	if instance_exists(obj_letters) and global.timer <= 0 and not global.game_over{
		audio_play_sound(letris_game_over, 0, false)
		global.game_over = true;
	}

	if global.game_over{
		if keyboard_check_pressed(vk_enter)	{
			global.full_time = orig_timer;
			bomb_amount=0;
			global.timer = global.full_time
			with(obj_letters){instance_destroy()}
			with(obj_spawner){
				spawn_letters(10)	
			}
			global.game_over = false
			global.points = 0
		}
	
	}