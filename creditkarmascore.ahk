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
FileAppend,`nCredit Score: %creditscore%,Results/Capture/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
FileAppend,%A_Space%|%A_Space%Credit Score: %creditscore%,Results/CaptureOL/Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
