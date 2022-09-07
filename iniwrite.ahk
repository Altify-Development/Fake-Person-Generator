IniWrite, %A_UserName%,settings\Defaults.ini, Section1, Key
IniRead, user,settings\Defaults.ini, Section1, Key
MsgBox,48,%user%
