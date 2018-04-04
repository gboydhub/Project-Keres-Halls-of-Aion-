/// @description Insert description here
// You can write your code in this editor

var IsUp = true;
if(btnDown == 0)
{
	IsUp = false;
}
draw_set_color(c_black);
draw_button(btnNew[0], btnNew[1], btnNew[0] + btnNew[2], btnNew[1] + btnNew[3], IsUp);
IsUp = false;

draw_set_color(c_white);
draw_text(btnNew[0] + 50, btnNew[1] + 30, "New Game");

draw_set_alpha(fAlphaFade);
draw_rectangle_color(0, 0, room_width, room_height, c_black, c_black, c_black, c_black, false);
draw_set_alpha(1);