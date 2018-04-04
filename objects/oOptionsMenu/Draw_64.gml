/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, room_height, false);
draw_set_alpha(1);

draw_rectangle(40, 100, 360, 500, false);

for(var i = 0; i < 3; i++)
{
	draw_button(gButtons[0, i], gButtons[1, i], gButtons[2, i], gButtons[3, i], gButtons[5, i]);
	draw_text_color(gButtons[2, i] - ((gButtons[2, i] - gButtons[0, i]) / 2) - (string_width(gButtons[4, i]) / 2), gButtons[1, i] + 10, gButtons[4, i], c_white, c_white, c_white, c_white, 1);
}

draw_rectangle_color(40, 100, 360, 500, c_white, c_white, c_white, c_white, true);