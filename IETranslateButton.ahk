;@Ahk2Exe-SetMainIcon cold.ico
#NoTrayIcon 
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

text := ""
activeID := WinActive("A") ; sets last found window
ControlGetFocus, ctrl
if (RegExMatch(ctrl, "A)Edit\d+")) {
    ControlGet, text, Selected,, %ctrl%
} else {
    Send, ^c
}    

loop {
    if (text != "") ​{
        WinGetTitle, title, % "ahk_id " . activeID
        MsgBox, % "title: " . title . " text: " . text
        ExitApp
    }
}
       
OnClipboardChange:
    text := Clipboard
return
