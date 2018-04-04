/// @description Insert description here
// You can write your code in this editor


draw_set_color(c_black);
if(sSprite != 0)
{
	draw_set_alpha(iAlphaFade);
	draw_rectangle(0, 0, 400, 700, false);
	draw_set_alpha(1);
	draw_sprite(sSprite, 0, 93, 46);
}
else
{
	iAlphaFade = 0.7;
}
if(iAlphaFade > 0.5)
{
	draw_rectangle(x, y, x + iWidth, y + iLines * 25, false);

	draw_set_color(c_white);
	draw_rectangle(x, y, x + iWidth, y + iLines * 25, true);
	draw_text_ext(x + 5, y + 8, sTextOut, 23, iWidth);
}