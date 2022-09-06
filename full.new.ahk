FileCreateDir,Results
FileCreateDir,Results\Capture
FileCreateDir,Results\CaptureOL
for objItem in ComObjGet("winmgmts:").ExecQuery("SELECT * FROM Win32_NetworkAdapterConfiguration WHERE IPEnabled = True")
    MsgBox, % "IPAddress:`t`t" objItem.IPAddress[0] "`nMACAddress:`t" objItem.MACAddress "`n"
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
Random,XGPhas,1,100
if XGPhas between 1 and 40
{
; None
FileAppend,`nXbox Game Pass Grabber: N/A,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Xbox Game Pass Grabber: N/A,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
if XGPhas between 41 and 100
{
	; CaptureOL
	FileAppend,%A_Space%|%A_Space%Xbox Game Pass Grabber:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%| Games:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, XGPgamecount,1,25
	Loop, %XGPgamecount%
	{
		Random,XGPgamenumber,1,291
		FileReadLine,XGPgametitle,XGP.games.list,%XGPgamenumber%
		FileAppend,%XGPgametitle%`, %A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	; Capture
	FileAppend,`nXbox Game Pass Grabber:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`nGames:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, XGPgamecount,1,25
	Loop, %XGPgamecount%
	{
		Random,XGPgamenumber,1,291
		FileReadLine,XGPgametitle,XGP.games.list,%XGPgamenumber%
		FileAppend,%XGPgametitle%`,%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
}
Random,battlenethas,1,100
if battlenethas between 1 and 40
{
; None
FileAppend,`nBattle.NET Grabber: N/A,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Battle.NET Grabber: N/A,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
if battlenethas between 41 and 100
{
	; CaptureOL
	FileAppend,%A_Space%|%A_Space%Battle.NET Grabber:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%| Games:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, battlenetgamecount,1,8
	Loop, %battlenetgamecount%
	{
		Random,battlenetgamenumber,1,28
		FileReadLine,battlenetgametitle,battlenet.games.list,%battlenetgamenumber%
		FileAppend,%battlenetgametitle%`,%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	; Capture
	FileAppend,`nBattle.NET Grabber:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n Games:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, battlenetgamecount,1,8
	Loop, %battlenetgamecount%
	{
		Random,battlenetgamenumber,1,28
		FileReadLine,battlenetgametitle,battlenet.games.list,%battlenetgamenumber%
		FileAppend,%battlenetgametitle%`,%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
}
Random,epichas,1,100
if epichas between 1 and 40
{
; None
FileAppend,`nEpic Games Grabber: N/A,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Epic Games Grabber: N/A,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
if epichas between 41 and 100
{
	; CaptureOL
	FileAppend,%A_Space%|%A_Space%Epic Games Grabber:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%| Games:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, epicgamecount,1,5
	Loop, %epicgamecount%
	{
		Random,epicgamenumber,1,21
		FileReadLine,epicgametitle,epic.games.list,%epicgamenumber%
		FileAppend,%epicgametitle%`,%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	; Capture
	FileAppend,`nEpic Games Grabber:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n Games:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, epicgamecount,1,5
	Loop, %epicgamecount%
	{
		Random,epicgamenumber,1,21
		FileReadLine,epicgametitle,epic.games.list,%epicgamenumber%
		FileAppend,%epicgametitle%`,%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
}
Random,steamhas,1,100
if steamhas between 1 and 40
{
; None
FileAppend,`nSteam Grabber: N/A,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Steam Grabber: N/A,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
if steamhas between 41 and 100
{
	; CaptureOL
	FileAppend,%A_Space%|%A_Space%Steam Grabber:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%:%LastName%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%| Games:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, gamecount,1,50
	Loop, %gamecount%
	{
		Random,gamenumber,1,177
		FileReadLine,gametitle,steam.games.list,%gamenumber%
		FileAppend,%gametitle%`,%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	; Capture
	FileAppend,`nSteam Grabber:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%:%LastName%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n Games:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, gamecount,1,50
	Loop, %gamecount%
	{
		Random,gamenumber,1,177
		FileReadLine,gametitle,steam.games.list,%gamenumber%
		FileAppend,%gametitle%`,%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
}
Random,uplayhas,1,100
if uplayhas between 1 and 40
{
; None
FileAppend,`nUPlay Grabber: N/A,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%UPlay Grabber: N/A,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
if uplayhas between 41 and 100
{
	; CaptureOL
	FileAppend,%A_Space%|%A_Space%UPlay Grabber:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%A_Space%| Games:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, uplaygamecount,1,5
	Loop, %uplaygamecount%
	{
		Random,uplaygamenumber,1,21
		FileReadLine,uplaygametitle,uplay.games.list,%uplaygamenumber%
		FileAppend,%uplaygametitle%`,%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	; Capture
	FileAppend,`nUPlay Grabber:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,%FirstName%%Mail%:%LastName%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,% GenerateRandomString(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	FileAppend,`n Games:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	Random, uplaygamecount,1,5
	Loop, %uplaygamecount%
	{
		Random,uplaygamenumber,1,21
		FileReadLine,uplaygametitle,uplay.games.list,%uplaygamenumber%
		FileAppend,%uplaygametitle%`,%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
}
Random,creditposs,1,10
if creditposs = 1
{
Random,creditscore,300,400
}
if creditposs = 2
{
Random,creditscore,350,450
}
if creditposs = 3
{
Random,creditscore,450,500
}
if creditposs = 4
{
Random,creditscore,500,550
}
if creditposs = 5
{
Random,creditscore,550,650
}
if creditposs = 6
{
Random,creditscore,650,700
}
if creditposs = 7
{
Random,creditscore,700,750
}
if creditposs = 8
{
Random,creditscore,750,800
}
if creditposs = 9
{
Random,creditscore,800,825
}
if creditposs = 10
{
Random,creditscore,825,850
}
FileAppend,`nCredit Score: %creditscore%`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Credit Score: %creditscore%%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
Random,dob1,1,12
Random,dob2,1,28
Random,dob3,1960,2004
Random,eff1,1,12
Random,eff2,1,28
Random,eff3,2019,2023
	vvf1(length = 1)
	{
		characters :="1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 5
			{
				Random, rand, 1, 26
				password .= chars%rand%	
			}
		}
		return password
	}
	vvf2(length = 1)
	{
		characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
    Loop, 4
			{
				Random, rand, 1, 26
				password .= chars%rand%	
			}
		}
		return password
	}
	vvf3(length = 1)
	{
		characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 1
			{
				Random, rand, 1, 26
				password .= chars%rand%	
			}
		}
		return password
	}
Random,sv3o,1000000,9999999
Random,sv3t,10,99
	vvf4(length = 1)
	{
		characters :="1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 6
			{
				Random, rand, 1, 26
				password .= chars%rand%	
			}
		}
		return password
	}
Random,sv4o,1,9
Random,sv4t,1,9
FileAppend,Given Name: %FirstName%`nSurname: %LastName%`nNationality: USA`nSex:%Gender%`nDate of Birth: %dob1%/%dob2%/%dob3%`nPlace of Birth: %State%`nIssued On: %eff1%/%eff2%/%eff3%`nExpires on %eff1%/%eff2%/2024`nVVFs:%A_Space%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf1(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf2(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-%sv3o%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf3(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%sv3t%-%sv4o%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf4(),Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%sv4t%`n,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Given Name: %FirstName%%A_Space%|%A_Space%Surname: %LastName%%A_Space%|%A_Space%Nationality: USA%A_Space%|%A_Space%Sex:%Gender%%A_Space%|%A_Space%Date of Birth: %dob1%/%dob2%/%dob3%%A_Space%|%A_Space%Place of Birth: %State%%A_Space%|%A_Space%Issued On: %eff1%/%eff2%/%eff3%%A_Space%|%A_Space%Expires on %eff1%/%eff2%/2024%A_Space%|%A_Space%VVFs:%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf1(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf2(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-%sv3o%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf3(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%sv3t%-%sv4o%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% vvf4(),Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%sv4t%%A_Space%|%A_Space%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
MsgBox,48,Done!
ExitApp
