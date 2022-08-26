#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force
SetBatchLines, -1
MsgBox,48,Starting,Welcome To Altify's Gen,1
MsgBox,48,Checking For Updates,Accessing Github,1
IfExist,info.txt
{
FileRecycle,info.txt
URLDownloadToFile,https://raw.githubusercontent.com/Altify-Development/Fake-Person-Generator/main/info.txt,info.txt
}
MsgBox,,Completed Step 1,info.txt restored,1
IfExist,info.txt
{	
	MsgBox,48,Installation Process,Checking Installation,1
	IfNotExist, Installed.sys
	{
		Gui, Add, Text,, Targeting Account Generator By Altify Has Not Been Installed Yet. Do You Want To Begin The Process?
		Gui, Add, Button, ym, Install
		Gui, Add, Button, ym, Cancel
		Gui, Show,, Installer
		return
		GuiClose2:
		ButtonCancel:
		ExitApp
		ButtonInstall:
		Gui, Submit
	FileCreateDir,Results/Generated
	FileCreateDir,Results/Capture
	Gui, Add, Text,, Please Enter The Advertisment You Wish To Place In Your Capture:
	Gui, Add, Text,, Please Enter The Amount of Accounts You Would Like To Generate %A_UserName%:
	Gui, Add, Text,, Pleast Enter Your Discord Server Invite For Capture
	Gui, Add, Text,, Pleast Enter Your YT Link For Capture
	Gui, Add, Text,, Pleast Enter Your Twitch.tv For Capture
	Gui, Add, CheckBox, va1, Do You Wish To Be Inlcuded in Growing List of beta Testers?
	Gui, Add, Edit, v1 ym, Enter Text Here
	Gui, Add, Edit, v2, Enter Text Here
	Gui, Add, Edit, vDiscLink, Enter Text Here
	Gui, Add, Edit, vYT, Enter Text Here
	Gui, Add, Edit, vTwitchLink, Enter Text Here
	Gui, Add, Button, default, OK
	Gui, Show,, Targeting Account Generator By Altify
	return
	ButtonOK:
	Gui, Submit
	Blank := ""
	IfEqual, 1, %Blank%
	{
		1 := "[NO AD PROVIDED]"
	}
	IfEqual, DiscordLink, %Blank%
	{
		DiscordLink := "[NO AD PROVIDED]"
	}
	IfEqual, YT, %Blank%
	{
		YT := "[NO AD PROVIDED]"
	}
	IfEqual, TwitchLink, %Blank%
	{
		TwitchLink := "[NO AD PROVIDED]"
	}
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
	DToken1(length = 1)
	{
		characters :="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890"
		StringSplit, chars, characters
		
		Random,len2,22,26
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 307
				password .= chars%rand%	
			}
		}
		return password
	}
	DToken2(length = 1)
	{
		characters :="___abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890"
		StringSplit, chars, characters
		
		Random,len2,4,8
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 310
				password .= chars%rand%	
			}
		}
		return password
	}
	DToken3(length = 1)
	{
		characters :="---abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890"
		StringSplit, chars, characters
		
		Random,len2,25,29
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 310
				password .= chars%rand%	
			}
		}
		return password
	}
	pak1(length = 1)
	{
		characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 4
			{
				Random, rand, 1, 36
				password .= chars%rand%	
			}
		}
		return password
	}
	pak2(length = 1)
	{
		characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 4
			{
				Random, rand, 1, 36
				password .= chars%rand%	
			}
		}
		return password
	}
	pak3(length = 1)
	{
		characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 4
			{
				Random, rand, 1, 36
				password .= chars%rand%	
			}
		}
		return password
	}
	pak4(length = 1)
	{
		characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890"
		StringSplit, chars, characters
		
		Loop, %length%
		{
			Loop, 4
			{
				Random, rand, 1, 36
				password .= chars%rand%	
			}
		}
		return password
	}
	Loop, %2%
	{
		Random, StateRandom, 1, 50
		Random, StateProbability, 1, 20
		IfEqual, StateProbability, 1
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 2
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 3
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 4
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 5
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 6
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 7
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 8
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 9
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 10
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 11
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 12
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 13
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 14
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 15
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 16
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 17
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 18
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 19
		{
			FileReadLine, State, settings/STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 20
		{
			FileReadLine, State, settings/STATES/MEXICO.pdb, %StateRandom%	
			Country := "Mexico"
		}
		Random, IP1, 10, 99
		Random, IP2, 10, 99
		Random, IP3, 100, 999
		Random, IP4, 100, 999
		Random, FileReadNumber1, 1, 2000
		Random, FileReadNumber2, 1, 400
		Random, FileReadNumber3, 1, 9000
		Sleep, 20
		FileReadLine,FirstName, settings/NAMES/namesFIRST.pdb, %FileReadNumber1%
		FileReadLine,LastName, settings/NAMES/namesLAST.pdb, %FileReadNumber2%
		FileReadLine,Mail, settings/MAIL-ENDINGS/ENDINGS.db, %FileReadNumber3%
		FileAppend,% GenerateRandomString(),Generated\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,%FirstName%%Mail%:%LastName%,Generated\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% GenerateRandomString(),Generated\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`n,Generated\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% GenerateRandomString(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,%FirstName%%Mail%:%LastName%,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% GenerateRandomString(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`nName=%FirstName% %LastName%,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`n%Country%/%State%,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`nIP=%IP1%.%IP2%.%IP3%.%IP4%,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		Random, Subscription, 1, 5
		IfEqual, Subscription, 1
		{
			FileAppend,`nSubscribed=False,Capture\Account Targeted Account Generator By Altify™#5121 - Thanks For Boosting.txt,
		}
		IfEqual, Subscription, 2
		{
			Random, RemainingYears, 0, 5
			Random, RemainingMonths, 0, 12
			Random, RemainingDays, 0, 27
			Random, RemainingHours, 0, 23
			Random, RemainingMinutes, 0, 59
			Random, RemainingSeconds, 0, 59
			Random, RemainingMiliseconds, 0, 999
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		}
		IfEqual, Subscription, 3
		{
			Random, RemainingYears, 0, 4
			Random, RemainingMonths, 0, 12
			Random, RemainingDays, 0, 27
			Random, RemainingHours, 0, 23
			Random, RemainingMinutes, 0, 59
			Random, RemainingSeconds, 0, 59
			Random, RemainingMiliseconds, 0, 999
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		}
		IfEqual, Subscription, 4
		{
			Random, RemainingYears, 0, 3
			Random, RemainingMonths, 0, 12
			Random, RemainingDays, 0, 27
			Random, RemainingHours, 0, 23
			Random, RemainingMinutes, 0, 59
			Random, RemainingSeconds, 0, 59
			Random, RemainingMiliseconds, 0, 999
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		}
		IfEqual, Subscription, 5
		{
			Random, RemainingYears, 0, 2
			Random, RemainingMonths, 0, 12
			Random, RemainingDays, 0, 27
			Random, RemainingHours, 0, 23
			Random, RemainingMinutes, 0, 59
			Random, RemainingSeconds, 0, 59
			Random, RemainingMiliseconds, 0, 999
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		}
		Random, pin1, 1, 9
		Random, pin2, 1, 9
		Random, pin3, 1, 9
		Random, pin4, 1, 9
		FileAppend,`nComputer Information:`nUsername: %FirstName%`nComputer Name:,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% GenerateRandomString(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`nPIN ( Personal Identification Number ): %pin1%%pin2%%pin3%%pin4%`nMicosoft Account Linked: ,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% GenerateRandomString(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,%FirstName%%Mail%:%LastName%,,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% GenerateRandomString(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`nProduct Activation Key:,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% pak1(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% pak2(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% pak3(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% pak4(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,`nDiscord Token: ,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% DToken1(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,.,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% DToken2(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,.,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		FileAppend,% DToken3(),Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
		Random, ccsec1, 1000, 9999
		Random, ccsec2, 1000, 9999
		Random, ccsec3, 1000, 9999
		Random, ccsec4, 1000, 9999
		Random, ccsec5, 100, 999
		Random, ccsec6, 1, 28
		Random, ccsec7, 2024, 2027
		Credit Card: %ccsec1% %ccsec2% %ccsec3% %ccsec4%`nCCV2: %ccsec5%`nExpiration Date: %ccsec6%/%ccsec7%`nCard Network: MasterCard/Access/Eurocard`n`n,
		FileAppend,`n%1%`nCredits: Account Creator By: Altify#4476`nLanguage: AutoHotKey`nDiscLink: %DiscLink%`nYTLink: %YT%`nTwitchLink: %TwitchLink%`n,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
	}
	return
}
}
ExitApp
