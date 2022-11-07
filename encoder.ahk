#SingleInstance, Force
FileRead, stringog, text.txt
stringnew := StrReplace(OldStr, "Abs()", "¢€¢")
stringnewer := StrReplace(stringnew, "AutoTrim", "¢€€¢")
FileAppend,%stringnewer%,output.txt
