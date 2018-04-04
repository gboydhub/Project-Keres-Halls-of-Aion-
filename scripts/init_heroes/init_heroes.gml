global.HeroSlot = 0;
global.HeroList = ds_grid_create(10, 4);
ds_grid_set(global.HeroList, 0, 0, "~");
ds_grid_set(global.HeroList, 0, 1, "~");
ds_grid_set(global.HeroList, 0, 2, "~");
ds_grid_set(global.HeroList, 0, 3, "~");


/* Training
0: Name
1: Class
2: Strength
3: Vit
4: Int
5: Wis
6: Dex
7: Luck
8: HeroTraining
9: Room ID
*/