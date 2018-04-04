
var NeedsHeld = false;
for(var i = 0; i < instance_number(oDialogText); i++)
{
	var inst = instance_find(oDialogText, i);
	if(inst.sSprite)
	{
		NeedsHeld = true;
	}
}
if(NeedsHeld)
{
	HoldInput = true;
}
else
{
	HoldInput = false;
}

mX = device_mouse_x_to_gui(0);
mY = device_mouse_y_to_gui(0);

if(device_mouse_check_button(0, mb_left) && !HoldInput)
{
	if(mX > 20 && mX < 68 && mY > 20 && mY < 68)
	{
		btnHomeDown = true;
	}
	else
	{
		btnHomeDown = false;
	}
}
if(device_mouse_check_button_released(0, mb_left) && btnHomeDown && !HoldInput)
{
	audio_play_sound(sndSelect, 9, false);
	audio_stop_sound(global.CurrentBGMusic);
	global.CurrentBGMusic = audio_play_sound(musTavernBG, 10, true);
	oMainMenu.visible = true;
	clear_dialogs();
	instance_destroy();
	return;
}

if(TextDialog == 0)
{
	TextDialog = show_dialog(global.Dungeon[# 3, CurrentRoom], 5, 240, 390, 6, 0, false);
	if(global.Dungeon[# 5, CurrentRoom] != 0)
	{
		ChangeMusic = global.Dungeon[# 5, 0];
		audio_sound_gain(global.CurrentBGMusic, 0, 800);
		alarm_set(0, room_speed * 1.5);
	}
	bJustSwitched = false;
}
else
{
	var EventID = global.Dungeon[# 4, CurrentRoom];
	if(TextDialog.bFinishedWriting && !bJustSwitched && EventID >= 0)
	{
		if(global.EventList[@ 2, EventID] == EVENT_TYPE_ONCE && global.EventList[@ 4, EventID] == false)
		{
			EventDialog = show_dialog(global.EventList[@ 3, EventID], 10, 230, 380, 4, global.EventList[@ 1, EventID]);
			global.EventList[@ 4, EventID] = true;
			if(global.EventList[@ 5, EventID] != 0)
			{
				ChangeMusic = global.EventList[@ 5, EventID];
				audio_sound_gain(global.CurrentBGMusic, 0, 800);
				alarm_set(0, room_speed * 1.5);
			}
		}
	}
	if(btnDown >= 0)
	{
		if(device_mouse_check_button_released(0, mb_left))
		{
			audio_play_sound(sndSelect, 9, false);
			var iOption = global.Dungeon[# 8 + (btnDown*3), CurrentRoom];
			if(iOption == -1)
			{
				audio_stop_sound(global.CurrentBGMusic);
				global.CurrentBGMusic = audio_play_sound(musTavernBG, 10, true);
				oMainMenu.visible = true;
				clear_dialogs();
				instance_destroy();
			}
			else
			{
				clear_dialogs();
				CurrentRoom = iOption;
				global.HeroList[# 9, global.HeroSlot] = CurrentRoom;
				TextDialog = 0;
				bJustSwitched = true;
			}
		}
		btnDown = -1;
	}
	
}