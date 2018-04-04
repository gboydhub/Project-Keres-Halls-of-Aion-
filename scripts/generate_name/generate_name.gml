var iType = argument0;

var FName_M = ds_list_create();
var FName_F = ds_list_create();
var LName	= ds_list_create();
ds_list_add(FName_M, "Alphie", "Benson", "Blake", "Brock", "Clint", "Colt", "Dex",
					"Grant", "Hugsley", "Lee", "Nash", "Reid", "Wade", "Will", "Levi", "Xander");

ds_list_add(FName_F, "Ashtyn", "Baylee", "Beverly", "Britney", "Daisy", "Scarlett", "Edith",
					 "Faye", "Heyley", "Lili", "Maci", "Nelle", "Shelly", "Layla", "Kim");
					 
ds_list_add(LName,  "Alby", "Adley", "Barlow", "Blythe", "Colby", "Colt", "Elton", "Glas", "Hale", "Hart",
					"Kent", "Kellen", "Law", "Nash", "Bolt", "Brink", "Jinx", "Fate", "Gord", "Chain",
					"Ort", "Rode", "Banks");

var nameList = ds_list_create();
switch(iType)
{
	case 0:
		return FName_M[| irandom(ds_list_size(FName_M)-1)];
		break;
	case 1:
		return "";
		break;
	case 2:
		return FName_F[| irandom(ds_list_size(FName_F)-1)];
		break;
}
return "INVT";