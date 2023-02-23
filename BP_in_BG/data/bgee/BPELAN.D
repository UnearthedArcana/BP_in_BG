
BEGIN ~BPELAN~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 22.3
  SAY #29515 /* ~Yes! More mortals to twist in agony upon the battlefield. Were I not enjoying the sight so much, I would be tempted to step into the arena and eviscerate you myself.~ [BPH101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29516 /* ~I'd like to see your goods.~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("BPELAN01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29516 /* ~I'd like to see your goods.~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29517 /* ~You don't seem to belong here.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #29518 /* ~The menagerie called, something about an escaped tiger. You wouldn't happen to have seen...~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 2
  IF ~~ THEN REPLY #29519 /* ~That's one rotten sales pitch. I'm done here.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #29520 /* ~Who are you to judge where I belong, <RACE>? Baeloth is one of my most valued customers. When he invited me here, I welcomed the opportunity to display my finely crafted magical garments to hundreds of spectators from across the realms.~ [BPH102] */
  IF ~~ THEN REPLY #29521 /* ~So you aren't under a geas? You could leave any time you want to?~ */ GOTO 3
  IF ~~ THEN REPLY #29522 /* ~You mean you came here on purpose?~ */ GOTO 4
  IF ~~ THEN REPLY #29523 /* ~Oh, so you're like a caterer of clothing?~ */ GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 0.2 1.2
  SAY #29524 /* ~Do not test my patience with your primitive attempts at humor. I am of the rakshasa, a people ancient before yours learned to scratch out a spark on flints. Do not forget that I am Baeloth's guest, while you are his slave.~ [BPH103] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29525 /* ~Show me your goods.~ */ DO ~StartStore("BPELAN01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29525 /* ~Show me your goods.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29526 /* ~I've had it with you.~ */ EXIT
END

IF ~~ THEN BEGIN 3 // from: 1.0
  SAY #29527 /* ~Baeloth would never cast such a spell on an honored guest. And why would I wish to leave?~ [BPH104] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 4 // from: 1.1
  SAY #29528 /* ~Of course I came willingly, and why not?~ [BPH105] */
  IF ~~ THEN GOTO 5
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #29529 /* ~Baeloth is known for his especially horrific tableaus. His name is whispered in reverent tones by all who relish bloodsport.~ [BPH106] */
  IF ~~ THEN GOTO 6
END

IF ~~ THEN BEGIN 6 // from: 5.0
  SAY #29530 /* ~Now, shall I begin fitting you for a burial shroud?~ [BPH107] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29531 /* ~Let's see these boots, cloaks, and girdles.~ */ DO ~StartStore("BPELAN01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29531 /* ~Let's see these boots, cloaks, and girdles.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29532 /* ~Forget it. I'm done here.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 7 // from: 22.4
  SAY #29533 /* ~So, you have not yet been eviscerated. You may allay my disappointment by buying more of my fine clothing.~ [BPH201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPELAN02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29264 /* ~What do you have for sale?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29534 /* ~What's your problem with me?~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 8
  IF ~~ THEN REPLY #29535 /* ~If that's your attitude, you can find another customer.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #29536 /* ~Your scent is even more offensive than usual for a mortal, and you show me no deference. Were I not Baeloth's guest, I would tear out your innards with my bare claws. The singular virtue of your kind is the way you scream and writhe while being torn limb from limb.~ [BPH202] */
  IF ~~ THEN REPLY #29537 /* ~And how exactly did you come to know that?~ */ GOTO 9
  IF ~~ THEN REPLY #29538 /* ~Do you make a habit of tearing apart us mortals?~ */ GOTO 9
  IF ~~ THEN REPLY #29539 /* ~You'd better think twice before trying to eviscerate me.~ */ GOTO 9
END

IF ~~ THEN BEGIN 9 // from: 8.0 8.1 8.2
  SAY #29540 /* ~Oh, you would be surprised at how easily one becomes carried away while appraising a mortal for alterations. Now then, shall I take your measurements for a new garment?~ [BPH203] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29541 /* ~I suppose I do need some new things. Show me your stock.~ */ DO ~StartStore("BPELAN02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29541 /* ~I suppose I do need some new things. Show me your stock.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29542 /* ~It's really saying something that you're only the second creepiest vendor at this booth.~ */ GOTO 10
  IF ~~ THEN REPLY #29543 /* ~On second thought, these old things are still good enough for a while longer.~ */ EXIT
END

IF ~~ THEN BEGIN 10 // from: 9.1
  SAY #29544 /* ~I see you find Xithiss's silence as disturbing as his appearance. He should never have defied the will of Baeloth. After subduing the illithid, Baeloth drilled the mind flayer's telepathy right out of its brain.~ [BPH204] */
  IF ~~ THEN GOTO 11
END

IF ~~ THEN BEGIN 11 // from: 10.0
  SAY #29545 /* ~The ghastly wretch can speak the common tongue well enough, but it pains the monster to be reduced to what it considers such a crude form of communication.~ [BPH205] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29546 /* ~Ew. Just show me your stock.~ */ DO ~StartStore("BPELAN02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29546 /* ~Ew. Just show me your stock.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29547 /* ~I see now why you and Baeloth are friends.~ */ EXIT
  IF ~~ THEN REPLY #29548 /* ~That's enough nightmare fuel for one day. Have fun scaring the other customers.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 12 // from: 22.5
  SAY #29549 /* ~Bah! Much as I appreciate Baeloth's entertainment, I cannot condone his cosseting you to please the crowd.~ [BPH301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29550 /* ~Show me your new garments.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29550 /* ~Show me your new garments.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #29551 /* ~What cosseting? I'm fighting for my life out there.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 13
  IF ~~ THEN REPLY #29552 /* ~Just how close are you and Baeloth? You're starting to speak like him.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 13
END

IF ~~ THEN BEGIN 13 // from: 12.1 12.2
  SAY #29553 /* ~Fie on you! Obviously, he has chosen opponents with subtle weaknesses, invisible to the eyes of the audience. How else could you have come so far with your obviously limited abilities?~ [BPH302] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29550 /* ~Show me your new garments.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29550 /* ~Show me your new garments.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29554 /* ~Once I dispel Baeloth's geas, I'll be glad to demonstrate my limited abilities on you and him both.~ */ GOTO 14
  IF ~~ THEN REPLY #29555 /* ~There's no point in talking to you.~ */ EXIT
END

IF ~~ THEN BEGIN 14 // from: 13.1
  SAY #29556 /* ~There! That is the fighting spirit that seduced Baeloth into going easy on you. No doubt he hopes to raise tension among the less sophisticated members of the audience. But I, who have used mortals as my playthings for centuries, am not fooled.~ [BPH303] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29550 /* ~Show me your new garments.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29550 /* ~Show me your new garments.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #29557 /* ~Good for you, kitty cat.~ */ EXIT
  IF ~~ THEN REPLY #29555 /* ~There's no point in talking to you.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 15 // from: 22.6
  SAY #29558 /* ~Now you have gone too far. Baeloth will not stand for this insolence!~ [BPH401] */
  IF ~~ THEN REPLY #29559 /* ~If by "insolence," you mean "my many triumphs"... Well, then I still don't understand.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 16
  IF ~~ THEN REPLY #29560 /* ~Watch your step, kitty cat, or after I deal with Baeloth I'll come back for you.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 17
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #7069 /* ~Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.0
  SAY #29562 /* ~You were not brought here to triumph. You were brought here to die. It is Baeloth's first rule that everyone is brought to the Black Pits to die.~ [BPH402] */
  IF ~~ THEN REPLY #29563 /* ~Then it's time someone changed the rules.~ */ GOTO 18
  IF ~~ THEN REPLY #29564 /* ~Everyone but the audience and special guests like you, right?~ */ GOTO 19
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.1
  SAY #29565 /* ~Have a care, <RACE>. Since I am Baeloth's guest, only courtesy constrains me from rending you sinew from bone.~ [BPH403] */
  IF ~~ THEN REPLY #29566 /* ~Without the rules of courtesy, we'd be little more than savages.~ */ GOTO 18
  IF ~~ THEN REPLY #29567 /* ~What if, for the sake of argument, you weren't constrained?~ */ GOTO 20
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 16.0 17.0
  SAY #29568 /* ~Only Baeloth makes the rules here, but you are right about one thing. It may be time to change those rules.~ [BPH404] */
  IF ~~ THEN REPLY #29569 /* ~What do you mean by that?~ */ GOTO 20
  IF ~~ THEN REPLY #29570 /* ~I've seen that look before, usually on the face of a cat about to pounce on a mouse. What are you planning?~ */ GOTO 20
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 19 // from: 16.1
  SAY #29571 /* ~That's right. But you give me an interesting idea... perhaps it is time that Baeloth changed the rules of the Black Pits.~ [BPH405] */
  IF ~~ THEN REPLY #29569 /* ~What do you mean by that?~ */ GOTO 20
  IF ~~ THEN REPLY #29572 /* ~I call shenanigans! You're up to something. What is it?~ */ GOTO 20
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 20 // from: 17.1 18.0 18.1 19.0 19.1
  SAY #29573 /* ~You shall see soon enough. And you will wish that you had never annoyed me.~ [BPH406] */
  IF ~~ THEN REPLY #29574 /* ~I am not afraid of you, rakshasa.~ */ EXIT
  IF ~~ THEN REPLY #29575 /* ~*gulp*~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 21 // from: 
  SAY #29576 /* ~With pleasure, Baeloth. I was hoping you would grant me the honor of cutting down these impertinent mortals.~ [BPT3B504] */
  IF ~~ THEN EXTERN ~BPTHARDE~ 21
END

IF ~  True()

~ THEN BEGIN 22 // from: 
  SAY #32144 /* ~I take it from the quivering in your jaw that you have need of me.~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("BPELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #29561 /* ~Just show me your latest clothes.~ */ DO ~StartStore("D5ELAN03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 7
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 12
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #32149 /* ~What were you saying earlier?~ */ GOTO 15
  IF ~~ THEN REPLY #29781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
