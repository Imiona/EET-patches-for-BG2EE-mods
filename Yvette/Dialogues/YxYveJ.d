BEGIN YxYveJ

///////Reputation - Yvette leaves

IF~InParty(Myself) ReputationLT(Player1,7) !Global("YvetteRomanceActive","GLOBAL",4)~THEN BEGIN YvRepx00
SAY @0 /* You...you're so different from who I thought you were. I'm sorry, but I can't help the kind of person you turned out to be. I hope one day, you'll change. */
IF~~THEN DO ~SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

///////Lathander burglary

IF~InParty(Myself) PartyHasItem("MISC4X") !Global("YvetteRomanceActive","GLOBAL",4)~THEN BEGIN YvThx00
SAY @1 /* No! You stole the holy treasure of Lathander! I won't follow a thief! I...I just won't! */
IF~~THEN DO ~LeaveParty() EscapeArea() SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////Tanner

IF~AreaCheck("AR0502") Global("YvetteTanner","GLOBAL",0)~THEN BEGIN YvMasx00
SAY @2 /* (Yvette's eyes open widely and she covers her mouth with her hand.) I...I don't feel well...Look what this monster did! We can't let him get away! Let’s hurry! */
IF~~THEN DO ~SetGlobal("YvetteTanner","GLOBAL",1)~ EXIT
END

///////Phaere-Sex

IF~Global("PhaereInnuendo","GLOBAL",2) Global("YvetteRomanceActive","GLOBAL",1)~ THEN BEGIN YvPhaere0
SAY @3 /* How...how could you? You've touched her. I don't even want to look at you. */
IF~~THEN DO ~SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////Book Gift from charname

IF~HasItem("YxBook",Myself) Global("YvetteHasBook","GLOBAL",0) !Global("YvetteRomanceActive","GLOBAL",4) GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN BEGIN YvBox00
SAY @4 /* Is this book for me? Don't tell me...this is "Sune's Book of Chants"! I've seen a copy only once before! */
IF~~THEN REPLY @5 /* And do you see any other Heartwarder here, my fair lady? Of course it's for you! */ GOTO YvBox01
IF~~THEN REPLY @6 /* Well, yes! I hope you'll like it. */ GOTO YvBox01
IF~Global("YvetteRomanceActive","GLOBAL",3)~THEN REPLY @7 /* Yes. You know, I wasn't very kind to you before and it appears I offended you. I'd like to apologize for that, if I may. */ GOTO YvBox02
IF~~THEN REPLY @8 /* Well, yes. It's a farewell gift. Take it and leave. I don't feel comfortable with you in the group. */ GOTO YvBox03 
END

IF~~THEN BEGIN YvBox01
SAY @9 /* (Yvette looks at you, surprised. Then, suddenly, she hugs you.) */
=
@10 /* That's such a wonderful surprise, my lord! Oh, you shouldn't have! I'm so happy! I'll be able to read and learn the chants, and maybe even use them to aid the party in battle if necessary. */
=
@11 /* I have to ask, though. Why would you give me such a gift? */
IF~~THEN REPLY @12 /* Hmmm, how about because I like you? */ GOTO YvBox04
IF~~THEN REPLY @13 /* Well I think we'll all benefit this way and it may save our lives one day, you never know. */ GOTO YvBox05
IF~~THEN REPLY @14 /* You're the only Heartwarder I know so it seemed logical enough. Therefore, you should have it. */ GOTO YvBox04
IF~~THEN REPLY @15 /* You're the only one who'll be able to use it well, and chanting just isn't my cup of tea. */ GOTO YvBox05
END

IF~~THEN BEGIN YvBox04
SAY @16 /* Thank you. You're very kind, my lord. I…I don’t know what to say. (Yvette blushes.) */
IF~~THEN GOTO YvBox06
END

IF~~THEN BEGIN YvBox05
SAY @17 /* I understand, of course. I'll try my best to use it to aid you, and those on our side. */
IF~~THEN GOTO YvBox06
END

IF~~THEN BEGIN YvBox06
SAY @18 /* We should move on now, sir. I certainly hope I'll be able to make good use of the book soon. (She winks at you and starts walking.) */
IF~~THEN DO ~SetGlobal("YvetteHasBook","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvBox02
SAY @19 /* Well, I'm quite surprised. I didn't expect you to say you were sorry for that. But you’ll still need to give me some time, though I do accept your apology. Maybe we'll have a little chat later?(She smiles and starts walking.) */
IF~~THEN DO ~SetGlobal("YvetteHasBook","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvBox03
SAY @20 /* I...I thought...I don't know what to say. I think I'll just tell you "good-bye". */
IF~~THEN DO ~SetGlobal("YvetteHasBook","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

////////////I can't turn undead

IF~Global("YvetteTurnUndead","GLOBAL",1) RealGlobalTimerExpired("YvetteTUTimer","GLOBAL") !Global("YvetteRomanceActive","GLOBAL",4)~THEN BEGIN YVxTUx00
SAY @21 /* I may have forgotten to tell you about something. You see, I may be a priestess, and though I’m not inexperienced I'm also not a very experienced adventurer. I realize that many others of my profession have fought and know how to fight undead, but I know next to nothing about turning skeletons, or zombies, and the like. However, I promise I'll try to learn if you think it will help, but it may take some time. I hope you don't mind. */
IF~~THEN REPLY @22 /* Of course not! I'm sure you'll master that in no time at all. */ GOTO YVxTUx01
IF~~THEN REPLY @23 /* Hmmm, how long do you think it will take you to learn that, Yvette? */ GOTO YVxTUx02
IF~~THEN REPLY @24 /* Actually, I do mind. If you can’t turn undead, at the rate were fighting them, especially the vampires, you're going to be a liability. I've afraid I’ve made up my mind: you need to leave. */ GOTO YVxTUx03
END

IF~~THEN BEGIN YVxTUx02
SAY @25 /* I have no idea, honestly. */
IF~~THEN REPLY @26 /* All right then, stay with us and we'll manage to kill them in more...conventional ways, I suppose. */ GOTO YVxTUx01
IF~~THEN REPLY @27 /* I don't need you in my team, then. Only the strongest survive, so leave. */ GOTO YVxTUx03
END

IF~~THEN BEGIN YVxTUx01
SAY @28 /* Oh thank you! I was so afraid you'd tell me to leave. I may have forgotten my past, but I have a feeling that this kind of life is somewhat new to me. Perhaps I didn’t travel or adventure much. */
=@29 /* Of course I'll let you know as soon as I finally learn how to handle undead. Again, I'm sorry I don't posses such a simple skill. */
IF~~THEN REPLY @30 /* It's fine, Yvette. Let's go. */ GOTO YVxTUx04
IF~~THEN REPLY @31 /* Is there anything else you'd like to tell me before we move on? */ GOTO YVxTUx05
IF~~THEN REPLY @32 /* Eh, can we go now, at least? */ GOTO YVxTUx06
END

IF~~THEN BEGIN YVxTUx04
SAY @33 /* (Yvette nods and starts walking.) */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN YVxTUx05
SAY @34 /* Nope, at least not that I can think of offhand! But come, we should go, good sir! */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN YVxTUx06
SAY @35 /* Of course! Let's go. */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN YVxTUx03
SAY @36 /* I... I understand. I'll leave then. Farewell, sir. */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

/////////////... and now I know how to do that!

IF~Global("YvetteTurnUndead","GLOBAL",2) GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_5%) AreaCheck("AR0800") !Global("YvetteRomanceActive","GLOBAL",4)~THEN BEGIN YVxTUx20
SAY @37 /* I just wanted to tell you that I think I now know how to turn undead now, and just in time too it seems. Now I'm sure we will win! */
IF~~THEN REPLY @38 /* Good and thank you. I'm glad you've told me. We'll fight together, and Bodhi will fall! */ GOTO YVxTUx21
IF~~THEN REPLY @39 /* (Nod and start walking again.) */ GOTO YVxTUx22
IF~~THEN REPLY @40 /* I understand. We should go quickly. Every second spent idle is a waste of time. Come, Yvette: we'll end this nightmare. */ GOTO YVxTUx23
IF~~THEN REPLY @41 /* Yeah, whatever. I’m sure you'll be as helpless now as you were before. Just hide behind me. */ GOTO YVxTUx24
END

IF~~THEN BEGIN YVxTUx21
SAY @42 /* That's the spirit! That creature has been "living" much too long. */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN YVxTUx22
SAY @43 /* (Yvette smiles briefly and returns to her place in formation.) */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN YVxTUx23
SAY @44 /* We will, my lord! */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN YVxTUx24
SAY @45 /* (Yvette appears surprised. She looks at you for a moment, then steps back. She speaks no more.) */
IF~~THEN DO ~SetGlobal("YvetteTurnUndead","GLOBAL",3) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////Viconia Conflict

IF~InParty(Myself) InParty("Viconia") Global("YvetteViconia","GLOBAL",0)~THEN BEGIN Yve0Vx00
SAY @46 /* This drow - she's a priestess of Shar! I'm sorry, but I can't travel with that kind of 'creature'. I understand you may not know of it, but Sune and Shar are the greatest of enemies. She--this drow--is probably like her goddess: vicious, treacherous and unpredictable. */
IF~~THEN REPLY @47 /* Please, don't go. Eh, I knew this would cause trouble. Viconia, you should leave. */ GOTO Yve0Vx01
IF~~THEN REPLY @48 /* Leave, then. I know Viconia quite well; I've traveled with her before. I trust her, and if you don't, that's your problem. */ GOTO Yve0Vx02
IF~~THEN REPLY @49 /* Is there really no way to compromise? */ GOTO Yve0Vx03
END

IF~~THEN BEGIN Yve0Vx03
SAY @50 /* I'm sorry, but no. What's more I think I can offer you the same help she would. */
IF~~THEN REPLY @51 /* I knew it would cause trouble. Viconia, you must leave. */ GOTO Yve0Vx01
IF~~THEN REPLY @52 /* I know Viconia quite well; I've traveled with her before. I trust her. If you don't, that's your problem. */ GOTO Yve0Vx02
END

IF~~THEN BEGIN Yve0Vx01
SAY @53 /* Thank you, <CHARNAME>. I'm really grateful. I'm sure she'll find a way to survive on her own. */
IF~~THEN DO ~SetGlobal("YvetteViconia","GLOBAL",1) ActionOverride("Viconia",LeaveParty())~ EXIT
END

IF~~THEN BEGIN Yve0Vx02
SAY @54 /* I'll leave then. Farewell. It's a pity we couldn't travel a bit longer. */
IF~~THEN DO ~SetGlobal("YvetteViconia","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

//2nd time

IF ~InParty(Myself) InParty("Viconia") Global("YvetteViconia","GLOBAL",1)~ THEN BEGIN Yve0Vx04
SAY @55 /* I'm sorry, but I told you how I felt about Viconia and I travelling together. But it would seem you've made your decision. Fare thee well. I wish you luck on the road. */
IF~~THEN DO ~SetGlobal("YvetteViconia","GLOBAL",2) LeaveParty() EscapeArea()~ EXIT
END

/////////////////////////////////Romance
//////////////////1

IF~Global("YvetteRomanceTalk","GLOBAL",6) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1) Global("YLie","LOCALS",0)~THEN BEGIN Yv01x00
SAY @56 /* It has been a long time since I was able to live as a normal person, experiencing all of life's aspects such as a simple breeze or the sun rays. I really missed all of this as well as the companionship of others. It was quite...uncomfortable to dwell in silence all those uncountable nights and days, but that's probably obvious. */
IF~~THEN REPLY @57 /*  Well, I must say I'm not used to meeting people who have been under that kind of spell before. Do you remember how long you were changed into that drawing, and who did it to you?. */ GOTO Yv01x01
IF~~THEN REPLY @58 /* I understand you haven’t had a chance to talk for a very long time, but I'm not really a talkative kind of person. I'd rather we just continue in silence, Yvette. */ GOTO Yv01x02
IF~~THEN REPLY @59 /* Gods, don't tell me you're one of those talkative females, because I hate that. So be silent, understood? */ GOTO Yv01x03
IF~~THEN REPLY @60 /*  You know, Yvette, I was wondering: how did you became a drawing? Who cast that spell on you? */ GOTO Yv01x01
END

IF~~THEN BEGIN Yv01x01
SAY @61 /* Honestly, I remember very little. That's probably due to the nature of the spell that was cast on me. */
=
@62 /* I remember my best friend – Gabriel, he was a painter. He asked if he could make a portrait of me, and I agreed however there was also a woman there who wasn't really happy of that fact. Her name was Ayo and it may have been she who was the one who changed me. */
=
@63 /* I'm sorry, it's simply still too soon. Perhaps some of my memories will return, but for now we shouldn't dwell on these things. What really matters is that I'm here now, eager to help you in your adventures, my lord. */
=
@64 /* Well, I’ve told you something about myself, now please, tell me something about yourself. For instance who is this mysterious <PRO_RACE> who rescued this lady? (She smiles playfully at you.) */
IF~~THEN REPLY @65 /* Well, this will probably be a bit surprising, so can I tell you the short version of the story, if it’s all right with you?. */ GOTO Yv01x04
IF~~THEN REPLY @66 /* Err...I'm...a son of a not-too-well-educated farmer...Yes! A son of a farmer! That’s me, the farmer’s son. */ GOTO Yv01x0L
IF~~THEN REPLY @67 /* Okay sure, I'm a child of Bhaal. */ GOTO Yv01x05
IF~~THEN REPLY @68 /* It's none of your business. I don't want to discuss this with you. I think we should travel in silence. */ GOTO Yv01x02
END

IF~~THEN BEGIN Yv01x04
SAY @69 /* Of course you may. Please, tell me. */
IF~~THEN REPLY @70 /* Okay, I'm a Bhaalspawn: as in a child of the dead God Bhaal. */ GOTO Yv01x05
IF~~THEN REPLY @71 /* No. I changed my mind. I think I prefer silence to talking. Let's just go. It'll be better. */ GOTO Yv01x02
END

IF~~THEN BEGIN Yv01x05
SAY @72 /* A child of Bhaal...? */
=
@73 /* I'm sorry, it’s just...well, that was quite a shock, I have to admit that I wasn’t expecting that. */
=
@74 /* But you're not like your father are you? Well, maybe it's to soon to say such a thing, but you don't look like the evil villainous type. */
IF~~THEN REPLY @75 /* No, I'm not like my father. And I’m really beginning to hate it when people assume I'm some kind of monster in <PRO_RACE> skin. */ GOTO Yv01x06
IF~~THEN REPLY @76 /* It doesn't matter to me who or what my father was. I have my own life to live. */ GOTO Yv01x07
IF~~THEN REPLY @77 /* Yeah, whatever. Let's move. */ GOTO Yv01x08
END

IF~~THEN BEGIN Yv01x06
SAY @78 /* Well, you don't have to worry about me telling anyone about this. Besides, when an honorable man sires a child, he can't assume that one day this child will become a lawful knight. */
=
@79 /* This is part of what makes life such an adventure. And because of this we can meet so many interesting people. */
=
@80 /* But come now. We'll talk later. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",7)~ EXIT
END

IF~~THEN BEGIN Yv01x07
SAY @81 /* I agree. When a good man sires a child, he can't foresee what his child will become. I believe every single person is a unique being, and it's impossible for someone to be identical to us. */
=
@82 /* Perhaps this is part of the reason why life is such an adventure, as we are able to encounter many unique personalities. */
=
@83 /* Ah, but come now. We should get moving, and don't worry - we'll talk again soon. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",7)~ EXIT
END

IF~~THEN BEGIN Yv01x08
SAY @84 /* Already? Well, you're probably right. Let's go, then. We'll talk when we find a moment or two. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",7)~ EXIT
END

IF~~THEN BEGIN Yv01x03
SAY @85 /* Well, that was rude. If you don't like talking to me, that’s fine, but you didn’t have to say it like that. But...don’t worry, it doesn’t matter anymore, I won't bother you after this. Let’s go. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",7) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv01x02
SAY @86 /* I understand. Not everyone feels the need to talk, so if you prefer traveling in silence, that's fine with me. I'm just glad you've told me. Now, let's go. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",7) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv01x0L
SAY @87 /* Really? Well, you don't look like such a person, but I have no reason not to believe you. */ 
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",7) SetGlobal("YLie","LOCALS",1)~ EXIT
END

//If Lied

IF~Global("YvetteRomanceActive","GLOBAL",1) Global("YLie","LOCALS",2) RealGlobalTimerExpired("YvetteLie","GLOBAL")~THEN BEGIN Yv0Liedx00
SAY @88 /* You said you were a farmer's son, but while we’ve been travelling, I heard whispers that you're a Child of Bhaal. Is this true, and if it is it means you lied to me, but, why? */
IF~~THEN REPLY @89 /* Because it's not your business who or what I am and my past is exactly that. Mine. */ GOTO Yv0Liedx01
IF~~THEN REPLY @90 /* Yes it’s true. I'm sorry, I’m just trying to make sure as few people know about this as possible. I realize that that might not be too realistic a goal, but I don't want everyone to know. Although, you're my friend, and you do deserve to be told the truth. */ GOTO Yv0Liedx02
IF~~THEN REPLY @91 /* You see, it's because you shouldn't concern yourself with my life. If you want to adventure with me, that's fine with me, but my past isn't a matter you should be asking about, woman. We have to go now. */ GOTO Yv0Liedx01
END

IF~~THEN BEGIN Yv0Liedx01
SAY @92 /* I used to think you were different, but now I see that I was wrong. I don't wish to travel with you, <CHARNAME>. We're companions, and companions should trust each other. Did you really think you could hide such a thing? */
=
@93 /* Thank you for everything, but this is farewell. Still, I hope you'll reach your goal. */
IF~~THEN DO ~SetGlobal("YvetteRomanceActive","GLOBAL",3) SetGlobal("YLie","LOCALS",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Yv0Liedx02
SAY @94 /* For Sune's sake, you sure know how to confuse a person. */
=
@95 /* But I think I understand your motives, what with Bhaal being the dead god of murder and all, people must have judged you just because of who your father was. I forgive you and I'll try to forget about your lie, but please, don't make a habit of it. */
=
@96 /* Now, let's go. We'll talk later. */
IF~~THEN DO ~SetGlobal("YLie","LOCALS",3)~ EXIT
END



////////////////2

IF~Global("YvetteRomanceTalk","GLOBAL",8) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1)~THEN BEGIN Yv02x00
SAY @97 /* I must say that you have raised my curiosity to the boiling point, my lord. I mean, you are a Child of Bhaal, but as far as I can tell you lack the manner of the gods, which leads me to believe you were raised by someone other than him or his worshippers. So who was responsible for your upbringing then if not him? I'd like to hear something about this person - unless it's something you'd rather keep to yourself. */
IF~~THEN REPLY @98 /* I was raised by my foster father, a man named Gorion, but I think that's all I'd like to share right now. The wound is still raw and bleeding and needs more time to heal. */ GOTO Yv02x01
IF~~THEN REPLY @99 /* Gorion, my foster father, took care of me and we lived in Candlekeep, on the Sword Coast. It was a calm place right up until the very moment we had to flee…I ran into Imoen shortly after - the one the cowled wizards took from me. */ GOTO Yv02x02
IF~~THEN REPLY @100 /* I don't like your questions. I think we should travel in silence. I'm sorry. I just feel a bit...uncomfortable. I hope you understand. */ GOTO Yv02x03
IF~~THEN REPLY @101 /* Aye, I was raised by foul demons, and I ate human flesh. Well, that's what they usually say about us Bhaalspawn, right? */ GOTO Yv02x04
END

IF~~THEN BEGIN Yv02x01
SAY @102 /* Okay, I hope you'll tell me more about your past in the future. But for now, we could talk about something else. */
=
@103 /* Would you mind telling me about Imoen? You want to save her, but who is she, a friend, or the woman you love?  */
IF~~THEN REPLY @104 /* She's kind of like a little sister to me, sometimes annoying but still very precious. When she's near, it's much easier for me to remember the better times. */ GOTO Yv02x05
IF~~THEN REPLY @105 /* She's a little brat, and she really makes me furious sometimes, but still I guess I have to save her.. */ GOTO Yv02x06
IF~~THEN REPLY @106 /* Hells would you please, just be silent! Do you have to ask such questions all the time? */ GOTO Yv02x07
IF~~THEN REPLY @107 /* She's my best friend, and I've known her as long as I can remember. I can't let anyone hurt her. */ GOTO Yv02x05
END

IF~~THEN BEGIN Yv02x05
SAY @108 /* You speak of her very kindly. I can see she's someone very close to you, and that makes me really glad I can help you. */
=
@109 /* You see according to Sune beauty doesn't mean having a smooth body and toned muscles. It means something more, and I see you have some of this beauty in your heart. May Sune protect it. */
=
@110 /* But you said you didn’t like to talk too much about your past. So let's go, <CHARNAME>. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9)~ EXIT
END

IF~~THEN BEGIN Yv02x06
SAY @111 /* You guess? Honestly, I hope your reasoning will change. Or maybe you simply don't like telling others that you care about someone? */
=
@112 /* I'll find the answer someday, <CHARNAME>. (Yvette winks at you and starts walking.) */
=
@113 /* Now, let's go. You're probably tired of conjuring the painful images of the past. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv02x07
SAY @114 /* Stop shouting at me, I won't allow you to speak to me that way. If that’s your decision, fine I'll help you, but don't expect me to be as talkative as before. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv02x02
SAY @115 /* I understand, and I'm glad you can talk about your past with Imoen and Gorion with a smile. I'd like to see that expression more often, honestly. It's good to treasure memories, even when they're somewhat difficult. */
=
@116 /* They say that time heals all wounds and creates an image we want to keep. I hope one day my memories will return. */
=
@117 /* I want to ask one last question, if I may. Sorry for being so...inquisitive, but I’d like to know my new companion. */
=
@118 /* Where's Gorion now? Is he back in Candlekeep? */
IF~~THEN REPLY @119 /* No, he was murdered by my half-brother, Sarevok… I’ve had my revenge, and I killed Sarevok, but I miss Gorion very much. I can't lose Imoen like I lost him! */ GOTO Yv02x08
IF~~THEN REPLY @120 /* He was killed, but please, can we just leave this behind us and go? */ GOTO Yv02x09
IF~~THEN REPLY @121 /* It doesn't matter anymore, believe me. Let’s leave the past in the past and move on. */ GOTO Yv02x10
END

IF~~THEN BEGIN Yv02x08
SAY @122 /* It's so tragic... */
=
@123 /* Now, I understand why you act like this. This whole determination of yours. I'll aid you, as a priestess of Sune and as your friend. */
IF~~THEN REPLY @124 /* Thank you, Yvette. */ GOTO Yv02x11
IF~~THEN REPLY @125 /* Let's go now...We shouldn't stop for so long. */ GOTO Yv02x12
END

IF~~THEN BEGIN Yv02x11
SAY @126 /* You don't have to thank me, <CHARNAME>. I'm glad to be on your side. (Yvette smiles at you.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9)~ EXIT
END

IF~~THEN BEGIN Yv02x12
SAY @127 /* Yes, you're right: we should continue. (When saying this, Yvette looks at the sky.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9)~ EXIT
END

IF~~THEN BEGIN Yv02x09
SAY @128 /* I'm sorry to hear that, but I understand. Come, let’s see if we can find something better to dwell on. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9)~ EXIT
END

IF~~THEN BEGIN Yv02x10
SAY @129 /* Strange answer, but I'll accept it. Let's go, then. We'll talk later. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9)~ EXIT
END

IF~~THEN BEGIN Yv02x03
SAY @130 /* All right, I don't want you to feel uncomfortable. Let’s go. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",9) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT 
END

IF~~THEN BEGIN Yv02x04
SAY @131 /* Do not attack me, <CHARNAME>, I never said that. */
IF~~THEN REPLY @132 /*  Sorry, I’m just used to people treating me like a monster… not a normal person. I was raised by Gorion--my foster father--in a citadel called Candlekeep. I spent my childhood among the monks of the monastery, learning, but I still had time to play with Imoen and others. */ GOTO Yv02x02
IF~~THEN REPLY @133 /* Look, I’m sorry but I prefer walking in silence, and I'm not used to personal talks like this one, so I feel a bit uncomfortable. We should go. */ GOTO Yv02x03
IF~~THEN REPLY @134 /* Sorry, but I don't want to talk about Gorion or my life in Candlekeep. */ GOTO Yv02x01
END


///////////////3

IF~Global("YvetteRomanceTalk","GLOBAL",10) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1)~THEN BEGIN Yv03x00
SAY @135 /* It seems that you are a skilled man, <CHARNAME>, and that makes me feel troubled, because now I see that I wasn't really ready for the adventuring you do every day. Gorion obviously prepared you well. Which brings to mind the memory of how I became a priestess of the Lady Firehair. Would you like to hear the story of a young girl and her decisions? */
IF~~THEN REPLY @136 /* So, some of your memories are returning? Go on, then and tell me. I'm curious to know how you became both a thief and a priestess of Sune. */ GOTO Yv03x01
IF~~THEN REPLY @137 /* I'm not interested in any of your stupid stories. They’re too boring, and that would be torture. */ GOTO Yv03x02
IF~~THEN REPLY @138 /* I have to tell you something. You see, I just don't enjoy these talks with you. I don't want to offend you, but it would be better if you kept silent. I'm sorry. */ GOTO Yv03x03
IF~~THEN REPLY @139 /* Lady Firehair? Do you mean Sune? Well, if you really must tell me that story, I'll listen, then... */ GOTO Yv03x07
IF~~THEN REPLY @140 /* Well, all right, I think I have time to listen to you for a while. Tell me, how did you became a Heartwarder and a thief, dear lady? */ GOTO Yv03x01
END

IF~~THEN BEGIN Yv03x01
SAY @141 /* I'll start from the beginning. */
=
@142 /* I’ve told you about Gabriel, my friend who wanted to paint my portrait. Well, when we were about ten years old, we would play hide and seek and steal a copper or two from our parent's pockets. Then, we usually bought some sweets and ate them near the river. That was how we had our fun and it made our days. */
=
@143 /* Later, there was a time when Gabriel wanted to become someone he called "a hero thief". He said that he'd give the stolen goods to the poor. So, we trained a lot - hiding, opening locks - heh, he even asked his father to give us the old padlock he’d wanted to sell. */
=
@144 /* To try out our skills we attempted to enter the tower of a nearby sorcerer. We would have succeeded too, if it hadn't been for his magic protecting spells. However he let us go, with the gift of two coppers and a warning to never play those kinds of games again. */
=
@145 /* When we were a bit older we still enjoyed hiding from our parents and we spent many hours at our clearing. There was a little pool there and a single willow next to it. I can still remember the aroma of berries which were growing all around the place. */
=
@146 /* Still I can't remember what happened before I was ten, but I can remember those "thievish times"! I wish I could remember more, but, I guess I should focus on the images that have already came back. */
=
@147 /* Heh, so are you bored yet? */
IF~~THEN REPLY @148 /* Of course not! But I want to know how you became a Heartwarder. Will you tell me that? */ GOTO Yv03x04
IF~~THEN REPLY @149 /* A bit. You're quite annoying, you know? I think you should... hmm - Shut up? */ GOTO Yv03x02
END

IF~~THEN BEGIN Yv03x04
SAY @150 /* When I was sixteen I met a kind woman - Camila was her name. She had recently moved to the village and after our first meeting I really enjoyed going to her house. We would drink tea and talk. I found out she was a Heartwarder, and she allowed me to borrow some books about Sune. One of them was called "Smile of Fire", a book Camila herself had written. */
=
@151 /* Before long I started asking questions about the goddess, her beauty, the faith... Then I asked the most important question: "Will you teach me?" and she agreed. After a year, she told me that it was time for me to seek beauty on my own. "Remember that there are many types of beauty" she had said, but I don't remember what happened next. */
=
@152 /* I know I'll treasure those memories again. Heh, and now you know what kind of children Gabriel and I were. Maybe I told you too much - we were so silly! */
=
@153 /* I won't forget those times again, even though life continues its run. Not unlike a leaf that floats down a river. I love to think about it that way. (Yvette smiles.) */
IF~~THEN REPLY @154 /* I will. Be sure of that. */ GOTO Yv03x05
IF~~THEN REPLY @155 /* We have to go. We'll talk later. */ GOTO Yv03x06
IF~~THEN REPLY @156 /* Whatever! I've had enough of your babbling! */ GOTO Yv03x02
END

IF~~THEN BEGIN Yv03x05
SAY @157 /* Well, I'll make a note in my journal. Hmmm, where I did put it? Oh, here it is. */
=
@158 /* (Yvette comes closer to you as if she wanted to whisper something in your ear.) */
IF~~THEN REPLY @159 /* (See what she wants to do.) */ GOTO Yv03x0K
IF~~THEN REPLY @160 /* (Take a step back.) I'd like to keep the distance, Yvette. */ GOTO Yv03x0N
END

IF~~THEN BEGIN Yv03x0N
SAY @161 /* I understand. I just wanted to thank you, but - I understand. Let's go then, alright? */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",11)~ EXIT
END

IF~~THEN BEGIN Yv03x0K
SAY @162 /* "Make sure <CHARNAME> will treasure his memories. Include myself." - Done! */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",11)~ EXIT
END

IF~~THEN BEGIN Yv03x06
SAY @163 /* All right, my leader! Come, then. (Yvette smiles and winks at you playfully.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",11)~ EXIT
END

IF~~THEN BEGIN Yv03x02
SAY @164 /* Know what? I’m not going to let you say anything like that anymore. (Yvette walks away.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",11) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv03x03
SAY @165 /* I...I understand. It's a pity, but probably there’s nothing I can do about it now. Let's just go. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",11) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv03x07
SAY @166 /* If I have to? Well, I don't want to force you to listen to me, and that’s not enthusiasm I hear in your voice. I'm sorry for bothering you. We should move, then. Come on. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",11) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END


///////////////4

IF~Global("YvetteRomanceTalk","GLOBAL",12) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1)~THEN BEGIN Yv04x00
SAY @167 /* <CHARNAME>, we've talked only a few times, but I already know we'll be good friends. I miss the same kind of moments I had with Gabriel since I really liked hearing his laugh. I enjoy your smile in the same way. I probably bore you with such stories, but I just wanted to let you know. */
IF~~THEN REPLY @168 /* Of course you're not boring. I'd like to talk with you. Was Gabriel the man you loved? You speak of him with joy in your eyes. */ GOTO Yv04x01
IF~~THEN REPLY @169 /* So, all you want from me is friendship? Isn't there something more? */ GOTO Yv04x02
IF~~THEN REPLY @170 /* You must be mad! You think I want to be your friend?! Don't make me laugh! I'd rather talk to dead bodies than to you. */ GOTO Yv04x03
IF~~THEN REPLY @171 /* It's fine. You know, I never told you this, but you're very beautiful - just as the night brought on by Shar. */ GOTO Yv04x07
IF~~THEN REPLY @172 /* So, this is only friendship? I think it could be something more, Yvette. */ GOTO Yv04x02
END

IF~~THEN BEGIN Yv04x01
SAY @173 /* Gabriel...? Not in the way you think. We were never lovers. It was a different type of love - I think it's something like you and Imoen. */
=
@174 /* Truth is, I'm happy because of those memories. I do miss Gabriel, but he was like a brother to me. We protected each other, we played together, that's all. */
IF~~THEN GOTO Yv04x04
END

IF~~THEN BEGIN Yv04x02
SAY @175 /* I...I still know you very little and I don't think this is the right time to talk about it. I like our travels, but I can't say if you're my real friend or...something else. */
=
@176 /* So please, don't ask such questions. I'd rather not add more confusion to our present situation, my lord. */
IF~~THEN REPLY @177 /* Hehe, it's fine, I just wanted to see your reaction, dear lady. I apologize for asking. */ GOTO Yv04x04
IF~~THEN REPLY @178 /* But those words I said to you are true. I really hope we'll become closer than just friends, Yvette. Much closer. (Smile at her.) */ GOTO Yv04x08
END

IF~~THEN BEGIN Yv04x04
SAY @179 /* (Yvette gazes at something on the horizon.) I'm glad you didn't tell me I bother you. */
=
@180 /* I'll have to find you a gift because of that! (Yvette smiles at you. A slight breeze gently flows through her hair, lifting the ends in a fluttering motion.) */
=
@181 /* I really enjoy making and giving presents. I'll have to think about it, but be prepared for it, <CHARNAME>. */
IF~~THEN REPLY @182 /* But, Yvette, you don't have to give me any presents. */ GOTO Yv04x05
IF~~THEN REPLY @183 /* All right! I can't wait to see it! And I won’t let you forget what you said. (Laugh.) */ GOTO Yv04x06
IF~~THEN REPLY @184 /* Oh, give me a break! If I hear one more thing like that, I'll kill us both. You babble constantly. Shut up, will you? */ GOTO Yv04x03
END

IF~~THEN BEGIN Yv04x05
SAY @185 /* But I really want to! I hope I'll make a good decision and you'll like it. Heh, there were some presents my friends didn't like. Well, maybe it wasn't completely like that. I'd say rather they - didn't enjoy as much as I'd like. */
=
@186 /* However, I don't think it will happen again. I should've known Gabriel wouldn't like rose jam! (Yvette laughs.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",13)~ EXIT
END

IF~~THEN BEGIN Yv04x06
SAY @187 /* You really think I can forget what I've said? Ha, you really don't know me well yet, <CHARNAME>. I promise you'll get a gift from me. You're curious what it will be, aren't you? */
=
@188 /* It's nice to watch someone's face when they receive a gift and he or she doesn't know what the gift will be. (Yvette winks at you.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",13)~ EXIT
END

IF~~THEN BEGIN Yv04x03
SAY @189 /* I don't understand why some people enjoy being so rude. I think it's pointless. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",13) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv04x07
SAY @190 /* Shar? Excuse me, my lord, but I'm not Shar's servant, and you should know that. I don't like being compared to anything connected with the Dark Lady of Intrigues. I think we should move. On second thought, I don't feel like talking with you about my past. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",13) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv04x08
SAY @191 /* (Yvette blushes and steps back. She appears quite confused.) I...I'm sorry. I just...Please, leave me. It's just too...overwhelming. I'm sorry. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",13) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END


/////////////5

IF~Global("YvetteRomanceTalk","GLOBAL",14) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1)~THEN BEGIN Yv05x00
SAY @192 /* I lied to you, <CHARNAME>. In the name of Sune, I'm here to steal your precious heart, Child of Bhaal! */
IF~~THEN REPLY @193 /* What the...? */ GOTO Yv05x01
IF~~THEN REPLY @194 /* You...you won't get me! */ GOTO Yv05x01
IF~~THEN REPLY @195 /* What's going on? Did I miss something? */ GOTO Yv05x01
IF~~THEN REPLY @196 /* And I'm here to steal your lips, girl! (Smile, grab her and kiss her lips.) */ GOTO Yv05x17
IF~~THEN REPLY @197 /* Who cares? */ GOTO Yv05x16
END

IF~~THEN BEGIN Yv05x01
SAY @198 /* Just joking, <CHARNAME>! (Yvette laughs gently. She looks very happy today. Her eyes are filled with joy. The scent of her perfume drifts on the breeze, and calls to mind the aroma of sandalwood and grapes.) */
=
@199 /* You looked so serious; I just had to say something to shake you up a bit. I hope you're not angry or anything. */
=
@200 /* Are you sad? Is something troubling you? */
IF~~THEN REPLY @201 /* It's nothing, I was just thinking about our current quest, about Imoen, Irenicus, and things like that. The same thoughts that fill my head for pretty much most of the day anyway. */ GOTO Yv05x02
IF~~THEN REPLY @202 /* Ah, I was thinking about how to control the world, seduce all the ladies, bring back the lost empire of Netheril, and things like that! That's what usually concerns a Bhaalspawn's mind. (Wink.) */ GOTO Yv05x03
IF~~THEN REPLY @203 /* That wasn't funny, it was stupid. I don't understand how such a stupid creature like you can exist. */ GOTO Yv05x04
IF~~THEN REPLY @204 /* Nothing special...I'm just worried about Imoen... */ GOTO Yv05x02
END

IF~~THEN BEGIN Yv05x02
SAY @205 /* I understand that this is something important to you, but we're doing our best to help Imoen, and find this Irenicus. There’s nothing more that can be done. */
=
@206 /* So come on, smile - even a little! (Yvette nudges you and smiles playfully.) */
IF~~THEN GOTO Yv05x05
END

IF~~THEN BEGIN Yv05x03
SAY @207 /* (Yvette laughs again.) */
=
@208 /* That was funny. Well, if you wish, I'll help you with this controlling the world thing, but maybe we should do even more? Maybe let's have dinner in the Abyss. That would be fun! */
=
@209 /* I enjoy your sense of humor, <CHARNAME>. */
IF~~THEN GOTO Yv05x05
END

IF~~THEN BEGIN Yv05x05
SAY @210 /* You know, another memory just came back to me. */
=
@211 /* In the past, whenever I was in a bad mood, my mother would always try to find a solution for that – and we usually cooked together. I really enjoyed making biscuits with her, and we made them with chipped chocolate and cinnamon. Then later, we'd eat them with Gabriel, drinking cocoa, and my mother would tell us stories about the "Land of Golden Rain" while sitting next to the fireplace. */
=
@212 /* I wish we could sit like that for a while, drink cocoa and eat something sweet, but we have to adventure. It's fun, but sometimes I'd like to simply have a break. Would you like that? */
IF~~THEN REPLY @213 /* That sounds great, but since we have to find Imoen...you understand. */ GOTO Yv05x06
IF~~THEN REPLY @214 /* I hate sweets. I prefer some good wine, but well, the fireplace is a good idea. I'd enjoy gazing at the dancing flame. */ GOTO Yv05x07
IF~~THEN REPLY @215 /* Sweets, cocoa, and a fireplace. Well, let's include you and Imoen, and I’ll need nothing more. It would be like a scene from my dreams. */ GOTO Yv05x08
IF~~THEN REPLY @216 /* You're an annoying, idealistic woman. I'm sick of your ideas. Please, leave me, Yvette. */ GOTO Yv05x09
END

IF~~THEN BEGIN Yv05x06
SAY @217 /* Aye, I understand. It may be silly of me to speak of things like that. Probably you think I'm childish, but I wish one day we could have that kind of moment. Maybe in the future, when Imoen's with us...I hope so. */
IF~~THEN GOTO Yv05x10
END

IF~~THEN BEGIN Yv05x07
SAY @218 /* How can you hate sweets? Well, I guess it's probably possible, and I hardly believe you hate sweets, but I won't force you to eat them! (She smiles.) */
=
@219 /* I suppose it’s alright if you prefer alcohol to that, but I myself prefer "childish stimulants". I like to bring back childhood memories and I guess that's why I dream about situations like that with you and Imoen. */
IF~~THEN GOTO Yv05x10
END

IF~~THEN BEGIN Yv05x08
SAY @220 /* Really? I really do dream about those things, but I don't want to make everything happen right now. I just want to have a moment like that, even if I have to wait for it for years. */
=
@221 /* And I'd really like to sit and drink cocoa with you and Imoen. */
IF~~THEN GOTO Yv05x10
END

IF~~THEN BEGIN Yv05x10
SAY @222 /* Do you think she'd enjoy this? */
IF~~THEN REPLY @223 /* I'm sure she'd enjoy it! When we were back in Candlekeep, she really liked to sit and listen to Winthrop's stories. They’d spend hours sitting near the fireplace together. */ GOTO Yv05x11
IF~~THEN REPLY @224 /* Honestly, I don't know. Imoen's such a lively person, so full of energy all the time! Still, I think it's possible... I think she'd like you and your ideas. */ GOTO Yv05x12
IF~~THEN REPLY @225 /* Who cares? We don't have to sit with her. */ GOTO Yv05x13
END

IF~~THEN BEGIN Yv05x11
SAY @226 /* It's great to hear that! I hope she'll tell me some of those stories one day. I really like to listen to all kinds of stories, fairy tales, legends and myths. Even if they're only myths, they can touch someone's heart. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15)~ EXIT
END

IF~~THEN BEGIN Yv05x12
SAY @227 /* So, you say it's hard to say...Well, maybe one day I'll simply ask her about it. I believe I'll have the opportunity to do so. Even if she doesn't like the idea, I'm sure we'll think of another one. (Yvette smiles at you. Her smile is true and pure.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15)~ EXIT
END

IF~~THEN BEGIN Yv05x13
SAY @228 /* I think you should care about it since she's someone we're trying to save. There must be a reason why we're doing so. Come, we should go. */ 
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv05x09
SAY @229 /* I can leave you, but first tell me: Is being idealistic a sin? Yes, I'm like that, but does this really annoy you? */
IF~~THEN REPLY @230 /* No...I think...things are very hard for me right now. I'm sorry, I shouldn't say something like that, Yvette. Please, let's just talk another time. I'd really like that. */ GOTO Yv05x14
IF~~THEN REPLY @231 /* Yes. Idealism isn't anything but daydreaming, which isn’t very useful. Wake up, girl, this isn't a fairy tale, it's real life. */ GOTO Yv05x15
END

IF~~THEN BEGIN Yv05x15
SAY @232 /* It's a pity you think of this like that, but I'll try not to concern myself with it. I don't wish to talk with you, <CHARNAME>. You're very different from how I thought you were. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv05x14
SAY @233 /* I think I can understand that. We'll talk later. I think you need some silence now, but don't worry. We'll talk. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15)~ EXIT
END

IF~~THEN BEGIN Yv05x04
SAY @234 /* So, this is what you really think about me. All right, I won't cry because of that. I promised to help you, so I'll do so, but don't expect that we'll talk again. We'd argue. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv05x16
SAY @235 /* It was a joke, but I expected a bit different response. We should move now... */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv05x17
SAY @236 /* (Yvette looks confused, but after a moment she tries to slap your face.) */
IF~~THEN REPLY @237 /* (Allow her.) */ GOTO Yv05x0S
IF~~THEN REPLY @238 /* (Catch her hand.) */ GOTO Yv05xS2
END

IF~~THEN BEGIN Yv05x0S
SAY @239 /* Don't dare to do such a thing ever again. You're much more insolent than I though you were. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv05xS2
SAY @240 /* (She seems to be surprised. Her face turns red.) Don't dare to do such a thing ever again. You're much more insolent than I though you were. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",15) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////////////6

IF ~Global("YvetteRomanceTalk","GLOBAL",16) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1)~ THEN BEGIN Yv06x00
SAY @241 /* Maybe it's a bit silly of a question, but do you like fruits? */
IF ~~ THEN REPLY @242 /* Yes, I do. Especially all kinds of berries. */ GOTO Yv06x01
IF ~~ THEN REPLY @243 /* Well, yes. All kinds of them. */ GOTO Yv06x01
IF ~~ THEN REPLY @244 /* I hate fruits! They're so...bleh! */ GOTO Yv06x02
IF ~~ THEN REPLY @245 /* What a stupid question. But then again, I should be used to stupid questions with you. It's nothing new. */ GOTO Yv06x03
END

IF ~~ THEN BEGIN Yv06x02
SAY @246 /* I didn't know that. Well, I'm in limbo now. */
=
@247 /* Honestly I decided to buy you a present as I told you some time ago, but I don't know if you’ll want to try them since you said you don't like fruits, so... */
IF ~~ THEN REPLY @248 /* But I'm sure you can change that, Yvette. Let's give it a try. */ GOTO Yv06x04
IF ~~ THEN REPLY @249 /* Hmmm, maybe you should be a fruit! I hate you almost as much as I hate those and I'm sick of you and your ideas. */ GOTO Yv06x03
IF ~~ THEN REPLY @250 /* Well, I don't like them, but I'll try them for you. */ GOTO Yv06x04
IF ~~ THEN REPLY @251 /* I hope you don't mind that, dear lady? It's just not my cup of tea. I’m sorry if that hurts you. */ GOTO Yv06x12
END

IF ~~ THEN BEGIN Yv06x01
SAY @252 /* I'm glad. So there's a chance you'll enjoy my surprise. */
=
@253 /* I promised you a gift, and Yvette doesn't forgot things like that! I have something for you. And you probably can guess, it'll be something you can eat. */
IF ~~ THEN GOTO Yv06x04
END

IF ~~ THEN BEGIN Yv06x04
SAY @254 /* But it would be too simple if I simply gave you something I'd bought. So I've prepared a riddle for you. You have to try to guess what I'm talking about. */
=
@255 /* So, let's begin the game. "I'm as tiny as a drop, cowled with warm colors. I'm sweet, I'm small, and I can be yours if you pick me from my little home. I live near my sister, strawberry." */
IF ~~ THEN REPLY @256 /* Well, if this fruit has strawberry for a sister, it must be a strawberry, too! */ GOTO Yv06x05
IF ~~ THEN REPLY @257 /* Small, sweet and cowled with warm color...I think this may be a cherry! */ GOTO Yv06x05
IF ~~ THEN REPLY @258 /* Maybe you're talking about cranberry? */ GOTO Yv06x05
IF ~~ THEN REPLY @259 /* Sister of a strawberry - Maybe you're talking about wildberries? They look a bit similar to strawberries, but they're much smaller. */ GOTO Yv06x06
IF ~~ THEN REPLY @260 /* Hmm, I have no idea. Maybe you're talking about blueberries? Well, I do love blueberries. Am I right? */ GOTO Yv06x05
IF ~~ THEN REPLY @261 /* Oh, I know! You're talking about your stupidity! Oh, Yvette, give me a break! */ GOTO Yv06x03
IF ~~ THEN REPLY @262 /* I have no idea. Tell me. */ GOTO Yv06x07
END

IF ~~ THEN BEGIN Yv06x07
SAY @263 /* Oh, <CHARNAME>, you didn't even try. Ok, I'll tell you - they were wildberries. They're like little strawberries. They usually grow in the woods. */
IF ~~ THEN GOTO Yv06x08
END

IF ~~ THEN BEGIN Yv06x05
SAY @264 /* Wrong answer! I was talking about wildberries. I'm sure you know them. They're like little strawberries. They usually grow in the woods. */
IF ~~ THEN GOTO Yv06x08
END

IF ~~ THEN BEGIN Yv06x06
SAY @265 /* Hey, how did you guess? You're right, I was talking about the wildberries. Little, sweet wildberries. */
IF ~~ THEN GOTO Yv06x08
END

IF ~~ THEN BEGIN Yv06x08
SAY @266 /* Here, take them. I hope you'll like them. (Yvette gives you a little basket of wildberries. They really do look like tiny strawberries. You can already smell their sweet fragrance.) */
IF ~~ THEN REPLY @124 /* Thank you, Yvette. */ GOTO Yv06x09
IF ~~ THEN REPLY @267 /* Thanks! They're surely delicious! */ GOTO Yv06x10
IF ~~ THEN REPLY @268 /* They look rotten, you know? Thank you, but just take them away from me! I don't feel like eating them. */ GOTO Yv06x11
END

IF ~~ THEN BEGIN Yv06x09
SAY @269 /* You're welcome, <CHARNAME>! */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",17) GiveItemCreate("YxStra",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN Yv06x10
SAY @270 /* Well, I hope so, <CHARNAME>! */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",17) GiveItemCreate("YxStra",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN Yv06x11
SAY @271 /* You know they're not rotten, and so do I. However, I think I'm no longer in the mood to talk to you, and I don't think that will change, either. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",17) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv06x03
SAY @272 /* What...? Well, I should know you're like that. Don't think I'll talk with you again. I'll help you, but don't expect anything more. This won't work, <CHARNAME>. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",17) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv06x12
SAY @273 /* No, it's fine. I'm glad you're not afraid to be honest with me. I bought you some strawberries, but if you don't like them, I'll just eat them myself! (Yvette smiles at you.) It's really fine. So, let's move now, we'll talk later. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18)~ EXIT
END

//////////////7

IF ~Global("YvetteRomanceTalk","GLOBAL",17) Global("YvetteRomanceActive","GLOBAL",1) Global("YStraw","GLOBAL",1)~ THEN BEGIN Yv07x00
SAY @274 /* And? Do you like them? */
IF ~~ THEN REPLY @275 /* Very sweet, like you, but, I think you should check them out for yourself, Yvette. (Smile and put one of the berries into her mouth.) */ GOTO Yv07x01
IF ~~ THEN REPLY @276 /* I like them! Thank you once again! */ GOTO Yv07x02
IF ~~ THEN REPLY @277 /* They're sour. Still, that's fine with me. */ GOTO Yv07x03
IF ~~ THEN REPLY @278 /* Bitter and sour...just like you. Is that the answer you expected? */ GOTO Yv07x04
IF ~~ THEN REPLY @279 /* As sweet as your lips that I desire so greatly, lady. (Smile and come closer to Yvette.) */ GOTO Yv07x10
END

IF ~~ THEN BEGIN Yv07x01
SAY @280 /* (Yvette tastes the wildberries and smiles at you.) */
=
@281 /* Hmm, yes, very sweet, like your flattery, <CHARNAME>. */
IF ~~ THEN GOTO Yv07x05
END  

IF ~~ THEN BEGIN Yv07x02
SAY @282 /* Well, it was my pleasure! I'm glad you like them. */
IF ~~ THEN GOTO Yv07x05
END

IF ~~ THEN BEGIN Yv07x03
SAY @283 /* Maybe they were picked too soon...However, if you like them, that's fine. (Yvette comes closer and eats one of the wildberries.) */
IF ~~ THEN GOTO Yv07x05
END

IF ~~ THEN BEGIN Yv07x05
SAY @284 /* Don't get me wrong, but when I'm close to you, it feels like the past days have returned. It's meant as a compliment, still I'm sorry I’m talking about myself and my past again. */
=
@285 /* (Suddenly, a wind blows and takes one of the scrolls from Yvette's pack. It falls a few yards away. Yvette runs and picks up it.) */
=
@286 /* Well, that was unexpected. It'd be a pity if I lost a spell like that. I forgot how strong the wind can be. */
=
@287 /* Maybe this is another stupid question, but do you enjoy the wind? I like to feel it, since it can bring the warmth of the sun, or it can cause a little chill, yet it tells me I'm alive. */
IF ~~ THEN REPLY @288 /* Well, I enjoy it. Especially when it's the breath of someone close to me. I want to feel your breath on my chest, girl. You know what I mean. */ GOTO Yv07x06
IF ~~ THEN REPLY @289 /* I do, really. It reminds me of something from my childhood. Sometimes when I wanted to be alone, I would travel through the top of the cliffs near Candlekeep. */ GOTO Yv07x07
IF ~~ THEN REPLY @290 /* Well, maybe. I love storms. I enjoy watching the lightning and falling rain, and listening to the wind blowing. */ GOTO Yv07x08
IF ~~ THEN REPLY @291 /* No, I prefer calm days without wind. That's why I like it indoors. No rain, no wind, no weather. */ GOTO Yv07x09
END

IF ~~ THEN BEGIN Yv07x06
SAY @292 /* Men - you're all the same. You can think about only one thing, and that makes me feel uncomfortable. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv07x07
SAY @293 /* That’s quite interesting. You're still a riddle to me - wandering alone across the cliff tops. */
=
@294 /* But I asked because...Well, I used to be a lifeless picture, and now the wind's something I have to get used to. For Sune's Heart, sometimes I think I should just stay silent. (Blush) */
=
@295 /* Come, we should move, <CHARNAME>. Remember to eat all the berries soon. They might be inedible by tomorrow morning. (Yvette smiles and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN Yv07x08
SAY @296 /* Storms? Well, I didn't expect that kind of answer, but it makes sense. A storm is like nature's wrath, yet still it's beautiful. Seeing the lights in the sky, listening to the sound of the falling rain. I think I could enjoy it, too, when I think about it that way. */
= 
@297 /* Still I suppose my question was probably a bit silly. I simply have to get used to the wind. It’s just I haven't felt it for so long. */
=
@298 /* But come! We should move! Remember to eat all the wildberries before they become inedible. (She smiles at you.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN Yv07x09
SAY @299 /* Really? Well, I don't think I can understand that. The weather reminds me of emotions. The way it changes, it can cheer a person up or bring a person down. That's why I love it. */
=
@300 /* My question was a bit silly. I simply have to get used to the wind and I haven't felt it for so long. But enough for now. */
=
@301 /* We should move! Come, <CHARNAME>. (Yvette smiles at you, looks at the wildberries, and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18)~ EXIT
END

IF ~~ THEN BEGIN Yv07x04
SAY @302 /* (Yvette slaps your face.) */
IF~~THEN REPLY @303 /* (Avoid the slap.) */ GOTO Yv07x0S
IF~~THEN REPLY @304 /* (Let her hit you.) */ GOTO Yv07xS2
END

IF ~~ THEN BEGIN Yv07xS2
SAY @305 /* You deserved that! */ 
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv07x0S
SAY @306 /* Just leave me alone. I... I'm fed up with you. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv07x10
SAY @307 /* I'm sorry, but I don't like that tone of yours, mister. I think we should just move. Let's go. (Yvette appears embarrassed and confused.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",18) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

/////////////8

IF ~Global("YvetteRomanceTalk","GLOBAL",19) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~ THEN BEGIN Yv08x00
SAY @308 /* I’ve been thinking. I called you Child of Bhaal once, but you could take that as an offense - you're <CHARNAME>, not the Bhaalspawn. You're not your father, and calling you that wasn't right, so I want to apologize to you. You’ve never called me "drawing" or "painted girl" and now the whole situation makes me feel stupid. */
IF ~~ THEN REPLY @309 /* I didn't like it, but I'm not angry, Yvette. I’ve gotten somewhat used to it. You're not the first person who has called me that, and I'm sure you won't be the last. */ GOTO Yv08x01
IF ~~ THEN REPLY @310 /* It certainly wasn't funny to me. I wish no one ever called me a Bhaalspawn. */ GOTO Yv08x02
IF ~~ THEN REPLY @311 /* You're right, it was out of place, but I'm not angry, I just think we shouldn't talk about it anymore. I don't like situations like that, and I prefer it if I can avoid them. Now we should move. */ GOTO Yv08x03
IF ~~ THEN REPLY @312 /* I didn't even realize that. Of course I'm not angry! Yvette, you don't have to be so serious about it. I'm a Child of Bhaal and nothing will change that, so smile, please. */ GOTO Yv08x04
END

IF ~~ THEN BEGIN Yv08x01
SAY @313 /* I'm glad, but still I feel a bit confused, because I don't want to behave ignorant just because everyone else behaves that way. You're a strong person, but I don't want you to get used to this. People do get used to things that are commonplace; yet calling you things like that shouldn't be something you take for granted. And children should never be blamed for the acts of their parents. */
IF ~~ THEN GOTO Yv08x05
END

IF ~~ THEN BEGIN Yv08x02
SAY @314 /* That's the reason why I'm saying sorry, <CHARNAME>. As I said, you're not your father, and you shouldn't be treated like you were the next God of Murder. It was simply unfair. */
IF ~~ THEN GOTO Yv08x05
END

IF ~~ THEN BEGIN Yv08x04
SAY @315 /* I'm really glad you’re not offended, still I simply don't feel comfortable. It's something...something that’s just unfair. I feel like I was putting a dark mark on you, as though you were branded by the Lord of Murder, and I'm sorry. You're a really strong <PRO_RACE>, you know as you shoulder all of this and yet still you manage a smile. */
IF ~~ THEN GOTO Yv08x05
END

IF ~~ THEN BEGIN Yv08x05
SAY @316 /* I think if I was in your place, I wouldn't be as strong. I would fight with my heritage, yes, but that would create a different me and I'm not sure what kind of difference that would be. But you smile, you fight, and you enjoy the adventuring life. You know, I think you should be given a gift. */
=
@317 /* (Yvette comes closer and kisses your cheek.) */
IF~~THEN REPLY @318 /* Get off me. */ GOTO Yv08x0G
IF~~THEN REPLY @319 /* (Let her.) */ GOTO Yv08x0Y
END

IF~~THEN BEGIN Yv08x0Y
SAY @320 /* Let's say that was a gift from Sune to a friend of mine, and to someone who gave freedom to a woman, who praised him. */
IF ~~ THEN REPLY @321 /* Well, that was a fair gift, milady! */ GOTO Yv08x06
IF ~~ THEN REPLY @322 /* I wish Sune had made you appear much earlier. I wish I'd met you just after leaving Candlekeep. The road would have been much easier. */ GOTO Yv08x07
IF ~~ THEN REPLY @323 /* Yeah, right... So, I think we have to go. */ GOTO Yv08x08
IF ~~ THEN REPLY @324 /* What in the Nine Hells are you doing, Yvette? I want to prevent such things from happening in the future, so we shouldn't talk so often. Let's go. */ GOTO Yv08x03
END

IF ~~ THEN BEGIN Yv08x06
SAY @325 /* How flattering, <CHARNAME>! My lord, you're most kind! (Yvette starts to laugh gently.) */
IF ~~ THEN GOTO Yv08x09
END

IF ~~ THEN BEGIN Yv08x07
SAY @326 /* Well, you want me to blush, don't you? (Yvette smiles at you playfully.) If I had been with you in those days, maybe you wouldn't be as you are today. */
IF ~~ THEN GOTO Yv08x09
END

IF ~~ THEN BEGIN Yv08x09
SAY @327 /* (Yvette suddenly smiles and looks into the sky. A single drop of rain falls onto her skin. The drop runs down her cheek and neck, creating a small, light-reflecting stream.) */
=
@328 /* Well, it's starting to rain. I really like this kind of weather. Refreshing crystalline drops, leaves on the wind with those drops on them, this silence before the rain really starts to fall. However, I hope that my adoration of rain won't bring me a cold! */
IF ~~ THEN REPLY @329 /* I couldn't find better words to describe this, Yvette. You're a fine poet. Did you ever think of becoming a bard? */ GOTO Yv08x10
IF ~~ THEN REPLY @330 /* You're right. Come, let's go. We have to find shelter. */ GOTO Yv08x11
IF ~~ THEN REPLY @331 /* You're so silly, but still it's very charming. */ GOTO Yv08x12
END

IF ~~ THEN BEGIN Yv08x10
SAY @332 /* A bard? Well, I never thought of that, honestly. I think I'm happy as a Heartwarder, and with my other skills. Everything's as it should be for me, but thanks - that was kind. */
=
@333 /* (Yvette smiles at you.) Now, I think we should move, right? */
IF ~~ THEN REPLY @334 /* (Nod.) */ GOTO Yv08x13
IF ~~ THEN REPLY @335 /* (Smile at her) Yes, come. But slowly, we're not made of sugar. I also like to feel the rain on my skin. */ GOTO Yv08x13
IF ~~ THEN REPLY @336 /* Yes, let's go. */ GOTO Yv08x13
END

IF ~~ THEN BEGIN Yv08x13
SAY @337 /* Let's go, then. We'll talk soon, my leader. (Yvette looks in the sky again. More and more cold drops fall onto her face. She smiles as she walks.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",20)~ EXIT
END

IF ~~ THEN BEGIN Yv08x11
SAY @338 /* Yes, you're right. I don’t want you to catch a cold, dear leader. (She smiles at you and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",20)~ EXIT
END

IF ~~ THEN BEGIN Yv08x12
SAY @339 /* (She laughs.) Charming, you say? Well, no one ever told me my fondness for the rain is silly, so that’s something new. I must say you're fairly silly, too, dear <CHARNAME>. */
=
@340 /* Should we move now? I don't want you to catch a cold. */
IF ~~ THEN REPLY @341 /* Well, thank you. Yes, we should move. */ GOTO Yv08x14
IF ~~ THEN REPLY @342 /* (Nod and start walking.) */ GOTO Yv08x14
END

IF ~~ THEN BEGIN Yv08x14
SAY @343 /* I think you should drink some tea. Now, let's go, or all our clothes will be wet, my leader. (Yvette looks in the sky again. More cold drops fall onto her face. She smiles as she walks.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",20)~ EXIT
END

IF ~~ THEN BEGIN Yv08x08
SAY @344 /* Well, you're probably right. (Yvette smiles at you, then looks into the sky. Suddenly, a single drop of water falls onto her face. Then another. It's starting to rain.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",20)~ EXIT
END

IF ~~ THEN BEGIN Yv08x03
SAY @345 /* Staying silent isn't the answer for anything, but I won't force you to talk with me, <CHARNAME>. Let's go, then. I won't disturb you anymore. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",20) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv08x0G
SAY @346 /* (Surprised Yvette leaves you alone.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",20) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END


//////////////9

IF ~Global("YvetteRomanceTalk","GLOBAL",21) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL") Global("YvetteEmily","GLOBAL",0)~ THEN BEGIN Yv09x00
SAY @347 /* I...I think I remember something more. Please, can you tell me again where you found my portrait? You mentioned Waukeen's Promenade? */
IF ~~ THEN REPLY @348 /* I bought it in Waukeen's Promenade, from an old lady. She needed some money, and I wanted to help her, so I bought the portrait. Did I do something wrong? */ GOTO Yv09x01
IF ~~ THEN REPLY @349 /* I've had enough of your blubbering! Shut up, or I'll send you to the Nine Hells! */ GOTO Yv09x02
END

IF ~~ THEN BEGIN Yv09x01
SAY @350 /* I remember one night in particular. The air was cold, there were fireflies in our clearing, the full moon was in the sky and I could hear an owl in the forest. We sat under the willow - Gabriel and I. We were stargazing. */
=
@351 /* Then, he told me more about his family. He told me about a cousin, Emily, who lived in Athkatla. She was like a sister, he said someone as close as I was. He enjoyed visiting her home. */
=
@352 /* I think this woman you met in Waukeen's Promenade could have been Emily. Could you show me where you met her? She might still be there; somewhere and I want to talk with her. She may know what happened to Gabriel, to Camila, to my family. Please, do this for me. */
IF ~~ THEN REPLY @353 /* I'll help you, with pleasure. I'll show you the place, and I think I remember her face too. */ GOTO Yv09x03
IF ~~ THEN REPLY @354 /* No. I've had enough of that! I've never met such a self-concerned girl as you. I won't help you now or in the future, so shut up. */ GOTO Yv09x02
END

IF ~~ THEN BEGIN Yv09x03
SAY @355 /* Thank you, <CHARNAME>. You're my blessing. I'm sure Sune led you to me, because she knew that we'd help each other. Come, let's not waste time. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",22) SetGlobal("YvetteEmily","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Yv09x02
SAY @356 /* So, this is your real face. So be it. I won't help you anymore. I'm leaving you, <CHARNAME>. You're the past I'll never seek. */ 
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",22) SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

////////////10

IF ~Global("YvetteRomanceTalk","GLOBAL",23) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~ THEN BEGIN Yv10x00
SAY @357 /* "Yet bless me with strength, Beautiful Lady,
With eyes and heart that will show thine glow,
Upon me, upon my soul and thine passion,
That guides me to the gates of thine land." */
IF ~~ THEN REPLY @358 /* What are you doing, Yvette? */ GOTO Yv10x01
IF ~~ THEN REPLY @359 /* Is everything all right, milady? */ GOTO Yv10x01
IF ~~ THEN REPLY @360 /* For Bhaal's sake...this must be a joke...Whatever...(Walk away.) */ GOTO Yv10x02
IF ~~ THEN REPLY @361 /* I'm sorry, but I don't want you to say any prayers when I'm near, Yvette. It makes me feel a bit uncomfortable. */ GOTO Yv10x14
END

IF ~~ THEN BEGIN Yv10x01
SAY @362 /* I just needed some prayers. This is all too much. That means that all those memories aren't really mine. They're images that Gabriel remembered, what he remembered when he was creating the portrait. The real Yvette is dead, and I'm nothing but a magical creation, a spell, a summoned creature. */
=
@363 /* I don't know what I should believe in, <CHARNAME>. Is it all a lie? Am I Gabriel's dreams? Artificial? Are the memories real, or just the imagination of my friend who I've never met? */
IF ~~ THEN REPLY @364 /* Do you remember what you told me once? You said that I'm <CHARNAME>, and nothing can change that. You're Yvette, and that's the main truth. */ GOTO Yv10x03
IF ~~ THEN REPLY @365 /* You shouldn't be troubled by something like that. The most important thing is that you're alive, you have free will, and still you can feel the joy of life, Yvette! */ GOTO Yv10x04
IF ~~ THEN REPLY @366 /* So, the truth is you're like a summoned kobold. Just a magical creature. You should get used to it, Yvette. */ GOTO Yv10x05
IF ~~ THEN REPLY @367 /* You're Yvette, and nothing will change that. You should be glad that you've been given another chance at life, and this is the truth you want. */ GOTO Yv10x03
END

IF ~~ THEN BEGIN Yv10x03
SAY @368 /* Maybe you are right. But I hate it...when I heard the words, that I'm not the real Yvette, it felt like all my skin was being pierced by thorns, or splashed with ice cold water. */
IF ~~ THEN GOTO Yv10x06
END

IF ~~ THEN BEGIN Yv10x04
SAY @369 /* I don't know myself in this situation. I don't know who I really am! Still, thank you, <CHARNAME>. I understand that you want to help me. */
IF ~~ THEN GOTO Yv10x06
END

IF ~~ THEN BEGIN Yv10x06
SAY @370 /* It's...It's so unfair. I don't understand why Sune would do this? Why has she allowed this to happen? And why I was born again. Like that...? */
=
@371 /* So many questions, but I'll probably never find any answers. I'm sorry I'm behaving like this. I hope you understand. */
IF ~~ THEN REPLY @372 /* Yes, I do. I know this may be hard, but I think I know the answer to some of your questions. */ GOTO Yv10x07
IF ~~ THEN REPLY @373 /* Whatever...Can we go now? */ GOTO Yv10x05
IF ~~ THEN REPLY @374 /* Can I try to answer some of your questions? */ GOTO Yv10x07
END

IF ~~ THEN BEGIN Yv10x07
SAY @375 /* Do you really have something to say about this? Yes, I want to hear your thoughts. Your voice makes my soul feel a bit more...calm. Tell me. */
IF ~~ THEN REPLY @376 /* Well, it's only what I think, but...Maybe it was Yvette's prayer to Sune. Maybe she asked her priestess for a chance to bring her memories back to life again. This may not be Yvette's real body, but her real soul is here nonetheless. */ GOTO Yv10x08
IF ~~ THEN REPLY @377 /* I think this is a blessing from Sune. It's a gift, and you shouldn't think about it anymore. */ GOTO Yv10x09
IF ~~ THEN REPLY @378 /* I think your life's a joke from Sune and that's all. */ GOTO Yv10x10
END

IF ~~ THEN BEGIN Yv10x08
SAY @379 /* You're so kind to me, <CHARNAME>. It may only be a wishful thinking, but still I’d like to think this may be the truth. I want to believe it. */
IF ~~ THEN GOTO Yv10x11
END

IF ~~ THEN BEGIN Yv10x09
SAY @380 /* Maybe you're right. Faith is something that doesn't need proof. This may be something similar. */
IF ~~ THEN GOTO Yv10x11
END

IF ~~ THEN BEGIN Yv10x11
SAY @381 /* You really know how to cheer me up. When we started to talk, I was praying, but this isn't the end of to<DAYNIGHT>'s ritual. Would you like to join me? */
IF ~~ THEN REPLY @382 /* Yes, why not? */ GOTO Yv10x12
IF ~~ THEN REPLY @383 /* No, that's not my cup of tea. I'd rather stay out of this, sorry. */ GOTO Yv10x13
END

IF ~~ THEN BEGIN Yv10x12
SAY @384 /* (Yvette takes a little bottle and a bowl from her pack. She takes your hands gently.) It's said that we should keep ourselves clean. We have to at least wash our hands if we don't have time for a purifying bath. */
=
@385 /* (Yvette pours water onto your hands. Next, she puts a drop of oil on your hand. It has the scent of a wild rose. The priestess gently massages your hands with the oil.) I wish I could thank you in another way, but this is all I can do for you. */
IF~~THEN REPLY @386 /* I'm sorry, but I changed my mind. Continue by yourself. */ GOTO Yv10x13
IF~~THEN REPLY @387 /* (Do nothing and let her continue.) */ GOTO Yv10x0C
END

IF ~~ THEN BEGIN Yv10x0C
SAY @388 /* (She looks again at your hands.) You know, I like your hands. They’re strong, yet still beautiful. They may do much good. Let's move now, dear lord. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",24)~ EXIT
END

IF ~~ THEN BEGIN Yv10x13
SAY @389 /* It's fine. I'm not a fanatic who will force you to take part. All in all, I'm Sune's servant, you're just my friend, not another priest. Thank you for this refreshing talk, <CHARNAME>. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",24)~ EXIT
END

IF ~~ THEN BEGIN Yv10x10
SAY @390 /* You're cruel. I don't wish to talk with you. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",24) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv10x05
SAY @391 /* Well, as you wish. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",24) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv10x02
SAY @392 /* (You leave her alone.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",24)~ EXIT 
END

IF ~~ THEN BEGIN Yv10x14
SAY @393 /* (Yvette appears surprised.) Excuse me, but my beliefs are directly connected with me, and therefore none of your concern. I'm sorry to say that, but your request was a bit out of place. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",24) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

//////////////11

IF~Global("YvetteRomanceTalk","GLOBAL",25) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~THEN BEGIN Yv11x00
SAY @394 /* Ever since I have been given my life back, I haven't seen any trace of another priest or priestess of Sune, but there were many of us. Do you know anything about that? Were the servants of Sune criticized or something? */
IF~~THEN REPLY @395 /* It must be a coincidence. As I remember, the cult of beauty's still well known, just as Sune herself is. Would you like to tell me something about the priests of Sune? Or maybe I should say 'priestesses'? */ GOTO Yv11x01
IF~~THEN REPLY @396 /* I have no idea, and you know what else? It doesn't matter to me. I've had enough of these irritating talks with you, Yvette. I can't stand it anymore! Let's travel in silence, all right? */ GOTO Yv11x02
IF~~THEN REPLY @397 /* It doesn't matter. But, I'd like to ask you a question: imagine a situation where you have to save a person who's important, but doing that means betraying Sune. What would you do? */ GOTO Yv11x09
END

IF~~THEN BEGIN Yv11x01
SAY @398 /* (Yvette laughs.) No, there are also priests of Sune. Some may think only a woman would serve Lady Firehair, but that's not true. Most cultists are women, but there are still a few men! */
=
@399 /* Hmm, but what should I start with? We focus on beauty in all forms, but we're not as idle as others think. We also praise the beauty that lies within people - dreams, pure hearts, ideas and thoughts. From time to time, we gather in gardens or clearings to talk, discuss art, make new friends, and to praise Sune and the beauty that exists. */
=
@400 /* You know, those meetings are fine, but I think I prefer to praise Sune on my own, outside of those gatherings. I like the people and the place, but I really enjoy looking for Sune's beauty on my own. Life is like a riddle, or a game of hide and seek and I want to face it. */
=
@401 /* And I'm glad I can "seek" by your side, dear lord. */
IF~~THEN REPLY @402 /* I think I understand, you don't just praise "nice-looking things", there's a bit deeper philosophy behind your belief. */ GOTO Yv11x03
IF~~THEN REPLY @403 /* And I'm glad I'm by *your* side, Yvette, but I don't think life's a game or a play. It's something quite a bit different. */ GOTO Yv11x04
IF~~THEN REPLY @404 /* That was really boring of you. You know, I think you see yourself as something marvelous, but your not, you're just annoying. */ GOTO Yv11x02
END

IF~~THEN BEGIN Yv11x03
SAY @405 /* Hehe, Indeed - there's something more! I believe there's some beauty in all people. Their beliefs, hopes, love, wishes, their calm or free will, are all a kind of beauty. */
=
@406 /* Hmm, but I'm also a woman, so I also like those "nice-looking things," you know! (Yvette laughs.) */
IF~~THEN REPLY @407 /* And what do you mean by that? Am I that kind of "thing," dear lady? */ GOTO Yv11x05
IF~~THEN REPLY @408 /* I'm sure you do. Most people like "beautiful things," but we should remember that "beauty is in the eye of the beholder." As in the person looking and not those monsters! */ GOTO Yv11x06
IF~~THEN REPLY @409 /* Whatever. We have to go. Don't bother me with your thoughts next time, Yvette. */ GOTO Yv11x02
END

IF~~THEN BEGIN Yv11x04
SAY @410 /* Oh, maybe that wasn't an accurate metaphor then, because I don't live only to have fun and games, and by saying that life is a riddle or a game, I only meant that answering questions like "who do we want to become?" shouldn't cause such despair. */
=
@411 /* Because that would probably take away from the beauty of our lives, and it would erase the smile from our faces. */
IF~~THEN REPLY @412 /* Oh, that can't happen! I want to see you smiling, milady! Does this <PRO_RACE>'s face make you smile from time to time? (Wink.) */ GOTO Yv11x05
IF~~THEN REPLY @413 /* I'd prefer the beauty to stay here. Unreasonable, maybe but still, you know what they say: "beauty is in the eye of the beholder", and I'm not talking about the monsters! */ GOTO Yv11x06
IF~~THEN REPLY @414 /* Yeah, right...Can we go now? You're really boring. */ GOTO Yv11x02
END

IF~~THEN BEGIN Yv11x05
SAY @415 /* Hey, and what kind of question is that, my lord? (She puts her hands on her waist and smiles playfully at you.) */
IF~~THEN REPLY @416 /* Well, quite a simple one, actually. Come on, Yvette tell me! */ GOTO Yv11x07
IF~~THEN REPLY @417 /* All right, all right! You don't have to answer. Yeesh, girls these days can’t even tell when a man's joking! */ GOTO Yv11x08
END

IF~~THEN BEGIN Yv11x07
SAY @418 /* <CHARNAME>! It would be unfair to give you the answer to that kind of riddle! Come on! The <DAYNIGHT>'s so nice to<DAYNIGHT>. We'll talk another time. (Yvette smiles at you.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",26)~ EXIT
END

IF~~THEN BEGIN Yv11x08
SAY @419 /* (Yvette laughs and looks at you.) You're really funny, dear sir! Come on! Let's go enjoy some adventuring! */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",26)~ EXIT
END

IF~~THEN BEGIN Yv11x06
SAY @420 /* Very true, but do you know what that means, my lord? It means you can't be sure what I like, because you may enjoy quite different things, so if you want to give me, for example, some chocolates, who knows what kind of chocolate I'd prefer? (Yvette smiles playfully at you.) */
=
@421 /* Come on, enough of these jokes and chats, dear lord! Let's have some adventuring, shall we? (Yvette smiles again and starts walking.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",26)~ EXIT
END

IF~~THEN BEGIN Yv11x02
SAY @422 /* If you didn't want me to bother you, you should've said that some time ago. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",26) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv11x09
SAY @423 /* I...(Yvette appears troubled by your question.) That’s not something you should ask. Sune's the goddess I serve, I could never betray her. I'm sorry, but just leave me now. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",26) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

//////////////12

IF~Global("YvetteRomanceTalk","GLOBAL",27) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~THEN BEGIN Yv12x00
SAY @424 /* <CHARNAME>, a long time ago you mentioned Gorion and Candlekeep, but there's something more I'd like to ask about your family. Do you have any siblings? I'm talking about on your mother's side obviously, not other Children of Bhaal. */
IF~~THEN REPLY @425 /* Gorion took care of me by himself. I don't know if my mother had any other children. I don't think I'll ever know that, since I know nothing about my mother. */ GOTO Yv12x01
IF~~THEN REPLY @426 /* I don’t remember, I was too young for that, although I see images of Gorion, Imoen and Candlekeep in my mind whenever childhood and family are mentioned. */ GOTO Yv12x02
IF~~THEN REPLY @427 /* That's not your business, Yvette. Focus on your own matters and leave me alone. */ GOTO Yv12x03
END

IF~~THEN BEGIN Yv12x01
SAY @428 /* You're right. That was a bit silly of me and I should have known that. It was Gorion who raised you, not your mother. */
IF~~THEN GOTO Yv12x04
END

IF~~THEN BEGIN Yv12x02
SAY @429 /* I see. I should have known that since it was Gorion who raised you, so I guess you don't know a single thing about your mother. */
IF~~THEN GOTO Yv12x04
END

IF~~THEN BEGIN Yv12x04
SAY @430 /* (Yvette smiles at you, but appears a bit troubled. She tries to act as though everything's all right, but her eyes tell a slightly different story.) Sorry for asking. You probably want to go now, and I shouldn't have bothered you. */
IF~~THEN REPLY @431 /* Hey, Yvette, I can tell something troubles you. We can take a short break, so come on, tell me what has made you so melancholy. */ GOTO Yv12x05
IF~~THEN REPLY @432 /* You're right, we should continue on. We don't have time to waste on talk. Come on, let's move. */ GOTO Yv12x06
END

IF~~THEN BEGIN Yv12x05
SAY @433 /* Thank you, <CHARNAME>. I think I can tell you. */
=
@434 /* You see, a little part of my past comes back to me before I go to bed. It's fine, I'm no longer troubled by my existence, to me, it's Sune's gift and that's all. Last night another memory came to me. You know, I used to have a younger sister...Marie...a really cheerful girl. */
IF~~THEN REPLY @435 /* You used past tense. I suppose... */ GOTO Yv12x06
IF~~THEN REPLY @436 /* Used to have? You mean she has aged and died? */ GOTO Yv12x07
IF~~THEN REPLY @437 /* You mean she died during the plague that appeared in your region? */ GOTO Yv12x07
IF~~THEN REPLY @438 /* What happened to her? */ GOTO Yv12x08
END

IF~~THEN BEGIN Yv12x06
SAY @439 /* ...she died. */
IF~~THEN GOTO Yv12x09
END

IF~~THEN BEGIN Yv12x07
SAY @440 /* No. It was something a bit different. */
IF~~THEN GOTO Yv12x09
END

IF~~THEN BEGIN Yv12x08
SAY @441 /* (Yvette remains silent for a moment before answering.) */
IF~~THEN GOTO Yv12x09
END

IF~~THEN BEGIN Yv12x09
SAY @442 /* She fell into the river and drowned. (The priestess could barely say that last sentence aloud.) */
IF~~THEN REPLY @443 /* I'm sorry, Yvette. How did this happen? You don't have to answer if you don't want to. */ GOTO Yv12x10
IF~~THEN REPLY @444 /* I understand. It must have been hard for you. I suppose you don't want to talk now. */ GOTO Yv12x10
IF~~THEN REPLY @445 /* Things like that just happen. Big deal! People are born and die every minute. That's how it is. */ GOTO Yv12x11
END

IF~~THEN BEGIN Yv12x10
SAY @446 /* It's fine. I'll tell you the story. */
=
@447 /* You know, I used to play with her near the bridge, at the clearing. We caught butterflies, and told stories to each other, and made bouquets for our parents. When I was sixteen, she was still seven. */
=
@448 /* One day, she had gone out with other children from the village. They wanted to play together in the fresh air instead of sitting at home. The parents decided they were old enough and they didn't need a guardian or anything, so Mom said I could stay and help her with dinner. I did so. */
=
@449 /* I stayed home and she died that day. The other children tried to save her, but the river's flow was too strong. The children ran on the riverside, tried to give her a stick she could catch, so they could pull her out of the water, but they failed. Marie couldn't swim. Umberlee has no mercy, but I won't blame her. */
=
@450 /* I won't cry anymore too. I cried a rain that would fill the whole sea. I just believe Marie is now guarded by Sune and I have no doubt about that. */
IF~~THEN REPLY @451 /* You know, you're a very strong person, Yvette. */ GOTO Yv12x12
IF~~THEN REPLY @452 /* I'm sure Sune took care of Marie. You didn't even have to pray for that. */ GOTO Yv12x12
IF~~THEN REPLY @453 /* Even if you did cry, there's nothing wrong with that, Yvette. */ GOTO Yv12x12
IF~~THEN REPLY @454 /* Whatever. Don't think I'll cheer you up every time you think about that child. */ GOTO Yv12x13
END

IF~~THEN BEGIN Yv12x13
SAY @455 /* I don't expect anything from you. Not after that kind of response, <CHARNAME>. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",28) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv12x12
SAY @456 /* Thank you, <CHARNAME>. Thank you for your support, dear lord. Well, how shall I show my gratitude for listening to my stories? I'll have to think about that. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",28)~ EXIT
END

IF~~THEN BEGIN Yv12x11
SAY @457 /* To me, it's a big deal. Leave me! */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",28) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv12x03
SAY @458 /* I thought you enjoyed our talks. I was probably wrong. Let's move. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",28) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END


////////////////13

IF~Global("YvetteRomanceTalk","GLOBAL",29) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~THEN BEGIN Yv13x00
SAY @459 /* Care to dance, my lord? */
IF~~THEN REPLY @460 /* But there's no music. */ GOTO Yv13x01
IF~~THEN REPLY @461 /* Well, it would be unkind if I refused such a nice offer! (Take her hand.) */ GOTO Yv13x02
IF~~THEN REPLY @462 /* I like that idea. (Take her hand.) */ GOTO Yv13x02
IF~~THEN REPLY @463 /* Oh, just leave me alone! I'm fed up with you! */ GOTO Yv13x03
IF~~THEN REPLY @464 /* Sorry, I'm not in the mood for that. Please, let's talk another time. */ GOTO Yv13x04
END

IF~~THEN BEGIN Yv13x01
SAY @465 /* So? (Yvette smiles at you.) */
IF~~THEN REPLY @466 /* You're right: it doesn't matter. (Take her hand.) */ GOTO Yv13x02
IF~~THEN REPLY @467 /* Well, I think I like that idea. (Take her hand.) */ GOTO Yv13x02
IF~~THEN REPLY @468 /* Leave me. You're really annoying. */ GOTO Yv13x03
IF~~THEN REPLY @469 /* Sorry, but I don't feel like dancing. Let's talk another time, all right? I'm not in the mood. */ GOTO Yv13x04
END

IF~~THEN BEGIN Yv13x02
SAY @470 /* (Yvette comes closer to you and puts her hand on your shoulder. You slowly start dancing.) */
IF~CheckStatLT(Player1,15,DEX)~THEN GOTO Yv13x05
IF~CheckStatGT(Player1,14,DEX)~THEN GOTO Yv13x06
END

IF~~THEN BEGIN Yv13x05
SAY @471 /* (Your moves are a bit clumsy, but when you make a wrong step, Yvette just laughs gently and smiles at you. Yvette's small hand hides within your hand's grasp. Her steps aren't perfect, either.) */
IF~~THEN GOTO Yv13x07
END

IF~~THEN BEGIN Yv13x06
SAY @472 /* (You lead well in the dance. Yvette appears impressed by your dancing skills and she smiles at you. Yvette's small hand hides within your hand's grasp. Her steps aren't perfect, your moves are more accurate, still the priestess seems to not bother herself in the technical perfection of the dance.) */
IF~~THEN GOTO Yv13x07
END

IF~~THEN BEGIN Yv13x07
SAY @473 /* (After a moment, she ends the dance and bows.) Thank you, dear sir, for this extraordinary time. (She laughs and looks into the sky.) Isn't it a nice <DAYNIGHT> to<DAYNIGHT>? */
IF~~THEN REPLY @474 /* Indeed, it is, but hey, shouldn't a man bow to woman after a dance? */ GOTO Yv13x08
IF~~THEN REPLY @475 /* Aye! You appear quite happy. */ GOTO Yv13x09
IF~~THEN REPLY @476 /* Hey, I can't stop looking at you. You know, maybe let's have some fun. You know what I mean. Don't you want to take care of *me*? */ GOTO Yv13x10
END

IF~~THEN BEGIN Yv13x08
SAY @477 /* We don't have to be so formal, dear sir! Well, it's time to move. Come, we'll have another chance for a talk soon. I'm sure of that! */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",30)~ EXIT
END

IF~~THEN BEGIN Yv13x09
SAY @478 /* Who'd feel sad when faced with freedom and adventuring, silly? */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",30)~ EXIT
END

IF~~THEN BEGIN Yv13x10
SAY @479 /* Excuse me? I think you have misunderstood the situation and me. I'm not the kind of person you think I am. Leave me. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",30) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv13x04
SAY @480 /* Well, I understand. Let's share some silence then, good sir! */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",30)~ EXIT
END

IF~~THEN BEGIN Yv13x03
SAY @481 /* I thought you were fine with my presence. Well, I won't bother you, then. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",30) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

//////////////14

IF~Global("YvetteRomanceTalk","GLOBAL",31) GlobalTimerExpired("YvetteSleepTimer","GLOBAL") Global("YvetteRomanceActive","GLOBAL",1)~THEN BEGIN Yv14x00
SAY @482 /* (You wake up earlier than usual, the rest of the party is still sleeping - including Yvette. Her face is calm, her breathing regular. A violet blanket covers her body.) */
IF~~THEN REPLY @483 /* (Make her some breakfast before she awakens.) */ GOTO Yv14x01
IF~~THEN REPLY @484 /* (Go to her and lie next to her.) */ GOTO Yv14x02
IF~~THEN REPLY @485 /* (Get her some flowers.) */ GOTO Yv14x03
IF~~THEN REPLY @486 /* (Do nothing, and start packing the camp.) */ GOTO Yv14x04
END

IF~~THEN BEGIN Yv14x01
SAY @487 /* (Before Yvette awakens, you prepare some bread, scrambled eggs, and tea. You hurry to take care of everything before she rises.) */
IF~~THEN GOTO Yv14x05
END

IF~~THEN BEGIN Yv14x03
SAY @488 /* (While Yvette sleeps, you make a bouquet of lilac blossoms that grow nearby. The scent is sweet and subtle.) */
IF~~THEN GOTO Yv14x05
END

IF~~THEN BEGIN Yv14x05
SAY @489 /* (A moment later, Yvette opens her eyes and yawns. When she realizes that you're awake, she blushes and hides her mouth behind her hand. She looks at you a bit confused, but still with a cheerful expression.) */
=
@490 /* Well, it appears I had quite a long sleep. You're already dressed and...hey, what's this? Don't tell me it's for me! */
IF~~THEN REPLY @491 /* Well, it is, my fair lady! */ GOTO Yv14x06
IF~~THEN REPLY @492 /* Do you see any other beautiful lady I could give this kind of surprise? Of course it's for you, silly. */ GOTO Yv14x06
IF~~THEN REPLY @493 /* Hmm, let me think... */ GOTO Yv14x07
END

IF~~THEN BEGIN Yv14x07
SAY @494 /* (Yvette looks at you with slight disorientation on her face.) */
IF~~THEN REPLY @495 /* Of course it's for you. */ GOTO Yv14x06
IF~~THEN REPLY @496 /* Yes, it's for you, silly! I'm sure you already knew the answer! */ GOTO Yv14x06
END

IF~~THEN BEGIN Yv14x06
SAY @497 /* Here I thought I'd seen much, and it would be hard to surprise me! Dear sir, this lady's grateful for this marvelous surprise you've prepared. I owe you a smile! (Saying that Yvette moves to a sitting position. She sits on her bedroll, hugging a small pillow.) */
IF~~THEN REPLY @498 /* I think this lady doesn't owe me a single thing. It's an honor to have you at my side, Yvette. (Smile.) */ GOTO Yv14x08
IF~~THEN REPLY @499 /* No problem, Yvette! Well, you should get used to this kind of surprise! */ GOTO Yv14x08
IF~~THEN REPLY @500 /* Ah, that's a fair payment! */ GOTO Yv14x08
IF~~THEN REPLY @501 /* I expected something more than a smile. You know...I'm a man, and I need some...pleasure. So? You owe me that. */ GOTO Yv14x09
END

IF~~THEN BEGIN Yv14x02
SAY @502 /* (Before she awakens, you sneak silently to her bedroll and lie beside her. She stays calm for another few minutes.) */
=
@503 /* (She open her eyes. She appears surprised to see you so close.) Hmm, hello? I seem to remember you being a bit farther from my bed, dear lord! */
IF~~THEN REPLY @504 /* I just wanted to look at your calm face while you were still sleeping, lady. */ GOTO Yv14x10
IF~~THEN REPLY @505 /* Well, since you're a priestess of Sune, you like beautiful things, so I thought I should be the first thing you see to<DAYNIGHT>. (Wink.) */ GOTO Yv14x11
IF~~THEN REPLY @506 /* Well, before we're back on the road again, I hoped you could give me some pleasure, maid. You know what I mean. */ GOTO Yv14x09
END

IF~~THEN BEGIN Yv14x10
SAY @507 /* So, now I have a dedicated stalker of my own! (Yvette starts to laugh. She also blushes, but you're not sure if she's aware of that.) */
IF~~THEN GOTO Yv14x06
END

IF~~THEN BEGIN Yv14x11
SAY @508 /* Oh, that's an interesting idea! And this self-confidence! (Yvette starts to laugh and blush at the same time. She looks at you.) */
IF~~THEN GOTO Yv14x06
END

IF~~THEN BEGIN Yv14x08
SAY @509 /* Lord Charming. That's what I should call you! */
=
@510 /* You remind me of the mornings when my sister woke me up with a prank, or with the aroma of pancakes that my mother had made! With wake-ups like that, I feel much better, my lord! (Yvette kisses your cheek.) */
IF~~THEN REPLY @237 /* (Allow her.) */ GOTO Yv14x0A
IF~~THEN REPLY @511 /* (Push her back.) */ GOTO Yv14x13
END

IF ~~ THEN BEGIN Yv14x0A
SAY @512 /* That should provide you with an equally nice wake-up. */
IF~~THEN REPLY @513 /* Hmm, I like that! Now it will be a really great day, my fair lady. */ GOTO Yv14x12
IF~~THEN REPLY @514 /* (Wink at Yvette.) */ GOTO Yv14x12
IF~~THEN REPLY @515 /* You're just marvelous! An extraordinary companion! */ GOTO Yv14x12
IF~~THEN REPLY @516 /* I think you misunderstood something. Never do that again. */ GOTO Yv14x13
END

IF~~THEN BEGIN Yv14x12
SAY @517 /* (Yvette doesn't say a word. She smiles at you and stands, clears the bedroll, and gathers her equipment.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",32)~ EXIT
END

IF~~THEN BEGIN Yv14x13
SAY @518 /* (Yvette appears confused.) Well...all right. We should move now. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",32) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv14x09
SAY @519 /* (Yvette slaps you in the face.) */
IF~~THEN REPLY @237 /* (Allow her.) */ GOTO Yv14x0S
IF~~THEN REPLY @520 /* (Avoid the hit.) */ GOTO Yv14x0S
END

IF ~~ THEN BEGIN Yv14x0S
SAY @521 /* That was much too insolent. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",32) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv14x04
SAY @522 /* (Everything continues as after every end of rest.) */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",32)~ EXIT
END

////////////////15

IF~Global("YvetteRomanceTalk","GLOBAL",33) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~THEN BEGIN Yv15x00
SAY @523 /* Plenty of energy and the will to travel, and what's more I must say you're really good-looking, my lord. Well, you're an adventurer, so surely you don't have to exercise a lot! Fighting's enough. Maybe you have a scar or two, but still... Hey, by the way, I never asked you your age! How old are you, <CHARNAME>? */
IF~~THEN REPLY @524 /* Well, Gorion didn't know when I was born, but I suppose I'm something like twenty-one, more or less. */ GOTO Yv15x01
IF~~THEN REPLY @525 /* How should I know? Probably between twenty and twenty-four. Since I didn't know my mother, I had no one to ask. */ GOTO Yv15x0A
IF~~THEN REPLY @526 /* That's not your business, girl. */ GOTO Yv15x02
END
IF~~THEN BEGIN Yv15x0A
SAY @527 /* Did I sense a bit of annoyance in your voice? I didn't want to make you angry, and I think it was quite a simple question. */
IF~~THEN GOTO Yv15x01
END

IF~~THEN BEGIN Yv15x01
SAY @528 /* You're quite young then! Well, now it's obvious why you're so full of energy. Bruises here and there on your skin make you look quite manly, you know? Ah, I'm sure you tell women all about the great fights you've had. (Yvette winks at you.) */
IF~~THEN REPLY @529 /* You know me well! However, I haven’t done that lately. */ GOTO Yv15x03
IF~~THEN REPLY @530 /* Haha. You know, I never asked *you* your age. You also look quite young. Are you younger than I am? */ GOTO Yv15x04
IF~~THEN REPLY @531 /* Me? No way! */ GOTO Yv15x03
IF~~THEN REPLY @532 /* You know, it's getting late. We should move, my fair lady. We'll talk another time, all right? */ GOTO Yv15x05
IF~~THEN REPLY @533 /* Whatever. Leave me, girl. We have to move. */ GOTO Yv15x02
END

IF~~THEN BEGIN Yv15x03
SAY @534 /* I see. (Yvette smiles.) */
IF~~THEN REPLY @535 /* Hmm, how old are you? They say that men shouldn't ask women their age, but I just can't resist. (Wink at Yvette.) */ GOTO Yv15x04
IF~~THEN REPLY @536 /* May I ask you to tell me your age, my fair lady? */ GOTO Yv15x04
IF~~THEN REPLY @537 /* It's time for us to move, lady. We'll talk next time. */ GOTO Yv15x05
IF~~THEN REPLY @538 /* You're smiling again...It's getting boring... */ GOTO Yv15x02
END

IF~~THEN BEGIN Yv15x04
SAY @539 /* Well, I don't mind telling you that I'm younger. I'm eighteen now - I guess, supposing I'm the same age I was when the plague in my village happened. Ha! It sounds quite strange, but no one can accuse me of being boring! */
=
@540 /* I hope you don't mind adventuring with someone younger than you, good sir? I try to be useful. */
IF~~THEN REPLY @541 /* Of course I don't mind! You can take care of yourself on the road, you're a nice conversationalist, and your age doesn't matter. */ GOTO Yv15x06
IF~~THEN REPLY @542 /* Well, I think not, though I'll keep an eye on you. I don't want such a beautiful child to be hurt. */ GOTO Yv15x07
IF~~THEN REPLY @543 /* It's fine with me, m'lady. */ GOTO Yv15x06
IF~~THEN REPLY @544 /* Err, you're...younger than I thought. I think we should limit our talks. */ GOTO Yv15x08
END

IF~~THEN BEGIN Yv15x07
SAY @545 /* Excuse me? Hey, I'm not a child, <CHARNAME>! */
IF~~THEN REPLY @546 /* Just joking! (Wink.) */ GOTO Yv15x09
IF~~THEN REPLY @547 /* You know, you're younger than I thought. I think we shouldn't talk so much from now on. Sorry. */ GOTO Yv15x08
IF~~THEN REPLY @548 /* Your age is fine with me, Yvette. I probably misunderstood you a bit. */ GOTO Yv15x06
END

IF~~THEN BEGIN Yv15x09
SAY @549 /* You prankster! (Yvette smiles and jumps on you. Suddenly, she looks into your eyes, blushes and calms down.) */
IF~~THEN REPLY @550 /* (Push her away.) Know your place, Yvette! */ GOTO Yv15x02
IF~~THEN REPLY @551 /* (Let her to continue.) */ GOTO Yv15x06
END

IF~~THEN BEGIN Yv15x06
SAY @552 /* It's nice to know you're fine adventuring with a woman three years younger than you. You know, some men would react differently. I hate it when they say "adventuring's not for females; they should stay at home and cook dinner." What Rubbish! */
=
@553 /* I'm glad I met you, and not those men. */
IF~~THEN REPLY @554 /* (Come closer to her.) */ GOTO Yv15x10
IF~~THEN REPLY @555 /* And I'm glad I met you, Yvette. */ GOTO Yv15x11
IF~~THEN REPLY @556 /* You know, your attitude makes me regret meeting you. */ GOTO Yv15x02
IF~~THEN REPLY @557 /* We should move. Come, lady, we will talk later! */ GOTO Yv15x05
END

IF~~THEN BEGIN Yv15x10
SAY @558 /* (When you come closer, Yvette steps back and smiles at you.) You know, it's time for us to move. We'll talk next time. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",34)~ EXIT
END

IF~~THEN BEGIN Yv15x11
SAY @559 /* Thank you...You know, I think it's time for us to move, dear lord. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",34)~ EXIT
END

IF~~THEN BEGIN Yv15x05
SAY @560 /* I understand. Time flies and we have a lot to do! We'll talk another time, then. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",34)~ EXIT
END

IF~~THEN BEGIN Yv15x02
SAY @561 /* I thought you...never mind. We should waste no more time. We should move. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",34) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv15x08
SAY @562 /* If you think three years' difference is such a big problem, then you're probably right. I won't waste your time, <CHARNAME>. Let's move. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",34) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

//////////////16

IF~Global("YvetteRomanceTalk","GLOBAL",35) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~THEN BEGIN Yv16x00
SAY @563 /* You know, I remember when I was a child, I used to go out alone after dinner in search of places I could spend some time by myself. I called those places "hideouts." */
IF~~THEN REPLY @564 /* Understandable. You know, most people need that kind of sanctuary, where we can think without being disturbed. I also had a "hideout" in Candlekeep. */ GOTO Yv16x01
IF~~THEN REPLY @565 /* Adorable. I think it's natural that you wanted to have that kind of place, and I'm sure they were beautiful and magical. We all need a place where we can be alone from time to time. */ GOTO Yv16x01
IF~~THEN REPLY @566 /* I never needed any "hideouts". Hiding from problems to think...It just isn’t like me. */ GOTO Yv16x02
IF~~THEN REPLY @567 /* It's a bit idiotic, you know? */ GOTO Yv16x03
END

IF~~THEN BEGIN Yv16x01
SAY @568 /* I'm glad you understand that, <CHARNAME>. */
IF~~THEN GOTO Yv16x04
END

IF~~THEN BEGIN Yv16x02
SAY @569 /* I see. Well, not everyone needs that kind of place. It'd be boring if everyone were the same, wouldn't it? */
IF~~THEN GOTO Yv16x04
END

IF~~THEN BEGIN Yv16x04
SAY @570 /* I had plenty of those places. The bridge I mentioned, a clearing, huge rocks on which I’d lay and gaze at the clouds. I've always been a daydreamer, but you probably realized that long ago, my lord. */
=
@571 /* But let's get back to the story. Among all those places, I had one special one--a treehouse--though it wasn't really a house. In the forest, there was a tree slightly higher than the others. */
=
@572 /* One day, I showed the place to Gabriel, and he suggested making a treehouse there. He brought a hammer, some nails, and solid, chopped wood. It took a few days, but he made a ladder that led almost to the top. On two big branches, he fixed more pieces of wood. */
=
@573 /* That's how he made what he called later "Yvette's Balcony." Now I know how dangerous it was; if he had fallen while building that balcony, he would have died! If only our parents knew what we were doing. They'd have killed us! (Yvette laughs briefly) I'd surely shout if *my* children did something so dangerous! */
=
@574 /* But you know, on the other hand, the result was worth the effort. I could watch sunsets and sunrises, when the sky turned orange and pink, see the small cottages on the horizon. It was a breathtaking view. I'll never forget it - that's something I know without a doubt. */
=
@575 /* Did I bother you too much, good lord? */
IF~~THEN REPLY @576 /* Of course you didn't! I really like listening to your stories. I love to imagine everything you describe with such detail. */ GOTO Yv16x05
IF~~THEN REPLY @577 /* Maybe a bit, but you know, it's fine. (Wink at her.) */ GOTO Yv16x06
IF~~THEN REPLY @578 /* If I hear one more tale like that, I'll kill myself...before you even finish the story. */ GOTO Yv16x03
END

IF~~THEN BEGIN Yv16x05
SAY @579 /* I'll take that as a compliment, <CHARNAME>. */
IF~~THEN GOTO Yv16x07
END

IF~~THEN BEGIN Yv16x06
SAY @580 /* Well, I see. However, thank you for listening to the story. */
IF~~THEN GOTO Yv16x07
END

IF~~THEN BEGIN Yv16x07
SAY @581 /* This all took place when I was around ten years old, but even after I got a bit older, the passion of looking for beautiful places remained. Camila, my tutor, even gave me a book that described some of the lands. */
=
@582 /* You know, I think I remember one of those places - maybe because of the drawing that was in the book. A charming place, a lake, and what's more surprising: it's near Athkatla! What would you say to a little trip? */
IF~~THEN REPLY @583 /* I'd love to! Do you know the way? */ GOTO Yv16x08
IF~~THEN REPLY @584 /* We don't have time for any sightseeing trips! */ GOTO Yv16x09
END

IF~~THEN BEGIN Yv16x08
SAY @585 /* I think so, however I don't want to lose our way, so we should go to Athkatla's City Gate first. We should exit the gate, travel east and then west. On the way to the City Gates, I'll try to refresh my memory. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",36)~ EXIT
END

IF~~THEN BEGIN Yv16x09
SAY @586 /* A pity. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",36) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Yv16x03
SAY @587 /* That's really rude, you know? I don't wish to talk with you, <CHARNAME>. */
IF~~THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",36) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

//////////////17

IF ~Global("YvetteRomanceTalk","GLOBAL",36) Global("YvetteRomanceActive","GLOBAL",1) AreaCheck("AR0020")~ THEN BEGIN Yv17x00
SAY @588 /* And here we are: the City Gates. From this place, I can lead you to the place I mentioned: Starchild's Lake. The road should be safe, so maybe we should go there on our own? I mean, we don't need anyone else traveling with us. Let's call it a small break from the rush we were in. */
IF ~~ THEN REPLY @589 /* I like the idea. So, what're we waiting for? Lead on, my fair lady. */ GOTO Yv17x01
IF ~~ THEN REPLY @590 /* You know, I've changed my mind. I wanted to go just because you wanted to, but it's starting to be a bit troublesome. */ GOTO Yv17x02
END

IF ~~ THEN BEGIN Yv17x01
SAY @591 /* Marvelous! All right, I shall lead then. No worries, dear lord; the way is easy and safe! Come, my sir. We should set off. (Yvette smiles. You both pass through the city gate.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",38)~ EXIT
END

IF ~~ THEN BEGIN Yv17x02
SAY @592 /* You should've cleared things up some time ago. Just...do what you want. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",38) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////////////18

IF ~Global("YvetteRomanceTalk","GLOBAL",38) Global("YvetteRomanceActive","GLOBAL",1) AreaCheck("ARY001")~ THEN BEGIN Yv18x00
SAY @593 /* It's here. There are those who would say there's nothing special about this place, but to me, its silence and beauty are uncommon. */
=
@594 /* (The air holds the scent of flowers growing on a nearby clearing. You also notice wild strawberries hidden under a small tree. Surprisingly, there are no traces of other people, the weather is fine and warm, only a gentle wind dancing with Yvette's long hair from time to time. Yvette picks a few strawberries and gives one to you.) */
=
@595 /* Try one--it's delicious. (She smiles at you and gestures to the wooden platform.) Come, let's sit there for a moment. */
IF ~~ THEN REPLY @596 /* (Take the strawberry and follow Yvette to the platform.) */ GOTO Yv18x01
IF ~~ THEN REPLY @597 /* I don't like strawberries, but it's a nice idea to have a seat there for a moment. */ GOTO Yv18x02
IF ~~ THEN REPLY @598 /* That's the place you wanted to show me? We don't have time to waste, but you *had* to see a stupid lake? */ GOTO Yv18x03
END

IF ~~ THEN BEGIN Yv18x01
SAY @599 /* (The strawberry is sweet, juicy and bright red. It's much better than those found in the Promenade's markets.) */
IF ~~ THEN GOTO Yv18x02
END

IF ~~ THEN BEGIN Yv18x02
SAY @600 /* (Yvette sits down on the edge of the platform, halfway to the end of the wooden construction. Sun rays reflect in the water's pure, mirror like surface. The priestess takes off her shoes and lets her feet plunge into the lake. She watches the dragonflies flying near the water lilies, and speaks.) */
=
@601 /* I just wanted to have a little moment of peace with you. We've traveled a lot, but our everyday worries didn't let us share silence, so I decided that maybe we should visit this place. Once, I heard that people who share the quiet can get to know each other better. (When saying this, Yvette still watches the dragonflies.) */
IF ~~ THEN REPLY @602 /* Wise words, dear lady. I don't mind sharing this kind of moment with you. This place is really magical. */ GOTO Yv18x04
IF ~~ THEN REPLY @603 /* You really are very observant, you know? You trace those dragonflies with your eyes. */ GOTO Yv18x05
IF ~~ THEN REPLY @604 /* (You also plunge your bare feet into the water. Then tickle Yvette's foot with yours.) */ GOTO Yv18x06
IF ~~ THEN REPLY @605 /* You know, I'm fed up with this kind of talk. Let's just get back to Athkatla. */ GOTO Yv18x03
END

IF ~~ THEN BEGIN Yv18x04
SAY @606 /* Indeed, it is. I really wanted to show it to you. (Yvette makes circles with her feet in the water. Small waves appear on the surface.) */
IF ~~ THEN GOTO Yv18x07
END

IF ~~ THEN BEGIN Yv18x05
SAY @607 /* I always enjoyed looking at them. It's like observing a painting that changes with every second. */
IF ~~ THEN GOTO Yv18x07
END

IF ~~ THEN BEGIN Yv18x06
SAY @608 /* (Yvette doesn't say a word. Instead, she chuckles gently and gazes at the waves that appear on the surface of the lake.) */
IF ~~ THEN GOTO Yv18x07
END

IF ~~ THEN BEGIN Yv18x07
SAY @609 /* You know, you may think I'm mad, but I'd like to swim a bit. I hope you don't mind! (Yvette stands up, goes to the end of the platform and unfastens her armor.) */
=
@610 /* Can you look in the other direction for a moment? You may guess why, good lord. Servants of Sune should be proud and aware of their looks, but still... */
IF ~~ THEN REPLY @611 /* Hehe, it's fine with me. (Look at the shore for a moment.) */ GOTO Yv18x08
IF ~~ THEN REPLY @612 /* Oh, of course! (Pretend to look at something else, but peek from time to time.) */ GOTO Yv18x09
END

IF ~~ THEN BEGIN Yv18x09
SAY @613 /* (You see Yvette's smooth bare skin, the wet marks made on the wood where her feet had passed, her hair flowing with the wind. There is but a moment’s hesitation, then she slowly slips into the water.) */
IF ~~ THEN GOTO Yv18x10
END

IF ~~ THEN BEGIN Yv18x08
SAY @614 /* (You gaze at the sand and grass. You hear the sound of Yvette's clothing hitting the wooden platform, and a moment later, you hear Yvette splashing about in the lake.) */
IF ~~ THEN GOTO Yv18x10
END

IF ~~ THEN BEGIN Yv18x10
SAY @615 /* You may look now. */
=
@616 /* The water's gorgeous! Come on! Take off your clothes and join! I won't look. (Yvette smiles and swims off. She doesn't look in your direction.) */
IF ~~ THEN REPLY @617 /* (Take off your clothes and jump into the water.) */ GOTO Yv18x11
IF ~~ THEN REPLY @618 /* You don't have to say it twice. Here I come! (Take off your clothes and jump into the water.) */ GOTO Yv18x11
IF ~~ THEN REPLY @619 /* Sorry, but I can't swim! */ GOTO Yv18x12
IF ~~ THEN REPLY @620 /* What a waste of time! Can we go now? I'm fed up with you and your behavior. We should be adventuring now... */ GOTO Yv18x13
END

IF ~~ THEN BEGIN Yv18x11
SAY @621 /* (You jump into the water. At the end of the platform, the lake is already deep. For a second, you're completely submerged, so you can see the underwater part of the platform, and the bottom of the lake, with some water plants, crayfish and shells. A moment later, your head breaks the surface and you catch a breath.) */
=
@622 /* (Yvette looks at you. With her hands, she makes a wave.) Surprise, my dear lord! */
=
@623 /* You know, I really like having this kind of fun, but I also know that we should get back soon. There's a lot we have to do. Irenicus won't wait. */
IF ~~ THEN REPLY @624 /* (Smile and swim closer to Yvette.) */ GOTO Yv18x14
IF ~~ THEN REPLY @625 /* You're right. You know, I'm really grateful that you showed me this place. I'm sure we'll come back here one day. */ GOTO Yv18x15
IF ~~ THEN REPLY @626 /* Aye. It's time for us to move. Come, we should get out of the water. */ GOTO Yv18x16
END

IF ~~ THEN BEGIN Yv18x14
SAY @627 /* (You're a couple feet from the girl. When you move slightly closer, she blushes and looks at the shore.) It's...really time for us to get back to Athkatla. (She looks at you again, and a moment later she swims to the shore.) */
IF ~~ THEN GOTO Yv18x17
END

IF ~~ THEN BEGIN Yv18x15
SAY @628 /* (Yvette smiles at you and blushes. She doesn't say a word. Instead, for a moment, she looks deeply into your eyes. Then, she gazes at the shore) You know, we should really move now. (Still smiling, Yvette swims to the shore.) */
IF ~~ THEN GOTO Yv18x17
END

IF ~~ THEN BEGIN Yv18x16
SAY @629 /* (Yvette nods and swims to the shore.) */
IF ~~ THEN GOTO Yv18x17
END

IF ~~ THEN BEGIN Yv18x12
SAY @630 /* Really? That's a pity. Give me a moment, please. (Yvette disappears under the water for a moment. A few seconds later, she appears near the platform and gives you a small shell.) */
=
@631 /* Well, you can at least take this little thing with you as a souvenir from this place, dear sir. */
=
@632 /* (Yvette swims to the shore.) */
IF ~~ THEN GOTO Yv18x17
END

IF ~~ THEN BEGIN Yv18x17
SAY @633 /* (A moment later, you both stand on the road, ready to go.) */
=
@634 /* Thank you for this moment. I know it seems a waste of time, but still it was so special...thank you, good sir. Now we should be back on the road. We have to get Irenicus. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",39)
ActionOverride(Player1,LeaveAreaLUA("AR0021","",[542.335],0))
ActionOverride("YxYve",LeaveAreaLUA("AR0021","",[603.317],0))~ EXIT 
END

IF ~~ THEN BEGIN Yv18x13
SAY @635 /* I thought you'd enjoy our stay here. All right, give me a moment, and then we'll return to Athkatla. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",39) SetGlobal("YvetteRomanceActive","GLOBAL",3) ActionOverride(Player1,LeaveAreaLUA("AR0021","",[542.335],0))
ActionOverride("YxYve",LeaveAreaLUA("AR0021","",[603.317],0))~ EXIT
END

IF ~~ THEN BEGIN Yv18x03
SAY @636 /* I don't understand you. You said you wanted to see this place, and now you're behaving as though you expected...I don't even know what. Let's head back to Athkatla, then. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",39) SetGlobal("YvetteRomanceActive","GLOBAL",3) ActionOverride(Player1,LeaveAreaLUA("AR0021","",[542.335],0))
ActionOverride("YxYve",LeaveAreaLUA("AR0021","",[603.317],0))~ EXIT
END

/////////////19

IF ~Global("YvetteRomanceTalk","GLOBAL",40) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~ THEN BEGIN Yv19x00
SAY @637 /* You know, dear sir, it may sound strange, but I think... */
=
@638 /* I think that I feel something for you. I’ve never felt this way before, can this be...love? */
IF ~~ THEN REPLY @639 /* I'm glad to hear you feel the same way, Yvette. (Smile at her.) */ GOTO Yv19x01
IF ~~ THEN REPLY @640 /* Excuse me?! You really misunderstood this thing between us, Yvette. We're just friends, that's all. */ GOTO Yv19x02
IF ~~ THEN REPLY @641 /* Really? You're more stupid than I thought, then. */ GOTO Yv19x03
IF ~~ THEN REPLY @642 /* I know, Yvette. I knew there was something between us. I'm glad you said that. I waited, because I felt as though you weren't ready. */ GOTO Yv19x01
END

IF ~~ THEN BEGIN Yv19x01
SAY @643 /* (Yvette looks at you and blushes again, her eyes shining with an inner spark.) */
=
@644 /* You know, it was a bit hard for me to say that. I've never loved a man before. */
=
@645 /* Isn't that ironic, a priestess of Sune who never loved a man? But this whole thing with you, the adventuring, and especially your presence, it's become really important to me. I know, I must sound silly, but I just don't know how to behave, what I should feel, or say or do. */
IF ~~ THEN REPLY @646 /* Just let it be, and it will happen naturally. (Come closer to Yvette and kiss her gently.) */ GOTO Yv19x04
IF ~~ THEN REPLY @647 /* You seem very worried, and you don't have to be. I'm here, and I'm going to stay. (Kiss Yvette softly on her lips.) */ GOTO Yv19x04
IF ~~ THEN REPLY @648 /* Just do what you feel you should, milady. Just feel. */ GOTO Yv19x05
IF ~~ THEN REPLY @649 /* You know, I don't think I can stand this babbling of yours. */ GOTO Yv19x03
END

IF ~~ THEN BEGIN Yv19x05
SAY @650 /* I wish I could kiss you. */
IF ~~ THEN REPLY @651 /* You can, Yvette. (Come closer to her and kiss her.) */ GOTO Yv19x04
IF ~~ THEN REPLY @652 /* (Say nothing, come closer to the priestess and gently kiss her lips.) */ GOTO Yv19x04
IF ~~ THEN REPLY @653 /* But you know, I don't feel like kissing you, honestly. You're dear to me, but you're too young and...I don't feel it as you do. */ GOTO Yv19x02
END

IF ~~ THEN BEGIN Yv19x04
SAY @654 /* (Before your lips touch Yvette's, you feel her breath on your skin, and smell her sweet scent. A moment later, you experience her taste. It reminds you of brown sugar, cinnamon, and fig. Her lips are soft and warm. Yvette hesitates at first, as though unsure of the situation, but it appears her body tells her something more than doubts do. She puts her hand on your chest and the other on your cheek, tracing the line of your face as though she would memorize it, as though it were a gem of fragile edges that she'd like to keep.) */
=
@655 /* (After a moment, she breaks the kiss. She wraps her arms around you and holds you, her head resting on your chest as though she were hiding. She stays that way for a few minutes and then, she looks into your eyes and speaks.) */
=
@656 /* I wanted that, good sir, and now that I've reached this moment, I know I've never loved before. I don't understand it fully, but I doubt anyone can, maybe even Sune herself. */
IF ~~ THEN REPLY @657 /* You're very smart, dear Yvette. Thank you for both the kiss and the trust you gave me. */ GOTO Yv19x06
IF ~~ THEN REPLY @658 /* Aye. This feeling we share is only the beginning, there’s much more to experience together. (Kiss her on the cheek.) */ GOTO Yv19x06
IF ~~ THEN REPLY @659 /* I had expected a better kiss from a priestess of love. I would have thought you were more passionate. It was a bit...well...disappointing. */ GOTO Yv19x07
IF ~~ THEN REPLY @660 /* All right, kissing Yvette; done. Is that it or can we move now? */ GOTO Yv19x03
END

IF ~~ THEN BEGIN Yv19x06
SAY @661 /* (Yvette doesn't say a word. She keeps her hands at your sides and again comes closer to you. You feel her warm body. A moment later, she kisses your cheek and takes a few steps back.) */
=
@662 /* I'm glad we had this moment together, but it's already time for us to move, isn't it dear sir. My dearest one. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",41)~ EXIT
END

IF ~~ THEN BEGIN Yv19x07
SAY @663 /* (Yvette looks at you with a confused expression. She shakes her head.) Is it really something that bothers you? You're more into the situation than the feeling. Leave me...just leave me! */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",41) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv19x03
SAY @664 /* (Yvette looks at you in surprise, shocked into silence. A moment later, she shakes her head.) You're just too cruel. (Yvette starts to cry and leaves you.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",41) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv19x02
SAY @665 /* (Yvette's face becomes red with embarrassment.) I...I'm sorry. I think I misunderstood everything. We should move now, then. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",41) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

////////////20

IF ~Global("YvetteRomanceTalk","GLOBAL",42) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~ THEN BEGIN Yv20x00
SAY @666 /* (When you kneel to better reach your shoe and tie it properly, suddenly you feel Yvette embracing your neck. She lays her head on your shoulder.) Hello to you, dear sir. What are you doing down there? */
IF ~~ THEN REPLY @667 /* Hmm, setting a trap for a beautiful priestess, and I think I succeeded! */ GOTO Yv20x01
IF ~~ THEN REPLY @668 /* Well, something in my shoe's causing me pain. Why do you ask, m'lady? */ GOTO Yv20x02
IF ~~ THEN REPLY @669 /* Waiting for you to ask me to spend the night with you. */ GOTO Yv20x03
IF ~~ THEN REPLY @670 /* I'm sorry, but we must move. Can we talk another time, please? (Free yourself from her embrace.) */ GOTO Yv20x0A
END

IF ~~ THEN BEGIN Yv20x01
SAY @671 /* Indeed, you're right, my lord! (Yvette giggles gently and kisses your cheek, then releases you from her warm embrace.) */
IF ~~ THEN REPLY @672 /* (Smile.) */ GOTO Yv20x04
IF ~~ THEN REPLY @673 /* This isn't something you should do. */ GOTO Yv20x0A
END

IF ~~ THEN BEGIN Yv20x02
SAY @674 /* I see...Well, I think I may find something that could make you feel better. (She gently kisses your cheek and releases you from the embrace.) */
=
@675 /* I hope that kiss will erase this *nasty* pain in the foot. */
IF ~~ THEN REPLY @672 /* (Smile.) */ GOTO Yv20x04
IF ~~ THEN REPLY @673 /* This isn't something you should do. */ GOTO Yv20x0A
END


IF ~~ THEN BEGIN Yv20x04
SAY @676 /* You know, I watched you last night while you slept. I still can't believe how important to me you've become, <CHARNAME>. Most of my life before was dedicated to my family and to Sune, but now I've discovered something brand-new. (She smiles.) That would be you. */
IF ~~ THEN REPLY @677 /* But if you had to choose between Sune and me, who'd win that battle? */ GOTO Yv20x05
IF ~~ THEN REPLY @678 /* I can return those words to you, without any hesitation. Milady, I thank the gods and fates themselves for our having met. */ GOTO Yv20x06
IF ~~ THEN REPLY @679 /* Would you sleep with me, then? I can wait no longer. I want to feel how sweet you really are. I desire that so much. It's what I need most. */ GOTO Yv20x03
IF ~~ THEN REPLY @680 /* I'm sorry, but we don't have time now, milady. Can we have a chat next time? */ GOTO Yv20x0A
END

IF ~~ THEN BEGIN Yv20x06
SAY @681 /* You say those words with such strength. You really make me blush, milord, but I like your confidence. */
=
@682 /* "The embers couldst have shone in th' bonfire,
but time hadst to end their life up here,
Yet my smile upon thee willst flee not,
It willst remain here for nights and days -
As long as eternity lasts, my good lord." */
IF ~~ THEN REPLY @683 /* Well, I've heard you praying, but I've never heard you reciting a poem! That's kind of a surprise. */ GOTO Yv20x07
IF ~~ THEN REPLY @684 /* That was beautiful and you recited it well. */ GOTO Yv20x07
IF ~~ THEN REPLY @685 /* Stop that crap. I hate poems. They're nothing but a waste of time. */ GOTO Yv20x08
IF ~~ THEN REPLY @686 /* You make a tension grow in my body...you know what I mean. I need some time with you...now. */ GOTO Yv20x03
IF ~~ THEN REPLY @687 /* A nice poem. You know, one thing came to my mind. If you had to decide--Sune or me--what would be your choice? */ GOTO Yv20x05
END

IF ~~ THEN BEGIN Yv20x07
SAY @688 /* I'm glad you like it. I wrote it while looking at you. Ha, I sound like a stalker! */
IF ~~ THEN REPLY @689 /* But a quite beautiful one. */ GOTO Yv20x09
IF ~~ THEN REPLY @690 /* Believe me, it's fine with me. */ GOTO Yv20x09
IF ~~ THEN REPLY @691 /* I'm sorry, but we should move now. We'll talk next time, all right? */ GOTO Yv20x0A
IF ~~ THEN REPLY @692 /* So, maybe this stalker will sneak into my bedroll next time and give me some pleasure? */ GOTO Yv20x03
END

IF ~~ THEN BEGIN Yv20x09
SAY @693 /* (Yvette smiles at you and starts walking in silence. She appears in a good mood.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",43)~ EXIT
END

IF ~~ THEN BEGIN Yv20x08
SAY @694 /* I'm sorry to hear that. I wrote that while thinking about you. Leave me. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",43) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv20x0A
SAY @695 /* All right. Come then. Let's move, good lord! I'm glad I can still adventure with you. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",43)~ EXIT 
END

IF ~~ THEN BEGIN Yv20x03
SAY @696 /* That's what's most important to you? It was insolent, you know? You should never have asked that kind of question. I think you have this priestess of Sune confused with another profession. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",43) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv20x05
SAY @697 /* What? I thought you understood who Sune is to me and that this kind of question should never be asked. I can adore both Sune and you at the same time, I thought you understood that. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",43) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////////////21

IF ~Global("YvetteRomanceTalk","GLOBAL",44) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~ THEN BEGIN Yv21x00
SAY @698 /* (Yvette looks at you, smiles and winks. She's in a good mood. She takes out her water flask and takes few sips of water. After drinking, she looks into the sky, but she doesn't say a word. Her eyes reflect the light of the world around. A moment later, she takes a red ribbon and ties it in her hair.) */
=
@699 /* (Yvette looks at you again.) Dear lord, shouldn’t we be doing something right now? (She smiles at you and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",45)~ EXIT
END

///////////////22

IF ~Global("YvetteRomanceTalk","GLOBAL",46) Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("YvetteRomanceTime","GLOBAL")~ THEN BEGIN Yv22x00
SAY @700 /* My lord, I hope you don't mind my interrupting you, but don’t you think it's time for us to go where Imoen's being held? We should finish our business in Athkatla quickly and find a way to her. I shall try to protect you with my all powers, I swear. (She looks into your eyes.) */
IF ~~ THEN REPLY @701 /* You're right. Your support and presence are very important to me, milady. We shall set off after Imoen. */ GOTO Yv22x01
IF ~~ THEN REPLY @702 /* I think you misunderstood our goal, Yvette. We want to catch Irenicus and take my vengeance. I can save Imoen, but that's not our *main* goal. */ GOTO Yv22x02
IF ~~ THEN REPLY @703 /* I think you should stay in Athkatla while we look for Imoen. It may be too dangerous, and all this with Irenicus is my problem, not yours. */ GOTO Yv22x03
IF ~~ THEN REPLY @704 /* Leave me be. When I'm ready, I'll just seek them! Now I'm busy with other things. */ GOTO Yv22x04
IF ~~ THEN REPLY @705 /* We have to finish some things first, but soon we'll start the real chase. We'll save Imoen. (Smile at her.) */ GOTO Yv22x01
END

IF ~~ THEN BEGIN Yv22x01
SAY @706 /* (She comes closer to you and touches your cheek with her hand. Her skin smells of sandalwood and cherries.) */
IF~~THEN REPLY @707 /* (Take a step back.) That doesn't make me feel comfortable, you know. */ GOTO Yv22x11
IF~~THEN REPLY @708 /* (Allow her to continue.) */ GOTO Yv22x0C
END

IF ~~ THEN BEGIN Yv22x0C
SAY @709 /* Imoen's important to you, and I want to help you however I can, and for more than one reason. First, I should because I’m a priestess of Sune and the other reason is that I want to help the one who's dear to me, my lord. */
IF ~~ THEN REPLY @710 /* Dear? You mean you love me? */ GOTO Yv22x05
IF ~~ THEN REPLY @711 /* Splendid. (Smile and kiss Yvette's cheek.) */ GOTO Yv22x06
IF ~~ THEN REPLY @712 /* I really appreciate that, Yvette. */ GOTO Yv22x07
IF ~~ THEN REPLY @713 /* On a second thought I think you should stay in Athkatla. This whole affair’s not your responsibility, and I shouldn't worry you with it. */ GOTO Yv22x03
IF ~~ THEN REPLY @714 /* Oh, shush! I can't stand your babbling. */ GOTO Yv22x04
END

IF ~~ THEN BEGIN Yv22x05
SAY @715 /* I think so. Oh, please, just don't ask me that kind of question, just now. (When saying that, Yvette blushes a bit.) */
IF ~~ THEN GOTO Yv22x08
END

IF ~~ THEN BEGIN Yv22x06
SAY @716 /* (Yvette smiles and blushes. Her skin is silky smooth.) */
IF ~~ THEN GOTO Yv22x08
END

IF ~~ THEN BEGIN Yv22x07
SAY @717 /* You don't have to say that kind of thing, silly. I'm glad I can help you, but thank you. (She smiles at you.) */
IF ~~ THEN GOTO Yv22x08
END

IF ~~ THEN BEGIN Yv22x08
SAY @718 /* You know, when all of this ends, I'd like to make something for you. I'm sure you never ate a pie made with real blueberries, raspberries, brown sugar, rhubarb and vanilla powder. I used to make that with my mother, when I was young. */
=
@719 /* We'd visit the forest to pick some fresh fruit and on the way to the woodland, she'd tell me stories about her past, her first date with my father, about their first kiss. I really enjoyed those stories. That’s all past now, I know, and I'd like to experience it again. */
=
@720 /* But I know that those times won't come back, and that's fine. It'd be pointless to live in the past, and forget about the present. */
=
@721 /* However, it's not time for that kind of talk. Shall we move? We should find Irenicus and Imoen as soon as possible. We mustn't delay, good sir. */
IF ~~ THEN REPLY @722 /* Aye! And I just can't wait to try this pie of yours! I'll remember you promised it to me! */ GOTO Yv22x09
IF ~~ THEN REPLY @723 /* Indeed, it's time to move. Come, m'lady! (Smile.) */ GOTO Yv22x10
IF ~~ THEN REPLY @724 /* You know, this behavior of yours really annoys me. I just can't stand these talks anymore. I was wrong to think it could be something different. */ GOTO Yv22x11
END

IF ~~ THEN BEGIN Yv22x09
SAY @725 /* (Yvette laughs.) I'll remember to make you that pie, or something equally delicious! */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",47)~ EXIT
END

IF ~~ THEN BEGIN Yv22x10
SAY @726 /* You're right; let's go. (She starts walking – she too is smiling.) */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",47)~ EXIT
END

IF ~~ THEN BEGIN Yv22x11
SAY @727 /* I...I don't think I understand...Just...let's move... */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",47) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv22x04
SAY @302 /* (Yvette slaps your face.) */
IF~~THEN REPLY @303 /* (Avoid the slap.) */ GOTO Yv22x0S
IF~~THEN REPLY @304 /* (Let her hit you.) */ GOTO Yv22x0S
END

IF ~~ THEN BEGIN Yv22x0S
SAY @728 /* You're too cruel, <CHARNAME>. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",47) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv22x03
SAY @729 /* Really? Then, I don't think you understand a little something called partnership. It has nothing to do with "my business must be yours." We...We should move... */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",47) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv22x02
SAY @730 /* So, all that matters to you is vengeance? I can't understand that. */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceTalk","GLOBAL",47) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~AreaCheck("AR1600") Global("YvetteBrynnlaw","GLOBAL",1) RealGlobalTimerExpired("YvetteBrynnlawTime","GLOBAL") !Global("YvetteRomanceActive","GLOBAL",3)~ THEN BEGIN Yv23x00 //////////Brynnlaw
SAY @731 /* The air's much different here in Brynnlaw and I've never traveled by ship before. But, honestly, I really like the place. Not because of those pirates and bandits, of course, but because of the salty wind, the sand, and those strange birds I've never seen before. */
IF ~~ THEN REPLY @732 /* It’s fascinating how the many parts of Faerun really differ from each other. It’s kind of like a blanket made up of smaller strips of material. */ GOTO Yv23x01
IF ~~ THEN REPLY @733 /* I don’t think it's anything special. I was on an island in the past, the one with the famous Balduran's shipwreck. The climate was different, but the salty air is similar. I don't think I like it. */ GOTO Yv23x02
IF ~~ THEN REPLY @734 /* Blah, blah, blah: that's all I hear when you open your mouth. We should hurry and find Irenicus. Let's go. */ GOTO Yv23x03
IF ~~ THEN REPLY @735 /* Aye! Faerun's a really interesting place. You never know what to expect in new places, and it's always a surprise. */ GOTO Yv23x01
END

IF ~~ THEN BEGIN Yv23x01
SAY @736 /* A very true statement, my lord! Brynnlaw's a bit like a "jack in the box" to me now. What kind of creature will jump out of this box? Well, probably one with a parrot and a round earring! (She smiles at you.) */
IF ~~ THEN GOTO Yv23x04
END

IF ~~ THEN BEGIN Yv23x02
SAY @737 /* You don't like it? I think it's a pleasant change. I'm glad I can go to places different from those I've already seen. Like this island you've visited - it must've been quite an experience, too! */
IF ~~ THEN GOTO Yv23x04
END

IF ~~ THEN BEGIN Yv23x04
SAY @738 /* I wish we had more time to try the local food, and listen to the sailors' stories. I can only imagine the distant lands they’ve seen. I'd pay a coin or two to hear to that kind of tale. */
IF ~~ THEN REPLY @739 /* You have the enthusiasm of a child, you know? I don’t mean it as an insult; I think it's quite cute. */ GOTO Yv23x05
IF ~~ THEN REPLY @740 /* Your behavior's really cute...it’s almost as though you believed you could take this new land you see and go on a mysterious journey. */ GOTO Yv23x05
IF ~~ THEN REPLY @741 /* Your silliness knows no bounds. I’m already convinced you're not a very grown-up person, and then you do or say something even more childish! */ GOTO Yv23x06
IF ~~ THEN REPLY @742 /* I don't share your fascination about this place, but I'm glad you're happy to see new places, milady. */ GOTO Yv23x07
END

IF ~~ THEN BEGIN Yv23x05
SAY @743 /* Cute? Hey, mister, is it fair to call me that? (Yvette looks at you, her hands on her waist, a questioning expression on her face.) */
=
@744 /* (Suddenly, before you answer, the expression disappears. Yvette laughs.) I'm joking, of course! I'm aware of my character, and that sometimes I behave as though I were twelve years old! It's just...like me! Mother always told me that I act as though I were still her little daughter. I don't think it a sin or anything, though. */
IF ~~ THEN REPLY @745 /* For a moment, I really thought you were angry with me! You prankster! (Smile at her.) */ GOTO Yv23x08
IF ~~ THEN REPLY @746 /* Well, that joke wasn't really funny. */ GOTO Yv23x09
IF ~~ THEN REPLY @747 /* I'm sorry, but we have no more time. We should move. We'll talk another time...I promise. */ GOTO Yv23x10
END

IF ~~ THEN BEGIN Yv23x07
SAY @748 /* You really don't like this place? I suppose I could change that if we had enough time, but well, we've a lot to do. You know, I have a little plan. Do you see that man standing out there? */
=
@749 /* I want to steal all his money and valuables. Maybe I'll take care of some houses then. (Yvette has a really vicious smile on her face.) */
=
@750 /* (Suddenly Yvette laughs.) I'm joking of, course! I just wanted to see the look on your face. And it doesn’t matter anyway I'm not a skilled pickpocket! (She winks at you.) */
IF ~~ THEN REPLY @751 /* For a moment, I really thought you were going to do that! That'd be surprising! */ GOTO Yv23x08
IF ~~ THEN REPLY @752 /* And you really think those kinds of jokes are funny? */ GOTO Yv23x09
IF ~~ THEN REPLY @753 /* I'm sorry, but we should move now. You know, time flies, but I promise we'll talk again soon! */ GOTO Yv23x10
END

IF ~~ THEN BEGIN Yv23x08
SAY @754 /* Haha, maybe I should have become an actress! (She smiles and bows.) Thank you, thank you! You're really a marvelous audience, good sir! I shall prepare a new performance soon. I hope your welcome will be as warm as today's. */
=
@755 /* Eh, probably we should move now. I guess we should hurry and find Imoen. You must be worried about her. Come, I shouldn't make the delay greater. */
IF ~OR(2) GlobalLT("YvetteRomanceTalk","GLOBAL",41) Global("YvetteRomanceActive","GLOBAL",3)~ THEN GOTO Yv23x11
IF ~GlobalGT("YvetteRomanceTalk","GLOBAL",40) Global("YvetteRomanceActive","GLOBAL",1)~ THEN GOTO Yv23x12
END

IF ~~ THEN BEGIN Yv23x11
SAY @756 /* (Yvette smiles and continues the march.) */
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv23x12
SAY @757 /* (Suddenly, Yvette looks on the ground and picks something up: a small, blue rock, it’s surface is smooth.) Look, this one is beautiful. You know, I’ve never given you anything you could keep. Would you take this stone until I make you a real, better gift? */
IF ~~ THEN REPLY @758 /* Of course. This stone's really beautiful, and I need no other gift from you. This one's fine with me. */ GOTO Yv23x13
IF ~~ THEN REPLY @759 /* Sorry, but I don't collect rubbish. You must be mad if you think differently. We should move now. */ GOTO Yv23x14
END

IF ~~ THEN BEGIN Yv23x13
SAY @760 /* (Yvette kisses your cheek.) Come, dear lord. We should move now. Imoen's waiting. */ 
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2) GiveItemCreate("YxGift",Player1,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN Yv23x14
SAY @761 /* That was cruel, you know? Let's...let's just move. I think it’s the best solution. */
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv23x09
SAY @762 /* I thought so, yes. It appears I was wrong, then. */
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv23x10
SAY @763 /* I understand. Sure, let's move, then, <CHARNAME>! */
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv23x06
SAY @764 /* So, you see this as a big problem then. I understand. I think we should move now. Come, I won't waste any more of your time. */
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv23x03
SAY @765 /* You should take some lessons in manners! */
IF ~~ THEN DO ~SetGlobal("YvetteBrynnlaw","GLOBAL",2)~ EXIT
END

//////////////////24

IF ~Global("YvetteSpellhold","GLOBAL",1) RealGlobalTimerExpired("YvetteSpellholdTime","GLOBAL") !Global("YvetteRomanceActive","GLOBAL",4) AreaCheck("AR1512")~ THEN BEGIN Yv24x00 //////////Asylum after Imoen
SAY @766 /* I...I feel something strange. I'm sorry, you probably feel worse than I do. I just...Please, let's proceed to the northern chambers of this place. Something's calling me. I just must... */
IF ~~ THEN REPLY @767 /* We need a rest first. I don't feel well. */ GOTO Yv24x01
IF ~~ THEN REPLY @768 /* It's fine. I'll manage, you don't have to worry about me. What's wrong? What's calling you? */ GOTO Yv24x02
IF ~~ THEN REPLY @769 /* You egocentric hag. I've survived a nightmare, and you...go there by yourself. I don't care. */ GOTO Yv24x03
END

IF ~~ THEN BEGIN Yv24x01
SAY @770 /* I understand. I'll wait then, you must feel terrible. I'm sorry for asking you to go there. I just must... */
=
@771 /* It's like a voice inside my head and it's calling my name. */
IF ~~ THEN DO ~SetGlobal("YvetteSpellhold","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Yv24x02
SAY @772 /* I hope you're all right. I’m sorry, I just can't focus; I don't know what's happening... What’s calling me. */
=
@773 /* It’s like a voice from the past. And it's calling my name. */
IF ~~ THEN DO ~SetGlobal("YvetteSpellhold","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Yv24x03
SAY @774 /* (Yvette behaves as though she were no longer present, as if she was lost within her thoughts and mind.) I'll...I must...No, I have to... */
IF ~~ THEN DO ~SetGlobal("YvetteSpellhold","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

////////Spellhold plot failed

IF ~!AreaCheck("AR1512") Global("YvetteSpellhold","GLOBAL",2) !Global("YvetteRomanceActive","GLOBAL",4)~ THEN BEGIN YvFaiedx00
SAY @775 /* No, I've got to go back. It's still calling me. It's... */
IF ~~ THEN DO ~SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

///////enter the mirror
IF ~Global("YvetteSpellhold","GLOBAL",2) Global("GeniePlat12","GLOBAL",1) AreaCheck("AR1512") Global("YvetteRomanceActive","GLOBAL",1) RealGlobalTimerExpired("GeniePlate12Time","GLOBAL")~ THEN BEGIN Yv24x04
SAY @776 /* This is the place. This mirror - Is it really a mirror? It's so deep, so navy blue. I feel that I can enter it. I think I should. I'll swim into that world...(Yvette enters the portal. She doesn't return.) */
IF ~~ THEN REPLY @777 /* (Follow her.) */ GOTO Yv24x05
IF ~~ THEN REPLY @778 /* (Leave her and go back to the labyrinth of the Asylum.) */ GOTO Yv24x06
END

IF ~~ THEN BEGIN Yv24x05
SAY @779 /* (You enter the mirrorlike portal. You feel energy embracing every part of your body. Everything around you disappears.) */
IF ~~ THEN DO ~SetGlobal("YvetteSpellhold","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv24x06
SAY @780 /* (You leave Yvette inside the portal.) */
IF ~~ THEN DO ~SetGlobal("YvetteSpellhold","GLOBAL",3) SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() DestroySelf()~ EXIT
END

///////just after killing Gabriel

IF ~AreaCheck("AR1514") Global("YvetteRomanceActive","GLOBAL",1) Global("YveCB","GLOBAL",2)~ THEN BEGIN YvKilledx00
SAY @781 /* Is this the end at last...? I...I don't want to talk right now. I'm by your side again but...I need the silence. Let's...let's just move, please. (She cries again. And without looking at you, she starts walking.) */
IF ~~ THEN DO ~SetGlobal("YveCB","GLOBAL",3)~ EXIT
END

//////25

IF ~Global("YvetteRomanceActive","GLOBAL",1) GlobalTimerExpired("YvetteAfterGabrielTime","GLOBAL") Global("YvetteAfterGabriel","GLOBAL",0)~ THEN BEGIN Yv25x00 //////////After killing Gabriel; after rest
SAY @782 /* No! No! Gabriel, please, just stop it! Don't...(Yvette appears to be having a nightmare. Her shouts wake you up. She looks as though she is trying to catch someone, but her hands grasp only cold air.) */
IF ~~ THEN REPLY @783 /* (Go to her bedroll and try to wake her.) Yvette, it's only a dream. Please, wake up. */ GOTO Yv25x01
IF ~~ THEN REPLY @784 /* (Ignore her and try to rest a few more minutes.) */ GOTO Yv25x02
END

IF ~~ THEN BEGIN Yv25x01
SAY @785 /* (You shake her arm. In a moment, she opens her eyes and looks around. She appears confused, and her skin is damp from the fear caused by the nightmare, but when she looks at your face, she slowly starts to calm down.) */
=
@786 /* It was a nightmare. I'm so glad. I...(Yvette starts to cry. She grasps your arm and embraces it tightly. She’s trembling, and her weeping is genuine and a little desperate.) */
=
@787 /* I just can't forget about Gabriel, about what he did. I can't believe it was a monster. I'm sure his motives weren't evil, just the decisions he made weren't the right ones. It's...(It appears that Yvette doesn't know what more she can say.) */
IF ~~ THEN REPLY @788 /* Shh, It's fine. I'm here. It's true, what you said. It's no one's fault. He just lost his way. */ GOTO Yv25x03
IF ~~ THEN REPLY @789 /* You shouldn't think about him. He's dead and gone. Now your focus should be on me. */ GOTO Yv25x04
IF ~~ THEN REPLY @790 /* You need to be strong! Stop behaving like such a cry baby! (Disengage yourself and push her back.) */ GOTO Yv25x05
IF ~~ THEN REPLY @791 /* (Don't speak, just hug her and lie with her for a moment on her bedroll.) */ GOTO Yv25x03
END

IF ~~ THEN BEGIN Yv25x03
SAY @792 /* (She weeps for a moment, then after a few minutes she calms down. The tears stop flowing down her face, and she looks into your eyes.) I thank you. */
=
@793 /* All of this, it's so difficult, but your presence, your touch and your scent - makes me feel better. (She comes closer and kisses your lips gently. Silence again fills the air, then she repeats herself.) */
=
@794 /* Again, thank you. */
IF ~~ THEN REPLY @795 /* I'm here to give you the support you need, my lady. I’ve already given you the reason. It's simply that you're *my* lady. (Kiss her forehead.) */ GOTO Yv25x06
IF ~~ THEN REPLY @796 /* I'm at your service. Yours and only yours. I'm here and I have no intention of leaving you. (Smile at her.) */ GOTO Yv25x07
IF ~~ THEN REPLY @797 /* I've had enough of your weeping and, crying and calling this man. (Push her back.) */ GOTO Yv25x05
IF ~~ THEN REPLY @798 /* I want to be with you now. I want to taste your body with all of me. */ GOTO Yv25x08
END

IF ~~ THEN BEGIN Yv25x06
SAY @799 /* You're just marvelous, my lord. Sorry I woke you. Now I feel a bit better, since your presence just...just helps me. I still see Gabriel turned into that thing in my dreams, but when I wake up and see you again... */
=
@800 /* (Yvette doesn't finish the sentence. Instead, she tries to smile at you.) I think I've had enough of dreams. I think we can move now, my...love. */
IF ~~ THEN DO ~SetGlobal("YvetteAfterGabriel","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Yv25x07
SAY @801 /* I never thought I'd meet someone like you, <CHARNAME>. When I see your face, the shadows flee. You can help me face the nightmares of Gabriel turning into the Hopeslayer, when they appear in my mind. */
=
@802 /* (Yvette looks as though she’s trying to look into your mind. Then, she leaves the bedroll.) I've had enough dreams. I think we should move, my...my love. */
IF ~~ THEN DO ~SetGlobal("YvetteAfterGabriel","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN Yv25x08
SAY @803 /* No, It's just not the time. Just...leave me, please. */
IF ~~ THEN DO ~SetGlobal("YvetteAfterGabriel","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv25x02
SAY @804 /* (You leave Yvette. You  close your eyes for a minute or two. When you open your eyes again, Yvette is gone.) */
IF ~~ THEN DO ~SetGlobal("YvetteAfterGabriel","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Yv25x04
SAY @805 /* This isn't just about you. He was my friend, the one who drew the portrait I was created from. Just...just leave me. */
IF ~~ THEN DO ~SetGlobal("YvetteAfterGabriel","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv25x05
SAY @806 /* (Yvette repels you. She looks at you with disoriented eyes.) That's how you see me? Leave me! I...I don't want to look at you! */
IF ~~ THEN DO ~SetGlobal("YvetteAfterGabriel","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END


////////////////26

IF ~Global("AsylumPlot","GLOBAL",43) Global("YvetteRomanceActive","GLOBAL",1) Global("YvetteSlayerChange","GLOBAL",0)~ THEN BEGIN Yv26x00 //////////Slayer change
SAY @807 /* No! Please, control yourself! Sune, please lend me your strength! (Yvette starts her prayer and while looking into your eyes, she takes a step back. She closes her eyes, but keeps in hand her silver mirror, and whispers something you're unable to hear. Blood still burns inside you.) */
IF ~~ THEN REPLY @808 /* (Focus on the inner battle, fight with the Slayer that awoke inside you.) */ GOTO Yv26x01
IF ~~ THEN REPLY @809 /* (Let the fury take control over you.) */ GOTO Yv26x02
END

IF ~~ THEN BEGIN Yv26x01
SAY @810 /* (You're unable to change back into the <PRO_RACE> you were, but you focus on the battle that takes place in the depths of your mind and heart.) */
=
@811 /* (Yvette, with misty eyes, comes closer to you. Tears well up in her eyes, but they don't flow. She touches your changed face with a pleading look in her eyes.) */
IF ~~ THEN DO ~SetGlobal("YvetteSlayerChange","GLOBAL",1) ApplySpellRES("YxStop",Player1)~ EXIT
END

IF ~~ THEN BEGIN Yv26x02
SAY @812 /* (You fall into the rage.) */
IF ~~ THEN DO ~SetGlobal("YvetteSlayerChange","GLOBAL",1) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END


////////////////27

IF ~Global("YvetteRomanceActive","GLOBAL",1) Global("YvetteSlayerChange","GLOBAL",1) RealGlobalTimerExpired("YvetteSlayerTimer","GLOBAL")~ THEN BEGIN Yv27x00 //////////Slayer change - aftertalk
SAY @813 /* I'm glad to see your face again - without scales, without that anger. When you changed into that...creature, I was afraid, but not only because I was in danger. I was afraid that I'd lost you! */
IF ~~ THEN REPLY @814 /* I'd never hurt you, Yvette. Thank you for the prayers you had said. I was changed, but I heard you. */ GOTO Yv27x01
IF ~~ THEN REPLY @815 /* I'm sorry, but since I've turned into the Slayer: a monster that won't show mercy, I can't be with you anymore. You understand, don't you? */ GOTO Yv27x02
IF ~~ THEN REPLY @816 /* You were very brave out there. I had changed into a monster right in front of you, but still you didn't run away. */ GOTO Yv27x03
END

IF ~~ THEN BEGIN Yv27x01
SAY @817 /* I felt that I just had to do it. I believe in Lady Firehair as much as I believe in you. */
IF ~~ THEN GOTO Yv27x04
END

IF ~~ THEN BEGIN Yv27x03
SAY @818 /* I wouldn't call myself brave. I was terrified, but I just...What if you had died? I had to be there for you, my lord. */
IF ~~ THEN GOTO Yv27x04
END

IF ~~ THEN BEGIN Yv27x04
SAY @819 /* So far I’ve called you my love only one time. It's because I've never been with anyone before and you sometimes make me blush. I love to look at you, and I worry for you from time to time. I guess you'd say this is called love. Sorry if this kind of talk makes you feel uncomfortable. Yeesh, I talk too much! Again. */
IF ~~ THEN REPLY @820 /* Hehe, it's fine, I really don't mind that. It's a bit of an idealistic vision of love, but I really like it, and my feelings are similar, you know. */ GOTO Yv27x05
IF ~~ THEN REPLY @821 /* Well, you do kind of talk too much, but it's all right. I know of a way to silence you. (Kiss her lips.) */ GOTO Yv27x06
IF ~~ THEN REPLY @822 /* You should know something. I don't think I can be "your lord" any longer. I just don't feel the way you do. */ GOTO Yv27x02
END

IF ~~ THEN BEGIN Yv27x05
SAY @823 /* I'm so glad to hear that! */
=
@824 /* (Yvette smiles, kisses your cheek, and turns away. Her step is lively, her joy showing in her every move.) */
IF ~~ THEN DO ~SetGlobal("YvetteSlayerChange","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv27x06
SAY @825 /* (Her lips are soft, as always, and she returns your kiss.) */
=
@826 /* You know, I'm not sure if this "method of shutting me up" is such a good one, but it works. (She smiles and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteSlayerChange","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv27x02
SAY @827 /* And you end this like that? After everything we've done together? After all our talks? I can't believe that. (Yvette shakes her head. Her eyes well with tears that flow freely a moment later.) */
IF ~~ THEN DO ~SetGlobal("YvetteSlayerChange","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

//////////////28

IF ~AreaCheck("AR2300") !Global("YvetteRomanceActive","GLOBAL",4) Global("YvetteUnderwater","GLOBAL",1) RealGlobalTimerExpired("YvetteUnderwaterTimer","GLOBAL")~ THEN BEGIN Yv28x00 //////////underwater city
SAY @828 /* It's really hard to get used to being beneath the sea. When I look above the alleys here, I have a feeling that whole sea-land is about to fall onto us, but on the other hand, it provides a view most people will never experience. Have you ever seen anything like it? */
IF ~~ THEN REPLY @829 /* No. I'm as fascinated by this view as you are, dear lady. (Gaze at the sealand above your heads.) */ GOTO Yv28x01
IF ~~ THEN REPLY @830 /* I've seen so many places, and so many people...I don’t think anything can really surprise me. */ GOTO Yv28x02
IF ~~ THEN REPLY @831 /* Sorry, we don't have time for talking, Yvette. We should move now. I hope you don't mind? */ GOTO Yv28x03
IF ~~ THEN REPLY @832 /* Heh, no. I'm really impressed by this place. It's so...magical, and indeed different! (Take a peek at the sealand above your heads.) */ GOTO Yv28x01
END

IF ~~ THEN BEGIN Yv28x01
SAY @833 /* (Yvette nods and smiles. She looks at the glasslike ceiling. Her eyes move as though she was serching for something in particular, but likely she just wants to explore every part of the view before you have to move on.) */
=
@834 /* (When you look at the area above your heads, you can see jellyfish, starfish, crabs, and schools of smaller fish you don't recognize. From time to time, a greater sharklike creature appears in your view. There are also water plants, flowing with the underwater currents.) */
=
@835 /* This kind of view makes me regret I'm not a painter. I'd like to immortalize all of this on parchment. This is just...marvelous. */
IF ~~ THEN REPLY @836 /* Indeed, it is. You know, life's a long journey. Maybe one day you'll have the opportunity to learn how to use brushes and paints. */ GOTO Yv28x04
IF ~~ THEN REPLY @837 /* I'm sorry, but we don't have time to talk now. I hope you understand...you do, don’t you? */ GOTO Yv28x03
IF ~~ THEN REPLY @838 /* Just try to remember the place. If you keep this place in your memory, you might be able to recreate the view in your mind. Then maybe one day you'll paint it, or just draw it on paper. */ GOTO Yv28x05
IF ~~ THEN REPLY @839 /* You're pretty confident. So you think you have the skill to decide what's to be immortalized and what isn't? */ GOTO Yv28x06
END

IF ~~ THEN BEGIN Yv28x02
SAY @840 /* Really? That’s quite sad – being so jaded that nothing phases you anymore. Unpredictability makes the world appear polychromatic! And isn't it far more interesting to face something unexpected, to laugh or even be afraid of something? It's much more interesting than boredom. */
=
@841 /* (Standing still, you realize how many sounds there are in this area. You hear the flowing of water currents, the Sahuagin's strange language, and the wet steps of the inhabitants who travel about the city. You think you can even hear the voices of the creatures living in the sea that surrounds the city.) */
=
@842 /* You hear that, don't you? Look around, I just can't believe all this doesn’t affect you. It's an uncommonly lovely view. I wish I were a painter or a poet so I could immortalize this place. */
IF ~~ THEN REPLY @843 /* Aren't you overstepping yourself there just a bit? You just gave yourself the credit to be able to tell what's to be immortalized and what isn't. */ GOTO Yv28x06
IF ~~ THEN REPLY @844 /* I'm sorry, but we have to go. Time flies. I hope you don't mind? */ GOTO Yv28x03
IF ~~ THEN REPLY @845 /* Maybe you're right. Surprises are kind of like...spices! They may not make life taste better, but they sure make it feel better! However, you have a lot of time. Maybe one day you'll learn to paint. */ GOTO Yv28x04
IF ~~ THEN REPLY @846 /* Don’t forget about one important thing: you have memory. Just remember this place. And maybe you'll recreate it one day, on paper or some other material. */ GOTO Yv28x05
END

IF ~~ THEN BEGIN Yv28x04
SAY @847 /* You're right, that may be a good idea. Maybe one day, I'll be able to draw, paint, or compose music. Heh, still, I doubt it, because I'm not really gifted or anything. Maybe I don't look so, but sometimes I'm really clumsy. Knowing me, I'd accidently spill a glass of water on the painting! */
IF ~~ THEN GOTO Yv28x07
END

IF ~~ THEN BEGIN Yv28x05
SAY @848 /* Well, that's quite a logical solution! I'm sure I'll never forget this place, all these colors, sounds and strange buildings. I doubt I'll ever visit a similar land, so nothing will cast a shade on these memories I'm making here. Well, maybe when I'm an old, wrinkled woman, I'll forget, but that'd be due to age! */
IF ~~ THEN GOTO Yv28x07
END

IF ~~ THEN BEGIN Yv28x07
SAY @849 /* (Yvette remains silent for a moment. She gazes again the at world through which you walk.) */
=
@850 /* I never thought I'd see anything like this... */
IF ~~ THEN REPLY @851 /* I'm sure you'll have a chance to see more places and events that are quite rare and wonderful! After all, you're traveling with a troublesome Bhaalspawn! Adventures always find us. */ GOTO Yv28x08
IF ~~ THEN REPLY @852 /* I think it's time to move, Yvette. We have a lot to do. */ GOTO Yv28x09
IF ~~ THEN REPLY @853 /* All right: stop that. It's getting really annoying! */ GOTO Yv28x10
END

IF ~~ THEN BEGIN Yv28x08
SAY @854 /* Well, a companion can be never bored when traveling with you! */
IF ~~ THEN DO ~SetGlobal("YvetteUnderwater","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv28x09
SAY @855 /* Yes, I also think we should move now. Let's go, <CHARNAME>. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderwater","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv28x10
SAY @856 /* That wasn't polite! */
IF ~~ THEN DO ~SetGlobal("YvetteUnderwater","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv28x03
SAY @857 /* Of course I don't mind. Let's go, then, my lord. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderwater","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv28x06
SAY @858 /* That was quite rude! You misunderstood what I was saying, and you know what, I think you did it on purpose. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderwater","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////////////29

IF ~AreaCheck("AR2100") Global("YvetteRomanceActive","GLOBAL",1) Global("YvetteUnderdark","GLOBAL",1) RealGlobalTimerExpired("YvetteUnderdarkTimer","GLOBAL")~ THEN BEGIN Yv29x00 //////////underdark
SAY @859 /* This place is even more creepy that I thought it would be. All those sounds...as though something's crawling in the shadows. (Yvette comes closer to you and embraces your arm.) */
=
@860 /* Do you mind...? */
IF ~~ THEN REPLY @861 /* Of course not, milady. */ GOTO Yv29x01
IF ~~ THEN REPLY @862 /* Yeah, I do. Just keep your distance. You make me feel uncomfortable. */ GOTO Yv29x02
IF ~~ THEN REPLY @863 /* No. Honestly, I like it. */ GOTO Yv29x01
END

IF ~~ THEN BEGIN Yv29x01
SAY @864 /* Thank you. (Yvette blushes, and looks around as though she expected at any moment to have something jump out at her.) */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",2) RealSetGlobalTimer("YvetteUnderdarkTimer","GLOBAL",1000)~ EXIT
END

IF ~~ THEN BEGIN Yv29x02
SAY @865 /* I...I understand. Sorry for troubling you. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",2) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

///////////////30

IF ~Global("YvetteRomanceActive","GLOBAL",1) Global("YvetteUnderdark","GLOBAL",2) RealGlobalTimerExpired("YvetteUnderdarkTimer","GLOBAL")~ THEN BEGIN Yv30x00
SAY @866 /* It's hard to get used to the lightless world of the Underdark. After seeing hundreds of sunsets and sunrises, we have to face endless darkness. */
IF ~~ THEN REPLY @867 /* You’re right, but there are other things here to get used to also, like those shining and deadly mushrooms. */ GOTO Yv30x01
IF ~~ THEN REPLY @868 /* What's the big deal? It’s dark, there’s a drow here and there...nothing overly impressive. */ GOTO Yv30x02
IF ~~ THEN REPLY @869 /* I understand, but you know, we really have to move on. The faster, the better. */ GOTO Yv30x03
IF ~~ THEN REPLY @870 /* Whatever! Let's move on at least! */ GOTO Yv30x03
END

IF ~~ THEN BEGIN Yv30x01
SAY @871 /* Heh, you're right, and you really know how to make me smile, good sir. Indeed, deadly mushrooms are *slightly* more odd than those shadows. (When saying word "slightly" she holds her thumb and index finger close together.) */
IF ~~ THEN GOTO Yv30x04
END

IF ~~ THEN BEGIN Yv30x02
SAY @872 /* Well, it's hard to impress you then, mister adventurer. The Underdark's different enough to make an impression on me. The shadows, this scent that travels through the air without a wind. */
IF ~~ THEN GOTO Yv30x04
END

IF ~~ THEN BEGIN Yv30x04
SAY @873 /* When I was little, I remember Camila teaching me about the Underdark. I heard that the drow are extremely vicious creatures. They kill simply because they wish to. */
IF ~~ THEN REPLY @874 /* They're mostly like that, but you should also know that they're not mindless killers. They're quite intelligent, which makes them quite deadly so we should watch out. */ GOTO Yv30x05
IF ~~ THEN REPLY @875 /* I don't focus only on killing, but they're more or less like that. */ GOTO Yv30x05
IF ~~ THEN REPLY @876 /* I'm sorry, but we don't have time right now. Let's go. */ GOTO Yv30x03
END

IF ~~ THEN BEGIN Yv30x05
SAY @877 /* I see. */
=
@878 /* But, honestly, the Underdark isn't something I want to discuss right now. It’s just I don't know how to start...but it’s about, you know...us. After the fight with Gabriel, we talked very little about us, but I'd like to tell you that I think about it all the time. */
=
@879 /* It was because of you, I had the power to draw a door and escape. I wanted to see you again and I somehow just knew it could happen. I love you, my lord, I told you that before, and nothing has changed. I'd like to tell you something else... */
=
@880 /* Gabriel was a friend, not someone I would kiss like I kiss you. (Yvette blushes.) I...I'm also aware that you probably would like to be closer to me. Closer than we've been before...but I'm just...not ready. (She looks around as though searching for a point she could look at, avoiding looking into your eyes.) */
IF ~~ THEN REPLY @881 /* That's fine, I understand. You need time, and I'll wait. */ GOTO Yv30x06
IF ~~ THEN REPLY @882 /* You don't have to be embarrassed, Yvette. It's really fine with me, truly, it's all right. */ GOTO Yv30x06
IF ~~ THEN REPLY @883 /* I can wait, unless that means the lack of a great night with a virgin as sweet as you. I can already imagine that! */ GOTO Yv30x07
IF ~~ THEN REPLY @884 /* I didn't ask about it myself because I’m not interested. I was only flirting with you, that's all. */ GOTO Yv30x08
END 

IF ~~ THEN BEGIN Yv30x06
SAY @885 /* I can't find the words to say how marvelous you are! (She smiles, and it appears your answer relieves her a bit. She gives you a warm hug and kisses your neck. Her hand plays with your ear.) */
IF ~~ THEN REPLY @886 /* I like this just fine, dear lady. You shouldn't have worried about what I'm thinking. */ GOTO Yv30x09
IF ~~ THEN REPLY @887 /* (Kiss her.) */ GOTO Yv30x10
IF ~~ THEN REPLY @888 /* (Kiss her neck.) */ GOTO Yv30x11
IF ~~ THEN REPLY @889 /* All right, that's enough. I can't stand you. This isn't worth the effort. */ GOTO Yv30x08
END

IF ~~ THEN BEGIN Yv30x09
SAY @890 /* Silly me. (She smiles and kisses your lips.) */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv30x10
SAY @891 /* (Yvette replies by kissing you. She touches your cheek and neck with one hand, your chest with the other.) */
=
@892 /* And you make me smile yet again. Come, let's move, dear lord. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv30x11
SAY @893 /* (She starts to giggle and repels you gently. She smiles at you.) That tickles, my lord! Well, I liked it. (She starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv30x08
SAY @894 /* I...I thought you were different. I don't want to talk to you. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",3) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT 
END

IF ~~ THEN BEGIN Yv30x07
SAY @895 /* (Yvette suddenly slaps you in the face.) Leave me! That's how you see me?! Just...leave me! */
IF ~~ THEN REPLY @303 /* (Avoid the slap.) */ DO ~SetGlobal("YvetteUnderdark","GLOBAL",3) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
IF ~~ THEN REPLY @304 /* (Let her hit you.) */ DO ~SetGlobal("YvetteUnderdark","GLOBAL",3) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

IF ~~ THEN BEGIN Yv30x03
SAY @896 /* I had wanted to tell you something important, but, whatever. Let's just...move. */
IF ~~ THEN DO ~SetGlobal("YvetteUnderdark","GLOBAL",3) SetGlobal("YvetteRomanceActive","GLOBAL",3)~ EXIT
END

////////////////31

IF ~!Dead("YxYve") Global("YvetteVampire","GLOBAL",3) Global("YvetteRomanceActive","Global",1)~ THEN BEGIN Yv31x00
SAY @897 /* Th-that hurt. I didn't expect that kind of attack. I thought that, after killing Bodhi, there'd be no one else who'd like to slay us - here, I mean. */
=
@898 /* Thank you, my lord. It appears I’m quite important to you after all! (She smiles and kisses your cheek.) */
IF ~~ THEN REPLY @899 /* Well, who would I hug if you weren't here, my dear priestess? (Wink.) */ GOTO Yv31x01
IF ~~ THEN REPLY @900 /* Know your place. I've had enough of your babbling. I'm fed up with you. All I need is a good priestess who can support the group. */ GOTO Yv31x02
IF ~~ THEN REPLY @901 /* My pleasure. You know, I think I deserve a kiss on the other cheek as well! */ GOTO Yv31x03
IF ~~ THEN REPLY @902 /* I'd never leave you for dead, Yvette. */ GOTO Yv31x04
END

IF ~~ THEN BEGIN Yv31x01
SAY @903 /* Hmm, I think you'd have to buy a teddy bear, dear sir. (Yvette giggles gently.) */
IF ~~ THEN GOTO Yv31x05
END

IF ~~ THEN BEGIN Yv31x03
SAY @904 /* Well, if you think so. (She kisses your right cheek. For a moment, you catch her skin's aroma.) */
IF ~~ THEN GOTO Yv31x05
END

IF ~~ THEN BEGIN Yv31x04
SAY @905 /* Thank you, my lord. You're most kind. (She smiles at you playfully.) */
IF ~~ THEN GOTO Yv31x05
END

IF ~~ THEN BEGIN Yv31x05
SAY @906 /* Honestly, this wasn't a pleasant experience. Even as someone has caged a part of you in a cold, icy shell, you still find the time to set me free. My debt to you grows bigger and bigger. */
IF ~~ THEN REPLY @907 /* Hey, that’s because I’m a nice guy, and I never would demand any payment! (Smile at her.) */ GOTO Yv31x06
IF ~~ THEN REPLY @908 /* Hmm...It's fine with you, isn't it? */ GOTO Yv31x07
IF ~~ THEN REPLY @909 /* Ok, I'm fed up with these cotton-candy talks! Bug off. */ GOTO Yv31x02
END

IF ~~ THEN BEGIN Yv31x06
SAY @910 /* A charming smile, lord! */
IF ~~ THEN GOTO Yv31x08
END

IF ~~ THEN BEGIN Yv31x07
SAY @911 /* How did you guess? (She laughs.) */
IF ~~ THEN GOTO Yv31x08
END

IF ~~ THEN BEGIN Yv31x08
SAY @912 /* I think we should move on before we put too much sugar in this cup of tea, my lord! (She winks and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteVampire","GLOBAL",4)~ EXIT
END

IF ~~ THEN BEGIN Yv31x02
SAY @913 /* I...I thought I was close to you. (Yvette shakes her head and starts walking.) */
IF ~~ THEN DO ~SetGlobal("YvetteVampire","GLOBAL",4) SetGlobal("YvetteRomanceActive","Global",3)~ EXIT
END

//////////////////32

IF ~AreaCheck("AR2500") PartyHasItem("C6Lantho") Global("YvetteVampire","GLOBAL",4) Global("YvetteRomanceActive","Global",1) Global("YvetteMoment","GLOBAL",0)~ THEN BEGIN Yv32x00
SAY @914 /* <CHARNAME>, I'd like to talk with you before we return the Rynn Lanthorn to Elhan. */
IF ~~ THEN REPLY @915 /* Of course, Yvette. What is it? */ GOTO Yv32x01
IF ~~ THEN REPLY @916 /* We don't have time. Just be silent. Irenicus is the most important thing now. We have to catch him! */ GOTO Yv32x02
IF ~~ THEN REPLY @917 /* Sure! I'm all ears! */ GOTO Yv32x01
IF ~~ THEN REPLY @918 /* Of course, milady. Is something wrong? */ GOTO Yv32x01
END

IF ~~ THEN BEGIN Yv32x01
SAY @919 /* It's just... */
=
@920 /* You know, after what happened in Bodhi's tomb, the vampire had appeared out of nowhere, but when I was back I realized something. I was afraid that I'd never be able to...to be close to you. I'd like us to spend the night together before we got to Elhan. I'm afraid this may be our last chance, if something goes wrong... */
=
@921 /* I’m sorry I'm just a bit nervous that you'll start laughing at me or something. It's...you know...(Yvette blushes and gives you a light kiss. She waits for you to say something.) */
IF ~~ THEN REPLY @922 /* If you're ready, so am I, my fair lady. */ GOTO Yv32x03
IF ~~ THEN REPLY @923 /* Are you sure you’re ready for this? Do you really love me? */ GOTO Yv32x04
IF ~~ THEN REPLY @924 /* *You know*, I'm not interested. I'm sorry. (Push her back.) */ GOTO Yv32x05
IF ~~ THEN REPLY @925 /* I've waited for this for a really long time, my love. */ GOTO Yv32x03
END

IF ~~ THEN BEGIN Yv32x04
SAY @926 /* (She nods with a bashful smile.) */
IF ~~ THEN REPLY @927 /* Come to me then, Yvette. We'll share this moment together. */ GOTO Yv32x03
IF ~~ THEN REPLY @928 /* How should I tell you this...You see, I'm not interested. */ GOTO Yv32x05
END

IF ~~ THEN BEGIN Yv32x03
SAY @929 /* (You make camp and find a secluded spot for privacy. Yvette shyly loosens the strings of your clothing and at the same time, you unpin her shirt. She smiles at you, and takes off the upper part of her clothing. A cool wind embraces your skin while Yvette gently kisses your cheek again, and then your lips.) */
=
@930 /* (Yvette's clothing, released, falls to the ground. At first, she moves as though she wants to hide from your view, but it's only a reflex action. She catches herself; she comes closer to you and takes your hand, kisses it and puts it against her cheek. Her finger traces the lines of your chest, every edge of your muscles, as though she wanted to remember it all precisely, forever.) */
=
@931 /* (A moment later, you both lie on the bedroll, covered lightly by a patchwork blanket of red, orange, violet, and brown. Your hand rests on her pale breast, as your bodies move as a synchronized machine. Her breath is warm on your chest, as you breathe in the familiar aroma of her skin.) */
=
@932 /* (Some moments later, you lie in silence, gazing at each other's face. She touches your forehead, your cheek, and your chin. Her brown eyes glitter and they remind you of fireflies hovering in the grass.) */
IF ~~ THEN REPLY @933 /* I'm glad we shared this moment, my lady. Thank you. It means you trust me. */ GOTO Yv32x06
IF ~~ THEN REPLY @934 /* Well, honestly, I expected something more from you, woman. */ GOTO Yv32x07
IF ~~ THEN REPLY @935 /* You know, you're as beautiful as Sune herself, dear Yvette. */ GOTO Yv32x08
IF ~~ THEN REPLY @936 /* (Say nothing, but touch her cheek gently.) */ GOTO Yv32x09
END

IF ~~ THEN BEGIN Yv32x06
SAY @937 /* You don't have to thank me for anything, my lord. It's our moment, it belongs to both you and me. You made me trust you, and I hope you also trust me - that's how it should be. */
IF ~~ THEN GOTO Yv32x10
END

IF ~~ THEN BEGIN Yv32x08
SAY @938 /* (Yvette giggles.) You should watch what you're saying, because she may hear you and take me away. (She smiles.) I'm joking, of course - she'd never do us any harm. I'm sure of that. */
IF ~~ THEN GOTO Yv32x10
END

IF ~~ THEN BEGIN Yv32x09
SAY @939 /* (She smiles at you.) You have cold hands, but you know what they say: "cold hands, warm heart." I'm glad we had this moment together, my lord. I shouldn't have had you wait so long... */
IF ~~ THEN GOTO Yv32x10
END

IF ~~ THEN BEGIN Yv32x10
SAY @940 /* It's believed that if you make love with the one you love, and can just look at his or her eyes for an hour, it means you're happy together and that this may last until death. It won't make us immortal, <CHARNAME>, but I'm sure of one thing: it'll make us happy. You already make me feel as though it was a fairy tale. */
=
@941 /* I'd like to stay here with you for the rest of the night. Would you mind that, my love? */
IF ~~ THEN REPLY @942 /* Of course I wouldn't mind. Stay with me forever. */ GOTO Yv32x11
IF ~~ THEN REPLY @943 /* Stay with me as long as you love me, Yvette. */ GOTO Yv32x11
IF ~~ THEN REPLY @944 /* You're really silly. You gave me what I wanted, now leave me. */ GOTO Yv32x07
IF ~~ THEN REPLY @945 /* (Smile and nod.) */ GOTO Yv32x11
END

IF ~~ THEN BEGIN Yv32x11
SAY @946 /* Thank you. I'm glad I'll spend this night in your embrace, my lord. (After a moment, you both fall asleep.) */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",1) SetGlobal("YvetteRomanceActive","Global",2) RestParty()~ EXIT
END

IF ~~ THEN BEGIN Yv32x07
SAY @947 /* (Yvette appears surprised. Without a word, she puts her clothing on, takes her equipment, and disappears into the forest.) */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",1) SetGlobal("YvetteRomanceActive","Global",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Yv32x05
SAY @948 /* I thought...(Yvette appears surprised. She shakes her head. Without a word, she backs away, takes her equipment, and disappears into the forest.) */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",1) SetGlobal("YvetteRomanceActive","Global",3) LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN BEGIN Yv32x02
SAY @949 /* I thought something else was the most important...Sorry, I made my decision. I...I'll never be ready. I'm leaving...I'm really sorry. */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",1) SetGlobal("YvetteRomanceActive","Global",3) LeaveParty() EscapeArea()~ EXIT
END

///////////////33

IF ~Global("YvetteMoment","GLOBAL",1) Global("YvetteRomanceActive","Global",2)~ THEN BEGIN Yv33x00
SAY @950 /* Hello, good lord. Now, I can truly say you're most charming when sleeping. You look quite innocent, although, you are most likely a brat in disguise! */
IF ~~ THEN REPLY @951 /* Hey! Not so loud! That's not very manly you know! */ GOTO Yv33x01
IF ~~ THEN REPLY @952 /* Well, hello to you, too, dear lady. I'll bet I smiled while dreaming. Guess who was in my dream?. */ GOTO Yv33x02
IF ~~ THEN REPLY @953 /* A brat am I? More like a diseased gibberling and I’m going to bite you! Here, and here, and most definitely here! */ GOTO Yv33x03
IF ~~ THEN REPLY @954 /* I think we should get up and move, Yvette. */ GOTO Yv33x04
END

IF ~~ THEN BEGIN Yv33x01
SAY @955 /* You don't have to worry - you're manly, dear lord. Manly enough for me. (She kisses you softly.) */
IF ~~ THEN GOTO Yv33x05
END

IF ~~ THEN BEGIN Yv33x02
SAY @956 /* You want to prove you're charming all the time, don't you? Well, maybe you'll succeed one day. (She smiles.) */
IF ~~ THEN GOTO Yv33x05
END

IF ~~ THEN BEGIN Yv33x03
SAY @957 /* (Yvette starts laughing hysterically. Tears nearly flow from her eyes.) You really know how to cheer me up! No one ever said "good<DAYNIGHT>" to me in such an extraordinary way! */
IF ~~ THEN GOTO Yv33x05
END

IF ~~ THEN BEGIN Yv33x05
SAY @958 /* Thank you for everything. I suppose we should move now. We've got some work to do. */
IF ~!PartyHasItem("DGIAmbe2")~ THEN GOTO Yv33x06
IF ~PartyHasItem("DGIAmbe2")~ THEN GOTO Yv33x07
END

IF ~~ THEN BEGIN Yv33x07
SAY @959 /* Ouch! Oh, it's your Amber Rose. The one from Deep Gardens. */
IF ~~ THEN REPLY @960 /* This rose really suits you. Do me the honor and take it as a gift. */ GOTO Yv33x08
IF ~~ THEN REPLY @961 /* I also hope they're well. (Kiss her cheek.) Come, we should move. */ GOTO Yv33x09
END

IF ~~ THEN BEGIN Yv33x08
SAY @962 /* Thank you. (She smiles and takes the Amber Rose, when all of a sudden, it dies and turns into ashes, but a moment later, a new flower starts to grow amazingly quickly. After a couple minutes, a newborn coral-lavender-colored flower lies in Yvette's hands.) */
=
@963 /* What...what happened to it? */
IF ~~ THEN REPLY @964 /* It really doesn't matter. Now it suits you even better, milady. */ GOTO Yv33x10
IF ~~ THEN REPLY @965 /* It appears to have changed. In the Deep Gardens, I was told that Colors change; they die and are born. I think we witnessed that. It's our new Color. */ GOTO Yv33x11
END

IF ~~ THEN BEGIN Yv33x10
SAY @966 /* Thank you. You know... */
IF ~~ THEN GOTO Yv33x12
END

IF ~~ THEN BEGIN Yv33x11
SAY @967 /* I understand. You know... */
IF ~~ THEN GOTO Yv33x12
END

IF ~~ THEN BEGIN Yv33x12
SAY @968 /* ...it's beautiful. */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",2) DestroyItem("DGIAmbe2") GiveItemCreate("YxRose",Myself,0,0,0)~ EXIT
END

IF ~~ THEN BEGIN Yv33x09
SAY @969 /* Yep. Let's move! */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv33x06
SAY @970 /* We shall bring an end to this madness that began what seems such a long time ago, my love. */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",2)~ EXIT
END

IF ~~ THEN BEGIN Yv33x04
SAY @971 /* You're always in a rush! All right! Let's move, my lord! */
IF ~~ THEN DO ~SetGlobal("YvetteMoment","GLOBAL",2)~ EXIT
END




//Journal

IF ~Global("YvetteRomanceActive","GLOBAL",1) Global("YvetteJournal","GLOBAL",0) PartyHasItem("YxJour") AreaCheck("ARY003")~ THEN BEGIN YvJournx00
SAY @972 /* Wait, this is Gabriel's journal! Please, give it to me. (Without waiting for an answer, she takes the small book from your bag and starts reading it.) */
IF ~~ THEN REPLY @973 /* What's written in there? */ GOTO YvJournx01
IF ~~ THEN REPLY @974 /* Keep it. To me, it's just more stuff to carry. Let's look for an exit. */ GOTO YvJournx02
END

IF ~~ THEN BEGIN YvJournx01
SAY @975 /* (Without looking at you, she reads the notes. A few minutes pass. Her hands shake slightly; you can't tell if it's because of the battle, or because of the text she's skimming. After a moment, she looks at you again.) */
=
@976 /* It starts with the twenty-first day of his presence in this world. He just woke up here; all alone, as though he had fallen into a pit. He tried to study the world and he discovered the nature of the pond, but still he never succeeded in creating any being in the way he really remembered it. (Yvette's eyes are misty, but she doesn't cry.) */
=
@977 /* He tried to escape, but he couldn't without a particular link. That's why he called me. Before I arrived, so much time had already passed by. I suppose the time I spent with you was...my link. */
=
@978 /* He never wanted to become a Hopereaper, and now he lies dead. */
IF ~~ THEN REPLY @979 /* I'm sorry, Yvette. I know how you feel... */ GOTO YvJournx03
IF ~~ THEN REPLY @980 /* Maybe this will grant him some peace. I don't know what else I could say, milady. */ GOTO YvJournx04
IF ~~ THEN REPLY @981 /* Keep the journal if you want. We should move now. We have to find an exit. */ GOTO YvJournx02
END

IF ~~ THEN BEGIN YvJournx03
SAY @982 /* I doubt it. Imoen wasn't dead when we found her! (Suddenly, Yvette realizes what she said and looks at you.) I'm sorry, I shouldn't have said that, my lord. */
IF ~~ THEN GOTO YvJournx05
END

IF ~~ THEN BEGIN YvJournx04
SAY @983 /* Just like the end of his previous life? Just like the plague? (Suddenly, Yvette realizes what she said and looks at you.) I'm sorry, I shouldn't have said that, my lord. */
IF ~~ THEN GOTO YvJournx05
END

IF ~~ THEN BEGIN YvJournx05
SAY @984 /* It's because of all of this. But I won't cry. (Yvette comes closer to Gabriel's corpse. It looks as though it was made of entangled roots, clay, and bladelike scales.) */
=
@985 /* (She closes his purple eyes that have no more burning fury within.) You may have lost hope, but still I'll pray for you. You, my dear beast. (Yvette finally stops her tears from welling.) */
IF ~~ THEN REPLY @986 /* (Put a hand on her shoulder.) */ GOTO YvJournx06
IF ~~ THEN REPLY @987 /* (Say nothing.) */ GOTO YvJournx06
IF ~~ THEN REPLY @988 /* I'm sorry... */ GOTO YvJournx06
IF ~~ THEN REPLY @989 /* Keep the journal. We should move now. Come, let's look for an exit. */ GOTO YvJournx03
END

IF ~~ THEN BEGIN YvJournx06
SAY @990 /* (Yvette stays silent for a moment. Her lips move as though she was saying a voiceless prayer. A moment later, she stands.) We shall exit this place. We shall leave it behind. */
IF ~~ THEN DO ~SetGlobal("YvetteJournal","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN YvJournx02
SAY @991 /* (Yvette doesn't say a word. She just takes the journal and puts it into her bag. She looks at the Hopereaper's corpse for the last time. Now she appears ready for your orders.) */
IF ~~ THEN DO ~SetGlobal("YvetteJournal","GLOBAL",1)~ EXIT
END

/////////////////////////////OTHER TALKS
//////////////Lathander Talk

IF~AreaCheck("AR0902") Global("YvetteLathander","GLOBAL",0) !Global("YvetteRomanceActive","GLOBAL",3)~THEN BEGIN YvLax00
SAY @992 /* This place - it's so marvelous! So breathtaking! I've never seen such a beautiful temple of Lathander. I'm glad Morning Bringer's church is still as strong as it used to be. */
IF~~THEN REPLY @993 /* Why are you so excited about a temple of Lathander, Yvette? */ GOTO YvLax01
IF~~THEN REPLY @994 /* I'm also glad, but why are you so happy about that? You're a priestess of Sune, not a Morninglord. */ GOTO YvLax01
IF~~THEN REPLY @995 /* Just calm down. We have to move. */ GOTO YvLax02
END

IF~~THEN BEGIN YvLax01
SAY @996 /* (For a moment, Yvette acts as though she didn't hear you. She looks at the splendid golden ornaments, the monument of the god that stands in the middle of the main chamber. Candlelight and shining gold reflect in her eyes.) */
=
@997 /* As you may know, the relationship between the gods is varied. For example, Sune fights with vicious Shar, the Lady of Darkness. */
=
@998 /* Lady Firehair and Shar became enemies when Sune stopped Shar's plan. At that moment, Sharess joined the Lady of Beauty. I suppose Shar would like to get even with her, but that's beside the point. */
=
@999 /* Sune and Lathander are allies. Lathander brings the day and its beauty; so of course they'd never fight each other, and after knowing that, you’ll understand why I'm glad Lathander's church is so prominent and dwells with such glory. */
IF~~THEN REPLY @1000 /* I do understand. Thank you for this nice lesson, dear tutor! (Smile at Yvette.) */ GOTO YvLax03
IF~~THEN REPLY @1001 /* I'm sorry, but we don't have time for talking. We should move. The temple's nice, but it doesn't affect us. */ GOTO YvLax02
IF~~THEN REPLY @1002 /* I knew that. I had been taught some things about the gods. You've really never seen a temple of Lathander? */ GOTO YvLax04
IF~~THEN REPLY @1003 /* All right...Can we go now? */ GOTO YvLax02
END

IF~~THEN BEGIN YvLax03
SAY @1004 /* It was a pleasure! I'm always here to tell you something amusing, dear sir! You can count on me! */
IF~~THEN DO ~SetGlobal("YvetteLathander","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvLax04
SAY @1005 /* Really. I suppose I'm not used to big cities, and you know, you can't find such impressive temples in other places. Come now. I think we should move, good sir. (Yvette smiles at you.) */
IF~~THEN DO ~SetGlobal("YvetteLathander","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvLax02
SAY @1006 /* It appears you're in a real hurry. Well, let's go, then! */
IF~~THEN DO ~SetGlobal("YvetteLathander","GLOBAL",1)~ EXIT
END

///////////////Talos Talk

IF~AreaCheck("AR0904") Global("YvetteTalos","GLOBAL",0)~THEN BEGIN YvTalx00
SAY @1007 /* This is Talos' temple! They hail only destruction in this place! Please, do what you must, and then let's leave this place. */
IF~~THEN DO ~SetGlobal("YvetteTalos","GLOBAL",1)~ EXIT
END

///////////////Drunken Charname

IF~Global("YvetteDrunkTalk","GLOBAL",0) InParty(Myself) !Global("YvetteRomanceActive","GLOBAL",3) CheckStatGT(Player1,50,INTOXICATION)~THEN BEGIN YvDrunkx00
SAY @1008 /* Eh, well, you really should've drunk a slightly smaller amount of alcohol, my lord. */
IF~~THEN REPLY @1009 /* Why s-so? */ GOTO YvDrunkx01
IF~~THEN REPLY @1010 /* You suggest t-that I sh-should be more good and lawful, my little lady? You should have a drink, too. */ GOTO YvDrunkx02
IF~~THEN REPLY @1011 /* I...I think I need some fresh air... */ GOTO YvDrunkx03
END

IF~~THEN BEGIN YvDrunkx01
SAY @1012 /* Because you can barely stand, my lord. */
IF~~THEN GOTO YvDrunkx04
END

IF~~THEN BEGIN YvDrunkx02
SAY @1013 /* No, thank you. I don't like drinking. I'm more a tea person, honestly. I like wine, but as I said, not today. */
IF~~THEN GOTO YvDrunkx04
END

IF~~THEN BEGIN YvDrunkx04
SAY @1014 /* It's not like I think you shouldn't drink at all. It's just you look quite...you know. */
=
@1015 /* (Yvette shakes her head and tries to smile. You're not sure it's an honest smile.) You men are always like children. Eh, I suppose I'll have to help you a bit. We should find a place to rest. */
IF~~THEN REPLY @1016 /* Aye, m-my lady! Do you mind me grabbing your arm.? */ GOTO YvDrunkx05
IF~~THEN REPLY @1017 /* W-whatever! I...I think I need some fresh air. We're leaving! */ GOTO YvDrunkx03
IF~~THEN REPLY @1018 /* Well, your help's most...w-welcome...The world's spinning...a bit... */ GOTO YvDrunkx05
END

IF~~THEN BEGIN YvDrunkx05
SAY @1019 /* Come here. (Yvette puts your arm around her waist and grabs your waist with her other arm.) I'll help you walk, sir. Oh, men... */
IF~~THEN REPLY @1020 /* ...t-they're so charming, aren't they? */ GOTO YvDrunkx06
IF~~THEN REPLY @1021 /* Thank y-you. */ GOTO YvDrunkx07
END

IF~~THEN BEGIN YvDrunkx06
SAY @1022 /* (She looks at you, surprised.) Hehe, drunk but still ready to tell jokes. Come, let's move. By the way, remember to take a bath after resting. */ 
IF~~THEN DO ~SetGlobal("YvetteDrunkTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvDrunkx07
SAY @1023 /* Eh, your welcome. You know, you should take a bath. */
IF~~THEN DO ~SetGlobal("YvetteDrunkTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvDrunkx03
SAY @1024 /* Well, you're right: you surely need some fresh air! Come, let's leave this place. I suppose we should look a place for a rest. */
IF~~THEN DO ~SetGlobal("YvetteDrunkTalk","GLOBAL",1)~ EXIT
END

/////////////Eyeless

IF~Global("YvetteCultTalk","GLOBAL",0) InParty(Myself) AreaCheck("AR0202")~THEN BEGIN YvUnsx00
SAY @1025 /* I never thought Athkatla might have such a dark and unpleasent place just under the Temple District. It's not a safe place, and our presence won't make it safer. We should watch out. */
IF~~THEN REPLY @1026 /* Are you afraid? */ GOTO YvUnsx01
IF~~THEN REPLY @1027 /* You don't have to be afraid, Yvette. You know, I'm leading, so I'll fall into the trap if we come to any. */ GOTO YvUnsx02
IF~~THEN REPLY @1028 /* This darkness is...really...uncomfortable. */ GOTO YvUnsx03
IF~~THEN REPLY @1029 /* Sorry, but we don't have time for any worries. We have to go! */ GOTO YvUnsx04
END

IF~~THEN BEGIN YvUnsx01
SAY @1030 /* (Yvette blushes; you can see it even in the dark tunnels.) No! Of...of course I'm not afraid! It's just the...nature of this humid place! */
IF~~THEN GOTO YvUnsx05
END

IF~~THEN BEGIN YvUnsx02
SAY @1031 /* Hey, don't even give that kind of reason. You know, maybe I'm more a priestess than a rogue, but still I may get rid of a trap here and a lock there. */
IF~~THEN GOTO YvUnsx05
END

IF~~THEN BEGIN YvUnsx03
SAY @1032 /* Indeed, a bit. It’s quite deep and the stench, the rats...it surely isn’t pleasant walking around down here. */
IF~~THEN GOTO YvUnsx05
END

IF~~THEN BEGIN YvUnsx05
SAY @1033 /* The thing is...look at those footsteps in the mud, and those marks on the walls. Some people walked by recently. I'm not an experienced hunter, so I'm unable to tell you how many of them were here, or if they were wearing heavy armor, but I can tell you they're not hailing any well-known god. Look here. */
=
@1034 /* (Yvette comes closer to a wall. She calls some holy light to illuminate the dirty facade of the tunnel. Now you see the sign of an eye pierced by some needles. She doesn't appear pleased at the sight of that symbol.) */
=
@1035 /* It's horrible. It's obvious the Helmites aren't happy because of this cult's presence under the Temple District. I'm really surprised anyone even believes those fanatics. Just look at this eye-shaped symbol. */
IF~~THEN REPLY @1036 /* What kind of purpose might they have? Can you tell me something more? Even if it's only your guess, I'd like to know something about what we can expect to meet down here. */ GOTO YvUnsx06
IF~~THEN REPLY @1037 /* I understand. It’s probably time for us to move. We have a lot to do, problems to take care of, and we shouldn't waste any more time. Come, let's go. */ GOTO YvUnsx04
END

IF~~THEN BEGIN YvUnsx06
SAY @1038 /* Honestly, I've no idea what else I can tell you. Since they hide in these tunnels, and they’re not allies of the temples of Lathander, Helm, or Talos that lie above us, nor are they Sune's allies, I've no idea what god they praise. */
=
@1039 /* I think there's only one way to find that out. */
IF~~THEN REPLY @1040 /* We just have to infiltrate this "temple." */ GOTO YvUnsx07
IF~~THEN REPLY @1041 /* You're not really helpful. Everything you said, I could've said myself. */ GOTO YvUnsx08
IF~~THEN REPLY @1042 /* Let's go, then. We should waste no more time. */ GOTO YvUnsx04
END

IF~~THEN BEGIN YvUnsx07
SAY @1043 /* Yes, that will tell us something more about the cultists and their god. */
IF~~THEN DO ~SetGlobal("YvetteCultTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvUnsx08
SAY @1044 /* So, why do we even talk? Just...just move on... */
IF~~THEN DO ~SetGlobal("YvetteCultTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvUnsx04
SAY @1045 /* I see. All right, let's move, then, <CHARNAME>. */
IF~~THEN DO ~SetGlobal("YvetteCultTalk","GLOBAL",1)~ EXIT
END

/////////////TotDG Crossmod

IF~GlobalGT("GreenWitchQuest","GLOBAL",0) Global("YvetteTotDG","GLOBAL",0) AreaCheck("ARLDV2")~THEN BEGIN YvDGx00
SAY @1046 /* This creature is magnificent. It reminds me of the dryads of our world. She looks to be fighting for the existence of the Green Garden. It's most strange that "Witches" exist in a world yet they don't know the word "magic." */
IF~~THEN REPLY @1047 /* I guess it's understandable. No one ever told them what magic is. They don't know the word, but maybe that kind of energy exists here. Probably the source is different, but the rules of it are likely the same. You know what they say: "A blueberry by any other name would still taste the same." */ GOTO YvDGx01
IF~~THEN REPLY @1048 /* Indeed, it's quite strange, but this whole odd world...I can't be surprised by anything here, since everything's abstract in the Deep Gardens. It's a bit annoying, but we'll find a way out soon. I'm sure of that. */ GOTO YvDGx02
IF~~THEN REPLY @1049 /* It's not the time for that kind of chat, Yvette. We have to find a way out of this place. Come! */ GOTO YvDGx03
END

IF~~THEN BEGIN YvDGx01
SAY @1050 /* True. Well, I'm not sure if Mystra grants them her energy, but maybe there are other sources. I heard that there's magic that's supported with a "Shadow Weave" provided by Shar, so maybe here Colors themselves are like little, limited Weaves? Still, this is only speculation, and probably we'll never know if that's true. */
IF~~THEN GOTO YvDGx04
END

IF~~THEN BEGIN YvDGx02
SAY @1051 /* Is it really so annoying to you? I mean the place. I think it's quite interesting...Well, maybe it gives me goosebumps from time to time--for example, when we have to face strange creatures--but still, it's an interesting place. I wouldn't like to stay here forever, but I don't regret falling down here. You know, we're adventurers, after all. */
IF~~THEN GOTO YvDGx04
END

IF~~THEN BEGIN YvDGx04
SAY @1052 /* However, it's quite hard to understand this place...It's like a never-ending riddle. This whole..."Nature of Colors" is probably the greatest of those. For example: why does Green share the Garden with the Blue Color? */
=
@1053 /* (Yvette looks at the Green Tree for a moment without a word. Then she looks at you again.) You know, maybe I don't want to know the answer. It's better to leave this as unknown magic than dispel its mystery. */
IF~~THEN REPLY @1054 /* Without answers, we can take the Deep Gardens as both a kind of dungeon without exit and a brand new and uknown world within the world of Faerun. I think it's fine with me. */ GOTO YvDGx05
IF~~THEN REPLY @1055 /* It really doesn't matter to me. The Deep Gardens are a cage I want to leave as quickly as possible. That's all I think about this place. */ GOTO YvDGx06
IF~~THEN REPLY @1056 /* I'm sorry, but it's time for us to move on, Yvette. We have to escape the Deep Gardens and get Irenicus. */ GOTO YvDGx03
END

IF~~THEN BEGIN YvDGx05
SAY @1057 /* (Yvette comes closer to you and looks into your eyes.) Subtle mysteries are like brown sugar and cinnamon for baked apples: they change a simple dish into a most interesting dessert. */
IF~~THEN GOTO YvDGx07
END

IF~~THEN BEGIN YvDGx06
SAY @1058 /* Cage? Come now, it's not so bad! At least you can talk with the people here, get to know them a bit, and still we know we'll find a way out. It could be worse, dear lord. */
IF~~THEN GOTO YvDGx07
END

IF~~THEN BEGIN YvDGx07
SAY @1059 /* It's better to live a harsh life filled with adventures than face boredom every day, sir. Difficulties make life more precious. */
IF~~THEN REPLY @1060 /* I wouldn't make that kind of statement. */ GOTO YvDGx08
IF~~THEN REPLY @1061 /* Very true. Adventuring makes me a different person from the one I was when I was in Candlekeep. */ GOTO YvDGx09
IF~~THEN REPLY @1062 /* Whatever. We have to go. We need to find the exit from this place. */ GOTO YvDGx03
END

IF~~THEN BEGIN YvDGx08
SAY @1063 /* Really? You should look for the bright side of the situation from time to time. */
IF~~THEN DO ~SetGlobal("YvetteTotDG","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvDGx09
SAY @1064 /* Hehe, I know what you mean. We should chase opportunities, make precious memories before we realize that time isn't merciful. Come, good sir! We should move now. (She smiles and starts walking.) */
IF~~THEN DO ~SetGlobal("YvetteTotDG","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN YvDGx03
SAY @1065 /* I understand. Probably you want to find a way out of this world. Come, then; I'll help you as much as I can, lord. Lead on! */
IF~~THEN DO ~SetGlobal("YvetteTotDG","GLOBAL",1)~ EXIT
END


/////////////////Interjections

INTERJECT_COPY_TRANS YxEmi 0 yvetteemily01
== YxYveJ IF ~InParty("YxYve")~ THEN
@1066 /* Do...do you recognize me, lady? */
==YxEmi
@1067 /* You're the woman in the portrait, the one...Yvette...This is impossible! */
==YxYveJ
@1068 /* Why so...? Please, I've lost so many memories, and I just can't stand this...dizziness. After you gave the portrait to this man, I awoke, but all I remembered were vague images. I didn't know their meaning. */
==YxEmi
@1069 /* The one who drew this portrait was my cousin Gabriel. He's dead now and...you should be dead, too. Your whole village was wiped out by a plague. You resisted it, Camila and you tried to cure the villagers... */
==YxYveJ
@1070 /* I don't understand! Why should I be dead? Why I was turned into a portrait? What are you talking about, Emily? */
==YxEmi
@1071 /* So, you're really Yvette. I never said my name to this man. You and Camila tried to fight with the plague, you tried to protect the village, but this was overwhelming. Camila sent you to the city for help, but you never came back. I heard you were killed on the way to village, just after you left the report about the situation. Almost no one survived. Camila died a year later. This painting was left to me with my auntie's ring. Everything else was lost. They burned the village, those who survived have moved. */
==YxYveJ
@1072 /* (Yvette appears at a loss for words. She stands still, with wide eyes. She starts to shake her head as though denying Emily's words.) This can't be! Is this a sick joke? Who am I, then? */
==YxEmi
@1073 /* I don't know, sweetie. I'm sorry, but I know nothing more. If I knew, I'd tell you. You know my name, so you're her, but that's all I can tell you. I'm not a priestess, I'm not a mage, and I didn't even witness the end of the village. The drawing and ring were handed to me by Camila when she was still alive. She was my friend, so before everything was destroyed, she just took those two things. */
==YxEmi
@1074 /* But she prayed for you, Yvette. She prayed almost every day. You were like her own daughter for her. */
==YxEmi
@1075 /* I'm sorry. You won't find any witness now. It was too long ago. */
==YxYveJ
@1076 /* This is too much. We...we should just move, <CHARNAME>, please. */
==YxYveJ
@1077 /* I need some silence. Just do as though nothing happened. I need to think about all this, about my home, family and Gabriel. */
END

INTERJECT_COPY_TRANS YxGabr 0 yvettegabriel01
== YxYveJ IF ~InParty("YxYve")~ THEN
@1078 /* Gabriel...What is this place? Was it you who called me? I...I don't feel well. I thought you were dead! That's what your cousin told me! */
==YxGabr
@1079 /* Was I dead? I don't know. Why am I here? Because I was waiting for you. It was I who called your name, who waited for years. Isn't this place marvelous? It's a place of our dreams. */
==YxYveJ
@1080 /* What are you saying? */
==YxGabr
@1081 /* Just look at this pond. (Gabriel puts his two fingers into the shining pond, then draws a flower in the air. In a moment, the rose changes color from gold to green and red.) This is a place we can create, affect things with our will. */
==YxGabr
@1082 /* Do you remember our past? It was all ruined with fate. We didn't have a chance. We never sinned, but still everything shattered like a glass that had fallen to the ground. I woke up here, in an almost perfect world. Almost, because something was missing. I wasn't able to see you. I saw you in my dream, I called your name, and now you're standing here, in front of me. */
==YxGabr
@1083 /* We're given another chance, my friend. */
==YxYveJ
@1084 /* We never sinned? Maybe this is our sin, Gabriel. No, you're *not* Gabriel. */
==YxGabr
@1085 /* So, who's standing here? Who're you talking to? */
==YxYveJ
@1086 /* To a stranger. */
==YxGabr
@1087 /* You know that's not true. */
==YxYveJ
@1088 /* That's who you are to me. You dragged me here, you speak with the voice of a madman. This is what you call a perfect world? It's artificial. An arificial dream that you have created. There's no beauty in here. Beauty's something more than an art. It's a surprise, something we couldn't expect, something we couldn't affect, but still it exists. */
==YxYveJ
@1089 /* I thought of you a lot, about our childhood, but you've changed. You're not the Gabriel I knew, you're not even this child. You died with the other villagers, with our friends. Do you even remember them? */
==YxGabr
@1090 /* Of course I do. We can paint them, we can make a portrait of your sister. Don't you want her to live again? Stay with me. */
==YxYveJ
@1091 /* Don't dare to speak of her. It wouldn't be Marie. You cowl yourself with false visions! I can't look at you any more. I'm sorry, but I won't stay for you. I was given a new chance to live. I can live in the real world. Why don’t you leave this artificial land with us. */
==YxGabr
@1092 /* No! I won't! This is our new home, Yvette! */
==YxYveJ
@1093 /* You don't even listen to me anymore. Let us go. */
==YxGabr
@1094 /* No. You give me no choice. This man can go. Everyone may leave, but you have to stay here. That's the only condition. */
==YxYveJ
@1095 /* You can't...! */
==YxGabr
@1096 /* I can. Shall I shatter them as though they were ice sculptures? */
==YxYveJ
@1097 /* No! Just...just leave them! (Tears start to well up in the priestess' eyes. She looks at you, then at Gabriel.) */
==YxGabr
@1098 /* Will you stay, then? */
==YxYveJ
@1099 /* I... */
==YxYveJ
@1100 /* I'll... */
==YxGabr
@1101 /* A wise decision. Thank you, *my* lady. */
END

INTERJECT_COPY_TRANS YxGabr2 0 yvettegabriel02
== YxYveJ IF ~InParty("YxYve")~ THEN
@1102 /* Look what you've become! Just...just leave us alone! I won't come back! */
==YxGabr2
@1103 /* You came back to see him again, didn't you? */
==YxYveJ
@1104 /* Because you can't replace the real world with illusions, Gabriel. Can't you understand that? */
==YxGabr2
@1105 /* I'll ask one more time: Is he the reason you live? */
==YxYveJ
@1106 /* I already answered, Gabriel. Please, let us go. I asked you once, and now I'm begging you. I need no dignity; I want freedom. */
==YxGabr2
@1107 /* You won't come back? */
==YxYveJ
@1108 /* No. */
==YxGabr2
@1109 /* I'll erase that man, then! Then you'll have no reason to come back to this world! */
END

INTERJECT_COPY_TRANS YxVamp 0 yvettevamp01
== YxYveJ IF ~InParty("YxYve")~ THEN
@1110 /* No! Get away from me! */
==YxVamp
@1111 /* This is for Miss Bodhi! (The vampire thrusts claws into Yvette's chest.) */
END

///////////////////INTERJ

INTERJECT_COPY_TRANS SHADEL 4 yvshadowlord
== YxYveJ IF ~InParty("YxYve")~ THEN
@1112 /* We can't fall because of this...creature! It's as dark as Shar herself! */
END

INTERJECT_COPY_TRANS SHADEL 0 yvshadowlord2
== YxYveJ IF ~InParty("YxYve")~ THEN
@1113 /* Miss Mazzy, please, don't listen to him! He's only trying to weaken you! This can't happen! */
==MAZZYJ
@1114 /* I won't step back, Yvette. He's just a monster we have to slay. */
END

INTERJECT_COPY_TRANS SHADRA01 0 yvshadowdragon
== YxYveJ IF ~InParty("YxYve")~ THEN
@1115 /* This...this creature's huge. We won't defeat it! It's just too much! We should run away and find the one he's guarding! */
==SHADRA01
@1116 /* And you really think I'll just let you go, little bugs? Don't make me laugh. I've been bored lately, but now I think you will bring me some entertainment. */
END

INTERJECT_COPY_TRANS TORGAL 0 yvtorgal
== YxYveJ IF ~InParty("YxYve")~ THEN
@1117 /* This creature may be dangerous. He's the leader of those trolls, and even his servants were troublesome. We should watch out. */
END

INTERJECT_COPY_TRANS TORGAL 15 yvtorgal2
== YxYveJ IF ~InParty("YxYve")~ THEN
@1118 /* Lady Nalia, please, don't pay attention to the words this creature's saying! */
END

INTERJECT_COPY_TRANS CEFALDOR 6 yvfaldor
== YxYveJ IF ~InParty("YxYve")~ THEN
@1119 /* You call this chaos a balance? I can't believe you call yourself a druid! You harmed people, you caused a lot of pain to all the nearby creatures. You made animals attack the citizens. Because of that, both animals and people died. */
==CEFALDOR
@1120 /* There's no revolution without sacrifice! In the end, Trademeet and all those fools will fall and the only ones left will be us: children of balance! */
== YxYveJ
@1121 /* There's too much hatred in you. You should... */
==CEFALDOR
@1122 /* Silence! I'm already fed up with your pointless babbling, girl! */
END

INTERJECT_COPY_TRANS JUGDAR01 0 yvdaar
== YxYveJ IF ~InParty("YxYve")~ THEN
@1123 /* This man appears to have some kind of problem. Maybe we should offer him some help or something? I know it's not a real adventure, but still... */
END

INTERJECT_COPY_TRANS VALYGAR 0 yvvaly
== YxYveJ IF ~InParty("YxYve")~ THEN
@1124 /* <CHARNAME>, before you make any kind of decision, please, talk with this man. I don't believe those Cowled Wizards at all. They may have lied to you. */
==VALYGAR
@1125 /* You said Cowled Wizards? So it's true, and you're just another servant of those fools. I should have killed you already. */
== YxYveJ
@1126 /* No! Let’s talk first and maybe we can clear some things up before making any decisions! */
==VALYGAR
@1127 /* So, why did you come? Tell me everything now or leave the cabin! */
END

INTERJECT_COPY_TRANS VICONI 0 yvettevica
== YxYveJ IF ~InParty("YxYve")~ THEN
@1128 /* You know him, drow? You're a priestess of Shar, aren't you? You mentioned her! I think we should leave her as she is now. Shar can do no good. */
==VICONI
@1129 /* Nau! Is this who controls you, this whore of Sune? I can see your symbol on your robes, girl and tell you I did nothing to those fanatics! */
== YxYveJ
@1130 /* Maybe you did nothing to them, but you did to others! I'm sure of that. No one should trust a servant of Shar. You all tell only lies! */
==VICONI
@1131 /* <CHARNAME> trusts me. He and I have met before, rivvin. He saved me from the Flaming Fist, and I have helped him. */
==YxYveJ
@1132 /* You just want to survive to cast more shadows on other lives, don't you? <CHARNAME>? if she helped you, maybe she deserves to live, but remember that I won't adventure with her. */
==VICONI
@1133 /* There's no time for discussions, rivvin! Get rid of these ropes before they set me on fire! */
END

INTERJECT_COPY_TRANS TANNER 8 yvtanner
== YxYveJ IF ~InParty("YxYve")~ THEN
@1134 /* It's really him! We can't let him go, <CHARNAME>! Other people may die! */
==TANNER
@1135 /* Young and soft skinned...I'd make a high-quality leather armor of you! With the nice scent of your body! */
== YxYveJ
@1136 /* Stay away from me! */
==TANNER
@1137 /* Maybe in a different time and situation, I'd have the chance to create this masterpiece, but not now. */
==TANNER
@1138 /* You won't get me! */
END

INTERJECT_COPY_TRANS HAERDA 26 yvhaer
== YxYveJ IF ~InParty("YxYve")~ THEN
@1139 /* (Whispers.) He has strange markings on his skin, <CHARNAME>. He's seems a bit strange, but I feel like I'd trust him. */
==HAERDA
@1140 /* Ah, lady, has no one told you that whispering in a group isn't good manners? */
END

INTERJECT_COPY_TRANS HAERDA 109 yvhaer2
== YxYveJ IF ~InParty("YxYve")~ THEN
@1141 /* He appears not to even see us. Maybe he's under a spell or something? */
==HAERDA
@1142 /* (The man stands still with a vacant and thoughtless expression.) */
END

INTERJECT_COPY_TRANS WELLYN 0 yvwellyn
== YxYveJ IF ~InParty("YxYve")~ THEN
@1143 /* Is this a wraith? He looks so innocent. He can't be as the other undead we've seen. */
==WELLYN
@1144 /* Mommy? Is that your voice...? Is it you, or maybe you're someone else? Do you know where my teddy bear is? */
END

INTERJECT_COPY_TRANS WELLYN 10 yvwellyn2
== YxYveJ IF ~InParty("YxYve")~ THEN
@1145 /* I hope he will find some peace at last. */
==WELLYN
@1146 /* (Wellyn appears looking at something distant.) */
END

INTERJECT_COPY_TRANS SPPAIN 0 yvpaina
== YxYveJ IF ~InParty("YxYve")~ THEN
@1147 /* I don't like this place. Let's leave it, please... */
END

INTERJECT_COPY_TRANS VVSANSUK 0 yvsansuki
== YxYveJ IF ~InParty("YxYve")~ THEN
@1148 /* Who's chasing you, sir? What happened? */
==VVSANSUK
@1149 /* They're right behind me! I can't explain now! */
END

INTERJECT_COPY_TRANS MAEVAR 0 yvmaevar
== YxYveJ IF ~InParty("YxYve")~ THEN
@1150 /* This place is strange. I didn't know this kind of organization hid in a simple tavern like this one. Maybe we should... */
==MAEVAR
@1151 /* I'm talking right now, girl. Man to man. */
== YxYveJ
@1152 /* I...I'm sorry, sir! */
==MAEVAR
@1153 /* Good. You know your place. */
END

INTERJECT_COPY_TRANS FIRKRA02 32 yvfirkra
== YxYveJ IF ~InParty("YxYve")~ THEN
@1154 /* Don't listen to him, <CHARNAME>! */
==FIRKRA02
@1155 /* Be silent, little girl, or you will regret it. */
END

INTERJECT_COPY_TRANS FIRKRA02 0 aeonfirkra2
== YxYveJ IF ~InParty("YxYve")~ THEN
@1156 /* He's huge! Is it he who gathered all those creatures and goods we've seen on the way here? */ 
END

INTERJECT_COPY_TRANS COWENF2 0 yvatthemitc
== YxYveJ IF ~InParty("YxYve")~ THEN
@1157 /* How did they know one of us cast a spell? */
==COWENF2
@1158 /* We have our ways, child. Now, be silent. */
END

INTERJECT_COPY_TRANS AERIE 27 yvatthecircus
== YxYveJ IF ~InParty("YxYve")~ THEN
@1159 /* All of this is very strange! An ogre talking with the voice of a young lady, those sculptures, fountains, and voices coming out of the walls... */
==AERIE
@1160 /* Maybe you'll still be able to run away! Please... */
END

INTERJECT_COPY_TRANS AKAE 0 yvatthetomb
== YxYveJ IF ~InParty("YxYve")~ THEN
@1161 /* Where did they come from? I think we're in trouble... */
==AKAE
@1162 /* Indeed, you are. */
END

INTERJECT_COPY_TRANS ARAN 0 yvatthethieves
== YxYveJ IF ~InParty("YxYve")~ THEN
@1163 /* Is this the Aran we've heard about? He doesn't look very impressive. I expected a huge man, and he looks quite...normal. */
END


INTERJECT_COPY_TRANS BARONP 0 yvtheployer
== YxYveJ IF ~InParty("YxYve")~ THEN
@1164 /* There's something strange about that man, my lord. */
==BARONP
@1165 /* It's high time. */
END

INTERJECT_COPY_TRANS BARSAIL1 7 yvatthebs
== YxYveJ IF ~InParty("YxYve")~ THEN
@1166 /* This place is strange. It's dirty, but...they appear happy. */
==BARSAIL1
@1167 /* Come, sit with us and have some rum, girl! */
== YxYveJ
@1168 /* No, thank you, mister. We're a bit busy, you know... */
==BARSAIL1
@1169 /* Aye, a pity then! */
END

INTERJECT_COPY_TRANS BODHI 0 yvatthebodhi
== YxYveJ IF ~InParty("YxYve")~ THEN
@1170 /* She's beautiful, but there's something cold in her look and in the way she speaks, my lord. */
END

INTERJECT_COPY_TRANS DELON 3 yvatthedelon
== YxYveJ IF ~InParty("YxYve")~ THEN
@1171 /* I can't look at his sad face, my lord. I think we should help him. */
==DELON
@1172 /* Thank...Thank you, lady. */
END

INTERJECT_COPY_TRANS GAAL 0 yvattheeyelord
== YxYveJ IF ~InParty("YxYve")~ THEN
@1173 /* I'm a bit afraid of this place and these people, <CHARNAME>. Maybe we should leave this...temple, or whatever... */
==GAAL
@1174 /* Your faith's weak, child! Those gods of yours have made you weak! */
== YxYveJ
@1175 /* (She whispers in your ear.) Sune would prefer that we end this thing here. We have to check out this cult, but I'll stay behind. This...this man makes me feel strange. */
END

INTERJECT_COPY_TRANS LAVOK 13 yvatthesphere
== YxYveJ IF ~InParty("YxYve")~ THEN
@1176 /* If you really respect my opinion, please, grant him this last wish. I'm sure it was this Sphere and the whole situation. He lost his senses, but now he understands everything clearly. We should help him. */
==LAVOK
@1177 /* It's...it's good to hear such kind words, my child...Still, he's the one who has to make the decision... */
END

INTERJECT_COPY_TRANS LIN 0 yvatthelin
== YxYveJ IF ~InParty("YxYve")~ THEN
@1178 /* Look at this poor...I wish I could stop this from happening... */
END

INTERJECT_COPY_TRANS NEB 8 yvattheneb
== YxYveJ IF ~InParty("YxYve")~ THEN
@1179 /* He's a villain! A murderer! I swear by all I possess, I'll stop him! My lord, we shouldn't let him escape! */
==NEB
@1180 /* Try as many have, you won't succeed! */
END

INTERJECT_COPY_TRANS QUAYLEM 0 yvatthequ
== YxYveJ IF ~InParty("YxYve")~ THEN
@1181 /* Is this another illusion? This...this place is...We have to end this as quickly as possible, and reveal what's truth and what's not, my lord! */
==QUAYLEM
@1182 /* Kill Kalah! That may dispel these illusions! Please, end this! */
END

INTERJECT_COPY_TRANS PLAYER1 2 yvatplay01
== YxYveJ IF ~InParty("YxYve") Global("YvetteRomanceActive","GLOBAL",1)~ THEN
@1183 /* (when Yvette realizes you don't feel well, she quickly runs upstairs to you. She appears worried about you, but doesn't say a word. Instead, she looks at you and touches your cheek.) */
== YxYveJ
@1184 /* (She kisses the cheek she touched. She takes your hand and helps you walk up the marble stairs.) */
== YxYveJ
@1185 /* (She says nothing, but her smile tells you she'd like to support you, however from her face you can read that she can't find words.) */
END

INTERJECT_COPY_TRANS UDSOLA01 0 yvattheudone
== YxYveJ IF ~InParty("YxYve")~ THEN
@1186 /* I really don't like those of this city, my lord. I feel no sympathy for them. */
==UDSOLA01
@1187 /* We're not here for you to feel sympathy for us, rothe iblith. */
END

INTERJECT_COPY_TRANS UDSILVER 0 yvattheadalon
== YxYVeJ IF ~InParty("YxYve")~ THEN
@1188 /* I've never seen such a beautiful creature as you...Lady Adalon, you look as though you were Sune's manifestation. I'm sorry that I react like that...you're just...I can't find the words! */
==UDSILVER
@1189 /* This isn't the time nor the place for compliments, little human. I have to talk with the one who leads you. */
END

INTERJECT_COPY_TRANS HELLJON 8 yvatthehellir
== YxYveJ IF ~InParty("YxYve")~ THEN
@1190 /* You've hurt too many people, Irenicus! I...I won't let you kill <CHARNAME>! He's a good lord, he supported me. Do you really want others to suffer? Do you really carry such hatred in your heart? */
==HELLJON
@1191 /* There's no hatred, and there are no memories I need to treasure in my mind, foolish girl. The power I deserve, and only the strongest will survive. If the elves and the Tree itself are unable to stop me, they will simply fall. */
== YxYveJ
@1192 /* Wasn't Suldanesselar your home? I can't know what you've seen, what your past was like, but I beg you, Irenicus, stop this! Please...does it really have to end like this? */
==HELLJON
@1193 /* Your speech is pointless, girl. What started in the past had to reach its end one day, and that day is here. Now, waste no more of my time or I shall end your life here! */
== YxYveJ
@1194 /* I'll speak no more. I wish it wouldn't end like this, Irenicus. We'll have to fight, then... */
==HELLJON
@1195 /* We will. This is what I prepared for, this is the end of you, <CHARNAME>...You shall not win! */
END

//////////////////Salvanas

CHAIN
IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
IsGabber("YxYve")
Global("YvetteSALVANAS","LOCALS",0)~ THEN SALVANAS yvsalvanas
@1196 /* Ah, what a splendid girl to enter this filthy place. Are you a priestess of purity who has decided to change this place? */ DO ~SetGlobal("YvetteSALVANAS","LOCALS",1)~
== YxYveJ @1197 /* Indeed, I'm a priestess, but...I just stepped in here because I follow my leader. Why are you looking at me like that, sir? */
== SALVANAS @1198 /* Because you're a beautiful phenomena, my lady! I feel my heart's not as pure as it used to be. Please, could you teach me how to be as pure as you are? */
== YxYveJ @1199 /* I don't think I understand what you're saying, sir. I'm just an adventurer under the commands of <CHARNAME>. */
== SALVANAS @1200 /* Your lack of confidence is so...unusual. It fills my heart with joy. What's your name, young lady? */
== YxYveJ @1201 /* It's Yvette, sir. */ 
== SALVANAS @1202 /* A splendid name! However, it's not as marvelous as your beauty. You are a gem that shines through the ages! */
== YxYveJ @1203 /* Your words are a bit...odd, sir. Excuse me, but I think it's time for me to move. I should say my prayers. */
== SALVANAS @1204 /* Will you pray for this mere man who looks at your face now? */
== YxYveJ @1205 /* I can...but...why should I pray for thee, sir? Are you ill? */
== SALVANAS @1206 /* I feel lovelorn, my child. Give me a kiss--at least on the cheek--that would be the greatest medicine! */
== YxYveJ @1207 /* <CHARNAME>, this...this man's strange...Do you know him...? */
== SALVANAS @1208 /* You're with this man? Ah, I thought you were alone, lady! I...I think I dropped my coin...where is it? */
EXIT


//////////////////Tree of Life

//Tree of Life
INTERJECT PLAYER1 33 YvetteTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("YxYve")~ THEN 
@1209 /* (You see Yvette, the young priestess of Sune, who has traveled with you for some time. She used to be a portrait, but then she was given the chance to live and adventure once more. She looks at you and smiles.) */
END
IF~Global("YvetteRomanceActive","GLOBAL",2)~THEN REPLY @1210 /* Will you help me, my love? This will be dangerous. */ EXTERN YxYveJ YvetteLoveTree
IF~~THEN REPLY @1211 /* Will you stay by my side, or would you rather leave? The decision's yours. */ EXTERN YxYveJ YvetteTree1

APPEND YxYveJ
IF ~~ THEN BEGIN YvetteLoveTree
SAY @1212 /* Of course, I'll follow you. You are my first love, and I'm not afraid to follow you. Yes, it's dangerous, but...I'll stay and I’ll fight, good lord. */
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN YvetteTree1
SAY @1213 /* Yes...You know, I'm terrified, but I'll stay by your side. */
COPY_TRANS PLAYER1 33
END
END