da1(length = 9)
{
  characters :="1234567890"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 10
      password .= chars%rand%	
    }
  }
  return password
}
da2(length = 9)
{
  characters :="1234567890"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 10
      password .= chars%rand%	
    }
  }
  return password
}
da3(length = 4)
{
  characters :="1234567890"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 10
      password .= chars%rand%	
    }
  }
  return password
}
id1(length = 5)
{
  characters :="1234567890"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 10
      password .= chars%rand%	
    }
  }
  return password
}
id2(length = 3)
{
  characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 26
      password .= chars%rand%	
    }
  }
  return password
}
hm1(length = 1)
{
  characters :="ABCDEFGHIJKLMNOPQRSTUVWXYZ"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 26
      password .= chars%rand%	
    }
  }
  return password
}
hm2(length = 8)
{
  characters :="1234567890"
  StringSplit, chars, characters

  Random,len2,1,1
  Loop, %length%
  {
    Loop, %len2%
    {
      Random, rand, 1, 10
      password .= chars%rand%	
    }
  }
  return password
}
Rx1(length = 6)
	{
		characters :="1234567890"
		StringSplit, chars, characters
		
		Random,len2,1,1
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 10
				password .= chars%rand%	
			}
		}
		return password
	}
Rx2(length = 8)
	{
		characters :="1234567890"
		StringSplit, chars, characters
		
		Random,len2,1,1
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 10
				password .= chars%rand%	
			}
		}
		return password
	}
Rx3(length = 5)
	{
		characters :="1234567890"
		StringSplit, chars, characters
		
		Random,len2,1,1
		Loop, %length%
		{
			Loop, %len2%
			{
				Random, rand, 1, 10
				password .= chars%rand%	
			}
		}
		return password
	}
Random,eff1,1,12
Random,eff2,1,28
Random,eff3,21,23
Random, dentplan,1,100
; Delta
if dentplan between 1 and 59
{
dd1 := "Group Name: Delta Dental of %State%`nGroup Number:"
FileAppend,## DELTA DENTAL INFORMATION ##`n%dd1%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% da1(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% da2(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% da3(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nSubscriber Name: %FirstName% %LastName%`nIdentification Number:%A_Space%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% id1(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% id2(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nMembership Type: Subscriber`nDate: %eff1%/%eff2%/%eff3%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
dd1 := "Group Name: Delta Dental of %State%%A_Space%|%A_Space%Group Number:"
FileAppend,## DELTA DENTAL INFORMATION ##%A_Space%|%A_Space%%dd1%,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% da1(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% da2(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,-,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% da3(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Subscriber Name: %FirstName% %LastName%%A_Space%|%A_Space%Identification Number:%A_Space%,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% id1(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% id2(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Membership Type: Subscriber%A_Space%|%A_Space%Date: %eff1%/%eff2%/%eff3%,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
; Humana
if dentplan between 60 and 100
{
Random,plann1,10000,99999
Random,plann2,100,999
Random,plann3,100,999
Random,plann4,1000,9999
Random,s1,1,9
Random,s2,1,9
Random,s3,1,9
FileAppend,## HUMANA DENTAL ##`Member Name: %FirstName% %LastName%`nIdentification Number:,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% hm1(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% hm2(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nPlan:%A_Space%(%plann1%) %plann1%%plann2%%plann3%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nRx BIN:%A_Space%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx1(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nRx PCN:,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx2(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nRx GRP:,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx3(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nCard Issued: %eff1%/%eff2%/20%eff3%`nCopayments:`nOffice Visits: $%s1%0`nSpecialist: $%s2%0`nHospital Emergency: $%s3%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,## HUMANA DENTAL ##`Member Name: %FirstName% %LastName%%A_Space%|%A_Space%Identification Number:,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% hm1(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% hm2(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Plan:%A_Space%(%plann1%) %plann1%%plann2%%plann3%,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Rx BIN:%A_Space%,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx1(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Rx PCN:,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx2(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Rx GRP:,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx3(),Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Card Issued: %eff1%/%eff2%/20%eff3%%A_Space%|%A_Space%Copayments:%A_Space%|%A_Space%Office Visits: $%s1%0%A_Space%|%A_Space%Specialist: $%s2%0%A_Space%|%A_Space%Hospital Emergency: $%s3%,Results\CaptureOL\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
