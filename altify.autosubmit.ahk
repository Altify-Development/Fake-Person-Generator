#Include Chrome.ahk

; Create an instance of the Chrome class using
; the folder ChromeProfile to store the user profile
FileRead,token,tokens.txt
FileCreateDir, ChromeProfile
ChromeInst := new Chrome("ChromeProfile")

; Connect to the newly opened tab and navigate to another website
; Note: If your first action is to navigate away, it may be just as
; effective to provide the target URL when instantiating the Chrome class
PageInstance := ChromeInst.GetPage()
PageInstance.Call("Page.navigate", {"url": "https://altify-developing-001.netlify.app/"})
PageInstance.WaitForLoad()
; Execute some JavaScript
PageInstance.Evaluate("document.getElementById('contact').submit();")

; Close the browser (note: this closes *all* pages/tabs)
PageInstance.Call("Browser.close")
PageInstance.Disconnect()

ExitApp
return
