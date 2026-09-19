repeat(10){
var size = random_range(1,1)
var spread = (bbox_right-bbox_left)/2
var spread_y = random_range(-spread,spread);
var spread_x = random_range(-spread,spread);
var eff = floating_effects(spr_snowflake,spread_x,spread_y,,1,irandom_range(10,20),size,size,,0.4,random_range(-4,4),true,0.05)


if type == 1 {color_part =choose(c_maroon,c_olive,c_orange,c_red,c_yellow,c_fuchsia,c_purple)}

eff.image_blend = color_part

}
