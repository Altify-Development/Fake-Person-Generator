hrn(length = 7)
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
gnl(length = 1)
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
Rx2(length = 5)
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
Random, adna,0,1
if adna 1
{
k1 := "Annual Deductible	N/A"
}
if adna 0
{
k1 := "No Annual Deductible"
}
Random, aoup,0,2
if aoup 1
{
k2 := "Annual Out-of-Pocket (OOP) Maximum1	Individual: $2,000"
}
if aoup 2
k2 := "Annual Out-of-Pocket (OOP) Maximum1 Family: $4,000"
}
if aoup 0
{
k2 := "OOP - Not Covered"
}
Random, emp,0,1
if emp 1
{
k3 := "Employee Coinsurance	20`% Durable Equipment"
}
if emp 0
{
k3 := "Employee Coinsurance - Not Covered"
}
Random, prev,0,1
if prev 1
{
k4 := "Preventive (Annual Physicals, Well Care Exams)	100`% covered"
}
if prev 0
{
k5 := "Annual Physicals - Not Covered"
}
Random, phys,0,2
if phys 1
{
k6 := "Physician Visits	Primary Care: $20/visit"
}
if phys 2
{
k6 := "Specialists: $20/visit"
}
if phys 0
{
k6 := "Physician Visits	Primary Care - Not Covered"
}
Random, lax,0,1
if lax 1
{
k7 := "Lab and X-Ray 100`% covered"
}
if lax 0
{
k7 := "Lab and X-Ray - Not Covered"
}
Random, emg,0,1
if emg 1
{
k8 := "Emergency Room	$150 / visit"
}
if emg 0
{
k8 := "Emergency - Not Covered"
}
Random, amb,0,1
if amb 1
{
k9 := "Ambulance	$50 / trip"
}
if amb 0
{
k9 := "Ambulance - Not Covered"
}
Random, hosp,0,1
if hosp 1
{
k10 := "Hospitalization	$250 / admission"
}
if hosp 0
{
k10 := "Hospitalization - Not Covered"
}
Random, chr,0,2
if chr 1
{
k11 := "Chiropractic	$15/visit"
}
if chr 2
{
k11 := "Up to 30 visits/year"
}
if chr 0
{
k11 := "Chiropractic - Not Covered"
}
Random, acu,0,2
if acu 1
{
k12 := "Acupuncture	$15/visit
}
if acu 2
{
k12 := "Up to 30 visits/year
}
if acu 0
{
k12 := "Acupuncture - Not Covered
}
Random,mas,0,1
if mas 1
{
k13 := "Massage"
}
if mas 0
{
k13 := "Massage - Not Covered"
}
Random,spe,0,1
if spe 1
{
k14 := "Speech Therapy	$20"
}
if spe 0
{
k14 := "Speech Therapy - Not Covered"
}
Random,gn, 10000, 99999
Random,gn2, 10, 99
Random,eff1,1,12
Random,eff2,1,28
Random,eff3,1,23
Random,s1,1,9
Random,s2,1,9
Random,s3,1,9
Random,s4,1,9
FileAppend,Kaiser Benefits:`n%k1%`n%k2%`n%k3%`n%k4%`n%k5%`n%k6%`n%k7%`n%k8%`n%k9%`n%k10%`n%k11%`n%k12%`n%k13%`n%k14%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,Kaiser ID:`nMember Name: %FirstName% %LastName%`nHealth Record Number:,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% hrn(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nGroup Number: %gn%-,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% gnl(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%gn2%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nRx BIN Number:%A_Space%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx1(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nRx PCN Number:,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,% Rx2(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,`nEFF Date: %eff1%/%eff2%/%eff3%`nSelect Providers:`n Primary/Secondairy - %s1%0`%/%s2%0`%`nUrgent/ER - %s3%`%/250`nDeductable - %s4%000`nCoinsurance - %s5%0`%`nGeneric Rx Brand: 20/40`nPPO Providers:`nPrimary/Secondairy - %s6%0`%/%s7%0`%`nUrgent/ER - %s8%`%/250`nDeductable - %s9%000`nCoinsurance - %s10%0`%`nGeneric Rx Brand: 40/60`nNon-Participating Providers:`nDeductable: %s10%000`nCoinsurance - %s10%0`%`nGeneric Rx Brand: 20/40s,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
