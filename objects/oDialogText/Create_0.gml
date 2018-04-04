/// @description Insert description here
// You can write your code in this editor

sText = "...";
sTextOut = "";
iWidth = 0;
iLines = 0;
sSprite = 0;
iCurrentLine = 0;
bWaitingInput = false;
iStartPos = 0;

iAlphaFade = 0;
iCharCounter = 0;
iCharOut = 0;
iCharDelay = 0;
iDialogSpeed = 18;

bNeedsDestroyed = true;
bFinishedWriting = false;

bInstant = false;

ThisLayer = 0;
for(var i = 0; i < instance_number(oDialogText); i++)
{
	ThisLayer -= 100;
}
layer = layer_create(ThisLayer);