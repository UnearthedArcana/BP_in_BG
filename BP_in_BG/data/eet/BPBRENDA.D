
BEGIN ~BPBRENDA~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 27.3
  SAY #229319 /* ~More playthings for Baeloth? They dragged off the bodies of the last ones just yesterday! I suppose you've wisely decided that being light on your feet is the only way to prolong your life?~ [BPE101] */
  IF ~~ THEN REPLY #229320 /* ~That's right. What can you show me in some light armor?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ EXTERN ~BPMAGDA~ 7
  IF ~~ THEN REPLY #229321 /* ~How many people has Baeloth summoned here?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 4
  IF ~~ THEN REPLY #229322 /* ~Light armor isn't what I need now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 
  SAY #229323 /* ~It is... a complicated matter. I do not wish to discuss it with you.~ [BPE103] */
  IF ~~ THEN EXTERN ~BPMAGDA~ 8
END

IF ~~ THEN BEGIN 2 // from: 
  SAY #229324 /* ~That is not... Never mind. I will say no more about it.~ [BPE105] */
  IF ~~ THEN EXTERN ~BPMAGDA~ 9
END

IF ~~ THEN BEGIN 3 // from: 
  SAY #229325 /* ~I am glad you understand. There are too many wagging tongues around here already.~ [BPE107] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 0.1
  SAY #229326 /* ~Dozens, perhaps hundreds by now. I try not to become involved, since most don't survive long in the Black Pits. And I have no love for your kind, <RACE>.~ [BPE108] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #229327 /* ~Now, can I sell you some light armor?~ [BPE109] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229328 /* ~Yes, show me what you have for sale.~ */ DO ~StartStore("BPBREN01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229328 /* ~Yes, show me what you have for sale.~ */ DO ~StartStore("D5BREN01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229329 /* ~No, I'd best be moving on.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 6 // from: 27.4
  SAY #229330 /* ~You've made quite a splash in the arena, and I'm not even talking about the blood.~ [BPE201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229331 /* ~I need armor. Show me your stock.~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPBREN02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229331 /* ~I need armor. Show me your stock.~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5BREN02",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229332 /* ~What's wrong between you and Magda? Are you seeing someone else?~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 7
  IF ~~ THEN REPLY #229333 /* ~On second thought, I don't have time to talk to you.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1
  SAY #229334 /* ~Of course not! I love Magda. It's just... I don't want anything to happen to any of us. Baeloth torments us all, and he knows how much I love my wife.~ [BPE202] */
  IF ~~ THEN REPLY #229335 /* ~You aren't making any sense.~ */ GOTO 9
  IF ~~ THEN REPLY #229336 /* ~Has he forbidden you from speaking to her?~ */ GOTO 9
  IF ~~ THEN REPLY #229337 /* ~A duergar who loves his wife? You expect me to believe that? I've SEEN your wife, you know.~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.2
  SAY #229338 /* ~You shut your mouth! I love Magda! It's not that I don't want to talk with her. It's just...~ [BPE203] */
  IF ~~ THEN REPLY #229339 /* ~Yes? It's just what?~ */ GOTO 9
  IF ~~ THEN REPLY #221253 /* ~Go on.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 7.0 7.1 8.0 8.1
  SAY #229340 /* ~I've already said too much. I'm supposed to sell you armor. Do you want any?~ [BPE204] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229328 /* ~Yes, show me what you have for sale.~ */ DO ~StartStore("BPBREN02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229328 /* ~Yes, show me what you have for sale.~ */ DO ~StartStore("D5BREN02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229341 /* ~No, we're done here.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

!Global("BRENDAK_REVEAL","GLOBAL",1)

~ THEN BEGIN 10 // from: 27.5
  SAY #229342 /* ~<CHARNAME>, you continue to astonish us with your victories!~ [BPE301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229343 /* ~Let me see your new stock.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPBREN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229343 /* ~Let me see your new stock.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5BREN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("BRENDAK_REVEAL","GLOBAL",0)

~ THEN REPLY #229344 /* ~You continue to astonish Magda with your refusal to talk with her.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

SetGlobal("BRENDAK_REVEAL","GLOBAL",1)

StartCutSceneMode()

CreateVisualEffectObject("spdimndr","BPNAJIM")

PlaySound("EFF_M13")

SmallWait(15)

Activate("BPNAJIM")

SmallWait(75)

ActionOverride("BPNAJIM",StartDialogNoSet(Player1))

~ EXIT
  IF ~~ THEN REPLY #229345 /* ~That's all I wanted to hear.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ EXIT
END

IF ~  Global("BRENDAK_REVEAL","GLOBAL",1)

~ THEN BEGIN 11 // from: 
  SAY #229346 /* ~This could be a trick, but I may never have another chance. Baeloth knows how much I depend on Magda for support during this ordeal. His idea of the perfect torment was to promise he would kill one of my people if I spoke so much as a word to Magda.~ [BPE304] */
  IF ~~ THEN DO ~SetGlobal("BRENDAK_REVEAL","GLOBAL",2)

~ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY #229347 /* ~And he threatened to kill another for every additional word I spoke to her. He knew my silence would infuriate her too, torturing us both in one wicked stroke.~ [BPE305] */
  IF ~~ THEN REPLY #229348 /* ~That's eeeevil!~ */ GOTO 13
  IF ~~ THEN REPLY #229349 /* ~What a clever trick. I may have underestimated this Baeloth.~ */ GOTO 13
  IF ~~ THEN REPLY #229350 /* ~But he didn't warn you against speaking to anyone else, right?~ */ GOTO 14
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #229351 /* ~His cruelty is boundless. No matter how angry Magda became, I could never explain why I appeared to ignore her. But he also never forbade me to speak with anyone else.~ [BPE306] */
  IF ~~ THEN REPLY #229352 /* ~I think I see where this is going.~ */ GOTO 14
END

IF ~~ THEN BEGIN 14 // from: 12.2 13.0
  SAY #229353 /* ~That's right. You could tell her the truth for me.~ [BPE307] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229354 /* ~I'll think about it. In the meantime, show me your new stock.~ */ DO ~StartStore("BPBREN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229354 /* ~I'll think about it. In the meantime, show me your new stock.~ */ DO ~StartStore("D5BREN03",LastTalkedToBy(Myself))

CreateVisualEffectObject("spdimndr","BPBAELOT")

SmallWait(15)

Activate("BPBAELOT")

~ EXIT
  IF ~~ THEN REPLY #229355 /* ~I'll think about it. Farewell.~ */ DO ~CreateVisualEffectObject("spdimndr","BPBAELOT")

SmallWait(15)

Activate("BPBAELOT")

~ EXIT
  IF ~~ THEN REPLY #229356 /* ~No, I don't want to get involved.~ */ GOTO 15
  IF ~~ THEN REPLY #229357 /* ~No, it's much funnier to watch you struggle.~ */ GOTO 15
END

IF ~~ THEN BEGIN 15 // from: 14.2 14.3
  SAY #229358 /* ~Please reconsider! You're the first combatant who has ever given us hope that Baeloth might one day fall.~ [BPE308] */
  IF ~~ THEN DO ~CreateVisualEffectObject("spdimndr","BPBAELOT")

SmallWait(15)

Activate("BPBAELOT")

~ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("TIER","GLOBAL",3)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 16 // from: 27.6
  SAY #229359 /* ~Hail, Champion of the Black Pits! May Laduguer protect you in the battle to come.~ [BPE401] */
  IF ~~ THEN REPLY #229360 /* ~Thank you. It helps to know I have your support.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 17
  IF ~~ THEN REPLY #229361 /* ~It's not as if I haven't been, you know, fighting for my life.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 17
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPBREN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5BREN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229322 /* ~Light armor isn't what I need now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #229362 /* ~Listen, friend—I shouldn't refer to you as a friend, <RACE>, but you have done so much for my people's morale already—can I impose on you as a friend?~ [BPE402] */
  IF ~~ THEN REPLY #229363 /* ~What do you have in mind?~ */ GOTO 19
  IF ~~ THEN REPLY #229364 /* ~A favor for a duergar? Are you out of your gray dwarven mind?~ */ GOTO 18
  IF ~~ THEN REPLY #229365 /* ~Perhaps a goodwill gesture between my people and yours is a good idea.~ */ GOTO 19
END

IF ~~ THEN BEGIN 18 // from: 17.1 19.2
  SAY #229366 /* ~Very well. I should have known better than to ask.~ [BPE403] */
  IF ~~ THEN REPLY #229367 /* ~I'll be on my way.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("BPBREN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("D5BREN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 17.0 17.2
  SAY #229369 /* ~While I am forbidden from speaking to Magda, you are not. Will you pass her a message for me?~ [BPE404] */
  IF ~~ THEN REPLY #229370 /* ~Gladly.~ */ DO ~SetGlobal("BRENDAK_MESSAGE","GLOBAL",1)

~ GOTO 20
  IF ~~ THEN REPLY #21007 /* ~Why not?~ */ DO ~SetGlobal("BRENDAK_MESSAGE","GLOBAL",1)

~ GOTO 20
  IF ~~ THEN REPLY #229371 /* ~Forget it. It's not worth my trouble.~ */ GOTO 18
END

IF ~~ THEN BEGIN 20 // from: 19.0 19.1
  SAY #229372 /* ~Tell her that every day I have gone without talking to her has been agony. I pray for Laduguer to free us from our oppressor so we can be reunited.~ [BPE405] */
  IF ~~ THEN REPLY #229373 /* ~You sound confident that Baeloth will fall.~ */ GOTO 21
  IF ~~ THEN REPLY #229374 /* ~Why don't you tell her yourself, when I've dealt with Baeloth?~ */ GOTO 22
  IF ~~ THEN REPLY #229375 /* ~Is this message going to be much longer? I never could memorize lines.~ */ GOTO 23
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #229376 /* ~I did not have much hope until recently. The one other time Baeloth fought a champion, our hopes were dashed. This time, something tells me it will be different.~ [BPE406] */
  IF ~~ THEN REPLY #229377 /* ~I'll do my best.~ */ EXIT
  IF ~~ THEN REPLY #229378 /* ~You can count on it.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229379 /* ~Show me your new armor.~ */ DO ~StartStore("BPBREN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229379 /* ~Show me your new armor.~ */ DO ~StartStore("D5BREN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 20.1
  SAY #229380 /* ~I will, of course. But just in case something should happen to me in the chaos that will surely follow...~ [BPE407] */
  IF ~~ THEN REPLY #229381 /* ~I understand. You can count on me to give Magda your message.~ */ EXIT
  IF ~~ THEN REPLY #229382 /* ~Chaos? Pft! I'm not afraid of a little chaos.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("BPBREN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("D5BREN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 20.2
  SAY #229383 /* ~No... No, of course, you have a lot on your mind already. I did not mean to impose.~ [BPE408] */
  IF ~~ THEN REPLY #229384 /* ~It's all right. Forget about it.~ */ EXIT
  IF ~~ THEN REPLY #229385 /* ~Just see that it doesn't happen again.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229386 /* ~Just show me your new armor.~ */ DO ~StartStore("BPBREN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229386 /* ~Just show me your new armor.~ */ DO ~StartStore("D5BREN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 
  SAY #229387 /* ~Baeloth knew exactly how to torment me by keeping me from my beloved Magda. Thanks to you, I once more have her strength to add to my own.~ [BPTZ109] */
  IF ~~ THEN EXTERN ~BPMAGDA~ 26
END

IF ~~ THEN BEGIN 25 // from: 
  SAY #229388 /* ~Magda is right, as usual. Go, <CHARNAME>, and take our thanks with you. We cannot defend you against our own people.~ [BPTZ111] */
  IF ~~ THEN DO ~SetGlobalTimer("DINGUER_TIMER","OH9310",25)

~ EXTERN ~BPXITHIS~ 11
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

Global("BPMAGDA_DIALOG","GLOBAL",40)

~ THEN BEGIN 26 // from: 
  SAY #229944 /* ~Make your escape, you fool! My brethren will not suffer the presence of an outsider any longer!~ [BPTZ122] */
  IF ~~ THEN EXIT
END

IF ~  True()

~ THEN BEGIN 27 // from: 
  SAY #232141 /* ~Buy your goods and be quick about it, I have no time for this!~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("BPBREN01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("D5BREN01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("BPBREN02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("D5BREN02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("BPBREN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229368 /* ~Let's take a look at your new armor.~ */ DO ~StartStore("D5BREN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 6
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 10
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 16
  IF ~~ THEN REPLY #229781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
