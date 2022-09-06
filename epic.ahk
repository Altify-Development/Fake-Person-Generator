Random,epichas,1,100
if epichas between 1 and 60
{
; None
FileAppend,`nEpic Games Grabber: N/A,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Epic Games Grabber: N/A,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
if epichas between 61 and 100
{
	GenerateRandomString(length = 1)
	{
		characters :="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890-=_+!@#$"
		StringSplit, chars, characters
		
		Random,len2,3,6
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 315
				password .= chars%rand%	
			}
		}
		return password
	}
	; CaptureOL
	FileAppend,%A_Space%|%A_Space%Epic Games Grabber:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%| Games:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, gamecount,1,50
	Loop, %gamecount%
	{
		Random,gamenumber,1,177
		FileReadLine,gametitle,epic.games.list,%gamenumber%
		FileAppend,%gametitle%`,%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	; Capture
	FileAppend,`nEpic Games Grabber:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n Games:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, gamecount,1,50
	Loop, %gamecount%
	{
		Random,gamenumber,1,177
		FileReadLine,gametitle,epic.games.list,%gamenumber%
		FileAppend,%gametitle%`,%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
return
}
