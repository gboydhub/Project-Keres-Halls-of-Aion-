
#macro EVENT_TYPE_ONCE 0
#macro EVENT_TYPE_HERO 1

global.EventList[0, 0] = "Old Man";		//Event title
global.EventList[1, 0] = sprOldMan;
global.EventList[2, 0] = EVENT_TYPE_ONCE;
global.EventList[3, 0] = "Are you thinking of\ngoing in there?\n\n\nI am telling you now\nthat you will not\nreturn.\n\nThere is something\nsinister about that cave.\nI know you feel it.\n\nYou feel it in your\nbones.\n\n\nListen to your instincts\nand stay out of that\nplace!\n";
global.EventList[4, 0] = false;			//Has been done?
global.EventList[5, 0] = musMystery;	//Change music?
global.EventList[6, 0] = 0;				//Play sound fx?

global.EventList[0, 1] = "Intro";		//Event title
global.EventList[1, 1] = sprMaid;
global.EventList[2, 1] = EVENT_TYPE_ONCE;
global.EventList[3, 1] = "Hey!\nIts about time you\nshowed up.\nMy name is Lira,\nand its a pleasure to\nmeet you!\nFeel free to look\naround your new guild\nhouse and I will\nexplain things as we\ngo!";
global.EventList[4, 1] = true;			//Has been done?
global.EventList[5, 1] = musTavernBG;	//Change music?
global.EventList[6, 1] = 0;				//Play sound fx?