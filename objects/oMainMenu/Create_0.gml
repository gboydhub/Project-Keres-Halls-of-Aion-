#macro BT_SHOP 0
#macro BT_FORGE 1
#macro BT_TRAINING 2
#macro BT_RECORDS 3
#macro BT_HEROA 4
#macro BT_HEROB 5
#macro BT_HEROC 6
#macro BT_HEROD 7
#macro BT_OPTIONS 8
#macro BT_QUIT 9

randomize();
draw_set_color(c_white);
draw_set_font(fText_B);

gButtons[4, 10] = 0;
BtnDown = -1;
add_button(85, 230, 190, 270, gButtons, 0);
add_button(210, 230, 315, 270, gButtons, 1);
add_button(65, 285, 190, 325, gButtons, 2);
add_button(210, 285, 335, 325, gButtons, 3);

add_button(40, 360, 360, 410, gButtons, 4);
add_button(40, 430, 360, 480, gButtons, 5);
add_button(40, 500, 360, 550, gButtons, 6);
add_button(40, 570, 360, 620, gButtons, 7);

add_button(10, 650, 125, 690, gButtons, 8);
add_button(305, 650, 380, 690, gButtons, 9);

audio_stop_sound(global.CurrentBGMusic);
global.CurrentBGMusic = audio_play_sound(musTavernBG, 10, true);
audio_sound_gain(global.CurrentBGMusic, 0, 0);
audio_sound_gain(global.CurrentBGMusic, 1, 2000);
if(!event_done("Intro"))
{
		show_dialog(event_text("Intro"), 30, 300, 340, 3, event_sprite("Intro"));
}

//show_dialog("Hey, glad you could\nfinally join us.\n\nWelcome to your\nnew tavern!\n    Hopefully in the\nfuture the developers\nwill put something\nuseful here.", 30, 300, 340, 3, sprMaid);

/*

var WH, WW;
WH = display_get_height() - 20;
var aspect = round(720 / 1280);
WW = WH * aspect;
view_wport[0] = WW;
view_hport[0] = WH;
surface_resize(application_surface, view_wport[0], view_hport[0]);
camera_set_view_size(view_camera[0], room_width, room_height);
window_set_size(view_wport[0], view_hport[0]);
/*
var WH, WW;
WH = 1280;
var aspect = round(window_get_width() / window_get_height());
WW = WH * aspect;
surface_resize(application_surface, WW, WH);
camera_set_view_size(view_camera[0], WW, WH);
window_set_size(WW, WH);*/