#SingleInstance,Force
SetBatchLines -1

IfExist,AltGENTargeting.dll
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
	FileCreateDir,Generated
	FileCreateDir,Capture
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
		characters :="abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890abcdefghijklmnopqrstuvwxyzabcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ12345678901234567890-=_+!@#$." 
		StringSplit, chars, characters
		
		Random,len2,3,6
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 316
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
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 2
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 3
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 4
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 5
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 6
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 7
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 8
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 9
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 10
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 11
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 12
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 13
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 14
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 15
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 16
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 17
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 18
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 19
		{
			FileReadLine, State, STATES/USA.pdb, %StateRandom%
			Country := "USA"
		}
		IfEqual, StateProbability, 20
		{
			FileReadLine, State, STATES/MEXICO.pdb, %StateRandom%	
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
		FileReadLine,FirstName, NAMES/namesFIRST.pdb, %FileReadNumber1%
		FileReadLine,LastName, NAMES/namesLAST.pdb, %FileReadNumber2%
		FileReadLine,Mail, MAIL-ENDINGS/ENDINGS.db, %FileReadNumber3%
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
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify™#5121 - Thanks For Boosting.txt,
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
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify™#5121 - Thanks For Boosting.txt,
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
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify™#5121 - Thanks For Boosting.txt,
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
			FileAppend,`nSubscribed=True`nTime Remaining:`n%RemainingYears% Years`n%RemainingMonths% Months`n%RemainingDays% Days`n%RemainingHours% Hours`n%RemainingMinutes% Minutes`n%RemainingMonths% Seconds`n%RemainingMiliseconds% Miliseconds,Capture\Account Targeted Account Generator By Altify™#5121 - Thanks For Boosting.txt,
		}
		FileAppend,`n%1%`nCredits: Account Creator By: Altify™#5121`nLanguage: AutoHotKey`nDiscLink: %DiscLink%`nYTLink: %YT%`nTwitchLink: %TwitchLink%`n,Capture\Account Targeted Account Generator By Altify™#5121 - Thanks For Boosting.txt,
	}
	return
}
}
ExitApp
