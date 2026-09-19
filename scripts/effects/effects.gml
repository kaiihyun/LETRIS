function effects(_owner =id, _sprite, _x_offset =0, _y_offset=0, _depth_offset = 0,_timeend = false, _time_tilend = 0, _image_xscale = 1, _image_yscale = 1){
	effect = instance_create_depth(x,y,depth, owner_effect_particle)
	effect.owner = _owner;
	effect.sprite_index = _sprite;
	
	
	effect.x_offset = _x_offset;
	effect.y_offset = _y_offset;
	effect.depth_offset = _depth_offset;
	effect.image_xscale = _image_xscale;
	effect.image_yscale = _image_yscale;
	
	if _timeend {effect.remove_endframe = false;
	effect.remove_timeend = true;
	effect.time_til_end = _time_tilend;}
	
	return effect;
}

function floating_effects( _sprite, _x_offset =0, _y_offset=0, _depth_offset = 0,_timeend = false, _time_tilend = 0, _image_xscale = 1, _image_yscale = 1, _image_speed = 1, _image_alpha = 1, _rotate_spd = 0, _dissipating, _fade_spd = 0){
	effect = instance_create_depth(x+_x_offset,y+_y_offset,depth, floating_effect_particle)
	effect.sprite_index = _sprite;
	
	effect.depth_offset = _depth_offset;
	effect.image_xscale = _image_xscale;
	effect.image_yscale = _image_yscale;
	effect.image_speed = _image_speed;
	effect.image_alpha = _image_alpha;
	
	effect.dissipating = _dissipating;
	effect.fade_spd = _fade_spd
	effect.rotate_spd = _rotate_spd
	
	if _timeend {effect.remove_endframe = false;
	effect.remove_timeend = true;
	effect.time_til_end = _time_tilend;}
	return effect;
}


function effects_heal(_owner = id){
	effect = instance_create_depth(x,y,depth, effect_heal)
	effect.owner = _owner;
}


function effects_damage(_damage, _color, _owner = id){
	effect = instance_create_depth(x,y,depth, effect_damage)
	effect.owner = _owner;
	effect.damage = _damage;
	effect.damage_color = _color

}

function effects_floating_text(_text, _color, _owner = id){
	effect = instance_create_depth(x,y,depth, effect_floating_text)
	effect.owner = _owner;
	effect.text = _text;
	effect.text_color = _color

}



function effects_moonhead(_owner = id){
	effect = instance_create_depth(x,y,depth, effect_moonhead)
	effect.owner = _owner;
}


//room transitions
function transition_fade(_target_alpha, _speed = 0.08, _nextroom = noone)
{
    var _fade;

    if (!instance_exists(obj_fade))
    {
        _fade = instance_create_depth(0, 0, -99999, obj_fade);
    }
    else
    {
        _fade = instance_find(obj_fade, 0);
    }
	if _target_alpha == 1 {global.in_dialogue = true}

    _fade.target_alpha = clamp(_target_alpha, 0, 1);
    _fade.fade_speed = _speed;
	_fade.nextroom = _nextroom;
}


function play_sfx_random_pitch(snd, priority, min_pitch = 0.9, max_pitch = 1.15){
    var s = audio_play_sound(snd, priority, false);
    audio_sound_pitch(s, random_range(min_pitch, max_pitch));
    return s;
}


function draw_health_bar(
	_x,_y,_hp,_full_hp,_former_hp,_color,
	_bw=50,_bh=5,_bx=-25,_by=-60,
	_border_size=1,_border_color=c_dkgrey)
	
{
	
	//draw border
    draw_sprite_ext(spr_health,0,_x+_bx-_border_size,_y+_by-_border_size,_bw+(_border_size*2),_bh+(_border_size*2),0,_border_color,1);

	//draw former hp
    var former_hp_percent = clamp(_former_hp/_full_hp,0,1);
    draw_sprite_ext(spr_health,0,_x+_bx,_y+_by,former_hp_percent*_bw,_bh,0,c_red,1);

	//draw hp
    var hp_percent = clamp(_hp/_full_hp,0,1);
    draw_sprite_ext(spr_health,0,_x+_bx,_y+_by,hp_percent*_bw,_bh,0,_color,1);
}



//draw shield
function draw_shield_bar(_x,_y,_shield,_full_shield,_hp,_bw=50,_bh=3,_bx=-25,_by=-66,_color=c_white)
{
    if (_hp >= 0)
        draw_sprite_ext(spr_health,0,_x+_bx,_y+_by,clamp(_shield/_full_shield,0,1)*_bw,_bh,0,_color,1);
}


