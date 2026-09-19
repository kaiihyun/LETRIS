

depth = -y-100
if (instance_exists(owner)){
x = owner.x
y = owner.y-16
}

if (!instance_exists(owner)){instance_destroy()}
	
if (image_index > image_number-1){instance_destroy()}