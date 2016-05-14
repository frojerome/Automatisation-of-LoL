#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\Core\iconSettings.ico
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#include <ButtonConstants.au3>
#include <EditConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>
#Region ### START Koda GUI section ### Form=D:\Programmes\KODA\Forms\Settings.kxf
$chemin = FileReadLine("Config.txt", 1)
$motdepasse = FileReadLine("Config.txt", 2)
$Form1 = GUICreate("", 200, 120, 192, 124)
GUISetIcon("icon.ico", -1)
$Pass = GUICtrlCreateLabel("Password", 16, 16, 50, 17)
$Path = GUICtrlCreateLabel("Path LoL", 16, 55, 50, 17)
$Input1 = GUICtrlCreateInput($motdepasse, 72, 16, 121, 21)
$Input2 = GUICtrlCreateInput($chemin, 72, 50, 121, 21)
$Save = GUICtrlCreateButton("Save", 60, 80, 75, 25)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $Save
			FileDelete("Config.txt")
			FileOpen("Config.txt")
			FileWriteLine("Config.txt", GUICtrlRead($Input2))
			FileWriteLine("Config.txt", GUICtrlRead($Input1))
			MsgBox(0, "", "Saved !" )
			Exit
	EndSwitch
WEnd

