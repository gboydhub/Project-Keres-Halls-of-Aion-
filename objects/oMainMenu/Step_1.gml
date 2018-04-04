if(instance_exists(oDialogText) || instance_exists(oOptionsMenu))
{
	return;
}
if(device_mouse_check_button(0, mb_left) && visible)
{
	var FoundBtn = false;
	for(var i = 0; i < 10; i++)
	{
		var MX = device_mouse_x_to_gui(0);
		var MY = device_mouse_y_to_gui(0);
		if(MX > gButtons[0, i] && MX < gButtons[2, i] && MY > gButtons[1, i] && MY < gButtons[3, i])
		{
			BtnDown = i;
			FoundBtn = true;
			break;
		}
	}
	if(!FoundBtn)
	{
		BtnDown = -1;
	}
}
if(device_mouse_check_button_released(0, mb_left) && BtnDown >=0 && visible)
{
	switch(BtnDown)
	{
		case BT_OPTIONS:
			instance_create_layer(0, 0, "DialogLayer", oOptionsMenu);
			break;
	}
	if(BtnDown == BT_FORGE)
	{
		show_dialog("You will go here\nto create new\ngear!\n", 30, 300, 340, 3, sprMaid);
	}
	if(BtnDown == BT_SHOP)
	{
		show_dialog("You will use the\nshop to buy items\nfor heroes to take.\nYakno, when its\ndone.", 30, 300, 340, 3, sprMaid);
	}
	if(BtnDown == BT_RECORDS)
	{
		show_dialog("This is where\nyou will view any\ninformation your\nheroes might learn!", 30, 300, 340, 3, sprMaid);
	}
	if(BtnDown == BT_TRAINING)
	{
		show_dialog("Here you will\nbe able to offer\nspecialized training\nto your heroes..\n    For a price!", 30, 300, 340, 3, sprMaid);
	}
	if(BtnDown == BT_QUIT)
	{
		game_end();
	}
	if(BtnDown == BT_HEROA)
	{
		global.HeroSlot = 0;
		visible = false;
		if(global.HeroList[# 0, global.HeroSlot] == "~")
		{
			instance_create_layer(0, 0, "Instances", oNewHero);
		}
		else
		{
			var oRm = instance_create_layer(0, 0, "Instances", oRoomMenu);
			oRm.CurrentRoom = global.HeroList[# 9, global.HeroSlot];
		}
	}
	if(BtnDown == BT_HEROB)
	{
		global.HeroSlot = 1;
		visible = false;
		if(global.HeroList[# 0, global.HeroSlot] == "~")
		{
			instance_create_layer(0, 0, "Instances", oNewHero);
		}
		else
		{
			var oRm = instance_create_layer(0, 0, "Instances", oRoomMenu);
			oRm.CurrentRoom = global.HeroList[# 9, global.HeroSlot];
		}
	}
	if(BtnDown == BT_HEROC)
	{
		global.HeroSlot = 2;
		visible = false;
		if(global.HeroList[# 0, global.HeroSlot] == "~")
		{
			instance_create_layer(0, 0, "Instances", oNewHero);
		}
		else
		{
			var oRm = instance_create_layer(0, 0, "Instances", oRoomMenu);
			oRm.CurrentRoom = global.HeroList[# 9, global.HeroSlot];
		}
	}
	if(BtnDown == BT_HEROD)
	{
		global.HeroSlot = 3;
		visible = false;
		if(global.HeroList[# 0, global.HeroSlot] == "~")
		{
			instance_create_layer(0, 0, "Instances", oNewHero);
		}
		else
		{
			var oRm = instance_create_layer(0, 0, "Instances", oRoomMenu);
			oRm.CurrentRoom = global.HeroList[# 9, global.HeroSlot];
		}
	}
	audio_play_sound(sndSelect, 9, false);
	BtnDown = -1;
}
