/// @description Insert description here
// You can write your code in this editor

btnDown = -1;

btnNew[0] = 50;
btnNew[1] = 200;
btnNew[2] = 300;
btnNew[3] = 80;

draw_set_font(fText_LG);
global.CurrentBGMusic = audio_play_sound(musMainMenu, 10, true);

bAcceptingInput = true;
fAlphaFade = 0.0;