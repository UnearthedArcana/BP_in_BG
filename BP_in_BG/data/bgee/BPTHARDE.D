
BEGIN ~BPTHARDE~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 25.3
  SAY #29836 /* ~What do you interlopers want? If it isn't a light weapon, then off with you!~ [BPC101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("BPTHAR01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29837 /* ~Come now, we're both in the same predicament. What's the harm in being friendly?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #29838 /* ~You're in a bad mood. I guess that's only natural for a slave of the drow.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 2
  IF ~~ THEN REPLY #29839 /* ~Off with me, then.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #29840 /* ~Friendly?! With you surface-walking intruders? Ha! If Baeloth hadn't taken over, my people and I would already have driven you out. Or to your grave, more likely!~ [BPC102] */
  IF ~~ THEN REPLY #29841 /* ~I doubt it. Baeloth may have captured me, but he enslaved you first.~ */ GOTO 2
  IF ~~ THEN REPLY #29842 /* ~Bold words for a slave of the drow.~ */ GOTO 2
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29843 /* ~Delightful as I find your sparkling banter, I came here to buy weapons.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29843 /* ~Delightful as I find your sparkling banter, I came here to buy weapons.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29844 /* ~I don't need this abuse. I'll take my business elsewhere.~ */ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.0 1.1
  SAY #29845 /* ~I'm no more a slave than you are. Maybe a little less!~ [BPC103] */
  IF ~~ THEN REPLY #29846 /* ~How did Baeloth manage to bind all of you?~ */ GOTO 3
  IF ~~ THEN REPLY #29847 /* ~What do you mean, "a little less"?~ */ GOTO 4
  IF ~~ THEN REPLY #29848 /* ~In that case, maybe we should work together to overthrow this Baeloth.~ */ GOTO 8
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #29849 /* ~Through trickery and foul magic, of course. You did notice he's a drow, didn't you?~ [BPC104] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29850 /* ~I noticed. Now, about those weapons you have for sale...~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29850 /* ~I noticed. Now, about those weapons you have for sale...~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29851 /* ~You said you're less a slave than I am. What did you mean by that?~ */ GOTO 4
  IF ~~ THEN REPLY #29852 /* ~How can you put up with a drow master? I don't understand why you people haven't overthrown him.~ */ GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 2.1 3.1
  SAY #29853 /* ~I meant only that... arrg, never mind what I meant! You are as much an intruder as Baeloth. This territory belongs to my people, the duergar!~ [BPC105] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29854 /* ~Forget I said anything. Now what do you have for sale?~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29854 /* ~Forget I said anything. Now what do you have for sale?~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29855 /* ~Interesting. Now, let's do some trade.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29855 /* ~Interesting. Now, let's do some trade.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29856 /* ~Curious. You've given me something to think about. Farewell... for now.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2
  SAY #29857 /* ~What do you mean, "you people"?~ [BPC106] */
  IF ~~ THEN REPLY #29858 /* ~I meant, of course, the brave and powerful duergar people.~ */ GOTO 6
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29859 /* ~My apologies. I didn't mean anything. Maybe we should stop talking and just bargain for some of your goods.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29859 /* ~My apologies. I didn't mean anything. Maybe we should stop talking and just bargain for some of your goods.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29860 /* ~What, the duergar? Those coal-smudged, tunnel-crawling rejects of the noble dwarven race?~ */ GOTO 7
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29861 /* ~You flatter just like the drow. Now, have you come to do business? I've no stomach for your banter.~ [BPC107] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29862 /* ~Yes, I'd like to shop.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29862 /* ~Yes, I'd like to shop.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29367 /* ~I'll be on my way.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 5.2
  SAY #29863 /* ~I'd drive a pick through that soft skull of yours! That is, if Baeloth didn't command otherwise. Now, buy something or bother me no more!~ [BPC108] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29525 /* ~Show me your goods.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29525 /* ~Show me your goods.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29367 /* ~I'll be on my way.~ */ EXIT
END

IF ~~ THEN BEGIN 8 // from: 2.2
  SAY #29864 /* ~Don't be stupid! Baeloth's arcane powers are greater than you might imagine from his insipid demeanor. With that damned djinn Najim at his side, Baeloth is unstoppable.~ [BPC109] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29865 /* ~Well, when the going gets tough, the tough go shopping. Show me what you have for sale.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29865 /* ~Well, when the going gets tough, the tough go shopping. Show me what you have for sale.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29866 /* ~Unstoppable, you say? Perhaps we should simply bide our time. Until then, let's see what you have to sell.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29866 /* ~Unstoppable, you say? Perhaps we should simply bide our time. Until then, let's see what you have to sell.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29867 /* ~Maybe he is unstoppable... for now. I'll bide my time.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 9 // from: 25.4
  SAY #29868 /* ~Your prowess in battle has become well known, <RACE>. Perhaps it was my weapons that tipped the balance in your favor.~ [BPC201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29869 /* ~I need weapons. Show me what you have.~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPTHAR02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29869 /* ~I need weapons. Show me what you have.~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29870 /* ~Perhaps. And perhaps you could fashion a blade that would cut Baeloth down.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 10
  IF ~~ THEN REPLY #29643 /* ~I have no need of your goods now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #29871 /* ~To cut down Baeloth? Don't talk like that. He'll hear you! Besides, under the effects of his geas, you could never use it against him.~ [BPC202] */
  IF ~~ THEN REPLY #29872 /* ~I could if he decided to fight me in the arena.~ */ GOTO 11
  IF ~~ THEN REPLY #29873 /* ~I'm not so sure about that. Not everyone here is under a geas.~ */ GOTO 12
  IF ~~ THEN REPLY #29874 /* ~Don't you want to be free of him?~ */ GOTO 13
END

IF ~~ THEN BEGIN 11 // from: 10.0 12.0 13.0
  SAY #29875 /* ~He's too clever to fall for that. I've never seen anyone make him lose his cool.~ [BPC203] */
  IF ~~ THEN GOTO 14
END

IF ~~ THEN BEGIN 12 // from: 10.1
  SAY #29876 /* ~The only ones not controlled by his geas are his friends and allies, every bit as powerful as he is.~ [BPC204] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 13 // from: 10.2
  SAY #29877 /* ~Of course, you fool! What loyal duergar wouldn't? Unlike my cousin Gorch, I just have no illusions about its happening.~ [BPC205] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 14 // from: 11.0
  SAY #29878 /* ~Now, are you here to buy some weapons or talk my ear off? What'll it be?~ [BPC206] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29504 /* ~Show me your wares.~ */ DO ~StartStore("BPTHAR02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29504 /* ~Show me your wares.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29879 /* ~That's all for now.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 15 // from: 25.5
  SAY #29880 /* ~Only Laduguer knows how you have survived this long. It must be because of the superior weapons I have provided. Have you come to trade for my latest stock?~ [BPC301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29881 /* ~Show me your stock.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPTHAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29881 /* ~Show me your stock.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29882 /* ~Where did you say you were when Baeloth conquered your people?~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 16
  IF ~~ THEN REPLY #7069 /* ~Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #29883 /* ~I didn't—! I don't—! You don't know what you're talking about. Whatever that blabbermouth Gorch has said, it's a lie!~ [BPC302] */
  IF ~~ THEN REPLY #29884 /* ~Wow, you fold just like a cheap tabard.~ */ GOTO 17
  IF ~~ THEN REPLY #29885 /* ~I never said Gorch told me.~ */ GOTO 17
  IF ~~ THEN REPLY #29886 /* ~There, now you have something to think about.~ */ EXIT
END

IF ~~ THEN BEGIN 17 // from: 16.0 16.1
  SAY #29887 /* ~Who else would know— I mean, who else would think— That is, he—he's always spreading lies about me! You shouldn't believe anything he says.~ [BPC303] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29888 /* ~Got it. Show me your stock.~ */ DO ~StartStore("BPTHAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29888 /* ~Got it. Show me your stock.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29889 /* ~Don't bother. I think I know who's a liar around here.~ */ EXIT
  IF ~~ THEN REPLY #29890 /* ~Don't worry. Your secret is safe with me.~ */ GOTO 18
END

IF ~~ THEN BEGIN 18 // from: 17.2
  SAY #31478 /* ~I don't have a secret! There isn't any secret!~ [BPC304] */
  IF ~~ THEN REPLY #31479 /* ~Farewell.~ */ EXIT
  IF ~~ THEN REPLY #31480 /* ~*wink*~ */ EXIT
  IF ~~ THEN REPLY #31481 /* ~Watch your back, Thardek.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 19 // from: 25.6
  SAY #29891 /* ~Purchase what you want quickly, outsider. I have no wish to speak with you.~ [BPC401] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPTHAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29893 /* ~Tell me something, Thardek. How does it feel to betray your own people?~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 20
  IF ~~ THEN REPLY #29894 /* ~What a coincidence! I have no wish to speak with you, either.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 19.1
  SAY #29895 /* ~A duergar's first duty is to himself! If I had resisted Baeloth, I would have perished just as you shall when he deals with you in the arena.~ [BPC402] */
  IF ~~ THEN REPLY #29896 /* ~It might be the other way around. I wonder what your people will do with you after I free them.~ */ EXIT
  IF ~~ THEN REPLY #29897 /* ~I might surprise you. I'm tricky that way.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29898 /* ~Enough banter. Show me your weapons.~ */ DO ~StartStore("BPTHAR03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29898 /* ~Enough banter. Show me your weapons.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 
  SAY #29899 /* ~Baeloth! Grant me a place at your side in this battle. I wish to see these creatures slaughtered firsthand!~ [BPT3B505] */
  IF ~~ THEN EXTERN ~BPGORCH~ 20
END

IF ~~ THEN BEGIN 22 // from: 
  SAY #29900 /* ~You have driven me to it, cousin, with your whispered insinuations.~ [BPT3B507] */
  IF ~~ THEN EXTERN ~BPGORCH~ 21
END

IF ~~ THEN BEGIN 23 // from: 
  SAY #29901 /* ~I won't deny it any longer. Baeloth found me before he came to our warrens. He spared my life in exchange for information on our defenses. With his mighty spells, he would have overcome them anyway. Why should I have sacrificed my life to buy the rest of you just a little time?~ [BPT3B509] */
  IF ~~ THEN EXTERN ~BPGORCH~ 22
END

IF ~~ THEN BEGIN 24 // from: 
  SAY #29902 /* ~You are welcome to try, cousin. You cannot hope to succeed when I stand beside Baeloth!~ [BPT3B511] */
  IF ~~ THEN EXTERN ~BPBAELOT~ 70
END

IF ~  True()

~ THEN BEGIN 25 // from: 
  SAY #32140 /* ~I see you have returned—what is it this time?~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~StartStore("BPTHAR01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~StartStore("BPTHAR02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~StartStore("BPTHAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29892 /* ~Let me see your weapons.~ */ DO ~StartStore("D5THAR03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 9
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 15
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 19
  IF ~~ THEN REPLY #29781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
