/// @description Insert description here
// You can write your code in this editor
audio_stop_sound(global.CurrentBGMusic);
global.CurrentBGMusic = audio_play_sound(ChangeMusic, 10, true);