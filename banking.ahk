mon1(length = 1)
{
  characters :="1234567890"
  StringSplit, chars, characters

  Random,len2,1,6
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
Random, ccsec1, 1000, 9999
Random, ccsec2, 1000, 9999
Random, ccsec3, 1000, 9999
Random, ccsec4, 1000, 9999
Random, ccsec5, 100, 999
Random, ccsec6, 1, 28
Random, ccsec7, 2024, 2027
Random, isblank,1,2
if ifblank, 1
{
avm := "N/A"
}
if ifblank, 2
{
Random, avm, 1,9
}
FileAppend,Credit Card: %ccsec1% %ccsec2% %ccsec3% %ccsec4%`nCCV2: %ccsec5%`nExpiration Date: %ccsec6%/%ccsec7%`nCard Network: MasterCard/Access/Eurocard`nMoney Avaliable On Account: $%avm%,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
if ifblank, 2
{
FileAppend,% mon1(),Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
}
FileAppend,`n,Results\Capture\Account Targeted Account Generator By Altify#4476 - Thanks For Boosting.txt,
