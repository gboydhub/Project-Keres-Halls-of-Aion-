var sText = argument[0];
var iX = argument[1];
var iY = argument[2];
var iWidth = argument[3];
var iLines = argument[4];
var sSprite = argument[5];

var bDestroyAtEnd = true;
if(argument_count >= 7)
{
	bDestroyAtEnd = argument[6];
}
var bInst = false;
if(argument_count >= 8)
{
	bInst = argument[7];
}

var iObj = instance_create_layer(iX, iY, "DialogLayer", oDialogText);
iObj.sText = sText;
iObj.iWidth = iWidth;
iObj.iLines = iLines;
iObj.sSprite = sSprite;
iObj.bNeedsDestroyed = bDestroyAtEnd;
iObj.bInstant = bInst;

return iObj;