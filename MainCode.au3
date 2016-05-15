#NoTrayIcon
#Region ;**** Directives created by AutoIt3Wrapper_GUI ****
#AutoIt3Wrapper_Icon=..\Core\icon.ico
#AutoIt3Wrapper_Compression=4
#AutoIt3Wrapper_UseUpx=y
#AutoIt3Wrapper_UseX64=n
#AutoIt3Wrapper_Run_Au3Stripper=y
#EndRegion ;**** Directives created by AutoIt3Wrapper_GUI ****
#cs ----------------------------------------------------------------------------

 AutoIt Version : 3.3.14.2
 Auteur:         Wizzar

 Fonction du Script :
	Modèle de Script AutoIt.

#ce ----------------------------------------------------------------------------

; Début du script - Ajouter votre code ci-dessous.
#pragma compile(Icon, D:\Programmes\AutoIt3\Icons\au3.ico)
#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <WindowsConstants.au3>

AutoItSetOption('MouseCoordMode', 0)

main()

Func main()
Run(FileReadLine("Config.txt", 1))
WinWaitActive("LoL Patcher", "", 10)
	if WinActive("LoL Patcher") then
	sleep(2000)
	MouseClick('primary', 631, 34, 1, 0)

	WinWaitActive("Client PVP.net", "", 5)
		if WinActive("Client PVP.net") Then
			sleep(2000)
			MouseClick('primary', 279, 385, 1, 0)
			Send(FileReadLine("Config.txt", 2))
			Send("{ENTER}")
		Else
			main()
			Exit
		EndIf
Else
	MsgBox(0, "Error", "There is an Error in your Config.txt")
	Exit
EndIf
EndFunc
