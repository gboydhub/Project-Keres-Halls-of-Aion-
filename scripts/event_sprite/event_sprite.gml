var sName = argument0;

for(var i = 0; i < array_height_2d(global.EventList); i++)
{
	if(global.EventList[@ 0, i] == sName)
	{
		return global.EventList[@ 1, i];
	}
}

return 0;