depth = (-y-10)+(depth_offset);
		

if (dissipating)
{
    image_xscale -= fade_spd;
	image_yscale -= fade_spd

    if (image_xscale <= 0 or image_yscale <= 0 )
        instance_destroy();
}
else
{
    if (remove_timeend && time_til_end > 0)
    {
        alarm[0] = time_til_end;
        time_til_end = 0;
    }

    if (remove_endframe && image_index >= image_number - 1)
    {
        instance_destroy();
    }
}




if rotate_spd > 0 {
	image_angle += rotate_spd
}

