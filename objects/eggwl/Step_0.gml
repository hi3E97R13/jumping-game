/// @description ??
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check_pressed(vk_space);


//calculate movememt
var _move = key_right - key_left;

hsp = _move * walksp;

vsp = vsp + grv;

if (place_meeting(x,y+1,wall)) && (key_jump)
{
vsp = -jumpsp
}

//horrozontal colition
if (place_meeting(x+hsp,y,wall))
{
	while (!place_meeting(x+sign(hsp),y,wall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;
// vertical collisison
if (place_meeting(x,y+vsp,wall))
{
	while (!place_meeting(x,y+sign(vsp),wall))
	{
	y = y + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;

// animation
if (!place_meeting(x,y+1,wall))
{
	sprite_index = eggjm;
	image_speed = 0;
	if (vsp > 0) image_index = 3; else image_index = 1;
	
}
else
{
	image_speed = 1
	 if (hsp = 0)
	 {
		sprite_index = eggwl
	 }

}
if (hsp !=0	) image_xscale = sign(hsp);