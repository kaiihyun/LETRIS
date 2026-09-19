spawn_amount = 10;
randomise()
start_x = x
start_y = y
end_x = start_x + sprite_width
end_y = start_y + sprite_height

function spawn_letters(_amount,_bomb=false){
	
repeat(_amount){
	var letter = instance_create_layer(random_range(start_x,end_x),random_range(start_y,end_y),"Instances",obj_letters)
	if _bomb{
		letter.type = 1
	}
}

}

spawn_letters(10);