ListLines, Off

#KeyHistory 0
#NoEnv

Menu, Tray, NoIcon
Menu, Tray, NoStandard

EnvGet, editor, EDITOR
if !(attr := FileExist(editor)) || RegExMatch(attr, "D|O|C|T")
    editor := "C:\Windows\System32\notepad.exe"
    
Run, "%editor%" "%1%",, UseErrorLevel
ExitApp, %A_LastError%
