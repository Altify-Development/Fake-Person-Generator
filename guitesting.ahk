		Gui, Add, Text,, Targeting Account Generator By Altify Has Not Been Installed Yet. Do You Want To Begin The Process?
		Gui, Add, Button, ym, Install
		Gui, Add, Button, ym, Cancel
    Gui, Add, Picture, x0 y0 w610 h385 +0x4000000, config.png
		Gui, Show,, Installer
		return
		GuiClose2:
		ButtonCancel:
		ExitApp
		ButtonInstall:
		Gui, Submit
