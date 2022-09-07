FileCreateDir,settings
IfExist,settings\Defaults.ini
{
IniRead, user,settings\Defaults.ini, Section1, Key
IniRead, ad,settings\Defaults.ini, Section2, Key
IniRead, accs,settings\Defaults.ini, Section3, Key
IniRead, disc,settings\Defaults.ini, Section4, Key
IniRead, youtube,settings\Defaults.ini, Section5, Key
IniRead, twitch,settings\Defaults.ini, Section6, Key
Gui, Add, Text,, Please Enter The Advertisment You Wish To Place In Your Capture:
Gui, Add, Text,, Please Enter The Amount of Accounts You Would Like To Generate %user%:
Gui, Add, Text,, Pleast Enter Your Discord Server Invite For Capture
Gui, Add, Text,, Pleast Enter Your YT Link For Capture
Gui, Add, Text,, Pleast Enter Your Twitch.tv For Capture
Gui, Add, Edit, v1 ym, %ad%
Gui, Add, Edit, v2, %accs%
Gui, Add, Edit, vDiscLink, %disc%
Gui, Add, Edit, vYT, %youtube%
Gui, Add, Edit, vTwitchLink, %twitch%
Gui, Add, Button, default, OK
Gui, Show,, GUI With Defaults By Altify
return
ButtonOK:
Gui, Submit
}
IfNotExist,settings\Defaults.ini
{
Gui, Add, Text,, Set the default capture header:
Gui, Add, Text,, Preset amount of accounts:
Gui, Add, Text,, Discord Invite:
Gui, Add, Text,, YouTube Link:
Gui, Add, Text,, Twitch.tv:
Gui, Add, Edit, v1 ym, Enter Text Here
Gui, Add, Edit, v2, Enter Text Here
Gui, Add, Edit, v3, Enter Text Here
Gui, Add, Edit, v4, Enter Text Here
Gui, Add, Edit, v5, Enter Text Here
Gui, Add, Button, default, OK
Gui, Show,, GUI Setup
return
ButtonOK:
Gui, Submit
IniWrite, %A_UserName%,settings\Defaults.ini, Section1, Key
IniWrite, %1%,settings\Defaults.ini, Section2, Key
IniWrite, %2%,settings\Defaults.ini, Section3, Key
IniWrite, %3%,settings\Defaults.ini, Section4, Key
IniWrite, %4%,settings\Defaults.ini, Section5, Key
IniWrite, %5%,settings\Defaults.ini, Section6, Key
MsgBox,48,%A_UserName% - %1% - %2% - %3% - %4% - %5%
}
