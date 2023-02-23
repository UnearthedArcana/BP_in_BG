
BEGIN ~BPDEVLIN~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 19.3
  SAY #29391 /* ~W-what do... Oh! M-m-more of your sort. All right, I'll, uh,... I'll—I'll get you whatever you need. My name is De-De-De-De-Devlin Taralon. I deal mainly in ra-ranged weaponry. W-what can I get you?~ [BPJ101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("BPDEVL01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29393 /* ~How did you come to be here, elf?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #29394 /* ~S-s-so what's your s-s-story?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #29395 /* ~I'd... I'd b-b-better not waste time t-t-talking to you. Baeloth will huh-huh-huh... huh-huh-huh-hurt me more. I am a slave to his will, <RACE>. P-p-please don't bring me to his at-tt-tt-attention.~ [BPJ102] */
  IF ~~ THEN REPLY #29396 /* ~It's all right. I don't want to cause you any more trouble.~ */ GOTO 2
  IF ~~ THEN REPLY #29397 /* ~You're a jittery fellow. What has Baeloth done to you?~ */ GOTO 2
  IF ~~ THEN REPLY #29398 /* ~Show some backbone, elf!~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1 1.2
  SAY #29399 /* ~F-f-forget I said anything! Please! J-j-just... buy something before he c-come-comes over. I—I don't wish to annoy him further...~ [BPJ103] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("BPDEVL01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 3 // from: 19.4
  SAY #29400 /* ~You... you're—you're still alive! How? B-B-Baeloth surely would have destroyed you by now! Or... or p-perhaps he is merely t-toying with you...~ [BPJ201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPDEVL02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29401 /* ~Maybe I'm the one toying with him. Maybe you should think about that and tell me what you know of his weaknesses.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 4
  IF ~~ THEN REPLY #29402 /* ~I know you're scared, but if we band together he can't control us all.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #29403 /* ~Bu-bu-but—but you wouldn't torment me as he has, wo-would you?~ [BPJ202] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.0
  SAY #29404 /* ~N-n-no! I don't dare cross him again. His sav-sav-sav-savagery knows no—knows no bounds! Please, hurry and—and take what you—you—you need before he sees us t-talking!~ [BPJ203] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("BPDEVL02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29405 /* ~Why would he care that you're talking to me?~ */ GOTO 6
  IF ~~ THEN REPLY #29406 /* ~I don't need anything right now. Farewell.~ */ EXIT
  IF ~~ THEN REPLY #29407 /* ~I'll come back when you've grown a spine.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 5.1
  SAY #29408 /* ~It's n-n-not you, it's m-m-me. Baeloth has a special place in his b-b-black heart for torturing me. He g-g-g—he gladly takes any excuse to place me in the—the... the... the... the pain room.~ [BPJ204] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("BPDEVL02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29409 /* ~That sounds bad. I understand why you're frightened.~ */ GOTO 7
  IF ~~ THEN REPLY #31482 /* ~Man up, Devlin! Or elf up, or whatever it is you do. Don't be such a coward.~ */ GOTO 7
  IF ~~ THEN REPLY #29410 /* ~I don't have time for this.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2
  SAY #29411 /* ~P-p-please, just t-t-tell me what you need, and g-g-g-go.~ [BPJ205] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("BPDEVL02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29392 /* ~I need ranged weaponry and ammunition. What do you have for sale?~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29412 /* ~What a pathetic sight you are.~ */ EXIT
  IF ~~ THEN REPLY #15320 /* ~Goodbye.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 8 // from: 19.5
  SAY #29413 /* ~Huzzah! You really sh-showed Baeloth this time. I think you might go all the way!~ [BPJ301] */
  IF ~~ THEN REPLY #29414 /* ~Are you stammering less?~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 9
  IF ~~ THEN REPLY #29415 /* ~All the way?~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 10
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29416 /* ~Thanks. Now show me what you have for sale.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPDEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29416 /* ~Thanks. Now show me what you have for sale.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #29417 /* ~M-m-maybe. Yes, I think so. Funny, I—I hadn't noticed.~ [BPJ302] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29418 /* ~Good for you, Devlin. Now show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29418 /* ~Good for you, Devlin. Now show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29419 /* ~Why do you think that is?~ */ GOTO 11
  IF ~~ THEN REPLY #29420 /* ~Boo!~ */ GOTO 12
END

IF ~~ THEN BEGIN 10 // from: 8.1
  SAY #29421 /* ~Very f-few contestants have won ten battles. And only once buh-before has anyone beaten all fifteen. Then B-Baeloth himself stepped in to finish the winning streak.~ [BPJ303] */
  IF ~~ THEN REPLY #29422 /* ~That's good to know. I want a chance to defeat Baeloth once and for all.~ */ GOTO 14
  IF ~~ THEN REPLY #29423 /* ~How do you like my chances of taking down Baeloth?~ */ GOTO 14
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29424 /* ~Good to know. Now show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29424 /* ~Good to know. Now show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 9.1
  SAY #29425 /* ~Since you've won so many b-battles, I've started hoping that these "e-entertainments" will come to an end.~ [BPJ304] */
  IF ~~ THEN REPLY #29426 /* ~That's my plan. Just hold on a little longer, and I'll free us all.~ */ GOTO 14
  IF ~~ THEN REPLY #29427 /* ~Hey, keep your voice down. I don't want anybody tipping off Baeloth before I'm ready.~ */ GOTO 15
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29424 /* ~Good to know. Now show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29424 /* ~Good to know. Now show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 9.2
  SAY #29428 /* ~Aaahh! W-why—why—why would you d-d-do-do that?!~ [BPJ305] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29429 /* ~Sorry, I couldn't help it. Maybe you should just show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29429 /* ~Sorry, I couldn't help it. Maybe you should just show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29430 /* ~You can't let your guard down like that, Devlin. Anything could happen at any time. You need to be ready.~ */ GOTO 13
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29431 /* ~Stow it, you coward. Show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29431 /* ~Stow it, you coward. Show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.1
  SAY #29432 /* ~I—I do—I do—I—I don't think I can t-take mu-mu-mu-mu-much more.~ [BPJ306] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29433 /* ~Just show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29433 /* ~Just show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29434 /* ~I'll give you a little time to recover.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 10.0 10.1 11.0
  SAY #29435 /* ~If anyone can d-d-do it, it's you!~ [BPJ307] */
  IF ~~ THEN REPLY #29436 /* ~Thanks for the vote of confidence. I'd better get on with it.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 11.1
  SAY #29438 /* ~Mu-mu-mu-mum's the word!~ [BPJ308] */
  IF ~~ THEN REPLY #7069 /* ~Farewell.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("TIER","GLOBAL",3)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 16 // from: 19.6
  SAY #29439 /* ~I never th-thought this day would come again. Oh, surely Baeloth will have to f-f-fight you now!~ [BPJ401] */
  IF ~~ THEN REPLY #29440 /* ~After I defeat him, you and all the others will be free.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 17
  IF ~~ THEN REPLY #29441 /* ~The last time this day came, it didn't work out so well, did it?~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 17
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29442 /* ~Show me what you have in stock.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPDEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29442 /* ~Show me what you have in stock.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #7069 /* ~Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #29443 /* ~You've done even b-better than the last ch-champion. Y-you're not j-j-just a—a great pit fighter, you're a real hero!~ [BPJ402] */
  IF ~~ THEN REPLY #29444 /* ~Thanks for your faith in me, Devlin. I'll try to live up to it.~ */ EXIT
  IF ~~ THEN REPLY #29445 /* ~All right, that's close enough. No hugs, no autographs.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29442 /* ~Show me what you have in stock.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29442 /* ~Show me what you have in stock.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

~ THEN BEGIN 18 // from: 
  SAY #29446 /* ~You're the best, <CHARNAME>! Until you came along, I—I didn't realize how much Baeloth had shaken my courage. I'll try to follow your example from now on and face all my ch-challenges with confidence.~ [BPTZ106] */
  IF ~~ THEN DO ~SmallWait(15)

CreateVisualEffectObject("spdimndr","BPDEVLIN")

PlaySound("EFF_M13")

SmallWait(45)

Deactivate("BPDEVLIN")

~ EXTERN ~BPBELLOW~ 28
END

IF ~  True()

~ THEN BEGIN 19 // from: 
  SAY #32146 /* ~Oh, y-y-you're back.~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("BPDEVL01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("BPDEVL02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("BPDEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("D5DEVL03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 3
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 8
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 16
  IF ~~ THEN REPLY #29781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
