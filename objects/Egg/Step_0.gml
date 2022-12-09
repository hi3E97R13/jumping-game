/// @description core player logic

// player inpouts
key_left = keyboard_check(vk_left);
key_right = keyboard_check(vk_right);
key_jump = keyboard_check(vk_space);

//Calculate movment
var _move = key_right - key_left;

hsp =_move * walksp;

vsp = vsp + grv;

//horazontal collision
if (place_meeting(x+hsp,y,wall))
{
	while (!place_meeting(x+sign(hsp),y,wall))
	{
	x = x + sign(hsp);
	}
	hsp = 0;
}
x = x + hsp;

//vertacal collision
if (place_meeting(x,y+vsp,wall))
{
	while (!place_meeting(x,y+sign(vsp),wall))
	{
	x = x + sign(vsp);
	}
	vsp = 0;
}
y = y + vsp;