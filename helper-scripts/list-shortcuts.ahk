#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

::githublists::https://github.com/Lucevar/mw-immersion-mods
::githubldm::https://github.com/Lucevar/ldm

^Numpad1::
Send ^c
sleep, 500
urlClipboard := Clipboard

return

^Numpad2::
Send ^c
sleep, 500
nameClipboard := Clipboard
return

^Numpad3::
Send ^c
sleep, 500
authorClipboard := Clipboard
return

^Numpad4::
Send ^c
sleep, 500
descriptionClipboard := Clipboard
return

!\::
Send, [**%nameClipboard%**](%urlClipboard%) by %authorClipboard%{Space}{Space}
nameClipboard := ;
urlClipboard := ;
authorClipboard := ;
return

!z::
Send, [**%nameClipboard%**](%urlClipboard%) by %authorClipboard%{Space}{Space}{Enter}
Send, %descriptionClipboard%{Space}{Space}
return