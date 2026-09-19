owner = noone


damage = 0;
damage_color = c_white

duration = 60;
duration_timer = duration
alarm[0] = duration;


	
//offset spawn
	x_offset = 0;
	y_offset = 0;
	depth_offset = 0;
	
	image_xscale = 0.8
	image_yscale = 0.8
	
	
	
// only use owner ONCE for spawn position
if (instance_exists(owner)) {
    x = owner.x + irandom_range(-40, 40);
    y = owner.y + irandom_range(-40, 40);
}

// vertical movement
vsp = random_range(-3, -1.5);
grav = 0.1;

// horizontal wiggle (no drifting away)
base_x = x;
wiggle = random(100);


// optional pop effect
image_xscale = 1.2;
image_yscale = 1.2;