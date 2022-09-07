FileAppend,,\settings\Defaults.ini
IniWrite, %A_UserName%, \settings\Defaults.ini, Name, value
IniRead, user, \settings\Defaults.ini, Name, value
MsgBox,48,%user%
