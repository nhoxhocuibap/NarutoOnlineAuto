#RequireAdmin
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>

HotKeySet("{F5}", "_Exit")

Func _Exit()
	Exit 0
EndFunc

$CLASSNN = "[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]"
$hwnd = WinGetHandle("oas page")

While 1
	$nMsg = GUIGetMsg()


;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1, 944, 291)
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1, 499, 570)

;~ 	fishing
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1, 887, 539)
;~ 	Sleep(1000)

;~ 	breakthrough
	ControlClick($hwnd, "", $CLASSNN, "left", 1, 864, 691)
	Sleep(750)

;~ 	refine
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1,	761, 519)
;~ 	sleep(300)

;~ 	season
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1,	975, 732)
;~ 	sleep(300)
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1,	951, 641)
;~ 	sleep(300)


;~ 	lucky star
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1,1216, 523)
;~ 	sleep(100)
;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1,	874, 553)
;~ 	sleep(100)

	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
WEnd