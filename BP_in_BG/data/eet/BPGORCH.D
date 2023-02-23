
BEGIN ~BPGORCH~

IF ~  GlobalLT("OPENING","LOCALS",1)

OR(2)

Global("TIER","GLOBAL",0)

Global("TIER","GLOBAL",1)

~ THEN BEGIN 0 // from: 23.3
  SAY #229641 /* ~You are Baeloth's latest twerps, aren't you? Ja... well I hope you can at least spit in his eye before you die. That last group should have bought more of my heavy armor!~ [BPD101] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229437 /* ~Show me what you have for sale.~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("BPGORC01",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229437 /* ~Show me what you have for sale.~ */ DO ~SetGlobal("OPENING","LOCALS",1)
StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229642 /* ~Has Baeloth abducted you, too?~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ GOTO 1
  IF ~~ THEN REPLY #229643 /* ~I have no need of your goods now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",1)

~ EXIT
END

IF ~~ THEN BEGIN 1 // from: 0.1
  SAY #229644 /* ~Abducted?! This here is my home! Or at least it was, until that confounded wizard slaughtered my clan after forcing us to dig out this blasted complex.~ [BPD102] */
  IF ~~ THEN REPLY #229645 /* ~Your entire clan?! Why aren't you at Baeloth's throat?~ */ GOTO 2
  IF ~~ THEN REPLY #229646 /* ~You must want revenge.~ */ GOTO 2
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229647 /* ~This sounds like something that isn't my problem. Now show me that armor.~ */ DO ~StartStore("BPGORC01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229647 /* ~This sounds like something that isn't my problem. Now show me that armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 1.0 1.1
  SAY #229648 /* ~Laduguer will punish Baeloth in due time. Until then, his cruel spells prevent us from rebelling. Some days I wish he'd vaporized me along with the others. At least I wouldn't have to suffer this humiliation! Now, what do you want?~ [BPD103] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229649 /* ~Let's have a look at this heavy armor.~ */ DO ~StartStore("BPGORC01",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229649 /* ~Let's have a look at this heavy armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229650 /* ~I need nothing at the moment. Farewell.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",2)

Global("TIER","GLOBAL",2)

~ THEN BEGIN 3 // from: 23.4
  SAY #229651 /* ~Ah, the ones who have stymied Baeloth. He says he wants a good fight, ja, but he really wants good deaths. The longer you deny him yours, the more he will pit you against deadlier foes.~ [BPD201] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229652 /* ~I need armor. What do you have?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("BPGORC02",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229652 /* ~I need armor. What do you have?~ */ DO ~SetGlobal("OPENING","LOCALS",2)
StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229653 /* ~Baeloth underestimated us.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 4
  IF ~~ THEN REPLY #229654 /* ~Didn't your people fight against him first?~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ GOTO 5
  IF ~~ THEN REPLY #229643 /* ~I have no need of your goods now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",2)

~ EXIT
END

IF ~~ THEN BEGIN 4 // from: 3.1
  SAY #229655 /* ~As did I. Perhaps there is yet hope.~ [BPD202] */
  IF ~~ THEN REPLY #229656 /* ~Do you know how we could take the fight to Baeloth?~ */ GOTO 6
  IF ~~ THEN REPLY #229657 /* ~What happened when you fought Baeloth?~ */ GOTO 5
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229652 /* ~I need armor. What do you have?~ */ DO ~StartStore("BPGORC02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229652 /* ~I need armor. What do you have?~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 5 // from: 3.2 4.1
  SAY #229658 /* ~We duergar tried to fight him, but his spells were too powerful for us to resist. Funny, not everyone was at that battle. I still wonder what became of Thardek just before and during the battle. He returned only when it was over and Baeloth had already placed me here to serve his gladiators.~ [BPD203] */
  IF ~~ THEN REPLY #229656 /* ~Do you know how we could take the fight to Baeloth?~ */ GOTO 6
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229659 /* ~Interesting... Now, let's see some of that armor.~ */ DO ~StartStore("BPGORC02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229659 /* ~Interesting... Now, let's see some of that armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229660 /* ~Interesting... Now I must be moving on.~ */ EXIT
END

IF ~~ THEN BEGIN 6 // from: 4.0 5.0
  SAY #229661 /* ~Perhaps you could force his hand by depleting his supply of minions, but he continually brings in more and more exotic creatures.~ [BPD204] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229662 /* ~I need equipment, what do you have for sale?~ */ DO ~StartStore("BPGORC02",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229662 /* ~I need equipment, what do you have for sale?~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229663 /* ~Thanks. That's all for now.~ */ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",3)

Global("TIER","GLOBAL",3)

GlobalLT("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 7 // from: 23.5
  SAY #229664 /* ~Do mine eyes deceive me? Alive and well, hale and hearty? Baeloth must have been furious to see you walk out of the arena after your most recent victory. His mask is slipping.~ [BPD301] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229343 /* ~Let me see your new stock.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("BPGORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229343 /* ~Let me see your new stock.~ */ DO ~SetGlobal("OPENING","LOCALS",3)
StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229665 /* ~I will keep pushing him until he finally breaks.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 8
  IF ~~ THEN REPLY #229666 /* ~Your cousin Thardek sure looks nervous these days.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ GOTO 9
  IF ~~ THEN REPLY #229643 /* ~I have no need of your goods now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",3)

~ EXIT
END

IF ~~ THEN BEGIN 8 // from: 7.1
  SAY #229667 /* ~I want to believe you will continue to prevail, but I have been disappointed in the past. If you rise up to challenge Baeloth, I will be the first to cheer your name when he falls.~ [BPD302] */
  IF ~~ THEN REPLY #229668 /* ~What do you mean, "to challenge Baeloth"?~ */ GOTO 10
  IF ~~ THEN REPLY #229669 /* ~Thardek doesn't seem half as supportive as you do.~ */ GOTO 9
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 9 // from: 7.2 8.1
  SAY #229671 /* ~I have noticed the same. Sometimes I wonder why Thardek was nowhere to be seen when Baeloth first attacked. He showed up only after the battle, almost as if he expected... no, I cannot bear to think that.~ [BPD303] */
  IF ~~ THEN REPLY #229672 /* ~You think Thardek is a traitor?~ */ GOTO 13
  IF ~~ THEN REPLY #229673 /* ~Spit it out. What are you thinking?~ */ GOTO 13
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 10 // from: 8.0
  SAY #229674 /* ~A few months back, a group defeated all fifteen of Baeloth's prepared "entertainments." Infuriated by the champions' success, Baeloth entered the pits to face them himself.~ [BPD304] */
  IF ~~ THEN REPLY #229675 /* ~What happened?~ */ GOTO 11
  IF ~~ THEN REPLY #229676 /* ~How did that work out for them?~ */ GOTO 11
  IF ~~ THEN REPLY #229677 /* ~Interesting. Perhaps I can force Baeloth to face me in combat.~ */ GOTO 12
END

IF ~~ THEN BEGIN 11 // from: 10.0 10.1
  SAY #229678 /* ~As you can see, Baeloth is still here. If you sift the sand in the Black Pits thoroughly, you may turn up some bits of some former champions.~ [BPD305] */
  IF ~~ THEN REPLY #229679 /* ~They weren't prepared for such a fight. I won't make the same mistake.~ */ GOTO 12
  IF ~~ THEN REPLY #229680 /* ~You sure know how to encourage a <GIRLBOY>.~ */ GOTO 12
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 12 // from: 10.2 11.0 11.1
  SAY #229681 /* ~If you do manage to overcome all of his other "entertainments," you may still find Baeloth more than you can handle. Be sure to hone your skills and equip yourself as well as possible before that time comes.~ [BPD306] */
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229682 /* ~I will. You'd better show me your new stock.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229682 /* ~I will. You'd better show me your new stock.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~~ THEN REPLY #229683 /* ~Good advice. I'll keep it in mind.~ */ EXIT
  IF ~~ THEN REPLY #229684 /* ~There has to be some other way to escape. Doesn't there?~ */ EXIT
END

IF ~~ THEN BEGIN 13 // from: 9.0 9.1
  SAY #229685 /* ~By the time Thardek returned, much of the clan was slain, the rest enslaved. His reaction seemed forced, almost as if he was pretending to be surprised. When Baeloth turned toward him, he knelt at once.~ [BPD307] */
  IF ~~ THEN REPLY #229686 /* ~I see. Thanks for the warning.~ */ EXIT
  IF ~~ THEN REPLY #229687 /* ~Well, that could mean anything. Maybe he's just a coward. Still, thanks for the tip.~ */ EXIT
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229670 /* ~Let me see your new stock.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~  GlobalLT("OPENING","LOCALS",4)

Global("TIER","GLOBAL",3)

Global("LAST_BATTLE","GLOBAL",304)

~ THEN BEGIN 14 // from: 23.6
  SAY #229688 /* ~You've done better than spit in his eye. You've made Baeloth hopping mad!~ [BPD401] */
  IF ~~ THEN REPLY #229689 /* ~With luck, I will do more than that soon.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ GOTO 15
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("BPGORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~SetGlobal("OPENING","LOCALS",4)
StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~~ THEN REPLY #229643 /* ~I have no need of your goods now. Farewell.~ */ DO ~SetGlobal("OPENING","LOCALS",4)

~ EXIT
END

IF ~~ THEN BEGIN 15 // from: 14.0
  SAY #229692 /* ~We all hope so. But if we were free to act, we would help you. Well, perhaps not all of us...~ [BPD402] */
  IF ~~ THEN REPLY #220080 /* ~What do you mean?~ */ GOTO 17
  IF ~~ THEN REPLY #229693 /* ~Are you still thinking about Thardek?~ */ GOTO 16
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 16 // from: 15.1
  SAY #229694 /* ~He has grown more and more sullen as he sees the suspicion in our eyes. We must be prepared to subdue him the moment Baeloth falls.~ [BPD403] */
  IF ~~ THEN REPLY #229695 /* ~I'll be glad to help you with that.~ */ GOTO 17
  IF ~~ THEN REPLY #229696 /* ~Subdue him? I hardly knew him. Ha! Get it?~ */ GOTO 17
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229697 /* ~Good luck with that. In the meantime, let's see your new armor.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229697 /* ~Good luck with that. In the meantime, let's see your new armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 17 // from: 15.0 16.0 16.1
  SAY #229698 /* ~It is a matter best left to us duergar. It is strange enough that we find ourselves indebted to an outsider. We must take care of the traitor ourselves.~ [BPD404] */
  IF ~~ THEN REPLY #229699 /* ~I understand. What of the other captives, those who aren't duergar?~ */ GOTO 18
  IF ~~ THEN REPLY #229700 /* ~Great. I'll just stand back and watch. It's about time I didn't have to do all the heavy lifting by myself.~ */ GOTO 18
  IF ~ Global("BPINBG","GLOBAL",0) ~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself)) ~ EXIT
  IF ~ Global("BPINBG","GLOBAL",1) ~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself)) ~ EXIT
END

IF ~~ THEN BEGIN 18 // from: 17.0 17.1
  SAY #229701 /* ~It would be best if you and the other non-duergar left as quickly and quietly as possible after Baeloth's demise. While a few of us understand what you are doing for us, the rest of the clan will not take kindly to the presence of outsiders.~ [BPD405] */
  IF ~~ THEN REPLY #229702 /* ~I see. Perhaps it's best that I slip away.~ */ EXIT
  IF ~~ THEN REPLY #229703 /* ~What a bunch of ungrateful jerks!~ */ GOTO 19
  IF ~~ THEN REPLY #229704 /* ~Bring 'em on, then. I'll slaughter them to the last duergar.~ */ GOTO 19
END

IF ~~ THEN BEGIN 19 // from: 18.1 18.2
  SAY #229705 /* ~They will see you as another threat, not so different from Baeloth. I may be able to buy you a little time, but I cannot keep them from attacking you. There are far too many for even you to defeat.~ [BPD406] */
  IF ~~ THEN REPLY #229706 /* ~I'm remembering a famous line about discretion and valor. Don't worry, I won't stick around long enough for trouble.~ */ EXIT
  IF ~~ THEN REPLY #229707 /* ~If you can't keep your people off of me, I can't promise not to paint the floors with their blood.~ */ EXIT
END

IF ~~ THEN BEGIN 20 // from: 
  SAY #229708 /* ~Traitor! How could mine own cousin side with our oppressor?~ [BPT3B506] */
  IF ~~ THEN EXTERN ~BPTHARDE~ 22
END

IF ~~ THEN BEGIN 21 // from: 
  SAY #229709 /* ~By standing with this drow, you admit your guilt.~ [BPT3B508] */
  IF ~~ THEN EXTERN ~BPTHARDE~ 23
END

IF ~~ THEN BEGIN 22 // from: 
  SAY #229710 /* ~You are no blood of mine, you foot-licking craven! You betrayer! I'll destroy you myself!~ [BPT3B510] */
  IF ~~ THEN EXTERN ~BPTHARDE~ 24
END

IF ~  True()

~ THEN BEGIN 23 // from: 
  SAY #232147 /* ~Hurry it up.~ */
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("BPGORC01",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("BPGORC02",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",0) 
~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("BPGORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  GlobalGT("OPENING","LOCALS",2)
        Global("BPINBG","GLOBAL",1) 
~ THEN REPLY #229691 /* ~Let's take a look at your best new armor.~ */ DO ~StartStore("D5GORC03",LastTalkedToBy(Myself))
~ EXIT
  IF ~  Global("OPENING","LOCALS",1)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 0
  IF ~  Global("OPENING","LOCALS",2)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 3
  IF ~  Global("OPENING","LOCALS",3)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 7
  IF ~  Global("OPENING","LOCALS",4)

~ THEN REPLY #232149 /* ~What were you saying earlier?~ */ GOTO 14
  IF ~~ THEN REPLY #229781 /* ~It was a pleasure. I'll be on my way.~ */ EXIT
END
