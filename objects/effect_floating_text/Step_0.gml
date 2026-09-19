depth = (-y-100)+(depth_offset);

// smooth side-to-side wiggle
wiggle += 0.1;
x = base_x + sin(wiggle) * 2;

// vertical motion
y += vsp;
vsp += grav;

// fade out
image_alpha -= 0.02;

// scale back to normal
image_xscale = lerp(image_xscale, 1, 0.1);
image_yscale = lerp(image_yscale, 1, 0.1);

// destroy when invisible
if (image_alpha <= 0) {
    instance_destroy();
}

