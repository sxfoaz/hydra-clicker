#SingleInstance Force
#MaxThreadsPerHotkey, 2

Gui Add, GroupBox, x10 y10 w250 h60, Настройки кликера
Gui Add, CheckBox, x20 y30 w40 h25 vChStatus gCH, Вкл
Gui Add, Edit, x60 y33 w45 h21 vEdtStatusTimeout, 5000
Gui Add, ComboBox, x110 y33 w45 vEdtStatusFKeys, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12||
Gui Add, Edit, x160 y33 w85 vEdtStatusWinTitle, Asterios Xandir

Gui Add, Button, x20 y75 w55 h21 gSetWinBtn1, Set Win1
Gui Add, Button, x80 y75 w55 h21 gSetWinBtn2, Set Win2

Gui Add, Link, x215 y75 w100 h23, <a href="https://t.me/acala">by Hydra</a>

; ==================

Gui Show, w270 h100, Hydra Clicker
Return

GuiEscape:
GuiClose:
    ExitApp

CH:
Gui, Submit, NoHide

while ChStatus = 1
{
	Gui, Submit, NoHide
	ControlSend, , {%EdtStatusFKeys%}, %EdtStatusWinTitle%
	Sleep, %EdtStatusTimeout%
}

SoundBeep, 750, 100
return	

SetWinBtn1:
	WinWaitActive, Asterios
	WinSetTitle, Win1
return

SetWinBtn2:
	WinWaitActive, Asterios
	WinSetTitle, Win2
return
