depth = (-y-10)+(depth_offset);

//owner dies, also die
	if (!instance_exists(owner)){instance_destroy()}
	

//follow_owner
	if (instance_exists(owner)){
		x = owner.x + x_offset;
		y = owner.y + y_offset;
	}
	
//image alpha
	duration_timer--

	image_alpha = duration_timer/(duration/2)
