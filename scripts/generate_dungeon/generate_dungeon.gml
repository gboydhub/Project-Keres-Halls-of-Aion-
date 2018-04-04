#macro DUNGEON_FLOORS	4
#macro DUNGEON_RPF		10
global.Dungeon = ds_grid_create(25, (DUNGEON_FLOORS * DUNGEON_RPF) + 3);

global.Dungeon[# 0, 0] =	"Forest";
global.Dungeon[# 1, 0] =	sprForest;
global.Dungeon[# 2, 0] =	c_green;		//Title color
global.Dungeon[# 3, 0] =	"You leave the guild\nand enter a dark\nforest.\n\nThere is a long\nwinding path ahead.";
global.Dungeon[# 4, 0] =	-1;				//Auto event ID
global.Dungeon[# 5, 0] =	musAdventure;
global.Dungeon[# 6, 0] =	2;				//Number of exits
global.Dungeon[# 7, 0] =	"Continue";		//Option title
global.Dungeon[# 8, 0] =	1;				//Linked room ID
global.Dungeon[# 9, 1] =	-1;				//Cause event? (-1 no)
global.Dungeon[# 10, 0] =	"Turn back";
global.Dungeon[# 11, 0] =	-1;				//Back to menu is -1
global.Dungeon[# 12, 1] =	-1;				//Cause event? (-1 no)

global.Dungeon[# 0, 1] =	"Forest";
global.Dungeon[# 1, 1] =	sprCaveEnter;
global.Dungeon[# 2, 1] =	c_green;		//Title color
global.Dungeon[# 3, 1] =	"You come across the\nentrace to a dark cave.\n\nA chill runs down your\nspine.";
global.Dungeon[# 4, 1] =	0;				//Auto event ID
global.Dungeon[# 5, 1] =	0;
global.Dungeon[# 6, 1] =	1;				//Number of options
global.Dungeon[# 7, 1] =	"Enter Cave";	//Option title
global.Dungeon[# 8, 1] =	0;				//Linked room ID
global.Dungeon[# 9, 1] =	-1;				//Cause event? (-1 no)