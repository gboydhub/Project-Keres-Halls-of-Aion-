if(device_mouse_check_button(0, mb_left) && visible && !ClassMenuUp)
{
	var FoundBtn = false;
	for(var i = 0; i < BT_NUM; i++)
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
if(device_mouse_check_button(0, mb_left) && visible && TrainMenuUp)
{
	var FoundBtn = false;
	for(var i = 0; i < BT_CLASSES; i++)
	{
		var MX = device_mouse_x_to_gui(0);
		var MY = device_mouse_y_to_gui(0);
		if(MX > gBtnTraining[0, i] && MX < gBtnTraining[2, i] && MY > gBtnTraining[1, i] && MY < gBtnTraining[3, i])
		{
			TrainingSelected = i;
			FoundBtn = true;
			break;
		}
	}
	if(!FoundBtn)
	{
		TrainingSelected = -1;
	}
}
if(device_mouse_check_button(0, mb_left) && visible && ClassMenuUp)
{
	var FoundBtn = false;
	for(var i = 0; i < BT_CLASSES; i++)
	{
		var MX = device_mouse_x(0);
		var MY = device_mouse_y(0);
		if(MX > gBtnClasses[0, i] && MX < gBtnClasses[2, i] && MY > gBtnClasses[1, i] && MY < gBtnClasses[3, i])
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
if(device_mouse_check_button_released(0, mb_left) && BtnDown >=0 && visible && ClassMenuUp)
{
	HeroClass = BtnDown;
	ClassMenuUp = false;
	BtnDown = -1;
}
if(device_mouse_check_button_released(0, mb_left) && TrainingSelected >=0 && visible && TrainMenuUp)
{
	if(global.HasTraining[| HeroTraining] == TRAIN_STRENGTH)
	{
		HeroStr -= 2;
		HeroVit -= 1;
	}
		
	if(global.HasTraining[| HeroTraining] == TRAIN_MIND)
	{
		HeroInt -= 2;
		HeroWis -= 1;
	}
		
	if(global.HasTraining[| HeroTraining] == TRAIN_SPEED)
	{
		HeroDex -= 3;
	}
		
	HeroTraining = TrainingSelected;
	TrainMenuUp = false;
	TrainingSelected = -1;
	
	if(global.HasTraining[| HeroTraining] == TRAIN_STRENGTH)
	{
		HeroStr += 2;
		HeroVit += 1;
	}
		
	if(global.HasTraining[| HeroTraining] == TRAIN_MIND)
	{
		HeroInt += 2;
		HeroWis += 1;
	}
		
	if(global.HasTraining[| HeroTraining] == TRAIN_SPEED)
	{
		HeroDex += 3;
	}
}
if(device_mouse_check_button_released(0, mb_left) && BtnDown >=0 && visible && !ClassMenuUp)
{
	if(BtnDown == BT_BACK)
	{
		oMainMenu.visible = true;
		instance_destroy();
	}
	if(BtnDown == BT_SAVE)
	{
		ds_grid_set(global.HeroList, 0, global.HeroSlot, HeroName);
		ds_grid_set(global.HeroList, 1, global.HeroSlot, HeroClass);
		ds_grid_set(global.HeroList, 2, global.HeroSlot, HeroStr);
		ds_grid_set(global.HeroList, 3, global.HeroSlot, HeroVit);
		ds_grid_set(global.HeroList, 4, global.HeroSlot, HeroInt);
		ds_grid_set(global.HeroList, 5, global.HeroSlot, HeroWis);
		ds_grid_set(global.HeroList, 6, global.HeroSlot, HeroDex);
		ds_grid_set(global.HeroList, 7, global.HeroSlot, HeroLuck);
		ds_grid_set(global.HeroList, 8, global.HeroSlot, HeroTraining);
		ds_grid_set(global.HeroList, 9, global.HeroSlot, 0); //Room ID
		oMainMenu.visible = true;
		instance_destroy();
	}
	if(BtnDown == BT_ROLL)
	{
		HeroName = generate_name(0);
		HeroStr = irandom(3) + 1;
		HeroVit = irandom(3) + 1;
		HeroInt = irandom(3) + 1;
		HeroWis = irandom(3) + 1;
		HeroDex = irandom(3) + 1;
		HeroLuck = irandom(2) + 1;
		
		if(global.HasTraining[| HeroTraining] == TRAIN_STRENGTH)
			HeroStr += 2;
			HeroVit += 1;
		
		if(global.HasTraining[| HeroTraining] == TRAIN_MIND)
			HeroInt += 2;
			HeroWis += 1;
		
		if(global.HasTraining[| HeroTraining] == TRAIN_SPEED)
			HeroDex += 3;
	}
	if(BtnDown == BT_CLASS)
	{
		ClassMenuUp = true;
	}
	if(BtnDown == BT_TRAIN)
	{
		TrainMenuUp = true;
	}
	audio_play_sound(sndSelect, 9, false);
	BtnDown = -1;
}