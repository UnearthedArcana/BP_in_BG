
BEGIN ~BPXITHIS~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 12.3
  SAY #29390 /* ~...~ [BPI101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("BPXITH01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("D5XITH01",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29906 /* ~You're an illithid, right?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #29907 /* ~Mind flayer! Hey, everybody, it's a mind flayer! Cover your head!~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #29390 /* ~...~ [BPI101] */
  IF ~~ THEN REPLY #29908 /* ~Not very talkative, I see.~ */ GOTO 2
  IF ~~ THEN REPLY #29909 /* ~Aren't you supposed to be able to put thoughts in my head or something like that?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #29390 /* ~...~ [BPI101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~StartStore("BPXITH01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~StartStore("D5XITH01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29910 /* ~These one-sided conversations sure are boring. I'm going to find someone who talks.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 3 // from: 12.4
  SAY #29911 /* ~...~ [BPI201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPXITH02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5XITH02",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29912 /* ~I can see you staring daggers at Baeloth. You look like you want to say something.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 4
  IF ~~ THEN REPLY #29913 /* ~Still giving me the silent treatment, are you?~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 5
  IF ~~ THEN REPLY #7069 /* ~Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #29911 /* ~...~ [BPI201] */
  IF ~~ THEN REPLY #29914 /* ~I can't figure out whether you can't or won't speak.~ */ GOTO 5
  IF ~~ THEN REPLY #29915 /* ~Don't you have a mouth or a beak or something under all those tentacles?~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.0 4.1
  SAY #29911 /* ~...~ [BPI201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~StartStore("BPXITH02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29905 /* ~I need rings, wands, and amulets. What do you have for sale?~ [BP_29965] */ DO ~StartStore("D5XITH02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29916 /* ~Sigh. You can't say I didn't try to be friendly.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 6 // from: 12.5
  SAY #29917 /* ~Hsssss! ...~ [BPI301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29918 /* ~Just sell me some rings and things.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPXITH03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29918 /* ~Just sell me some rings and things.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5XITH03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29919 /* ~Don't hiss at me. I'm not the one who enslaved you.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 7
  IF ~~ THEN REPLY #29920 /* ~So you CAN... well, if not talk, then at least make sounds.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 7
END

IF ~~ THEN BEGIN 7 // from: 6.1 6.2
  SAY #29921 /* ~...~ [BPI302] */
  IF ~~ THEN REPLY #29922 /* ~That's better. Glare at Baeloth. He's the one who did this to you.~ */ EXIT
  IF ~~ THEN REPLY #29923 /* ~I know, I don't like him either.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("TIER","GLOBAL",3)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 8 // from: 12.6
  SAY #29924 /* ~<RACE>...~ [BPI401] */
  IF ~~ THEN REPLY #29925 /* ~So you CAN speak!~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 9
  IF ~~ THEN REPLY #29926 /* ~Illithid...~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 9
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29927 /* ~I don't want to hear it. Just show me your rings and things.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPXITH03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29927 /* ~I don't want to hear it. Just show me your rings and things.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5XITH03",LastTalkedToBy(Myself))
~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1
  SAY #29928 /* ~You... must defeat... Baeloth.~ [BPI402] */
  IF ~~ THEN REPLY #29929 /* ~I will, and then we can all go free.~ */ EXIT
  IF ~~ THEN REPLY #29930 /* ~You want to give me a hand with that?~ */ GOTO 10
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29931 /* ~Maybe you can help by offering me a discount. Show me your rings and things.~ */ DO ~StartStore("BPXITH03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29931 /* ~Maybe you can help by offering me a discount. Show me your rings and things.~ */ DO ~StartStore("D5XITH03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #29932 /* ~Can... not. Mind wounded... incomplete.~ [BPI403] */
  IF ~~ THEN REPLY #29933 /* ~You will have justice soon, I swear it.~ */ EXIT
  IF ~~ THEN REPLY #29934 /* ~I'd feel worse about that if I didn't see that hungry look when you stare at my skull.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("BPXITH03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("D5XITH03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

~ THEN BEGIN 11 // from: 
  SAY #29936 /* ~You have my... appreciation, <RACE>. I will not feast on... your brain... today.~ [BPTZ105A] */
  IF ~~ THEN DO ~SmallWait(15)

CreateVisualEffectObject("spdimndr","BPXITHIS")

PlaySound("EFF_M13")

SmallWait(45)

Deactivate("BPXITHIS")

~ EXTERN ~BPDEVLIN~ 18
END

IF ~  True()

~ THEN BEGIN 12 // from: 
  SAY #32145 /* ~(The mind flayer gives you a harsh stare, but says nothing.)~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("BPXITH01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("D5XITH01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("BPXITH02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("D5XITH02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("BPXITH03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29935 /* ~Just show me your rings and things.~ */ DO ~StartStore("D5XITH03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 3
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 6
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 8
  IF ~~ THEN REPLY #29781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
