#SingleInstance Force
#MaxThreadsPerHotkey, 2

; Settings
Gui Add, GroupBox, x10 y10 w250 h60, Настройки кликера
Gui Add, CheckBox, x20 y30 w40 h25 vChStatus gCH, Вкл
Gui Add, Edit, x60 y33 w45 h21 vEdtStatusTimeout, 5000
Gui Add, ComboBox, x110 y33 w45 vEdtStatusFKeys, F1|F2|F3|F4|F5|F6|F7|F8|F9|F10|F11|F12||
Gui Add, Edit, x160 y33 w85 vEdtStatusWinTitle, Asterios

; Rename Window
Gui Add, GroupBox, x10 y75 w250 h60, Переименовать окно
Gui Add, Edit, x20 y105 w75 h21 vDefaultWinName, Asterios
Gui Add, Text, x101 y108 w11 h11, >
Gui Add, Edit, x115 y105 w75 h21 vSetWinName, Win1
Gui Add, Button, x195 y105 w55 h21 gSetWinBtn, ОК

; Contact
Gui Add, Link, x215 y135 w100 h23, <a href="https://t.me/acala">by Hydra</a>

; ==================

Gui Show, w270 h150, Hydra Clicker
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

SetWinBtn:
Gui, Submit, NoHide
	WinWaitActive, %DefaultWinName%
	WinSetTitle, %SetWinName%
return
