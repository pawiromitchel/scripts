#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::btw::by the way
::eg::e.g.
::its::it's
::ily::I love youuuu!

::_date::
FormatTime, CurrentDateTime,, yyyy-MM-dd
SendInput %CurrentDateTime%{Space}
return

::_time::
FormatTime, CurrentDateTime,, HH:mm:ss
SendInput %CurrentDateTime%{Space}
return

::_datetime::
FormatTime, CurrentDateTime,, yyyy-MM-dd HH:mm:ss
SendInput %CurrentDateTime%{Space}
return