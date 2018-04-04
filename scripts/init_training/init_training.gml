#macro TRAIN_STRENGTH 0
#macro TRAIN_MIND 1
#macro TRAIN_SPEED 2
#macro TRAIN_NONE 3

global.Training[0, TRAIN_STRENGTH] = "Strength";
global.Training[1, TRAIN_STRENGTH] = "Strong";
global.Training[2, TRAIN_STRENGTH] = "Increase the\nstrength of your\nhero.";

global.Training[0, TRAIN_MIND] = "Mind";
global.Training[1, TRAIN_MIND] = "Smart";
global.Training[2, TRAIN_MIND] = "Increase the \nintelligence of\nyour hero.";

global.Training[0, TRAIN_SPEED] = "Speed";
global.Training[1, TRAIN_SPEED] = "Fast";
global.Training[2, TRAIN_SPEED] = "Increase the\ndexterity of\nyour hero.";

global.Training[0, TRAIN_NONE] = "None";
global.Training[1, TRAIN_NONE] = "";
global.Training[2, TRAIN_NONE] = "No additional\ntraining selected.";

global.HasTraining = ds_list_create();
ds_list_add(global.HasTraining, TRAIN_NONE, TRAIN_STRENGTH, TRAIN_MIND, TRAIN_SPEED);