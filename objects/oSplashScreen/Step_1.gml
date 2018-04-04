/// @description Insert description here
// You can write your code in this editor

if(bFadingIn && fAlphaFade < 1)
{
	fAlphaFade += 0.015;
	if(fAlphaFade >= 1)
	{
		alarm_set(0, room_speed * 4);
	}
}

if(!bFadingIn && fAlphaFade > 0)
{
	fAlphaFade -= 0.02;
	if(fAlphaFade <= 0)
	{
		alarm_set(1, room_speed * 1.5);
	}
}

if(device_mouse_check_button(0, mb_left))
{
	alarm_set(1, 1);
}