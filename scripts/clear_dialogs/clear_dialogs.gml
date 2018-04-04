
for(var i = 0; i < instance_number(oDialogText); i++)
{
	instance_destroy(instance_find(oDialogText, i));
}