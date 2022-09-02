; Delta Dental Insurance
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
dd1 := "Group Name: Delta Dental of %State%`nGroup Number:%da1%-%da2%-%da3%"
