/// @description Check mouse input
// You can write your code in this editor

if(fAlphaFade > 0 && fAlphaFade < 1)
{
	fAlphaFade += 0.01;
}
if(device_mouse_check_button_released(0, mb_left))
{
	if(btnDown == 0)
	{
		audio_sound_gain(global.CurrentBGMusic, 0, 900);
		audio_play_sound(sndISeeYou, 11, false);
		alarm_set(0, room_speed * 8);
		alarm_set(1, room_speed * 1);
		btnDown = -1;
		bAcceptingInput = false;
	}
}

if(device_mouse_check_button(0, mb_left) && bAcceptingInput)
{
	var mX = device_mouse_x_to_gui(0);
	var mY = device_mouse_y_to_gui(0);
	
	if(mX >= btnNew[0] && mY >= btnNew[1] && mX < btnNew[0] + btnNew[2] && mY < btnNew[1] + btnNew[3])
	{
		btnDown = 0;
	}
	else
	{
		btnDown = -1;
	}
}