/// @description Insert description here
// You can write your code in this editor

if(instance_exists(oDialogText))
{
	return;
}

for(var i = 0; i < 3; i++)
{
	if(device_mouse_check_button_released(0, mb_left) && !gButtons[5, i])
	{
		btnPressed = i;
		audio_play_sound(sndSelect, 9, false);
	}
	
	if(device_mouse_check_button(0, mb_left) && MOUSEX > gButtons[0, i] && MOUSEX < gButtons[2, i] && MOUSEY > gButtons[1, i] && MOUSEY < gButtons[3, i])
	{
		gButtons[5, i] = false;
	}
	else
	{
		gButtons[5, i] = true;
	}
}

switch(btnPressed)
{
	case 0:
		show_dialog("      -Concept-\n Gary Boyd \"Eponick\"\nKenneth Vider \"Xegain\"\n\n      -Writing-\nKenneth Vider \"Xegain\"\n\n    -Programming-\n Gary Boyd \"Eponick\"", 30, 120, 340, 14, 0, true, true);
		break;
	case 1:
		instance_destroy();
		break;
	case 2:
		audio_set_master_gain(0, 0);
		break;
}

btnPressed = -1;