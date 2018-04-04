
draw_set_color(c_white);
draw_rectangle(0, 0, 399, 699, true);
draw_rectangle(100, 5, 300, 40, true);

var TColor = global.Dungeon[# 2, CurrentRoom];
var RText = global.Dungeon[# 0, CurrentRoom];
draw_text_color(200 - (string_width(RText)/2), 17, RText, TColor, TColor, TColor, TColor, 1);

draw_rectangle_color(10, 219, 390, 221, c_white, c_gray, c_gray, c_white, false);

draw_rectangle(87, 45, 88+223, 46+165, true);
draw_sprite(global.Dungeon[# 1, CurrentRoom], 0, 88, 46);

var RDesc = global.Dungeon[# 3, CurrentRoom];
draw_text(10, 240, RDesc);

draw_set_color(c_black);
draw_button(20, 20, 68, 68, !btnHomeDown);
draw_sprite(sprHome, 0, 20, 20);

if(TextDialog != 0)
{
	if(TextDialog.bFinishedWriting)
	{
		draw_rectangle_color(5, 400, 395, 695, c_white, c_white, c_white, c_white, true);
		var ROption = "What will you do?";
		draw_text_color(200 - (string_width(ROption)/2), 405, ROption, c_white, c_white, c_white, c_white, 1);
		
		var IsUp = true;
		for(var i = 0; i < global.Dungeon[# 6, CurrentRoom]; i++)
		{
			var bX = 20 + ((i mod 2) * 190);
			var bY = 450 + (floor(i/2) * 80);
			var bWidth = 170;
			var bHeight = 35;
			var bTxt = global.Dungeon[# 7+(i*3), CurrentRoom];
			
			IsUp = true;
			if(!HoldInput && mX > bX && mX < bX + bWidth && mY > bY && mY < bY + bHeight && device_mouse_check_button(0, mb_left))
			{
				IsUp = false;
				btnDown = i;
			}
			draw_button(bX, bY, bX + bWidth, bY + bHeight, IsUp);
			draw_text_color(bX  + (bWidth/2) - (string_width(bTxt)/2), bY + 12, bTxt, c_white, c_white, c_white, c_white, 1);
		}	
	}
}