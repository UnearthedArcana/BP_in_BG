
BEGIN ~BAELOTH~

IF ~  Global("BA_BEGIN","GLOBAL",0)

~ THEN BEGIN 0 // from: 
  SAY #231859 /* ~You fool! I am not fully revived! I am diminished, damaged, and DANGEROUSLY DETERIORATED! Why, I've even lost some of my perspicacity!~ [bab002] */
  IF ~  !InParty("NEERA")

~ THEN DO ~SetGlobal("BA_BEGIN","GLOBAL",1)

~ GOTO 1
  IF ~  InParty("NEERA")

~ THEN DO ~SetGlobal("BA_BEGIN","GLOBAL",1)

~ EXTERN ~NEERAJ~ 907
  IF ~  Global("C0AuraBAELOTH0","GLOBAL",0)

InParty("C0Aura")

InMyArea("C0Aura")

!StateCheck("C0Aura",CD_STATE_NOTVALID)

~ THEN DO ~SetGlobal("C0AuraBAELOTH0","GLOBAL",1)

~ EXTERN ~C0AURAJ~ 186
END

IF ~~ THEN BEGIN 1 // from: 0.0
  SAY #231861 /* ~Najim? Are you even LISTENING? My most obedient serv—friend! WHERE ARE YOU?! Surely you aren't going to leave me UP HERE!~ [bab003] */
  IF ~~ THEN GOTO 2
END

IF ~~ THEN BEGIN 2 // from: 1.0
  SAY #231862 /* ~Argh! YOU CONNIVING CUR! I will crack your realm wide open and DRAG YOU INTO THIS PLANE OF— Oh, hello. Well, this is awkward.~ [bab004] */
  IF ~~ THEN REPLY #231863 /* ~Well met, I am <CHARNAME>.~ */ GOTO 3
  IF ~~ THEN REPLY #231864 /* ~Who the hell are you?~ */ GOTO 6
END

IF ~~ THEN BEGIN 3 // from: 2.0
  SAY #231865 /* ~Greetings, friendly, ah, surface-dweller. You wouldn't happen to know the direction of the nearest entrance to the Underdark, would you?~ [bab005] */
  IF ~~ THEN REPLY @201 /* ~I don't, but I would be interested in knowing that as well! I hear there are great adventures to be had there.~ */ GOTO 51
  IF ~  !InParty("NEERA")

~ THEN REPLY #231866 /* ~I'm afraid I don't.~ */ GOTO 5
  IF ~  !InParty("NEERA")

~ THEN REPLY #231867 /* ~Where on earth did you come from?~ */ GOTO 4
  IF ~  !InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
  IF ~  InParty("NEERA")

~ THEN REPLY #231866 /* ~I'm afraid I don't.~ */ EXTERN ~NEERAJ~ 908
  IF ~  InParty("NEERA")

~ THEN REPLY #231867 /* ~Where on earth did you come from?~ */ GOTO 4
  IF ~  InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 4 // from: 3.1 3.4
  SAY #231869 /* ~From the Underdark. Was that not clear? Goodness, are you blind? Eugh, I hadn't realized how sickly you surfacer sort are.~ [bab006] */
  IF ~~ THEN REPLY @202 /* ~Ah. I am actually interested in the Underdark. I hear there are great adventures to be had there!~ */ GOTO 51
  IF ~  !InParty("NEERA")

~ THEN REPLY #231870 /* ~As pleasant as you are, I'm afraid I don't know where an Underdark entrance can be located.~ */ GOTO 5
  IF ~  !InParty("NEERA")

~ THEN REPLY #231871 /* ~Who are you, exactly?~ */ GOTO 6
  IF ~  !InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
  IF ~  InParty("NEERA")

~ THEN REPLY #231870 /* ~As pleasant as you are, I'm afraid I don't know where an Underdark entrance can be located.~ */ EXTERN ~NEERAJ~ 908
  IF ~  InParty("NEERA")

~ THEN REPLY #231871 /* ~Who are you, exactly?~ */ GOTO 6
  IF ~  InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 5 // from: 3.0 4.0
  SAY #231875 /* ~No, I suppose you wouldn't. This is particularly problematic for a popular power player such as myself!~ [bab007] */
  IF ~  !InParty("NEERA")

~ THEN REPLY #231876 /* ~And who might, ah, yourself be?~ */ GOTO 6
  IF ~  !InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
  IF ~  InParty("NEERA")

~ THEN REPLY #231876 /* ~And who might, ah, yourself be?~ */ EXTERN ~NEERAJ~ 909
  IF ~  InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 6 // from: 2.1 4.1 4.4 5.0
  SAY #231879 /* ~How could I forget?! Allow me to introduce myself. I am Baeloth Barrityl, more commonly known as BAELOTH THE ENTERTAINER! Yes, I know. THAT Baeloth. Fall to your knees and beg for mercy; I'm sure you know the drill.~ [bab008] */
  IF ~  !InParty("VICONIA")

~ THEN REPLY #231880 /* ~I shall do no such thing.~ */ GOTO 10
  IF ~  !InParty("VICONIA")

~ THEN REPLY #231881 /* ~The thing about that is... I left my kneepads back at home, and, well, you know how these things go.~ */ GOTO 10
  IF ~  !InParty("VICONIA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
  IF ~  InParty("VICONIA")

~ THEN REPLY #231880 /* ~I shall do no such thing.~ */ EXTERN ~VICONIJ~ 722
  IF ~  InParty("VICONIA")

~ THEN REPLY #231881 /* ~The thing about that is... I left my kneepads back at home, and, well, you know how these things go.~ */ EXTERN ~VICONIJ~ 722
  IF ~  InParty("VICONIA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ EXTERN ~VICONIJ~ 722
END

IF ~~ THEN BEGIN 7 // from: 
  SAY #231883 /* ~Ooooh, I LIKE this one!~ [bab008b] */
  IF ~~ THEN EXTERN ~VICONIJ~ 723
END

IF ~~ THEN BEGIN 8 // from: 
  SAY #231885 /* ~But of course, slender one. Anything for a lady of such grace. What house did you say you were from again? Please don't say Do'Urden.~ [bab008d] */
  IF ~~ THEN EXTERN ~VICONIJ~ 724
END

IF ~~ THEN BEGIN 9 // from: 
  SAY #231887 /* ~Oh my, tough crowd! In any case, it seems that I am in a bit of a bind. I am unable to return to my home, and I am bare to the boundless barbarism of the surface world!~ [bab008f] */
  IF ~  InParty("NEERA")

~ THEN REPLY #231888 /* ~That's a shame, a nice guy like you mixed up in a situation like this.~ */ EXTERN ~NEERAJ~ 910
  IF ~  !InParty("NEERA")

~ THEN REPLY #231888 /* ~That's a shame, a nice guy like you mixed up in a situation like this.~ */ GOTO 11
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 10 // from: 6.0 6.1
  SAY #231889 /* ~Hmm. Perhaps you aren't as cultured as I had assumed. In any case, it seems that I am in a bit of a bind. I am unable to return to my home, left bare to the boundless barbarism of the surface world!~ [bab009] */
  IF ~  !InParty("NEERA")

~ THEN REPLY #231890 /* ~That's a shame. How could such a nice guy like you get mixed up in a situation like this?~ */ GOTO 11
  IF ~  !InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
  IF ~  InParty("NEERA")

~ THEN REPLY #231890 /* ~That's a shame. How could such a nice guy like you get mixed up in a situation like this?~ */ EXTERN ~NEERAJ~ 910
  IF ~  InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 11 // from: 9.1 10.0
  SAY #231892 /* ~You must be crawling with questions, but first let me elucidate recent events. Perhaps many of your petty ponderances will be answered!~ [bab010] */
  IF ~  !InParty("NEERA")

~ THEN REPLY #231893 /* ~By the gods, if my eyes continue to roll at this speed, they'll begin to smoke!~ */ GOTO 12
  IF ~  !InParty("NEERA")

~ THEN REPLY #231894 /* ~Perhaps they will be. Carry on, then.~ */ GOTO 12
  IF ~  !InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
  IF ~  InParty("NEERA")

~ THEN REPLY #231893 /* ~By the gods, if my eyes continue to roll at this speed, they'll begin to smoke!~ */ EXTERN ~NEERAJ~ 911
  IF ~  InParty("NEERA")

~ THEN REPLY #231894 /* ~Perhaps they will be. Carry on, then.~ */ EXTERN ~NEERAJ~ 911
  IF ~  InParty("NEERA")

~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 12 // from: 11.0 11.1
  SAY #231896 /* ~My most recent project was a little something I called the Black Pits. I'm sure you've heard of it. Mortal pitted against mortal in a desperate bid to... oh, it doesn't matter anymore.~ [bab011] */
  IF ~~ THEN REPLY #231897 /* ~Can't say that I have.~ */ GOTO 13
  IF ~~ THEN REPLY #231898 /* ~Yes, in fact! I've visited that particular bank of outhouses many times.~ */ GOTO 15
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 13 // from: 12.0 15.0
  SAY #231899 /* ~You must be out of the loop. It was a marvelous sight! The roaring crowd, my obedient djinn slave keeping the prisoners in line, the sound of hammer crushing bone—ah, such fond memories!~ [bab012] */
  IF ~~ THEN REPLY #231900 /* ~How did you GET the djinn in the first place?~ */ GOTO 14
  IF ~~ THEN REPLY #231901 /* ~Sounds like quite the hotspot.~ */ GOTO 16
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 14 // from: 13.0
  SAY #231902 /* ~A favor here, a clever spell there, a geas or two. It's not so hard.~ [bab013] */
  IF ~~ THEN REPLY #231903 /* ~And it worked out so well for you!~ */ GOTO 16
END

IF ~~ THEN BEGIN 15 // from: 12.1
  SAY #231904 /* ~Outhouses? You dare compare my barony of bloody battles to a privy?~ [bab014] */
  IF ~~ THEN REPLY #231905 /* ~I must have been mistaken.~ */ GOTO 13
END

IF ~~ THEN BEGIN 16 // from: 13.1 14.0
  SAY #231906 /* ~Things went quite swimmingly until some upstarts tricked me into facing them in battle. They cheated, of course.~ [bab015] */
  IF ~~ THEN GOTO 17
END

IF ~~ THEN BEGIN 17 // from: 16.0
  SAY #231907 /* ~But I am nothing if not calculatingly cautious, and so I instructed that djinn jerk Najim to grant me a final wish: that I be protected from death. Oh, he granted that one, all right.~ [bab016] */
  IF ~  !InParty("NEERA")

~ THEN GOTO 18
  IF ~  InParty("NEERA")

~ THEN EXTERN ~NEERAJ~ 912
END

IF ~~ THEN BEGIN 18 // from: 17.0
  SAY #231910 /* ~As you can see, I live again. No Demonweb Pits for me! But I am bereft of my previous power, forced to converse with a pack of mouth-brea— Oh, I apologize. I'm beginning to ramble!~ [bab017] */
  IF ~~ THEN REPLY #231911 /* ~I've been called worse by better. In any case, I feel a request coming.~ */ GOTO 19
  IF ~~ THEN REPLY #231912 /* ~Did he also rob you of your manners?~ */ GOTO 20
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 19 // from: 18.0
  SAY #231913 /* ~I am simply unaccustomed to dealing with your kind on less than crushingly advantageous terms.~ [bab018] */
  IF ~~ THEN REPLY #231914 /* ~I'll try to speak slowly and in reverent tones.~ */ GOTO 20
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 20 // from: 18.1 19.0
  SAY #231915 /* ~I do not make it a habit to beg others for aid, and I prefer to lend favors rather than request them.~ [bab019] */
  IF ~~ THEN REPLY #231916 /* ~Now I definitely feel a request coming.~ */ GOTO 21
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 21 // from: 20.0
  SAY #231917 /* ~Clearly, I still command SOME of my powers. Even in this diminished state, I must remain one of the top five spellcasters in all the realms. If someone were to offer me martial protection, I'm sure I could be of great help to... whatever it is you're doing.~ [bab020] */
  IF ~  !InParty("NEERA")

!InParty("EDWIN")

!InParty("TIAX")

~ THEN REPLY #231918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ GOTO 23
  IF ~  InParty("TIAX")

!InParty("EDWIN")

!InParty("NEERA")

~ THEN REPLY #231918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~TIAXJ~ 10
  IF ~  InParty("EDWIN")

!InParty("NEERA")

~ THEN REPLY #231918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~EDWINJ~ 516
  IF ~  InParty("NEERA")

~ THEN REPLY #231918 /* ~There it is! Fine. Whatever. Welcome aboard.~ */ EXTERN ~NEERAJ~ 913
  IF ~~ THEN REPLY #231919 /* ~I'm afraid I can't take you with me.~ */ GOTO 26
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 22 // from: 
  SAY #231922 /* ~And it's true! I am shockingly popular with sorcerous women.~ [bab020c] */
  IF ~~ THEN EXTERN ~EDWINJ~ 517
END

IF ~~ THEN BEGIN 23 // from: 21.0 26.1
  SAY #231925 /* ~So I can really come with you? How perspicacious of you! You won't regret this. Now then, I assume you'll want me in a leadership capacity.~ [bab021] */
  IF ~~ THEN REPLY #231926 /* ~Back of the line, drow.~ */ GOTO 24
  IF ~~ THEN REPLY #231927 /* ~Indeed! Just write down your suggestions and then choke on them.~ */ GOTO 25
END

IF ~~ THEN BEGIN 24 // from: 23.0
  SAY #231928 /* ~Don't think you can intimidate me. Let us hope that you learn proper respect before my patience withers.~ [bab022] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)

AddJournalEntry(231953,INFO)

SetDialogue("BAELOTHJ")

JoinParty()

~ EXIT
END

IF ~~ THEN BEGIN 25 // from: 23.1
  SAY #231929 /* ~Very crass. Fine then, lead onward.~ [bab023] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",0)

AddJournalEntry(231953,INFO)

SetDialogue("BAELOTHJ")

JoinParty()

~ EXIT
END

IF ~~ THEN BEGIN 26 // from: 21.4
  SAY #231930 /* ~No! NO! NO, NO, NO! Don't LEAVE me here, you moronic miscreant! There are pale-skinned barbarians everywhere!~ [bab024] */
  IF ~~ THEN REPLY #231931 /* ~Make your way to the Friendly Arm Inn. It's not far, and if you hide outside the walls on the east side, you probably won't be discovered and killed. Probably.~ */ GOTO 27
  IF ~~ THEN REPLY #231932 /* ~On second thought, sure. Your whining convinced me.~ */ GOTO 23
  IF ~~ THEN REPLY #231868 /* ~Die, drow!~ */ GOTO 28
END

IF ~~ THEN BEGIN 27 // from: 26.0
  SAY #231933 /* ~Fine! I'll just make my way there myself. I don't need your help. Begone!~ [bab025] */
  IF ~~ THEN DO ~SetGlobal("KickedOut","LOCALS",1)

AddJournalEntry(231952,INFO)

SetDialogue("BAELOTHP")

EscapeAreaMove("BG2300",4721,3045,S)

~ EXIT
END

IF ~~ THEN BEGIN 28 // from: 3.2 3.5 4.2 4.5 5.1 5.3 6.2 9.2 10.1 10.3 11.2 11.5 12.2 13.2 18.2 19.1 20.1 21.5 26.2
  SAY #231934 /* ~Oh, COME ON!~ [bab026] */
  IF ~~ THEN DO ~SetGlobal("BA_ATTACKED","LOCALS",1)

ChangeAIScript("OHMADD01",CLASS)

Enemy()

~ EXIT
END

IF ~~ THEN BEGIN 51 // from: 3.0 4.0
  SAY @203 /* ~Riiight... um, adventures, you say? Why yes, I believe I can provide you with, er, adventures. Riches, glory, fame, that sort of thing? Cheering masses and adoring fans? Surely that's what you are interested in, yes? I have a device here which can whisk you away to such rewards. It is all very consensual, I assure you. It only works if you 'opt in.'~ */ 
  IF ~~ THEN REPLY @204 /* ~Yes, that sounds great.~ */ GOTO 52
  IF ~~ THEN REPLY @205 /* ~On second thought, that all sounds a bit too exciting for me. I'm not sure I'm willing to go along with you.~ */ GOTO 5
END

IF ~~ THEN BEGIN 52 // from: 51.0
  SAY @206 /* ~Fantastic! Oh, this recruiting trip was much quicker than I expected. Now be good dears and just grab hold of this perfectly harmless glowing gem. All at once, yes, that's it. And away we go!~ */ 
  IF ~~ THEN DO ~SetGlobal("BPINBG","GLOBAL",1) 
SetGlobal("BPINTRO","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("BPINBG0") 
~ EXIT
END
