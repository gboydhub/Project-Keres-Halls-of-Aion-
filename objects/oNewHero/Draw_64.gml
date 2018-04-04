/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_black);

for(var i = 0; i < BT_NUM; i++)
{
	var bUp = true;
	if(BtnDown == i && !ClassMenuUp && !TrainMenuUp)
		bUp = false;
	draw_button(gButtons[0, i], gButtons[1, i], gButtons[2, i], gButtons[3, i], bUp);
}

draw_set_color(c_white);
draw_rectangle(0, 0, 399, 699, true);
draw_rectangle(100, 5, 300, 40, true);
draw_text_color(120, 17, "Hire a Hero", make_color_rgb(140, 0, 0), c_white, c_silver, make_color_rgb(200, 30, 30), 1);

draw_rectangle_color(10, 219, 390, 221, c_white, c_gray, c_gray, c_white, false);

draw_rectangle(87, 45, 88+223, 46+165, true);
draw_sprite(sprNewHero, 0, 88, 46);

draw_sprite(sprDie, 0, 320, 380);

draw_text(10, 250, "Name:  " + HeroName);
draw_text(10, 278, "Class:");
draw_text(223, 276, global.ClassList[HeroClass]);
draw_text(10, 308, "Training:");
draw_text(223, 306, global.Training[1, global.HasTraining[| HeroTraining]]);

draw_text(10, 360, "Strength:     " + string(HeroStr));
if(global.HasTraining[| HeroTraining] == TRAIN_STRENGTH)
	draw_text_color(240, 360, "(+2)", c_lime, c_lime, c_lime, c_lime, 1);
draw_text(10, 380, "Vitality:     " + string(HeroVit));
if(global.HasTraining[| HeroTraining] == TRAIN_STRENGTH)
	draw_text_color(240, 380, "(+1)", c_lime, c_lime, c_lime, c_lime, 1);
draw_text(10, 400, "Inteligence:  " + string(HeroInt));
if(global.HasTraining[| HeroTraining] == TRAIN_MIND)
	draw_text_color(240, 400, "(+2)", c_lime, c_lime, c_lime, c_lime, 1);
draw_text(10, 420, "Wisdom:       " + string(HeroWis));
if(global.HasTraining[| HeroTraining] == TRAIN_MIND)
	draw_text_color(240, 420, "(+1)", c_lime, c_lime, c_lime, c_lime, 1);
draw_text(10, 440, "Dexterity:    " + string(HeroDex));
if(global.HasTraining[| HeroTraining] == TRAIN_SPEED)
	draw_text_color(240, 440, "(+3)", c_lime, c_lime, c_lime, c_lime, 1);
draw_text(10, 460, "Luck:         " + string(HeroLuck));

draw_text(25, 665, "Back");
draw_text(320, 665, "Save");

if(TrainMenuUp)
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0, 0, 399, 699, false);
	draw_set_alpha(1);
	draw_rectangle(50, 80, 350, 600, false);
	
	for(var i = 0; i < ds_list_size(global.HasTraining); i++)
	{
		var btX = 60 + ((i mod 2)*145);
		var btY = 120 + (floor((i / 2))*30);
		var btW = btX + 135;
		var btH = btY + 25;
		
		var bUp = true;
		if(TrainingSelected == i)
			bUp = false;
		draw_button(btX, btY, btW, btH, bUp);
		draw_text_color(btX + 5, btY + 7, global.Training[0, global.HasTraining[| i]], c_white, c_white, c_white, c_white, 1);
	}
	
	draw_set_color(c_white);
	draw_rectangle(50, 80, 350, 600, true);
	draw_rectangle(60, 300, 340, 590, true);
	draw_text(92, 90, "Choose Training");
	draw_text(65, 310, global.Training[2, 0]);
}
if(ClassMenuUp)
{
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(0, 0, 399, 699, false);
	draw_set_alpha(1);
	draw_rectangle(80, 150, 320, 500, false);

	for(var i = 0; i < BT_CLASSES; i++)
	{
		var bUp = true;
		if(BtnDown == i)
		{
			bUp = false;
		}
		draw_button(gBtnClasses[0, i], gBtnClasses[1, i], gBtnClasses[2, i], gBtnClasses[3, i], bUp);
	}
	draw_set_color(c_white);
	draw_rectangle(80, 150, 320, 500, true);
	draw_text(115, 160, "Pick a Class");
	draw_text(136, 206, "Warrior");
	draw_text(136, 236, "Wizard");
	draw_text(136, 266, "Rogue");
	draw_text(136, 296, "Archer");
}