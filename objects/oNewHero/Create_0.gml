/// @description Insert description here
// You can write your code in this editor
#macro BT_BACK 0
#macro BT_ROLL 1
#macro BT_CLASS 2
#macro BT_TRAIN 3
#macro BT_SAVE 4
#macro BT_NUM 5

#macro BT_WARRIOR 0
#macro BT_WIZARD 1
#macro BT_ROGUE 2
#macro BT_ARCHER 3
#macro BT_CLASSES 4

gButtons[4, 1] = 0;
gBtnClasses[4, 1] = 0;
gBtnTraining[4, 1] = 0;
BtnDown = -1;
ClassMenuUp = false;
TrainMenuUp = false;
TrainingSelected = -1;

HeroClass = CLASS_WARRIOR;
HeroTraining = 0;
HeroName = generate_name(0) + " " + generate_name(1);
HeroStr = irandom(3) + 1;
HeroVit = irandom(3) + 1;
HeroInt = irandom(3) + 1;
HeroWis = irandom(3) + 1;
HeroDex = irandom(3) + 1;
HeroLuck = irandom(2) + 1;
add_button(10, 650, 100, 690, gButtons, BT_BACK);
add_button(320, 382, 380, 442, gButtons, BT_ROLL);

add_button(217, 270, 370, 295, gButtons, BT_CLASS);
add_button(217, 300, 370, 325, gButtons, BT_TRAIN);

add_button(300, 650, 390, 690, gButtons, BT_SAVE);

add_button(130, 200, 270, 225, gBtnClasses, BT_WARRIOR);
add_button(130, 230, 270, 255, gBtnClasses, BT_WIZARD);
add_button(130, 260, 270, 285, gBtnClasses, BT_ROGUE);
add_button(130, 290, 270, 315, gBtnClasses, BT_ARCHER);

for(var i = 0; i < ds_list_size(global.HasTraining); i++)
{
	var btX = 60 + ((i mod 2)*145);
	var btY = 120 + (floor((i / 2))*30);
	var btW = btX + 135;
	var btH = btY + 25;
	add_button(btX, btY, btW, btH, gBtnTraining, i);
}