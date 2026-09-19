alpha = lerp(alpha, target_alpha, fade_speed);

// Snap when close enough
if (abs(alpha - target_alpha) < 0.01)
{
    alpha = target_alpha;
}


x_end = room_width;
y_end = room_height;


if target_alpha == 1 and alpha == target_alpha and nextroom != noone{
	global.in_dialogue = false;
	room_goto(nextroom)
	transition_fade(0)
}
  
  
