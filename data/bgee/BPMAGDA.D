
BEGIN ~BPMAGDA~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 28.4
  SAY #29715 /* ~You fools have no idea what you're in for. You'd best arm yourselves as heavily as possible. I can help with that, if you've enough coin.~ [BPB101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("BPMAGD01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("D5MAGD01",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29716 /* ~What's a duergar like you doing in a place like this? Oh, wait. Never mind. With a sour face like yours, you fit right in.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #29717 /* ~Why do you look so grim?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #29718 /* ~I find little cause for amusement since that drow unleashed his monsters on us. Which never would have worked if we had EVEN ONE WORTHY MAN AMONG US!~ [BPB102] */
  IF ~~ THEN REPLY #29719 /* ~Who are you talking to?~ */ GOTO 2
  IF ~~ THEN REPLY #29720 /* ~I'm sure everyone resisted as well as possible.~ */ GOTO 3
  IF ~~ THEN REPLY #29721 /* ~Why lay all the blame at the feet of the men? I thought duergar women were fierce warriors, too.~ */ GOTO 4
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #29722 /* ~No one who MATTERS. No one who LISTENS. No one who ANSWERS me, anyway.~ [BPB103] */
  IF ~~ THEN REPLY #29723 /* ~You keep looking at that duergar selling light armor. Who is he?~ */ GOTO 3
  IF ~~ THEN REPLY #29724 /* ~Maybe it's none of my business—~ */ GOTO 3
  IF ~~ THEN REPLY #29725 /* ~Tell me how you really feel.~ */ GOTO 3
END

IF ~~ THEN BEGIN 3 // from: 1.1 2.0 2.1 2.2
  SAY #29726 /* ~Did you come here for gossip or arms?~ [BPB104] */
  IF ~~ THEN REPLY #29727 /* ~Gossip, really. But I see you're all out, so farewell.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29728 /* ~For arms, of course. Show me what weapons you have for sale.~ */ DO ~StartStore("BPMAGD01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29728 /* ~For arms, of course. Show me what weapons you have for sale.~ */ DO ~StartStore("D5MAGD01",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 1.2
  SAY #29729 /* ~Do not mistake me for a mere warrior, outsider. I am a cleric of Laduguer, the Gray Protector.~ [BPB105] */
  IF ~~ THEN REPLY #29730 /* ~And that's better than a warrior how?~ */ GOTO 5
  IF ~~ THEN REPLY #29731 /* ~Yeah? How's that working out for you?~ */ GOTO 5
  IF ~~ THEN REPLY #29732 /* ~Pity your god couldn't protect you from Baeloth.~ */ GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 4.0 4.1 4.2
  SAY #29733 /* ~How dare—? ...But, in your own insufferable manner, you make a good point. Laduguer must have turned away from us. We must prove ourselves worthy before he lends us his protection again.~ [BPB106] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29734 /* ~If I were not so starved for conversation, I would pay you in kind for your insolence. TOO BAD THERE ISN'T A MAN HERE TO STAND UP FOR ME. I'M WAITING... Ugh, it's no use. Now, do you intend to buy something or just continue to annoy me?~ [BPB107] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("BPMAGD01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29437 /* ~Show me what you have for sale.~ */ DO ~StartStore("D5MAGD01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29735 /* ~Maybe I'll come back when it's a better time.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 
  SAY #29736 /* ~That's right, LIGHT ON YOUR FEET so you can RUN AWAY from talking to your own WIFE!~ [BPE102] */
  IF ~~ THEN REPLY #29737 /* ~Magda is your wife? Why won't you talk to her?~ */ EXTERN ~BPBRENDA~ 1
  IF ~~ THEN REPLY #29738 /* ~That Magda has one rough tongue on her. I don't blame you for avoiding her.~ */ EXTERN ~BPBRENDA~ 2
  IF ~~ THEN REPLY #29739 /* ~This sounds like none of my business.~ */ EXTERN ~BPBRENDA~ 3
END

IF ~~ THEN BEGIN 8 // from: 
  SAY #29740 /* ~At least this time it's not only ME he won't talk to! Come to think of it, I don't know if that's any better.~ [BPE104] */
  IF ~~ THEN EXTERN ~BPBRENDA~ 5
END

IF ~~ THEN BEGIN 9 // from: 
  SAY #29741 /* ~See? SEE how he's been?~ [BPE106] */
  IF ~~ THEN EXTERN ~BPBRENDA~ 5
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 10 // from: 28.5
  SAY #29742 /* ~You've lasted longer than anyone expected. I'd start taking bets—if ANYONE nearby were MAN enough to SPEAK TO ME.~ [BPB201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29662 /* ~I need equipment, what do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPMAGD02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29662 /* ~I need equipment, what do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5MAGD02",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29743 /* ~Are you and Brendak having a spat?~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 11
  IF ~~ THEN REPLY #29744 /* ~Oh, not this again. I'll come back later.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #29745 /* ~A spat?! Is that what HE calls it? Then why doesn't HE say so TO MY FACE?~ [BPB202] */
  IF ~~ THEN REPLY #29746 /* ~No, Brendak didn't say anything like that.~ */ GOTO 12
  IF ~~ THEN REPLY #29747 /* ~I just assumed—~ */ GOTO 12
  IF ~~ THEN REPLY #29748 /* ~There must be some explanation.~ */ GOTO 12
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1 11.2
  SAY #29749 /* ~Ever since that accursed drow captured us, Brendak hasn't said a word to me. He speaks to anyone else, just not his OWN WIFE.~ [BPB203] */
  IF ~~ THEN REPLY #29750 /* ~Curious.~ */ GOTO 13
  IF ~~ THEN REPLY #29751 /* ~You do have a bit of a temper, you know.~ */ GOTO 14
  IF ~~ THEN REPLY #29752 /* ~I can't say that I blame him.~ */ GOTO 15
END

IF ~~ THEN BEGIN 13 // from: 12.0
  SAY #29753 /* ~Curiosity killed more than a cat, you know.~ [BPB204] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 14 // from: 12.1
  SAY #29754 /* ~TEMPER? I'll show you who has a TEMPER!~ [BPB205] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 12.2
  SAY #29755 /* ~Taking his side, are you?~ [BPB206] */
  IF ~~ THEN GOTO 16
END

IF ~~ THEN BEGIN 16 // from: 13.0 14.0 15.0
  SAY #29756 /* ~Listen, do you want to buy some weapons or not?~ [BPB207] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29757 /* ~Yes, please show me what you've got, ma'am.~ */ DO ~StartStore("BPMAGD02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29757 /* ~Yes, please show me what you've got, ma'am.~ */ DO ~StartStore("D5MAGD02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29758 /* ~No, I'd best be moving along.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 17 // from: 28.6
  SAY #29759 /* ~You sure are getting under Baeloth's skin. If only our duergar men had showed such spirit when Baeloth attacked us. Do you need any new weapons for the fight?~ [BPB301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29760 /* ~Show me what new weapons you have to sell.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPMAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29760 /* ~Show me what new weapons you have to sell.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5MAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("BRENDAK_REVEAL","GLOBAL",0)

~ THEN REPLY #29761 /* ~You seem awfully bitter about Baeloth's defeat of your clan.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 18
  IF ~  Global("BRENDAK_REVEAL","GLOBAL",0)

~ THEN REPLY #29762 /* ~How are things between you and Brendak? Are you two crazy kids talking again?~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 18
  IF ~  Global("BRENDAK_REVEAL","GLOBAL",2)

~ THEN REPLY #29763 /* ~Listen, Magda, Brendak isn't ignoring you by choice. Baeloth threatened to kill one duergar for each word Brendak speaks to you.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

SetGlobal("MAGDA_KNOWS","GLOBAL",1)

~ GOTO 20
  IF ~~ THEN REPLY #29643 /* ~I have no need of your goods now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.1 17.2
  SAY #29764 /* ~As much as I have blamed the others for failing to stop the drow, I too failed in directing the power of Laduguer against our foes. Perhaps Brendak is ashamed of my failure.~ [BPB302] */
  IF ~~ THEN GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #29765 /* ~He still refuses to speak to me, even as he chats with Gorch all the time.~ [BPB303] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29760 /* ~Show me what new weapons you have to sell.~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29760 /* ~Show me what new weapons you have to sell.~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29766 /* ~That's enough family drama for me today. Farewell.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.3
  SAY #29767 /* ~WHAT?! He's suffered the brunt of my anger all this time in silence, but he was only trying to protect the rest of the survivors.~ [BPB304] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29768 /* ~Now that we've settled that, show me what new weapons you have to sell.~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29768 /* ~Now that we've settled that, show me what new weapons you have to sell.~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29769 /* ~He's not the only one who suffered. You're welcome!~ */ EXIT
  IF ~~ THEN REPLY #29770 /* ~Glad I could clear that up for you.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("TIER","GLOBAL",3)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 21 // from: 28.7
  SAY #29771 /* ~I guess you knew what you were in for after all.~ [BPB401] */
  IF ~~ THEN REPLY #29772 /* ~I did my best. That's the most anyone can do.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 22
  IF ~~ THEN REPLY #29773 /* ~There's more to me than meets the eye, and don't you forget it.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 22
  IF ~  Global("BRENDAK_MESSAGE","GLOBAL",1)

~ THEN REPLY #29774 /* ~Listen, Brendak asked me to give you a message. He says it's been hard for him not to talk to you, and he prays Baeloth dies soon so he can tell you so himself.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 23
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29775 /* ~Show me your best new weapons.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPMAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29775 /* ~Show me your best new weapons.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5MAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29333 /* ~On second thought, I don't have time to talk to you.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1
  SAY #29776 /* ~You're not so bad for an outsider. I hope you don't end up like the last champion who fought Baeloth.~ [BPB402] */
  IF ~~ THEN REPLY #29777 /* ~Don't worry. Baeloth did me a favor by giving me so much practice up to this point.~ */ GOTO 24
  IF ~~ THEN REPLY #29778 /* ~Baeloth made his last mistake when he chose me for his "entertainment."~ */ GOTO 24
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29779 /* ~You know what would help? Some new weapons. Show me what you've got.~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29779 /* ~You know what would help? Some new weapons. Show me what you've got.~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 23 // from: 21.2
  SAY #29780 /* ~He asked you to tell me that? What a risk he took! If Baeloth were to find out... Oh, my dear, brave Brendak. Thank you for relaying his words.~ [BPB403] */
  IF ~~ THEN REPLY #29781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29779 /* ~You know what would help? Some new weapons. Show me what you've got.~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29779 /* ~You know what would help? Some new weapons. Show me what you've got.~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 24 // from: 22.0 22.1
  SAY #29782 /* ~Don't be overconfident. Baeloth is treacherous. Don't expect him to face you alone.~ [BPB404] */
  IF ~~ THEN REPLY #29783 /* ~I'll keep that in mind.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29784 /* ~Thanks for the tip. Now, about those weapons...~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29784 /* ~Thanks for the tip. Now, about those weapons...~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

GlobalLT("BPMAGDA_DIALOG","GLOBAL",40)

~ THEN BEGIN 25 // from: 
  SAY #29785 /* ~You've done it, <CHARNAME>! I admit at first I didn't think anyone could free us from that mad drow. Especially not you, anyway.~ [BPTZ108] */
  IF ~~ THEN DO ~SetGlobal("BPMAGDA_DIALOG","GLOBAL",40)

~ EXTERN ~BPBRENDA~ 24
END

IF ~~ THEN BEGIN 26 // from: 
  SAY #29786 /* ~Despite our gratitude, you must not remain here for long. The other members of our clan will not take kindly to finding an outsider among us.~ [BPTZ110] */
  IF ~~ THEN EXTERN ~BPBRENDA~ 25
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

Global("BPMAGDA_DIALOG","GLOBAL",40)

~ THEN BEGIN 27 // from: 
  SAY #29943 /* ~Leave, <CHARNAME>! You cannot hope to defeat all of the duergar.~ [BPTZ121] */
  IF ~~ THEN EXIT
END

IF ~  True()

~ THEN BEGIN 28 // from: 
  SAY #32139 /* ~Go about your business already! I grow tired of your constant jabbering!~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("BPMAGD01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("D5MAGD01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("BPMAGD02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("D5MAGD02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",3)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",3)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",4)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("BPMAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",4)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~StartStore("D5MAGD03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 10
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 17
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 21
  IF ~~ THEN REPLY #29781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
