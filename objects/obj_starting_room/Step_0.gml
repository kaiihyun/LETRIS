if keyboard_check_pressed(vk_space){
	room_goto(Room1)
	instance_create_layer(room_width/2, room_height/2,"Instances",obj_letters );
}