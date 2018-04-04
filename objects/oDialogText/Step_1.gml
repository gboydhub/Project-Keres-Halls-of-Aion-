/// @desc Handle logic behind displaying a textbox with delays between characters.
///       Click the screen to speed up text. (Classic RPG style)
if(bInstant && !bWaitingInput)
{
	iCharOut = string_length(sText);
}
if(iCharOut <= string_length(sText) && !bWaitingInput && iAlphaFade > 0.6)
{
	if(device_mouse_check_button(0, mb_left))
	{
		iDialogSpeed = 42; //The answer to life, the universe, and fast dialog speed.
	}
	else
	{
		iDialogSpeed = 18;
	}
	if(iCharCounter >= room_speed / iDialogSpeed)
	{
		iCharCounter = 0;
		if(iCharDelay <= 0)
		{
			iCharOut++;
			sTextOut = string_copy(sText, iStartPos, iCharOut - iStartPos);

			var cChar = string_char_at(sText, iCharOut);
			if(cChar == "\n")
			{
				iCurrentLine++;
				if(iCurrentLine == iLines)
				{
					bWaitingInput = true;
				}
			}
			else
			{
				if(!bInstant)
					audio_play_sound(sndClick, 10, false);
			}
			if(cChar == "," || cChar == "." || cChar == "?" || cChar == "!")
			{
				iCharDelay = 10;
			}
		}
		else
		{
			iCharDelay --;
		}
	}
	iCharCounter++;
	if(iCharOut >= string_byte_length(sText) && !bFinishedWriting)
	{
		bFinishedWriting = true;
	}
}
if(iAlphaFade < 0.7)
{
	iAlphaFade += 0.025;
}
if(device_mouse_check_button_released(0, mb_left))
{
	if(iCharOut >= string_byte_length(sText))
	{
		if(bNeedsDestroyed)
		{
			instance_destroy();
		}
	}
	else if(bWaitingInput)
	{
		iStartPos = iCharOut + 1;
		sTextOut = "";
		iCurrentLine = 0;
		bWaitingInput = false;
	}
}
