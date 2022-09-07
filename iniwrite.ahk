FileCreateDir,settings
        IfNotExist,settings\Defaults.ini
        {
        Gui, Add, Text,, Set the default capture header:
        Gui, Add, Text,, Preset amount of accounts:
        Gui, Add, Text,, Discord Invite:
        Gui, Add, Text,, YouTube Link:
        Gui, Add, Text,, Twitch.tv:
        Gui, Add, Text,, Please Enter Memory Allocated ( measured in MB ):
        Gui, Add, Text,, Please Enter Your Thread Count:
        Gui, Add, Edit, v1 ym, Enter Text Here
        Gui, Add, Edit, v2, Enter Text Here
        Gui, Add, Edit, v3, Enter Text Here
        Gui, Add, Edit, v4, Enter Text Here
        Gui, Add, Edit, v5, Enter Text Here
        Gui, Add, Edit, v6, Enter Text Here
        Gui, Add, Edit, v7, Enter Text Here
        Gui, Add, Picture, x0 y0 w610 h385 +0x4000000, config.png
        Gui, Add, Button, default, Submit
        Gui, Show,, Defaults Setup By Altify
        Menu, Tray, Add
        Menu, Tray, Add, Realtime, MenuHandler1
        Menu, Tray, Add, High, MenuHandler2
        Menu, Tray, Add, AboveNormal, MenuHandler3
        Menu, Tray, Add, Normal, MenuHandler4
        Menu, Tray, Add, BelowNormal, MenuHandler5
        Menu, Tray, Add, Low, MenuHandler6
        return
        ButtonSubmit:
        Gui, Submit
        IniWrite, %A_UserName%,settings\Defaults.ini, Section1, Key
        IniWrite, %1%,settings\Defaults.ini, Section2, Key
        IniWrite, %2%,settings\Defaults.ini, Section3, Key
        IniWrite, %3%,settings\Defaults.ini, Section4, Key
        IniWrite, %4%,settings\Defaults.ini, Section5, Key
        IniWrite, %5%,settings\Defaults.ini, Section6, Key
        IniWrite, %6%,settings\Defaults.ini, Section7, Key
        IniWrite, %7%,settings\Defaults.ini, Section8, Key
        ExitApp
        }
        IfExist,settings\Defaults.ini
        {
        IniRead, user,settings\Defaults.ini, Section1, Key
        IniRead, ad,settings\Defaults.ini, Section2, Key
        IniRead, accs,settings\Defaults.ini, Section3, Key
        IniRead, disc,settings\Defaults.ini, Section4, Key
        IniRead, youtube,settings\Defaults.ini, Section5, Key
        IniRead, twitch,settings\Defaults.ini, Section6, Key
        IniRead, mem,settings\Defaults.ini, Section7, Key
        IniRead, thread,settings\Defaults.ini, Section8, Key
        Gui, Add, Text,, Please Enter The Advertisment You Wish To Place In Your Capture:
        Gui, Add, Text,, Please Enter The Amount of Accounts You Would Like To Generate %user%:
        Gui, Add, Text,, Please Enter Your Discord Server Invite For Capture
        Gui, Add, Text,, Please Enter Your YT Link For Capture
        Gui, Add, Text,, Please Enter Your Twitch.tv For Capture
        Gui, Add, Text,, Please Enter Memory Allocated ( measured in MB ):
        Gui, Add, Text,, Please Enter Your Thread Count:
        Gui, Add, Edit, v1 ym, %ad%
        Gui, Add, Edit, v2, %accs%
        Gui, Add, Edit, vDiscLink, %disc%
        Gui, Add, Edit, vYT, %youtube%
        Gui, Add, Edit, vTwitchLink, %twitch%
        Gui, Add, Picture, x0 y0 w610 h385 +0x4000000, config.png
        Gui, Add, Button, default, OK
        Gui, Show,, Fake Person Generator By Altify
        Menu, Tray, Add
        Menu, Tray, Add, Realtime, MenuHandler1
        Menu, Tray, Add, High, MenuHandler2
        Menu, Tray, Add, AboveNormal, MenuHandler3
        Menu, Tray, Add, Normal, MenuHandler4
        Menu, Tray, Add, BelowNormal, MenuHandler5
        Menu, Tray, Add, Low, MenuHandler6
        return
        ButtonOK:
        Gui, Submit
}
