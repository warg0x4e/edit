#KeyHistory 0
#NoEnv

ListLines, Off

Menu, Tray, NoIcon
Menu, Tray, NoStandard

EnvGet, editor, EDITOR
if !(attr := FileExist(editor)) || RegExMatch(attr, "D|O|C|T")
    editor := "notepad.exe"
    
Run, %editor% %1%
