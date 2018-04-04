#macro MOUSEX global.mX
#macro MOUSEY global.mY

global.CurrentBGMusic = 0;

global.mX = 0;
global.mY = 0;

init_classes();
init_training();
init_events();
init_heroes();
generate_dungeon();

/*    -- Bug List --
-Names overlap training title on MainMenu
-Mute Button Unfinished
*/