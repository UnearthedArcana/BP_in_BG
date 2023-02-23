
BEGIN ~BPBELLOW~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 29.3
  SAY #229240 /* ~Greetings, surface-dwellers! If it's potions you seek, then my friend can brew somethin' special just for you. You may call me Bellowgulp.~ [BPF101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229241 /* ~Show me your potions.~ */ DO ~SetGlobal("BellowSpokenTo","GLOBAL",1)
SetGlobal("OPENING","LOCALS",1)
StartStore("BPCONC01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229241 /* ~Show me your potions.~ */ DO ~SetGlobal("BellowSpokenTo","GLOBAL",1)
SetGlobal("OPENING","LOCALS",1)
StartStore("D5CONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229242 /* ~Your friend is a giant talking mushroom?~ */ DO ~SetGlobal("BellowSpokenTo","GLOBAL",1)

SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #229243 /* ~Considering how your friend looks, I think I might already have had too many potions.~ */ DO ~SetGlobal("BellowSpokenTo","GLOBAL",1)

SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
END

IF ~~ THEN BEGIN 1 // from: 0.1 0.2
  SAY #229244 /* ~He is not a mere mushroom but a sentient bein' known as a myconid. I'm not surprised you haven't encountered one before. Most live in the lower reaches of the Underdark.~ [BPF102] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #229245 /* ~That's where I met this charmin' feller. An unfortunate wrong turn led me into a deadly field of fungus. I would've died had the Concocter not arrived in time to save me with one of his marvelous elixirs.~ [BPF103] */
  IF ~~ THEN REPLY #229246 /* ~His name is "the Concocter"?~ */ GOTO 3
  IF ~~ THEN REPLY #229247 /* ~How did you two end up here?~ */ GOTO 5
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229248 /* ~You said something about selling potions. I'm buying.~ */ DO ~StartStore("BPCONC01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229248 /* ~You said something about selling potions. I'm buying.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229249 /* ~This is too absurd. I'm off.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #229250 /* ~No, his name is a brief sequence of spores that most people can barely detect, much less interpret. But we've wandered the Underdark together so long that I can now translate his spore-talk for others.~ [BPF104] */
  IF ~~ THEN GOTO 4
END

IF ~~ THEN BEGIN 4 // from: 3.0
  SAY #229251 /* ~His full name is closer to "Keen-Scentin' Concocter of Marvelous Draughts." And even that's not his real name, which even I can't fully understand.~ [BPF105] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229252 /* ~You say he can make potions? Let's see them.~ */ DO ~StartStore("BPCONC01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229252 /* ~You say he can make potions? Let's see them.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229253 /* ~How did you end up here?~ */ GOTO 5
  IF ~~ THEN REPLY #229254 /* ~On second thought, I don't want any mushroom-man-made potions right now.~ */ EXIT
END

IF ~~ THEN BEGIN 5 // from: 2.1 4.1
  SAY #229255 /* ~After my friend rescued me, we wandered the Underdark for a while, searchin' for rare ingredients for his potions and valuable gems for me. Unfortunately, before we found much of either, Baeloth found us.~ [BPF106] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #229256 /* ~The drow would have slain us both, but when he learned of the Concocter's talent for potions, he brought us here to support his "entertainment."~ [BPF107] */
  IF ~~ THEN REPLY #229257 /* ~Why haven't you and the other captives fought back?~ */ GOTO 7
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229258 /* ~That's quite a tale. Now how about you sell me some potions.~ */ DO ~StartStore("BPCONC01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229258 /* ~That's quite a tale. Now how about you sell me some potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229259 /* ~Thanks for the information. It's time for me to go.~ */ EXIT
END

IF ~~ THEN BEGIN 7 // from: 6.0
  SAY #229260 /* ~Oh, we tried all right, as soon as he turned his back. But Baeloth has put some sort of charm on us that makes us obey. You've probably felt its effects yourself.~ [BPF108] */
  IF ~~ THEN REPLY #229261 /* ~How can we break that enchantment?~ */ GOTO 8
END

IF ~~ THEN BEGIN 8 // from: 7.0
  SAY #229262 /* ~We can't, not as far as I can tell. Only Baeloth's will—or maybe his death—can release us. Unfortunately, the same enchantment that keeps us from disobeyin' him also keeps us from fightin' back. As if that would do any good with that powerful djinn by his side.~ [BPF109] */
  IF ~~ THEN GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0
  SAY #229263 /* ~In the meantime, can I help you find a potion? They're all still warm!~ [BPF110] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229264 /* ~What do you have for sale?~ */ DO ~StartStore("BPCONC01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229264 /* ~What do you have for sale?~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229265 /* ~No, I've got all I need for now.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 10 // from: 29.4
  SAY #229266 /* ~Way to go, <CHARNAME>! You've been really terrific down in the pits. Do you need some more potions? My buddy the Concocter is ready to squirt out some more.~ [BPF201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229267 /* ~That's just what I need, more potions. Show me what you've got.~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPCONC02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229267 /* ~That's just what I need, more potions. Show me what you've got.~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5CONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229268 /* ~I suppose you enjoy all this fighting. It must sell plenty of potions.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 11
  IF ~~ THEN REPLY #229269 /* ~Wait a second. What do you mean, "squirt out some more"?~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 12
  IF ~~ THEN REPLY #229265 /* ~No, I've got all I need for now.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 10.1
  SAY #229270 /* ~No, th-tha-that's not the way it is! I just try to avoid trouble, and the Concocter is a complete pacifist. And you don't think we get to keep all this money, do ya? It all goes back to Baeloth in the end.~ [BPF202] */
  IF ~~ THEN REPLY #229271 /* ~Being robbed seems a small price to pay for not having to fight in the pits.~ */ GOTO 15
  IF ~~ THEN REPLY #229272 /* ~We really should do something about this Baeloth.~ */ GOTO 16
END

IF ~~ THEN BEGIN 12 // from: 10.2
  SAY #229273 /* ~Haven't you noticed? The Concocter doesn't mix ingredients in flasks and cauldrons and such, the way a gnome alchemist would. He takes the ingredients into his own body, where they blend in exactly the right proportions before he excretes them to make the potions you need.~ [BPF203] */
  IF ~~ THEN REPLY #229274 /* ~That's very... unusual.~ */ GOTO 13
  IF ~~ THEN REPLY #229275 /* ~That's totally disgusting.~ */ GOTO 13
  IF ~~ THEN REPLY #229276 /* ~So I've been drinking the Concocter's—?~ */ GOTO 14
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229277 /* ~I don't want to think about it. Just sell me some potions.~ */ DO ~StartStore("BPCONC02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229277 /* ~I don't want to think about it. Just sell me some potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 13 // from: 12.0 12.1
  SAY #229278 /* ~It certainly beats workin' in one of those expensive and smelly labs that ordinary alchemists use. I've gotten used to the Concocter's, well, mustiness.~ [BPF204] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 14 // from: 12.2
  SAY #229279 /* ~Excretions! Wow, now that I say it out loud, it does sound kind o' icky.~ [BPF205] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 15 // from: 11.0
  SAY #229280 /* ~When you put it that way, I feel even more grateful that Baeloth has found others like you to do the fightin'. I wouldn't last round one in those pits.~ [BPF206] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 16 // from: 11.1
  SAY #229281 /* ~If only we could. This geas he cast on me hardly lets me think of how wonderful it would be if someone like you beat all his challenges. What would he do then, I wonder?~ [BPF207] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 13.0 14.0 15.0 16.0
  SAY #229282 /* ~Now, can we put some new potions in you today?~ [BPF208] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229283 /* ~Yes, show me what you have.~ */ DO ~StartStore("BPCONC02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229283 /* ~Yes, show me what you have.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229284 /* ~No, thanks. I'll be on my way.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 18 // from: 29.5
  SAY #229285 /* ~Hey, <CHARNAME>! The Concocter says he's become your biggest fan! He's glad you've done so well in the arena. Can I show you some of our new potions?~ [BPF301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229286 /* ~Yes, let me see what's available.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPCONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229286 /* ~Yes, let me see what's available.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5CONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229287 /* ~What does a giant mushroom care about my fights?~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 19
  IF ~~ THEN REPLY #229288 /* ~Not now. I'm busy preparing for the next fight.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 18.1
  SAY #229289 /* ~Remember, the Concocter is a myconid. Just because his body is made of fungus instead of meat doesn't mean he doesn't have a heart. What's that, my friend? Oh, he says he doesn't have a heart exactly, but you know what I mean.~ [BPF302] */
  IF ~~ THEN GOTO 20
END

IF ~~ THEN BEGIN 20 // from: 19.0
  SAY #229290 /* ~He wants to be free of this place as much as anyone else. We'd both like to return to roamin' the Underdark in search of strange new fungal growths and valuable gems. You know, respectively.~ [BPF303] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229291 /* ~I need potions, what do you have for sale?~ */ DO ~StartStore("BPCONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229291 /* ~I need potions, what do you have for sale?~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229292 /* ~Thanks for clearing that up.~ */ EXIT
  IF ~~ THEN REPLY #229293 /* ~Time to prepare for my next battle.~ */ EXIT
END

IF ~  Global("TIER","GLOBAL",3)

Global("LAST_BATTLE","GLOBAL",304)

Global("BELLOW_REWARD","GLOBAL",0)

~ THEN BEGIN 21 // from: 
  SAY #229294 /* ~The Concocter says he can hardly believe you get to face Baeloth next! Those who fought him before have all died! Sometimes I'm afraid we'll never be free of that wicked drow.~ [BPF401] */
  IF ~~ THEN REPLY #229295 /* ~I'll do my best to free us all.~ */ GOTO 22
  IF ~~ THEN REPLY #229296 /* ~Knowing that your great big mushroom believes in me will give me the strength to crush my foes.~ */ GOTO 22
  IF ~~ THEN REPLY #229297 /* ~Maybe it's time you lent me a hand then.~ */ GOTO 22
END

IF ~~ THEN BEGIN 22 // from: 21.0 21.1 21.2
  SAY #229298 /* ~Before you face Baeloth, the Concocter has a gift for ya. He's been working on it for a long time, hopin' that someone like you might come along to make use of it.~ [BPF402] */
  IF ~~ THEN REPLY #229299 /* ~Doesn't it strike you as odd that this mushroom-creature makes potions?~ */ DO ~GiveItemCreate("POTN41",LastTalkedToBy(Myself),0,0,0)

SetGlobal("BELLOW_REWARD","GLOBAL",1)

~ GOTO 23
  IF ~~ THEN REPLY #229300 /* ~Let's hope it does some good.~ */ DO ~GiveItemCreate("POTN41",LastTalkedToBy(Myself),0,0,0)

SetGlobal("BELLOW_REWARD","GLOBAL",1)

~ GOTO 23
  IF ~~ THEN REPLY #231477 /* ~That's very generous. Thank you.~ */ DO ~GiveItemCreate("POTN41",LastTalkedToBy(Myself),0,0,0)

SetGlobal("BELLOW_REWARD","GLOBAL",1)

~ GOTO 23
END

IF ~~ THEN BEGIN 23 // from: 22.0 22.1 22.2
  SAY #229301 /* ~Not many myconids can make such potions. In fact, only their kings can brew them.~ [BPF403] */
  IF ~~ THEN REPLY #229302 /* ~This Concocter is a king?~ */ GOTO 24
  IF ~~ THEN REPLY #229303 /* ~I'll bite: Tell me how that works.~ */ GOTO 24
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229304 /* ~Save the story for someone more gullible. I could use some more potions.~ */ DO ~StartStore("BPCONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229304 /* ~Save the story for someone more gullible. I could use some more potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("LAST_BATTLE","GLOBAL",304)

Global("BELLOW_REWARD","GLOBAL",1)

~ THEN BEGIN 24 // from: 23.0 23.1 29.6
  SAY #229305 /* ~Myconids are social creatures. Only their kings stand apart from their huddled circles to brew these fabulous concoctions inside their own bodies.~ [BPF404] */
  IF ~~ THEN REPLY #229306 /* ~How did the Concocter end up with you, then?~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 25
  IF ~~ THEN REPLY #229307 /* ~Don't remind me I've been drinking your friend's... bodily fluids.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 25
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229308 /* ~All this talk is making me thirsty. I could use some more potions.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPCONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229308 /* ~All this talk is making me thirsty. I could use some more potions.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5CONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229650 /* ~I need nothing at the moment. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 24.0 24.1
  SAY #229309 /* ~While the Concocter was apart from his people, a band of drow raided the myconid grotto. The dark elves prize certain myconid organs for their magical properties. When the Concocter returned with his latest brew, he found his people slaughtered.~ [BPF405] */
  IF ~~ THEN REPLY #229310 /* ~How horrible.~ */ GOTO 26
  IF ~~ THEN REPLY #229311 /* ~I imagine that's a common problem for people who look like tasty mushrooms.~ */ GOTO 26
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("BPCONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 25.0 25.1
  SAY #229313 /* ~He left the grotto, searchin' in vain for any other survivors. Of course, there were none. Then one day the Concocter found me lyin' injured from a fall and healed me with one of his draughts. With all of his people gone, he's looked after me ever since.~ [BPF406] */
  IF ~~ THEN REPLY #229314 /* ~At least that story had a happy middle before Baeloth captured you both.~ */ GOTO 27
  IF ~~ THEN REPLY #229315 /* ~So you're kind of a mushroom by adoption?~ */ GOTO 27
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("BPCONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 27 // from: 26.0 26.1
  SAY #229316 /* ~I suppose you're right. Anyway, your success in the Black Pits has given us both hope that we'll be able to wander the Underdark again soon, free from this insane drow and his "entertainments."~ [BPF407] */
  IF ~~ THEN REPLY #229317 /* ~Thanks for sharing your story.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("BPCONC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  Global("BAELOTH_DEFEATED","GLOBAL",1)

~ THEN BEGIN 28 // from: 
  SAY #229318 /* ~The Concocter knew it from the start! You're a real hero, <CHARNAME>! We'll tell everyone we meet in the Underdark about the champion of the Black Pits!~ [BPTZ107] */
  IF ~~ THEN DO ~SmallWait(15)

CreateVisualEffectObject("spdimndr","BPBELLOW")

PlaySound("EFF_M13")

SmallWait(45)

Deactivate("BPBELLOW")

~ EXIT
END

IF ~  True()

~ THEN BEGIN 29 // from: 
  SAY #232142 /* ~Howdy, <CHARNAME>! What can I do ya fer?~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("BPCONC01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("BPCONC02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
         Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("BPCONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("D5CONC02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229312 /* ~I could use some more potions.~ */ DO ~StartStore("D5CONC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 10
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 18
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 24
  IF ~~ THEN REPLY #229781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
