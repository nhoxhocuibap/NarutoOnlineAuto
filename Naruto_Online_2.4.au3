#RequireAdmin
#include <Array.au3>
#include "Includes\HandleImgSearch.au3"
#include "Includes\GUIScrollBars_Ex.au3";;scroll UDF generate

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <StaticConstants.au3>
#include <TabConstants.au3>
#include <WindowsConstants.au3>

#Region
	$MainWindow = GUICreate("", 180, 350, 1500, 350,Default,$WS_EX_TOPMOST)
;~ 	Default $DS_MODALFRAME
	_GUIScrollbars_Generate($MainWindow, 0, 550) ;scroll generate
	$Status_Job	= GUICtrlCreateLabel("Empty", 0, 0, 155, 20, $SS_CENTER, $WS_EX_CLIENTEDGE)
;-----------------------------------------------------------------------------------------
	GUICtrlCreateTab(0, 25, 160, 530)
	GUICtrlCreateTabItem("Daily")
;-----------------------------------------------------------------------------------------
	$DAILY				= GUICtrlCreateCheckbox("DAILY",				5,  50,	105, 20)
	$STAMINA			= GUICtrlCreateCheckbox("STAMINA", 				5,  70, 105, 20)
	$RichField 			= GUICtrlCreateCheckbox("Rich Field", 			5,  90, 105, 20)
;-----------------------------------------------------------------------------------------
	$DecisiveBond 		= GUICtrlCreateCheckbox("DECISIVE BOND", 		5, 110, 105, 20)
	$TeamInstance		= GUICtrlCreateCheckbox("Team Instance", 		5, 130, 105, 20)
	$NinjaTest			= GUICtrlCreateCheckbox("Ninja Test", 			5, 150, 105, 20)

;-----------------------------------------------------------------------------------------
	$Arena				= GUICtrlCreateCheckbox("Arena", 				5, 170, 60, 20)
	$ArenaCombo 		= GUICtrlCreateCombo("", 65, 170, 80, 20)
	GUICtrlSetData($ArenaCombo, "Tranning|Ranked|Theme" ,"Tranning" )
;-----------------------------------------------------------------------------------------
	$SurvivalTrial 		= GUICtrlCreateCheckbox("Survival Trial", 		5, 195, 105, 20)
	$RankedBattle 		= GUICtrlCreateCheckbox("Ranked Battle", 		5, 215, 105, 20)
	$GroupConvoy		= GUICtrlCreateCheckbox("Convoy",				5, 235, 105, 20)
	$SpaceTime 			= GUICtrlCreateCheckbox("Space Time", 			5, 255, 105, 20)
	$WantedMission		= GUICtrlCreateCheckbox("Wanted Mission", 		5, 275, 105, 20)
	$AfkMode			= GUICtrlCreateCheckbox("AFK Mode", 			5, 295,	105, 20)
	$InfinityIllusion 	= GUICtrlCreateCheckbox("Infinity Illusion", 	5, 315, 105, 20)
;-----------------------------------------------------------------------------------------
;~ 	$sssssss	 		= GUICtrlCreateCheckbox("sss", 					5, 250, 105, 20)
;~ 	$sssssss	 		= GUICtrlCreateCheckbox("sss", 					5, 270, 105, 20)
;~ 	$sssssss	 		= GUICtrlCreateCheckbox("sss", 					5, 290, 105, 20)
;~ 	$sssssss	 		= GUICtrlCreateCheckbox("sss", 					5, 310, 105, 20)
;~ 	$sssssss	 		= GUICtrlCreateCheckbox("sss", 					5, 330, 105, 20)
	$Monthly			= GUICtrlCreateCheckbox("Monthly", 				5, 350, 105, 20)
;-----------------------------------------------------------------------------------------
;~ 	$PlotInstance		= GUICtrlCreateCheckbox("Plot Instance", 		5, 390, 105, 20)
;~ 	$EliteInstance 		= GUICtrlCreateCheckbox("Elite Instance", 		5, 410, 105, 20)
;~ 	$RichField 			= GUICtrlCreateCheckbox("Rich Field", 			5, 430, 105, 20)
;~ 	$InfinityIllusion 	= GUICtrlCreateCheckbox("Infinity Illusion", 	5, 450, 105, 20)
;~ 	$Mine 				= GUICtrlCreateCheckbox("Mine", 				5, 470, 105, 20)
;~ 	$BlackMarket	 	= GtrlCreateCheckbox("Black Market", 			5, 490, 105, 20)

;-----------------------------------------------------------------------------------------
	$BenefitHall 		= GUICtrlCreateCheckbox("Benefit Hall", 		5, 370, 105, 20)
	$NinjaExam	 		= GUICtrlCreateCheckbox("Ninja Exam", 			5, 390, 105, 20)
	$LuckyRunes 		= GUICtrlCreateCheckbox("Lucky Runes", 			5, 410, 105, 20)
	$MiniClient 		= GUICtrlCreateCheckbox("Mini Client", 			5, 430, 105, 20)
;~ 	$RichField 			= GUICtrlCreateCheckbox("Rich Field", 			5, 450, 105, 20)
;~ 	$NinjaTest			= GUICtrlCreateCheckbox("Ninja Test", 			5, 470, 105, 20)
;~ 	$InfinityIllusion 	= GUICtrlCreateCheckbox("Infinity Illusion", 	5, 490, 105, 20)
	$Click 				= GUICtrlCreateCheckbox("Click", 				5, 510, 105, 25)
;-----------------------------------------------------------------------------------------
	GUICtrlCreateTabItem("Weekly")
	$Arena33		 	= GUICtrlCreateCheckbox("Arena33", 				5, 50,  105, 20)
	$ArenaTheme	 		= GUICtrlCreateCheckbox("Arena Theme", 			5, 70,  105, 20)
	$ArenaRank			= GUICtrlCreateCheckbox("Arena Rank", 			5, 90,  105, 20)


	$SA			 		= GUICtrlCreateCheckbox("Strong Approching", 	5, 110,	105, 20)
	$SA_Normal			= GUICtrlCreateRadio("Norm",	20, 130)
	$SA_Hard 			= GUICtrlCreateRadio("Hard",	60, 130)
	$SA_Expert 			= GUICtrlCreateRadio("Ex", 		110, 130)

	; Read line 3 (3-1 = 2) of file in location
	$dataLine3 = FileReadToArray(@ScriptDir & "\data.txt")[2]

	Switch $dataLine3
		Case "StrongApproching_Expert"
			GUICtrlSetState($SA_Expert, $GUI_CHECKED)
		Case "StrongApproching_Hard"
			GUICtrlSetState($SA_Hard, $GUI_CHECKED)
		Case "StrongApproching_Normal"
			GUICtrlSetState($SA_Normal, $GUI_CHECKED)
	EndSwitch


	$EightGate 			= GUICtrlCreateCheckbox("8 gates", 				5, 230, 105, 20)
	$Ninja 				= GUICtrlCreateCheckbox("Up Ninja", 			5, 150, 105, 20)
	$GroupSummons 		= GUICtrlCreateCheckbox("GroupSummons", 		5, 170, 105, 20)
	$GrowthScroll 		= GUICtrlCreateCheckbox("Growth Scroll", 		5, 190, 105, 20)

;~ 	$Instance		 	= GUICtrlCreateCheckbox("$Instance", 			5, 210, 105, 20)

;~ 	DecisiveBond 		= GUICtrlCreateCheckbox("", 					5, 50,	105, 20)
;~ 	$LuckyRunes 		= GUICtrlCreateCheckbox("", 					5, 75, 	105, 20)
;~ 	$MiniClient 		= GUICtrlCreateCheckbox("", 					5, 100, 105, 20)
;~ 	$MysteriousCave 	= GUICtrlCreateCheckbox("", 					5, 125, 105, 20)
;~ 	$BenefitHall 		= GUICtrlCreateCheckbox("", 					5, 150, 105, 20)
;~ 	$Home		 		= GUICtrlCreateCheckbox("", 					5, 175, 105, 20)
;~ 	$DAILY	= GUICtrlCreateCheckbox("", 					5, 200, 105, 20)

;~ 	$Ultimate 		= GUICtrlCreateLabel("Ultimate Training", 			5, 25,  105, 20)
;~ 	$Click 			= GUICtrlCreateCheckbox("battle_auto click", 		5, 100, 105, 20)
;~ 	GUICtrlSetState($Ninja, $GUI_CHECKED)

	GUICtrlCreateTabItem("Time")


	$GreatePlates 		= GUICtrlCreateCheckbox("Greate Plates", 		5, 110, 105, 20)
	$WishingLaterns 	= GUICtrlCreateCheckbox("Wishing Laterns", 		5, 130, 105, 20)
;~ 	$GroupConvoy		= GUICtrlCreateCheckbox("Convoy",				5,  70, 105, 20)
	$FireworkFestival 	= GUICtrlCreateCheckbox("Firework Festival", 	5, 150,	105, 20)
;~ 	$Home		 		= GUICtrlCreateCheckbox("Home", 				5, 110, 105, 20)
;~ 	$TeamInstance		= GUICtrlCreateCheckbox("Team Instance", 		5, 130, 105, 20)
;~ 	$SurvivalTrial 		= GUICtrlCreateCheckbox("Survival Trial", 		5, 150, 105, 20)
;~ 	$Arena				= GUICtrlCreateCheckbox("Arena", 				5, 170, 105, 20)
;~ 	$NinjaTest			= GUICtrlCreateCheckbox("Ninja Test", 			5, 190, 105, 20)
;~ 	$RankedBattle 		= GUICtrlCreateCheckbox("Ranked Battle", 		5, 210, 105, 20)
;~ 	$NinjaExam	 		= GUICtrlCreateCheckbox("Ninja Exam", 			5, 250, 105, 20)
;~ 	$LuckyRunes 		= GUICtrlCreateCheckbox("Lucky Runes", 			5, 270, 105, 20)
;~ 	$MiniClient 		= GUICtrlCreateCheckbox("Mini Client", 			5, 290, 105, 20)
;~ 	$MysteriousCave 	= GUICtrlCreateCheckbox("Mysterious Cave", 		5, 310, 105, 20)
;~ 	$BenefitHall 		= GUICtrlCreateCheckbox("Benefit Hall", 		5, 330, 105, 20)
;~ 	$Monthly			= GUICtrlCreateCheckbox("Monthly", 				5, 350, 105, 20)
;~ 	$PlotInstance		= GUICtrlCreateCheckbox("Plot Instance", 		5, 390, 105, 20)
;~ 	$EliteInstance 		= GUICtrlCreateCheckbox("Elite Instance", 		5, 410, 105, 20)
;~ 	$RichField 			= GUICtrlCreateCheckbox("Rich Field", 			5, 430, 105, 20)
;~ 	$InfinityIllusion 	= GUICtrlCreateCheckbox("Infinity Illusion", 	5, 450, 105, 20)
;~ 	$Mine 				= GUICtrlCreateCheckbox("Mine", 				5, 470, 105, 20)
;~ 	$BlackMarket	 	= GUICtrlCreateCheckbox("Black Market", 		5, 490, 105, 20)

;-----------------------------------------------------------------------------------------
;~ 	$Click 				= GUICtrlCreateCheckbox("Click", 				5, 510, 105, 25)


	GUISetState()


#EndRegion

#Region
	HotKeySet("{F1}", "_Stop_F1")
	HotKeySet("{F4}", "_Stop_F2")
	HotKeySet("{F5}", "_Exit")

	$CLASSNN = "Chrome_RenderWidgetHostHWND1"
	$hwnd = "oas page"
;~ 	$hwnd = WinGetHandle("oas page")
;~ 	$CLASSNN = "[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]"
;~ 	$CLASSNN = "Chrome_WidgetWin_1"
#EndRegion

Func _Stop_F2()
	ClickFoundImageMulti("xxx",0)
	_Stop_F1()
EndFunc

Func _Stop_F1()
	GUICtrlSetData($Status_Job, "Empty")
	GUICtrlSetState($NinjaExam,			$GUI_UNCHECKED)
	GUICtrlSetState($DecisiveBond,		$GUI_UNCHECKED)
	GUICtrlSetState($LuckyRunes, 		$GUI_UNCHECKED)
	GUICtrlSetState($MiniClient, 		$GUI_UNCHECKED)
	GUICtrlSetState($BenefitHall, 		$GUI_UNCHECKED)
	GUICtrlSetState($Monthly, 			$GUI_UNCHECKED)
	GUICtrlSetState($NinjaTest, 		$GUI_UNCHECKED)
	GUICtrlSetState($Arena, 			$GUI_UNCHECKED)
	GUICtrlSetState($ArenaRank, 		$GUI_UNCHECKED)

	GUICtrlSetState($RankedBattle, 		$GUI_UNCHECKED)
	GUICtrlSetState($SpaceTime, 		$GUI_UNCHECKED)
	GUICtrlSetState($WantedMission, 	$GUI_UNCHECKED)
	GUICtrlSetState($SurvivalTrial,		$GUI_UNCHECKED)
	GUICtrlSetState($RichField, 		$GUI_UNCHECKED)
	GUICtrlSetState($InfinityIllusion,	$GUI_UNCHECKED)

	GUICtrlSetState($TeamInstance,		$GUI_UNCHECKED)

	GUICtrlSetState($EightGate, 		$GUI_UNCHECKED)
	GUICtrlSetState($Click, 			$GUI_UNCHECKED)

	GUICtrlSetState($SA,				$GUI_UNCHECKED)
	GUICtrlSetState($GroupSummons,		$GUI_UNCHECKED)
	GUICtrlSetState($GrowthScroll,		$GUI_UNCHECKED)
	GUICtrlSetState($GroupConvoy,		$GUI_UNCHECKED)
	GUICtrlSetState($Arena33,			$GUI_UNCHECKED)
	GUICtrlSetState($ArenaTheme,		$GUI_UNCHECKED)

;-------------------------------HOT TOPIC FUNCTION----------------------------------------------------------
	GUICtrlSetState($WishingLaterns,			$GUI_UNCHECKED)
	GUICtrlSetState($GreatePlates,				$GUI_UNCHECKED)
	GUICtrlSetState($FireworkFestival,			$GUI_UNCHECKED)

;-------------------------------HOT TOPIC FUNCTION----------------------------------------------------------


EndFunc

Func _Exit()

	$filePath = @ScriptDir & "\data.txt"
    Local $fileHandle = FileOpen($filePath, 1)

	; Read the entire file into an array
	$fileArray = FileReadToArray($filePath)

	; Replace data.txt line 3 to new data
	If GUICtrlRead($SA_Expert) = $GUI_CHECKED 	Then $fileArray[3-1] = "StrongApproching_Expert"
	If GUICtrlRead($SA_Hard) = $GUI_CHECKED 	Then $fileArray[3-1] = "StrongApproching_Hard"
	If GUICtrlRead($SA_Normal) = $GUI_CHECKED 	Then $fileArray[3-1] = "StrongApproching_Normal"

	$fileArray[1-1] = "line 1"
	$fileArray[2-1] = "line 2"
	; Open the file for writing (overwrite) 2 = For writing
	$fileHandle = FileOpen($filePath, 2)

	; Write the modified content back to the file
	For $i = 0 To UBound($fileArray) - 1
		FileWrite($fileHandle, $fileArray[$i] & @CRLF)
	Next

    ; Close the file
    FileClose($fileHandle)
	Exit 0
EndFunc

While 1
	$nMsg = GUIGetMsg()

	Select
		Case GUICtrlRead($EightGate) = 1
			EightGate()
		Case GUICtrlRead($InfinityIllusion)=1
			InfinityIllusion()
		Case GUICtrlRead($RichField)=1
			RichField()
		Case GUICtrlRead($SurvivalTrial)=1
			SurvivalTrial()
		Case GUICtrlRead($NinjaExam)=1
			NinjaExam()
		Case GUICtrlRead($BenefitHall)=1
			BenefitHall()
		Case GUICtrlRead($NinjaTest)=1
			NinjaTest()
		Case GUICtrlRead($RankedBattle)=1
			RankedBattle()
		Case GUICtrlRead($TeamInstance)=1
			TeamInstance()
		Case 1=1
			If GUICtrlRead($LuckyRunes) = 1			Then LuckyRunes()
			If GUICtrlRead($Arena) = 1				Then Arena()
			If GUICtrlRead($ArenaRank) = 1			Then ArenaRank()
			If GUICtrlRead($MiniClient) = 1			Then MiniClient()
			If GUICtrlRead($Monthly) = 1			Then Monthly()


			If GUICtrlRead($SpaceTime) = 1			Then SpaceTime()
			If GUICtrlRead($WantedMission) = 1		Then WantedMission()

			If GUICtrlRead($DecisiveBond) = 1		Then DecisiveBond()
			If GUICtrlRead($SA) = 1					Then SA()
			If GUICtrlRead($GroupSummons) = 1		Then GroupSummons()
			If GUICtrlRead($GrowthScroll) = 1		Then GrowthScroll()
			If GUICtrlRead($GroupConvoy) = 1		Then GroupConvoy()
			If GUICtrlRead($Arena33) = 1			Then Arena33()
			If GUICtrlRead($ArenaTheme) = 1			Then ArenaTheme()
			If GUICtrlRead($Click) = 1				Then Click()

			If GUICtrlRead($DAILY) = 1				Then DAILY()
			If GUICtrlRead($STAMINA) = 1			Then STAMINA()
			If GUICtrlRead($AfkMode) = 1			Then AfkMode()


;-------------------------------HOT TOPIC FUNCTION----------------------------------------------------------
			If GUICtrlRead($WishingLaterns) = 1			Then WishingLaterns()
			If GUICtrlRead($GreatePlates) = 1			Then GreatePlates()
			If GUICtrlRead($FireworkFestival) = 1		Then FireworkFestival()

	EndSelect

	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
	EndSwitch
WEnd

Func GroupSummons()

	ClickFoundImage("group\group", 0)

	if(ClickFoundImage("group\summons\goto1", 0) or ClickFoundImage("group\summons\goto2", 0)) Then
		ClickFoundImageMulti("xxx",0)
	EndIf

	ClickFoundImage("group\summons\goto", 0)
	ClickFoundImage("group\summons\goto2", 0)
	ClickFoundImage("group\summons\capture", 0)
	if ClickFoundImage("group\summons\join", 0) then ClickFoundImageMulti("xxx",0)
	ClickFoundImage("group\summons\map", 0)

	ClickFoundImage("group\summons\summonManda", 0)
	ClickFoundImage("retreat", 0)
	ClickFoundImage("comfirmRetreat", 0)
	ClickFoundImage("group\summons\rewardComfirm", 0)

EndFunc

Func GrowthScroll()

	ClickFoundImage("growthScroll\growthScroll", 0)
	ClickFoundImage("growthScroll\claimRewards", 0)
	ClickFoundImage("growthScroll\mission", 0)
	if ClickFoundImage("growthScroll\claimMission", 0) then ClickFoundImage("growthScroll\rewards", 0)

EndFunc


Func GroupConvoy()

	ClickFoundImage("leaveTeam", 0)

	ClickFoundImage("dailyPractice\dailyPractice", 0)
	ClickFoundImage("dailyPractice\timedEvent", 500)
	ClickFoundImage("dailyPractice\convoy_plunder1", 0)
	ClickFoundImage("dailyPractice\convoy_plunder2", 0)

	if ClickFoundImage("dailyPractice\image_ConvoyPlunder", 0) then ClickFoundImageMulti("dailyPractice\participation1", 0)
	if ClickFoundImage("dailyPractice\image_ConvoyPlunder", 0) then ClickFoundImageMulti("dailyPractice\participation2", 0)

	ClickFoundImage("group\convoy\complete1", 0)
	ClickFoundImage("group\convoy\complete2", 0)

	if (ClickFoundImage("group\convoy\setOff1", 0) Or ClickFoundImage("group\convoy\setOff2", 0) _
		Or ClickFoundImage("group\convoy\setOffMain1", 0) Or ClickFoundImage("group\convoy\setOffMain2", 0) _
		Or SearchImage("group\convoy\spendIngot", 0)) Then
			ClickFoundImageMulti("xxx", 0)
			GUICtrlSetState($GroupConvoy,$GUI_UNCHECKED)
			GUICtrlSetData($Status_Job, "Convoy")
	EndIf

	if SearchImage("group\convoy\missionBonus", 0) Then ClickFoundImageMulti("xxx", 0)

	ClickFoundImageNear("group\convoy\convoySS", 500,250,0)
	if SearchImage("group\convoy\convoyFinished", 0) Then ClickFoundImage("group\convoy\freeRefresh", 0)

	ClickFoundImage("group\convoy\complete1", 0)
	ClickFoundImage("group\convoy\complete2", 0)

EndFunc

Func StopNinjExam()
	ClickFoundImage("ninjaExam\sweep_view", 0)
	if (ClickFoundImage("ninjaExam\cancel_sweep", 500) or SearchImage("ninjaExam\completeSweep", 500)) then ClickFoundImageMulti("xxx",0)
EndFunc

Func WantedMission()
	ClickFoundImage("wantedMission\wantedMission1", 0)
	ClickFoundImage("wantedMission\wantedMission2", 0)
	ClickFoundImage("wantedMission\mission", 0)
	ClickFoundImage("wantedMission\accept", 0)
	if ClickFoundImage("wantedMission\alreadyAccept", 0) Then
		ClickFoundImageMulti("wantedMission\xxx", 0)
		GUICtrlSetState($WantedMission,$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "WantedMission")
	EndIf
EndFunc

Func AfkMode()

	if ClickFoundImage("afk\afkIcon1",1000) then ClickFoundImage("gameStuck",0)
	if ClickFoundImage("afk\afkIcon2",1000) then ClickFoundImage("gameStuck",0)

	if (ClickFoundImage("afk\start1",1000) or ClickFoundImage("afk\start2",1000)) then
		if ClickFoundImage("afk\afkCheck",500) then ClickFoundImage("afk\afkComfirm",500)
		Sleep(1000)
		GUICtrlSetState($AfkMode, 	$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "AFK Mode")
	EndIf
EndFunc

Func DecisiveBond()
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("dailyPractice\dailyPractice", 0)
	ClickFoundImage("dailyPractice\timedEvent", 500)
	ClickFoundImage("decisiveBond\decisiveBond", 500)

	if ClickFoundImage("decisiveBond\decisiveBond_clicked", 500) Then ClickFoundImage("decisiveBond\participation", 500)
	ClickFoundImage("decisiveBond\iruka", 0)

	ClickFoundImage("decisiveBond\startMatching", 0)
	ClickFoundImage("decisiveBond\startMatching2", 0)
	ClickFoundImage("battle_auto", 0)
	ClickFoundImage("retreat", 0)
	ClickFoundImage("comfirmRetreat", 0)
	ClickFoundImage("comfirmDefeat", 0)
	ClickFoundImage("comfirmVictory",0)
	ClickFoundImage("decisiveBond\comfirm", 0)
	ClickFoundImage("decisiveBond\win", 0)
	ClickFoundImage("decisiveBond\lose", 0)

	ClickFoundImageMulti("decisiveBond\reward_kill", 0)
	ClickFoundImageMulti("decisiveBond\reward_win", 0)
	ClickFoundImageMulti("decisiveBond\reward_win8b", 0)
	ClickFoundImageMulti("decisiveBond\reward_comfirm", 0)
	ClickFoundImageMulti("decisiveBond\xxx", 0)
EndFunc

Func LuckyRunes()
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("luckyRunes\luckyRunes", 0)

	if (ClickFoundImage("luckyRunes\cancel", 500) Or SearchImage("luckyRunes\luckyRunesDone", 0)) Then
		ClickFoundImage("xxx", 0)
		GUICtrlSetState($LuckyRunes, $GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "LuckyRunes")
	EndIf

	ClickFoundImageMulti("luckyRunes\lucky",  0)
	ClickFoundImageMulti("luckyRunes\lucky2", 0)
EndFunc

Func MiniClient()
	ClickFoundImage("miniClient\miniClient", 700)
	ClickFoundImageMulti("claim", 0)

	if SearchImage("miniClient\miniClientDone", 0) Then
		ClickFoundImage("xxx", 0)
		GUICtrlSetState($MiniClient, $GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "MiniClient")
	EndIf
EndFunc

Func BenefitHall()
	ClickFoundImage("benefitHall\benefitHall", 0)
	ClickFoundImageMulti("claim", 0)

	ClickFoundImage("benefitHall\dailySignIn", 0)

	if (ClickFoundImage("benefitHall\today", 0) Or ClickFoundImage("benefitHall\today2", 0) Or _
		ClickFoundImage("benefitHall\today3", 0) Or _
		ClickFoundImage("benefitHall\today30", 0)) Then
			ClickFoundImage("xxx", 0)
			GUICtrlSetState($BenefitHall,	$GUI_UNCHECKED)
			GUICtrlSetState($NinjaTest,		$GUI_CHECKED)
			GUICtrlSetData($Status_Job, "BenefitHall")
	EndIf

	if SearchImage("benefitHall\todayDone", 0) then ClickFoundImage("benefitHall\onlinePack", 500)

	ClickFoundImageMulti("benefitHall\claim", 0)
	if (SearchImage("benefitHall\onlinePackClaimed1", 0) Or _
		SearchImage("benefitHall\onlinePackClaimed2", 0) Or _
		SearchImage("benefitHall\onlinePackClaimed3", 0)) Then
			ClickFoundImage("xxx", 0)
			GUICtrlSetState($BenefitHall,	$GUI_UNCHECKED)
			GUICtrlSetState($NinjaTest,		$GUI_CHECKED)
			GUICtrlSetData($Status_Job, "BenefitHall")
	EndIf

EndFunc

Func Monthly()

	ClickFoundImage("monthly\monthly", 0)
	ClickFoundImageMulti("monthly\monthlyClaim", 0)

	if (SearchImage("monthly\monthlyBoard", 0)) Then
		ClickFoundImageMulti("monthly\monthlyX", 0)
		GUICtrlSetState($Monthly,$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "Monthly")
	EndIf
EndFunc

Func Arena()

	StopNinjExam()
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("leaveTeam", 0)
	ClickFoundImage("arena\arena", 0)

;~ 	if (SearchImage("arena\done")) Then
;~ 		ClickFoundImage("xxx", 0)
;~ 		GUICtrlSetState($Arena,$GUI_UNCHECKED)
;~ 		GUICtrlSetData($Status_Job, "Arena")
;~ 	EndIf

	ClickFoundImage("arena\taskIncomplete", 0)
	if SearchImage("arena\taskIncomplete_Yes", 0) then ClickFoundImage("arena\comfirm", 1000)
	if SearchImage("arena\taskIncomplete_No", 0)  then ClickFoundImage("arena\cancel",  1000)

    $currentSelection = GUICtrlRead($ArenaCombo)
	Switch $currentSelection
		Case "Tranning"
			ClickFoundImage("arena\arenaMode", 0)
			ClickFoundImage("arena\tranning", 0)
		Case "Ranked"
			ArenaRank()
		Case "Theme"
			ArenaTheme()
	EndSwitch

	if ClickFoundImage("arena\battleCoupon", 0) then ClickFoundImage("arena\use", 0)
	if ClickFoundImage("arena\challengePointNotice", 0) then ClickFoundImage("arena\challengePointComfirm", 0)
	if ClickFoundImage("arena\arenaHall", 0) then ClickFoundImage("arena\comfirmVictory", 0)
	ClickFoundImage("arena\claim", 500)
	ClickFoundImage("arena\claim1", 500)

	ClickFoundImage("battle_auto", 0)
	ClickFoundImage("battle_x1", 0)
	ClickFoundImage("comfirmVictory", 0)
	ClickFoundImage("comfirmDefeat", 0)

	ClickFoundImageMulti("arena\skip", 0)
EndFunc

Func ArenaRank()

	ClickFoundImage("arena\arenaMode", 0)
	ClickFoundImage("arena\rankBattle1", 0)
	ClickFoundImage("arena\rankBattle2", 0)

EndFunc

Func ArenaTheme()

	ClickFoundImage("arena\z_themeArena", 0)
	ClickFoundImage("arena\z_themeBattle", 0)
	ClickFoundImage("arena\z_themeBattle2", 0)

	if SearchImage("arena\z_themeFightDone", 0) then
		ClickFoundImage("arena\z_themeComfirm", 500)
		ClickFoundImage("arena\z_themeComfirm2", 500)
	EndIf

;~ 	if (SearchImage("arena\_33_done1") and SearchImage("arena\_33_done2")) Then
;~ 		ClickFoundImageMulti("xxx", 0)
;~ 		GUICtrlSetState($Arena33,$GUI_UNCHECKED)
;~ 	EndIf
EndFunc

Func Arena33()
	ClickFoundImageMulti("arena\_33_claim", 0)
	ClickFoundImageMulti("arena\_33_claim2", 0)
	ClickFoundImageMulti("arena\_33_reward", 0)
	ClickFoundImage("arena\_33_mission", 0)

	if (SearchImage("arena\_33_done1", 0) and SearchImage("arena\_33_done2", 0)) Then
		ClickFoundImageMulti("xxx", 0)
		GUICtrlSetState($Arena33,$GUI_UNCHECKED)
	EndIf
EndFunc




;~ #########################################################################################

Func InfinityIllusion()

	StopNinjExam()

	ClickFoundImage("leaveTeam", 0)
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("infinityIllusion\infinityIllusion", 500)

	if SearchImage("infinityIllusion\strengthDone",0) Then ClickFoundImage("infinityIllusion\heart", 0)
	if SearchImage("infinityIllusion\heartDone", 0) Then ClickFoundImage("infinityIllusion\will", 0)
	if SearchImage("infinityIllusion\willDone", 0) Then
		ClickFoundImageMulti("xxx", 100)
		GUICtrlSetState($InfinityIllusion,	$GUI_UNCHECKED)
;~ 		GUICtrlSetState($RichField,			$GUI_CHECKED)
		GUICtrlSetData($Status_Job, "InfinityIllusion")
	EndIf

	ClickFoundImage("infinityIllusion\sweep1", 0)
	ClickFoundImage("infinityIllusion\sweep2", 0)
	ClickFoundImage("infinityIllusion\comfirm", 0)
	if ClickFoundImage("infinityIllusion\xxx", 0) then ClickFoundImage("gameStuck", 0)
EndFunc

Func RichField()

	StopNinjExam()

	ClickFoundImage("leaveTeam", 0)
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("richField\richField", 1000)
	ClickFoundImage("richField\enterRichField", 500)

	if SearchImage("richField\done", 0) Then
		ClickFoundImageMulti("xxx", 100)
		GUICtrlSetState($RichField, 		$GUI_UNCHECKED)
;~ 		GUICtrlSetState($SurvivalTrial,		$GUI_CHECKED)
		GUICtrlSetData($Status_Job, "RichField")
	EndIf

	if ClickFoundImage("richField\sweepGold", 300) then
		ClickFoundImage("richField\sweepExp1", 300)
		ClickFoundImage("richField\sweepExp2", 300)
	EndIf
	ClickFoundImage("richField\xxx", 0)
EndFunc

Func NinjaExam()
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("leaveTeam", 0)
	ClickFoundImage("ninjaExam\ninjaExam", 0)

	if(SearchImage("ninjaExam\dailyResets_Done", 0) And SearchImage("ninjaExam\dailyResets0", 0)) Then
			ClickFoundImage("ninjaExam\teamExam", 0)
	EndIf

	if SearchImage("ninjaExam\sweep_ing", 0) Then
			GUICtrlSetState($NinjaExam,			$GUI_UNCHECKED)
;~ 			GUICtrlSetState($SurvivalTrial,		$GUI_CHECKED)
;~ 			GUICtrlSetState($BenefitHall,		$GUI_CHECKED)
;~ 			GUICtrlSetState($Arena,				$GUI_UNCHECKED)
			GUICtrlSetData($Status_Job, "NinjaExam")
			ClickFoundImageMulti("xxx",0)
	EndIf

	ClickFoundImage("ninjaExam\teamExam_Sweep", 0)

	if (SearchImage("ninjaExam\teamExam_SweepDone", 0) Or ClickFoundImage("ninjaExam\quickSweep", 0) _
		Or ClickFoundImage("ninjaExam\teamExamDone", 0)) Then
			ClickFoundImageMulti("xxx", 0)
			GUICtrlSetState($NinjaExam,$GUI_UNCHECKED)
;~ 			GUICtrlSetState($BenefitHall,$GUI_CHECKED)
			GUICtrlSetData($Status_Job, "NinjaExam")
	EndIf

	ClickFoundImage("ninjaExam\reset", 0)
	ClickFoundImage("ninjaExam\comfirm", 0)
	ClickFoundImage("ninjaExam\sweep1", 0)
	ClickFoundImage("ninjaExam\sweep", 0)
	ClickFoundImage("ninjaExam\sweep2", 0)
	ClickFoundImage("ninjaExam\completeSweep", 0)
EndFunc

Func NinjaTest()
	ClickFoundImage("dailyPractice\dailyPractice", 0)
	ClickFoundImage("dailyPractice\ninjaTest1",0)
	ClickFoundImage("dailyPractice\ninjaTest2",0)

	if SearchImage("dailyPractice\image_NinjaTest", 500) Then
		ClickFoundImage("dailyPractice\participation1", 500)
		ClickFoundImage("dailyPractice\participation2", 500)
	EndIf

	ClickFoundImage("ninjaTest\startTest", 0)
	ClickFoundImage("ninjaTest\chooseAnswer", 0)
	ClickFoundImage("ninjaTest\submit", 0)
	if ClickFoundImage("ninjaTest\claim1", 500) then ClickFoundImageMulti("xxx", 0)
	if ClickFoundImage("ninjaTest\claim2", 500) then ClickFoundImageMulti("xxx", 0)


	if (SearchImage("ninjaTest\claimed",0) Or _
			SearchImage("ninjaTest\test_done1", 0) Or SearchImage("ninjaTest\test_done2", 0) Or _
			SearchImage("ninjaTest\test_done3", 0) Or SearchImage("ninjaTest\test_done4", 0)) Then
		ClickFoundImageMulti("xxx", 0)
		GUICtrlSetState($NinjaTest,		$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "NinjaTest")
	EndIf

;~ 	if (SearchImage("ninjaTest\participation", 0) And SearchImage("ninjaTest\ninjaTest_done2", 0)) Then
;~ 		ClickFoundImageMulti("xxx", 0)
;~ 		GUICtrlSetState($NinjaTest,		$GUI_UNCHECKED)
;~ 		GUICtrlSetData($Status_Job, "NinjaTest")
;~ 	EndIf

	if (SearchImage("ninjaTest\claimed",0) Or SearchImage("ninjaTest\ninjaTest_done", 0)) Then
		ClickFoundImageMulti("xxx", 0)
	EndIf
EndFunc

Func SurvivalTrial()

	StopNinjExam()

	ClickFoundImage("leaveTeam", 0)
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("survivalTrial\survivalTrial", 0)

	ClickFoundImage("survivalTrial\reset", 0)
	ClickFoundImage("survivalTrial\ultimate", 0)
	if (SearchImage("survivalTrial\ultimateAsk", 0) Or SearchImage("survivalTrial\ultimateAsk2", 0) _
		Or SearchImage("survivalTrial\oneClickClaimAsk", 0)) then
			Sleep(1000)
			ClickFoundImage("survivalTrial\yes", 500)
			ClickFoundImage("survivalTrial\comfirm", 500)
	EndIf

;~ 	if SearchImage("survivalTrial\rewardNextDone", 0) Then
;~ 		ClickFoundImage("survivalTrial\oneClickClaim1", 0)
;~ 		ClickFoundImage("survivalTrial\oneClickClaim2", 0)
;~ 	EndIf

	ClickFoundImageMulti("survivalTrial\rewardNext1", 0)
	ClickFoundImageMulti("survivalTrial\rewardNext2", 0)

	If (SearchImage("survivalTrial\ultimate_active", 0) _
		Or (SearchImage("survivalTrial\elite_active", 0) and SearchImage("survivalTrial\ultimate_lock", 0))) Then
		if ClickFoundImage("survivalTrial\map_ss", 500) then ClickFoundImageMulti("xxx", 0)
		if ClickFoundImage("survivalTrial\map_s1", 500) then ClickFoundImageMulti("xxx", 0)
		if ClickFoundImage("survivalTrial\map_s2", 500) then ClickFoundImageMulti("xxx", 0)
		if ClickFoundImage("survivalTrial\map_a2", 500) then ClickFoundImageMulti("xxx", 0)
	EndIf


	if (SearchImage("survivalTrial\point220", 0) Or SearchImage("survivalTrial\point210", 0)) Then
			ClickFoundImage("survivalTrial\oneClickClaim1", 0)
			ClickFoundImage("survivalTrial\oneClickClaim2", 0)
	EndIf

	if SearchImage("survivalTrial\oneClickClaimAsk", 0) then ClickFoundImage("survivalTrial\yes", 0)

	ClickFoundImage("survivalTrial\rewardComfirm1", 0)
	ClickFoundImage("survivalTrial\rewardComfirm2", 0)

	ClickFoundImage("survivalTrial\battle", 0)
	ClickFoundImage("survivalTrial\battle2", 0)
	ClickFoundImage("battle_auto", 0)
	ClickFoundImage("battle_x1", 0)
	ClickFoundImage("comfirmVictory", 0)

	if (SearchImage("survivalTrial\done220", 0) Or SearchImage("survivalTrial\done210", 0)) Then
		ClickFoundImageMulti("xxx",0)
		GUICtrlSetState($SurvivalTrial,	$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "SurvivalTrial")
	EndIf




EndFunc

Func STAMINA()

	WinActivate("oas page")
	ClickFoundImageMulti("xxx", 100)

	GUICtrlSetData($Status_Job,"Working")
	GUICtrlSetState($STAMINA, 			$GUI_UNCHECKED)
	GUICtrlSetState($InfinityIllusion, 	$GUI_CHECKED)
	GUICtrlSetState($RichField, 		$GUI_CHECKED)
	GUICtrlSetState($SurvivalTrial, 	$GUI_CHECKED)
	GUICtrlSetState($DAILY, 	$GUI_CHECKED)
EndFunc

Func DAILY()

	WinActivate("oas page")
	ClickFoundImageMulti("xxx", 100)

	GUICtrlSetData($Status_Job,"Working")
	GUICtrlSetState($DAILY, 			$GUI_UNCHECKED)
	GUICtrlSetState($NinjaExam, 		$GUI_CHECKED)
	GUICtrlSetState($BenefitHall, 		$GUI_CHECKED)
	GUICtrlSetState($LuckyRunes, 		$GUI_CHECKED)
	GUICtrlSetState($MiniClient, 		$GUI_CHECKED)
	GUICtrlSetState($NinjaTest, 		$GUI_CHECKED)
	GUICtrlSetState($AfkMode,	 		$GUI_CHECKED)
EndFunc

Func TeamInstance()
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("dailyPractice\dailyPractice", 0)
	ClickFoundImage("dailyPractice\timedEvent", 500)
	ClickFoundImage("dailyPractice\teamInstance1", 100)
	ClickFoundImage("dailyPractice\teamInstance2", 100)

	if ClickFoundImage("dailyPractice\image_TeamInstance", 0) Then
		ClickFoundImageMulti("dailyPractice\participation1", 0)
		ClickFoundImageMulti("dailyPractice\participation2", 0)
	EndIf

	if(SearchImage("teamInstance\teamInstanceDone", 0) Or SearchImage("dailyPractice\participationGrey", 0)) Then
		ClickFoundImageMulti("xxx", 100)
		GUICtrlSetState($TeamInstance,$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "TeamInstance")
	EndIf

	ClickFoundImage("teamInstance\brotherHard", 500)
	ClickFoundImage("teamInstance\skip", 0)
	ClickFoundImage("teamInstance\comfirmEntry", 0)
	ClickFoundImage("battle_start", 0)
	ClickFoundImage("battle_auto", 0)
	ClickFoundImage("battle_x1", 0)
	if SearchImage("battle_x2", 0) then Sleep(2000)
	ClickFoundImage("teamInstance\return", 1500)
EndFunc


Func RankedBattle()
	ClickFoundImage("leaveTeam", 0)
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("rankedBattle\rankedBattle", 300)

	if SearchImage("rankedBattle\times", 0) Then
		ClickFoundImageMulti("xxx", 100)
		GUICtrlSetState($RankedBattle,$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "RankedBattle")
	EndIf

	if ClickFoundImage("rankedBattle\challenge", 0) Then ClickFoundImageMulti("xxx", 100)
	ClickFoundImage("rankedBattle\comfirm_orange", 0)
	ClickFoundImage("retreat", 0)
	ClickFoundImage("comfirmRetreat", 0)
	ClickFoundImage("comfirmDefeat", 0)
EndFunc

Func SpaceTime()
	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("spaceTime\spaceTime", 300)

	if SearchImage("spaceTime\spaceTimeDone", 0) Then ClickFoundImage("spaceTime\like", 0)
	ClickFoundImage("spaceTime\like2", 0)

	if SearchImage("spaceTime\likeDone", 0) Then
		ClickFoundImageMulti("xxx", 100)
		GUICtrlSetState($SpaceTime,$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "SpaceTime")
	EndIf

	ClickFoundImage("spaceTime\refresh", 0)
	ClickFoundImage("spaceTime\spaceTimeBlank", 0)
	ClickFoundImage("spaceTime\challenge1", 0)
	ClickFoundImage("spaceTime\challenge2", 0)

	ClickFoundImage("skip", 0)
	ClickFoundImage("comfirmDefeat", 0)
	ClickFoundImage("comfirmVictory", 0)
EndFunc


Func DailyPractice()
;~ 	ClickFoundImage("extendFunction", 0)
;~ 	ClickFoundImage("dailyPractice\dailyPractice", 0)
;~ 	ClickFoundImageMulti("xxx", 100)
	;GUICtrlSetState($DailyPractice,$GUI_UNCHECKED)
EndFunc

Func EightGate()
	if (SearchImage("eightGate\empty", 0) or ClickFoundImage("comfirm_Orange", 500)) then ClickFoundImage("eightGate\autoPractice",1000)
	ClickFoundImage("eightGate\oneClick",0)
	ClickFoundImage("eightGate\idle",0)

EndFunc

Func SA()

	ClickFoundImage("extendFunction", 0)
	ClickFoundImage("strongApproching\strongApproching", 500)

	if SearchImage("strongApproching\strongApprochingDone", 0) Then
		ClickFoundImageMulti("xxx", 0)
		GUICtrlSetState($SA,$GUI_UNCHECKED)
		GUICtrlSetData($Status_Job, "StrongApproch")
	EndIf

	If GUICtrlRead($SA_Expert) = $GUI_CHECKED Then
        ClickFoundImage("strongApproching\SA_Expert", 0)
		if SearchImage("strongApproching\SA_ExpertClicked", 0) Then ClickFoundImage("strongApproching\startBattle", 1000)
	EndIf

	If GUICtrlRead($SA_Hard) = $GUI_CHECKED Then
        ClickFoundImage("strongApproching\SA_Hard", 0)
		if ClickFoundImage("strongApproching\SA_HardClicked",0) Then ClickFoundImage("strongApproching\startBattle", 1000)
	EndIf

	If GUICtrlRead($SA_Normal) = $GUI_CHECKED Then
            ClickFoundImage("strongApproching\SA_Normal", 0)
			if SearchImage("strongApproching\SA_NormalClicked", 0) Then ClickFoundImage("strongApproching\startBattle", 1000)
	EndIf

	ClickFoundImage("battle_auto", 0)
	ClickFoundImage("battle_x1", 0)
	ClickFoundImage("battle_start", 0)
	ClickFoundImage("comfirmVictory", 0)
	ClickFoundImage("strongApproching\comfirm", 0)
	ClickFoundImage("strongApproching\checkPts", 0)
EndFunc


; These are HOT TOPIC EVENT
Func GreatePlates()

	ClickHotTopic()
	ClickFoundImage("hotTopic\greatPlates\greatPlates", 0)
	ClickFoundImage("hotTopic\greatPlates\oneClickClaim", 0)

	if ClickFoundImage("hotTopic\greatPlates\oneClickClaimDone", 0) then ClickFoundImage("hotTopic\greatPlates\tab2", 0)

	ClickFoundImage("hotTopic\greatPlates\open10", 0)
	ClickFoundImage("hotTopic\greatPlates\open10_2", 0)

	if (SearchImage("hotTopic\greatPlates\key0", 0) Or SearchImage("hotTopic\greatPlates\key2", 0) _
			Or SearchImage("hotTopic\greatPlates\key4", 0) Or SearchImage("hotTopic\greatPlates\key6", 0) _
			Or SearchImage("hotTopic\greatPlates\key8", 0)) Then
				ClickFoundImageMulti("hotTopic\xxx", 0)
				GUICtrlSetState($GreatePlates, 	$GUI_UNCHECKED)
				GUICtrlSetData($Status_Job, "GreatePlates")
	EndIf

EndFunc

Func WishingLaterns()

	ClickFoundImage("hotTopic\wishingLanterns\makeWish", 0)
	ClickFoundImage("hotTopic\wishingLanterns\supportAll", 0)
	ClickFoundImage("hotTopic\wishingLanterns\view", 0)
	ClickFoundImage("hotTopic\wishingLanterns\tick", 0)
	ClickFoundImage("hotTopic\wishingLanterns\showYourSupport", 0)

	ClickHotTopic()
	ClickFoundImage("hotTopic\nextPage", 0)
	ClickFoundImage("hotTopic\wishingLanterns\wishingLanterns", 0)
	ClickFoundImage("hotTopic\wishingLanterns\release", 0)
	ClickFoundImage("hotTopic\wishingLanterns\release_2", 0)

	ClickFoundImage("hotTopic\wishingLanterns\myLanterns", 0)
	ClickFoundImage("hotTopic\wishingLanterns\request", 0)

	ClickFoundImage("hotTopic\wishingLanterns\lanterns1", 1000)
	ClickFoundImage("hotTopic\wishingLanterns\lanterns2", 1000)
	ClickFoundImage("hotTopic\wishingLanterns\lanterns3", 1000)
	ClickFoundImage("hotTopic\wishingLanterns\lanterns4", 1000)
	ClickFoundImage("hotTopic\wishingLanterns\lanterns5", 1000)

EndFunc

Func FireworkFestival()

	ClickHotTopic()

	ClickFoundImage("hotTopic\fireworksFestival\fireworksFestival", 0)
	ClickFoundImage("hotTopic\fireworksFestival\claim", 0)

	ClickFoundImage("hotTopic\fireworksFestival\fireworksShow", 0)
	ClickFoundImage("hotTopic\fireworksFestival\contribute", 0)

	if SearchImage("hotTopic\fireworksFestival\donateAll", 0) then ClickFoundImage("hotTopic\fireworksFestival\yes", 1000)
	if SearchImage("hotTopic\fireworksFestival\noHanabi", 0) then ClickFoundImage("hotTopic\fireworksFestival\contributeReward", 1000)

	if SearchImage("hotTopic\fireworksFestival\fireworksShow", 0) then
		ClickFoundImageMulti("hotTopic\fireworksFestival\claim", 0)
		ClickFoundImage("hotTopic\fireworksFestival\down1", 0)
		ClickFoundImage("hotTopic\fireworksFestival\down2", 0)
	EndIf
EndFunc


Func Click()

;~ 	$CLASSNN = "Chrome_RenderWidgetHostHWND1"
;~ 	$CLASSNN = "[CLASS:Chrome_RenderWidgetHostHWND; INSTANCE:1]"
;~ 	$hwnd = WinGetHandle("oas page")

;~ 	ControlClick($hwnd, "", $CLASSNN, "left", 1,756, 519)
;~ 	Refine
;~ 	ControlClick("oas page","","[CLASSNN:Chrome_RenderWidgetHostHWND1]","left",1,762, 521)
;~ 	ControlClick("Naruto Online","","Intermediate D3D Window1","left",2,535, 339)
;~ 	Sleep(100)
;~ 	GUICtrlSetState($DailyPractice,$GUI_UNCHECKED)
EndFunc

Func EndBattle()
	ClickFoundImage("battle_start", 0)
	ClickFoundImage("comfirmDefeat", 0)
	ClickFoundImage("comfirmVictory", 0)
EndFunc

Func ClickHotTopic()

	$found = _HandleImgSearch($hwnd, @ScriptDir & "\Image\hotTopic\hotTopic.bmp", 0, 0, -1, -1, 15, 5)
	If not @error Then
		ControlClick($hwnd, "", $CLASSNN, "left", 1, $found[1][0] - 60, $found[1][1])
		Sleep(0)
		Return 1
	Else
		Return 0
	EndIf

EndFunc


;Search on screen and click, but dont need mouse, found = 1 , not found = 0
Func ClickFoundImage($image,$wait)
	$found = _HandleImgSearch($hwnd, @ScriptDir & "\Image\" & $image & ".bmp", 0, 0, -1, -1, 15, 5)
	If not @error Then
		ControlClick($hwnd, "", $CLASSNN, "left", 1, $found[1][0], $found[1][1])
		Sleep(0 + $wait)
;~ 		ConsoleWrite($found[1][0] & " " & $found[1][1])
;~ 		ConsoleWrite("click")
;~ 		debug
;~ 		$ClickOtherPlace = WinGetPos($hwnd)
;~ 		ConsoleWrite($found[1][0] & " " & $found[1][1] & " " )
;~ 		ConsoleWrite($ClickOtherPlace[0] + $found[1][0] & " " & $ClickOtherPlace[1] + $found[1][1] & " " )
;~ 		MouseMove($ClickOtherPlace[0] + $found[1][0],$ClickOtherPlace[1] + $found[1][1] & " " )


		Return 1
	Else
		Return 0
	EndIf

EndFunc

;; Click muti times if found image, stop when not found
Func ClickFoundImageMulti($image,$wait)
	While ClickFoundImage($image,100) = 1
		Sleep(0 + $wait)
	WEnd
EndFunc

;;find image match
Func SearchImage($image,$wait)
	$found = _HandleImgSearch($hwnd, @ScriptDir & "\Image\" & $image & ".bmp", 0, 0, -1, -1, 15, 5)
	If not @error Then
;~ 		ConsoleWrite("search")
		Return 1
	Else
		Return 0

	EndIf
EndFunc

Func ClickFoundImageNear($image,$wait,$x,$y)
	$found = _HandleImgSearch($hwnd, @ScriptDir & "\Image\" & $image & ".bmp", 0, 0, -1, -1, 15, 5)
	If not @error Then
		$valueX=$found[1][0]+$x
		$valueY=$found[1][1]+$y
		ControlClick($hwnd, "", $CLASSNN, "left", 1, $valueX, $valueY)
		Sleep(0 + $wait)
		;~ 		MouseMove($valueX+2,$valueY+40)

		Return 1
	Else
		Return 0

	EndIf
EndFunc

;~ 	_GlobalImgInit($hwnd, 0, 0, -1, -1, False, False, 15 , 1000)
;~ 	_GlobalImgCapture()
;~ 	$found = _GlobalImgSearch(@ScriptDir & "\Image\" & $image & ".bmp")
;~ 	If not @error Then
;~ 		ControlClick($hwnd, "", $CLASSNN, "left", 1, $found[1][0], $found[1][1])
;~ 		Sleep(500 + $wait)
;~ 		Return 1
;~ 	Else
;~ 		Return 0
;~ 	EndIf

;~ Func FoundImageClickOther($lookingImage,$clickImage,$wait)
;~ 	$look 	= _HandleImgSearch($hwnd, @ScriptDir & "\Image\" & $lookingImage & ".bmp", 0, 0, -1, -1, 15, 5)

;~ 	If not @error Then
;~ 		$click  = _HandleImgSearch($hwnd, @ScriptDir & "\Image\" & $clickImage & ".bmp", 0, 0, -1, -1, 15, 5)
;~ 		ClickFoundImage($clickImage,$wait)
;~ 		Return 1
;~ 	Else
;~ 		Return 0
;~ 	EndIf
;~ EndFunc