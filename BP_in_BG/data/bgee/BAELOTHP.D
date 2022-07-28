
BEGIN ~BAELOTHP~

IF ~  !InParty(Myself)

Global("KickedOut","LOCALS",1)

~ THEN BEGIN 0 // from: 
  SAY #31935 /* ~I hope you're satisfied. Look at my clothing! Caked-on mud everywhere! Do you have any idea how many hairy, four-legged BEASTS I had to avoid while making my way here? Woofs, were they? Wharves? I don't know.~ [bab027] */
  IF ~~ THEN REPLY @207 /* ~When last we met, I think you mentioned something about adventuring in the underdark?~ */ GOTO 11
  IF ~~ THEN REPLY #31936 /* ~Hello to you too, Baeloth. I have need of you. Will you join me?~ */ GOTO 1
  IF ~~ THEN REPLY #31937 /* ~Well, keep it up. You're doing a good job so far.~ */ GOTO 2
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #31938 /* ~YES! At last, some protection! Protection for YOU, that is. I will join you. So that you can feel safe.~ [bab028] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)

SetDialogue("BAELOTHJ")

JoinParty()

~ EXIT
END

IF ~~ THEN BEGIN 2 // from: 0.1
  SAY #31939 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [bab029] */
  IF ~~ THEN REPLY #31940 /* ~Sorry.~ */ EXIT
END

IF ~  !InParty(Myself)

Global("KickedOut","LOCALS",0)

~ THEN BEGIN 3 // from: 
  SAY #31939 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! Don't let me die at the hands of pale-skinned barbarians!~ [bab029] */
  IF ~~ THEN REPLY #31931 /* ~Make your way to the Friendly Arm Inn. It's not far, and if you hide outside the walls on the east side, you probably won't be discovered and killed. Probably.~ */ DO ~SetGlobal("KickedOut","LOCALS",1)

SetDialogue("BAELOTHP")

EscapeAreaMove("AR2300",4721,3045,S)

~ EXIT
  IF ~~ THEN REPLY #31932 /* ~On second thought, sure. Your whining convinced me.~ */ DO ~SetGlobal("KickedOut","LOCALS",0)

SetDialogue("BAELOTHJ")

JoinParty()

~ EXIT
END

IF ~~ THEN BEGIN 11 // from: 0
  SAY @208 /* ~Why... yes! I believe I can provide you with, er, adventures. Riches, glory, fame, that sort of thing? Cheering masses and adoring fans? Surely that's what you are interested in, yes? I have a device here which can whisk you away to such rewards. It is all very consensual, I assure you. It only works if you 'opt in.'~ */ 
  IF ~~ THEN REPLY @204 /* ~Yes, that sounds great.~ */ GOTO 12
  IF ~~ THEN REPLY @205 /* ~On second thought, that all sounds a bit too exciting for me. I'm not sure I'm willing to go along with you.~ */ GOTO 0
END

IF ~~ THEN BEGIN 12 // from: 11.0
  SAY @206 /* ~Fantastic! Oh, this recruiting trip was much quicker than I expected. Now be good dears and just grab hold of this perfectly harmless glowing gem. All at once, yes, that's it. And away we go!~ */ 
  IF ~~ THEN DO ~SetGlobal("BPINBG","GLOBAL",1) 
SetGlobal("BPINTRO","GLOBAL",2)
ClearAllActions()
StartMovie("BLACKPIT")
StartCutSceneMode()
StartCutScene("BPINBG0") 
~ EXIT
END
