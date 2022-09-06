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
