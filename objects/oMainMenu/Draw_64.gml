/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
for(var i = 0; i < 10; i++)
{
	var bUp = true;
	if(BtnDown == i)
		bUp = false;
	draw_button(gButtons[0, i], gButtons[1, i], gButtons[2, i], gButtons[3, i], bUp);
}

draw_set_color(c_white);
draw_rectangle(0, 0, 399, 699, true);
draw_rectangle(100, 5, 300, 40, true);
draw_text_color(105, 17, "Halls of Aion", make_color_rgb(0, 0, 140), c_white, c_silver, make_color_rgb(30, 30, 200), 1);

draw_rectangle_color(10, 219, 390, 221, c_white, c_gray, c_gray, c_white, false);

draw_rectangle(87, 45, 88+223, 46+165, true);
draw_sprite(sprTavern, 0, 88, 46);

draw_text(110, 245, "Shop");
draw_text(230, 245, "Forge");
draw_text(68, 300, "Training");
draw_text(225, 300, "Records");

for(var i = 0; i < 4; i++)
{
	if(global.HeroList[# 0, i] == "~")
	{
		draw_text(110, 380 + (i * 70), "--New Hero--");
	}
	else
	{
		draw_text(50, 370 + (i * 70), global.HeroList[# 0, i]);
		draw_text(50, 390 + (i * 70), "Lv. 1");
		var sTrain = global.Training[1, global.HasTraining[| global.HeroList[# 8, i]]];
		draw_text_color(240 - string_width(sTrain), 390 + (i * 70), sTrain, c_green, c_lime, c_lime, c_green, 1);
		draw_text(250, 390 + (i * 70), global.ClassList[global.HeroList[# 1, i]]);
	}
}

draw_text(15, 665, "Options");
draw_text(315, 665, "Quit");
 