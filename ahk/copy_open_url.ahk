#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

^j::
    clipboard := ""  ; Start off empty to allow ClipWait to detect when the text has arrived.
    Send ^c
    ClipWait  ; Wait for the clipboard to contain text.
    Run brave.exe %clipboard%
return