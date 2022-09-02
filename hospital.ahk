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
FileAppend,Kaiser Benefits:`n%k1%`n%k2%`n%k3%`n%k4%`n%k5%`n%k6%`n%k7%`n%k8%`n%k9%`n%k10%`n%k11%`n%k12%`n%k13%`n%k14%,Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
