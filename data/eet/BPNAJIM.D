
BEGIN ~BPNAJIM~

IF ~  GlobalLT("BPNAJIM_DIALOG","GLOBAL",1)

~ THEN BEGIN 0 // from: 
  SAY #229787 /* ~As my master commands, take these coins. Speak with the dealers gathered here to equip yourselves. Once you are prepared, report to Master Baeloth. Do not attempt to escape lest he command me to snuff out your life.~ [BPA105] */
  IF ~~ THEN REPLY #229788 /* ~Where are we? What's going on? I demand an explanation!~ */ DO ~GiveGoldForce(2000)

SetGlobal("BPNAJIM_DIALOG","GLOBAL",1)

~ GOTO 1
  IF ~~ THEN REPLY #229789 /* ~Very well, I shall do as you ask.~ */ DO ~GiveGoldForce(2000)

SetGlobal("BPNAJIM_DIALOG","GLOBAL",1)

~ GOTO 4
  IF ~~ THEN REPLY #229790 /* ~Try it, and you'll be the one who's snuffed.~ */ DO ~GiveGoldForce(2000)

SetGlobal("BPNAJIM_DIALOG","GLOBAL",1)

~ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #229791 /* ~You have been summoned to this island fortress by Baeloth. We are in a complex known as the Black Pits, dug by duergar slaves. You are to fight in the battle pits for the amusement of Baeloth's guests. I have answered your questions; now prepare for battle!~ [BPA106] */
  IF ~~ THEN REPLY #229792 /* ~It seems I have no choice, I shall do as you ask.~ */ GOTO 4
  IF ~~ THEN REPLY #229793 /* ~Wait! Baeloth said you are his slave. Together we could rise up against him!~ */ GOTO 3
END

IF ~~ THEN BEGIN 2 // from: 0.2
  SAY #229794 /* ~My blood boils with arcane power. Extinguishing your life would be no more difficult than quenching the flame of a candle. Now, do as you are told, and prepare for battle.~ [BPA107] */
  IF ~~ THEN REPLY #229795 /* ~If you are so powerful, why do you serve Baeloth?~ */ GOTO 3
  IF ~~ THEN REPLY #229796 /* ~I have a better idea. Let's join forces and overthrow Baeloth.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1
  SAY #229797 /* ~I am bound by an undying geas. Otherwise, I would have slaughtered Baeloth long ago.~ [BPA108] */
  IF ~~ THEN EXTERN ~BPBAELOT~ 4
END

IF ~~ THEN BEGIN 4 // from: 0.1 1.0
  SAY #229798 /* ~Prepare yourself for battle, mortal. When you are ready to face your fate, speak with Baeloth.~ [BPA110] */
  IF ~~ THEN REPLY #229799 /* ~I don't like it, but I too feel the effects of this undying geas. One day...~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",1)

SetGlobal("LAST_BATTLE","GLOBAL",0)

ClearAllActions()

StartCutSceneMode()

ActionOverride("BPBAELOT",MoveToPointNoInterrupt([1147.417]))

CreateVisualEffectObject("spdimndr","BPNAJIM")

PlaySound("EFF_M13")

Wait(4)

Deactivate("BPNAJIM")

EndCutSceneMode()

Wait(3)

ActionOverride("BPBAELOT",Face(S))

ActionOverride("BPNAJIM",Face(S))

SetGlobal("BP_AUTOSAVE","GLOBAL",1)

UnlockScroll()

~ EXIT
END

IF ~  Global("TIER","GLOBAL",2)

GlobalLT("BPNAJIM_DIALOG","GLOBAL",20)

~ THEN BEGIN 5 // from: 
  SAY #229800 /* ~Impressive, mortal. Your feats in the arena have become... a frequent topic of conversation. Perhaps you will set a new record for longest surviving combatant.~ [BPL205] */
  IF ~~ THEN REPLY #229801 /* ~Is there nothing you can do to help us escape?~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)

~ GOTO 6
  IF ~~ THEN REPLY #229802 /* ~I will conquer whatever obstacle that is placed in front of me. I will scale a mountain of slain enemies to escape this dungeon!~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)

~ GOTO 7
  IF ~~ THEN REPLY #229803 /* ~Perhaps I will, Najim.~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",20)

~ GOTO 8
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #229804 /* ~No. Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~ [BPL206] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(4000)
AddexperienceParty(21693)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(4000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.1
  SAY #229805 /* ~You overestimate your abilities, <RACE>. Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~ [BPL207] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(4000)
AddexperienceParty(21693)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(4000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 5.2
  SAY #229806 /* ~Baeloth has tasked me with giving you this reward for your outstanding performance. Take it, and prepare for your next battle.~ [BPL208] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(4000)
AddexperienceParty(21693)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN DO ~ClearAllActions()
StartCutSceneMode()
GiveGoldForce(4000)
CreateVisualEffectObject("spdimndr","BPNAJIM")
PlaySound("EFF_M13")
Wait(4)
Deactivate("BPNAJIM")
EndCutSceneMode()
~ EXIT
END

IF ~  Global("BRENDAK_REVEAL","GLOBAL",1)

~ THEN BEGIN 9 // from: 
  SAY #229807 /* ~Master, there is a matter requiring your attention in the Room of Pain.~ [BPE302] */
  IF ~~ THEN EXTERN ~BPBAELOT~ 52
END

IF ~  Global("TIER","GLOBAL",3)

GlobalLT("BPNAJIM_DIALOG","GLOBAL",30)

~ THEN BEGIN 10 // from: 
  SAY #229808 /* ~Never have I witnessed a mortal fret Baeloth so. I must confess to taking a certain pleasure in witnessing his dismay. Take this gift. I have added something extra. Perhaps you will have a better chance than Baeloth intends.~ [BPL304] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229809 /* ~What is Baeloth planning for me? What will happen if I defeat his challenges?~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",30)
GiveGoldForce(6000)
AddexperienceParty(130896)
~ GOTO 11
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229809 /* ~What is Baeloth planning for me? What will happen if I defeat his challenges?~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",30)
GiveGoldForce(6000)
~ GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #229810 /* ~I do not know his plans, but I assure you it will not be pleasant. However, Baeloth is not as omnipotent as he appears. You, <CHARNAME>, have already cracked his calm facade.~ [BPL305] */
  IF ~~ THEN REPLY #229811 /* ~That is at least a start.~ */ DO ~ClearAllActions()

StartCutSceneMode()

CreateVisualEffectObject("spdimndr","BPNAJIM")

PlaySound("EFF_M13")

Wait(4)

Deactivate("BPNAJIM")

EndCutSceneMode()

~ EXIT
  IF ~~ THEN REPLY #229812 /* ~I suppose becoming an annoyance is a step up from mere survival.~ */ DO ~ClearAllActions()

StartCutSceneMode()

CreateVisualEffectObject("spdimndr","BPNAJIM")

PlaySound("EFF_M13")

Wait(4)

Deactivate("BPNAJIM")

EndCutSceneMode()

~ EXIT
  IF ~~ THEN REPLY #229813 /* ~For all the good it will do me.~ */ DO ~ClearAllActions()

StartCutSceneMode()

CreateVisualEffectObject("spdimndr","BPNAJIM")

PlaySound("EFF_M13")

Wait(4)

Deactivate("BPNAJIM")

EndCutSceneMode()

~ EXIT
END

IF ~  Global("T3_B1","GLOBAL",2)

GlobalLT("LAST_BATTLE","GLOBAL",301)

~ THEN BEGIN 12 // from: 
  SAY #229814 /* ~I am afraid it is "rock crushes lizard," master.~ [BPT3B103] */
  IF ~~ THEN EXTERN ~BPBAELOT~ 55
END

IF ~  Global("BATTLE_COMPLETE","GLOBAL",2)

Global("T3_B2","GLOBAL",2)

~ THEN BEGIN 13 // from: 
  SAY #229815 /* ~No, my master. I obey your every command. If anyone counsels them, I assure you it is not I.~ [BPT3B203] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN DO ~GiveGoldForce(3000)
AddexperienceParty(183254)
SetGlobal("T3_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",302)
SetCutSceneLite(TRUE)
StartCutSceneEx("CUTBP03",FALSE)
Wait(2)
Deactivate("BPNAJIM")
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN DO ~GiveGoldForce(3000)
SetGlobal("T3_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetGlobal("LAST_BATTLE","GLOBAL",302)
SetCutSceneLite(TRUE)
StartCutSceneEx("CUTBP03",FALSE)
Wait(2)
Deactivate("BPNAJIM")
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",0)
       Global("T3_B2","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",302)
GlobalGT("LAST_BATTLE","GLOBAL",302)
~ THEN DO ~GiveGoldForce(2000)
AddexperienceParty(183254)
SetGlobal("T3_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutSceneEx("CUTBP03",FALSE)
Wait(2)
Deactivate("BPNAJIM")
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1)
       Global("T3_B2","GLOBAL",2)
OR(2)
Global("LAST_BATTLE","GLOBAL",302)
GlobalGT("LAST_BATTLE","GLOBAL",302)
~ THEN DO ~GiveGoldForce(2000)
SetGlobal("T3_B2","GLOBAL",-1)
SetGlobal("START_BATTLE","GLOBAL",0)
SetCutSceneLite(TRUE)
StartCutSceneEx("CUTBP03",FALSE)
Wait(2)
Deactivate("BPNAJIM")
~ EXIT
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

GlobalLT("BPNAJIM_DIALOG","GLOBAL",40)

~ THEN BEGIN 14 // from: 
  SAY #229816 /* ~Freedom! With the death of this unworthy drow, the arcane shackles fall away from my soul. Now, as for the rest of you mortals...~ [BPTZ102] */
  IF ~~ THEN REPLY #229817 /* ~We're all friends here, right?~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",40)

ChangeEnemyAlly(Myself,NEUTRAL)

~ GOTO 15
  IF ~~ THEN REPLY #229818 /* ~Remember, I just freed you.~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",40)

ChangeEnemyAlly(Myself,NEUTRAL)

~ GOTO 15
  IF ~~ THEN REPLY #229819 /* ~Don't even think about it.~ */ DO ~SetGlobal("BPNAJIM_DIALOG","GLOBAL",40)

ChangeEnemyAlly(Myself,NEUTRAL)

~ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.0 14.1 14.2
  SAY #229820 /* ~Fear not, <CHARNAME>. To demonstrate my gratitude, I will open a portal to transport you back to the surface world. Do not tarry long. The duergar will not long suffer your presence in their domain. Speak to me again when you are ready to leave.~ [BPTZ103] */
  IF ~~ THEN EXIT
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

GlobalLT("BPNAJIM_DIALOG","GLOBAL",50)

~ THEN BEGIN 16 // from: 
  SAY #229821 /* ~Are you ready to leave the Black Pits?~ [BPTZ104] */
  IF ~Global("BPINBG","GLOBAL",0)~ THEN REPLY #229822 /* ~Najim, I'm ready to depart.~ */ DO ~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1)
SaveGame(0)
TextScreen("BPENDA")
GoToStartScreen()
~ EXIT
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY #229822 /* ~Najim, I'm ready to depart.~ */ DO ~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BPINBGZ") 
~ EXIT
  IF ~~ THEN REPLY #229823 /* ~Aren't there supposed to be three wishes or something?~ */ GOTO 17
  IF ~~ THEN REPLY #229824 /* ~Not yet, Najim.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.1
  SAY #229825 /* ~Do not test my patience, mortal.~ [BPTZ105] */
  IF ~Global("BPINBG","GLOBAL",0)~ THEN REPLY #229822 /* ~Najim, I'm ready to depart.~ */ DO ~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1)
SaveGame(0)
TextScreen("BPENDA")
GoToStartScreen()
~ EXIT
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY #229822 /* ~Najim, I'm ready to depart.~ */ DO ~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BPINBGZ") 
~ EXIT
  IF ~~ THEN REPLY #229826 /* ~I'll get back to you in a little while.~ */ EXIT
END

IF ~  Global("BPNAJIM_DIALOG","GLOBAL",50)

~ THEN BEGIN 18 // from: 
  SAY #229827 /* ~Very well. Since you have elected to remain here among the duergar, I will leave you to your fate. While I appreciate your sacrifices, I will not stand idly by and watch more of this bloodsport.~ [BPTZ119] */
  IF ~~ THEN DO ~ClearAllActions()

StartCutSceneMode()

CreateVisualEffectObject("spdimndr","BPNAJIM")

PlaySound("EFF_M13")

Wait(4)

Deactivate("BPNAJIM")

EndCutSceneMode()

~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 
  SAY #229828 /* ~I would think that your kind would be eager to leave here. Come, let us leave this place!~ [BPTZ120] */
  IF ~Global("BPINBG","GLOBAL",0)~ THEN REPLY #229829 /* ~Yes, I wish to leave.~ */ DO ~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1)
SaveGame(0)
TextScreen("BPENDA")
GoToStartScreen()
~ EXIT
  IF ~Global("BPINBG","GLOBAL",1)~ THEN REPLY #229829 /* ~Yes, I wish to leave.~ */ DO ~SetGlobal("BLACK_PITS_VICTORY","GLOBAL",1)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BPINBGZ") 
~ EXIT
  IF ~~ THEN REPLY #229830 /* ~The duergar owe me a reward, and I will take it!~ */ EXIT
END

IF ~  True()

~ THEN BEGIN 20 // from: 
  SAY #229937 /* ~Do you need to rest?~ */
  IF ~~ THEN REPLY #220673 /* ~Yes.~ */ DO ~RestPartyEx(0,0,FALSE)

~ EXIT
  IF ~~ THEN REPLY #220674 /* ~No.~ */ EXIT
END
