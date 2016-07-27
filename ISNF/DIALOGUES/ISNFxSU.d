BEGIN ISNFxSU

IF~NumTimesTalkedTo(0)~THEN BEGIN Sunite000
SAY @0 /* Ah, welcome in the Temple of Sune... and my home. And before you ask -- yes, I live here. */
IF~~THEN REPLY @1 /* I think I may need your help. */ GOTO Sunite001
IF~~THEN REPLY @2 /* Oh, I suppose that's not the house I've been looking for. Goodbye. */ GOTO Sunite002
END

IF~NumTimesTalkedToGT(0)~THEN BEGIN Sunite001
SAY @3 /* How can I help you? */
IF~Global("ISNFSune1","GLOBAL",1) Global("ISNFQuest","GLOBAL",1)~THEN REPLY @4 /* I'm working for a man - Orion. He lost his beloved. Can the Sunites use their feelings as a "bridge" and bring her back? Is there ANY way to bring her? */ DO ~SetGlobal("ISNFSune1","GLOBAL",2) SetGlobal("ISNFQuest","GLOBAL",2)~ GOTO Sunite006
IF~~THEN REPLY @5 /* Why do you live in a temple? Are you homeless? */ GOTO Sunite003
IF~~THEN REPLY @6 /* Can you tell me a bit about Sune? */ GOTO Sunite004
IF~~THEN REPLY @7 /* I need your service. */ GOTO Sunite005
IF~Global("ISNFSun6","GLOBAL",1) GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_5%)~THEN REPLY @8 /* It's been a while since I've been here. Have you got any new wares? */ GOTO New000
IF~Global("ISNFQuest","GLOBAL",6)~THEN REPLY @9 /* I'm looking for someone who could make a sculpture for one of my friends. I thought I should ask if you - as a Sunite - knew someone appropriate. */ GOTO SuniteS0
IF~PartyHasItem("ISNFXSS")~THEN REPLY @10 /* I have found this figurine. I think you should have it. */ DO ~TakePartyItem("ISNFXSS") DestroyItem("ISNFXSS")~ GOTO SuniteFig0
IF~~THEN REPLY @11 /* Uhm, I think I should go. Goodbye. */ GOTO Sunite002
END

IF~~THEN BEGIN Sunite003
SAY @12 /* Oh, no! This IS my home. We - Sunites - had no real temple in Athkatla, so I agreed to set up one in my own estate. I'm a merchant, so I brought everything we needed and here it is - a Temple of Sune! */
= @13 /* Is there something more you need? */
IF~Global("ISNFSune1","GLOBAL",1) Global("ISNFQuest","GLOBAL",1)~THEN REPLY @4 /* I'm working for a man - Orion. He lost his beloved. Can the Sunites use their feelings as a "bridge" and bring her back? Is there ANY way to bring her? */ DO ~SetGlobal("ISNFSune1","GLOBAL",2) SetGlobal("ISNFQuest","GLOBAL",2)~ GOTO Sunite006
IF~~THEN REPLY @6 /* Can you tell me a bit about Sune? */ GOTO Sunite004
IF~~THEN REPLY @7 /* I need your service. */ GOTO Sunite005
IF~Global("ISNFSun6","GLOBAL",1) GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_5%)~THEN REPLY @8 /* It's been a while since I've been here. Have you got any new wares? */ GOTO New000
IF~Global("ISNFQuest","GLOBAL",6)~THEN REPLY @9 /* I'm looking for someone who could make a sculpture for one of my friends. I thought I should ask if you - as a Sunite - knew someone appropriate. */ GOTO SuniteS0
IF~PartyHasItem("ISNFXSS")~THEN REPLY @10 /* I have found this figurine. I think you should have it. */ DO ~TakePartyItem("ISNFXSS") DestroyItem("ISNFXSS")~ GOTO SuniteFig0
IF~~THEN REPLY @11 /* Uhm, I think I should go. Goodbye. */ GOTO Sunite002
END

IF~~THEN BEGIN Sunite004
SAY @14 /* Oh, of course! Sune - or just Lady Firehair - is the goddess of beauty, passion and art! That's why we have all these beautiful objects here. They're just marvelous, aren't they? */
= @15 /* And we, her servants, live to protect beauty of such things; gather poetry and make sure it won't be forgotten; and support passion and love, obviously. */
= @16 /* So if you need protection and are eager to behold our precious goods, then you're welcome. */
IF~Global("ISNFSune1","GLOBAL",1) Global("ISNFQuest","GLOBAL",1)~THEN REPLY @17 /*  I'm working for a man - Orion. He lost his beloved. Can the Sunites use their feelings as a "bridge" and bring her back? Is there ANY way to bring her? */ DO ~SetGlobal("ISNFSune1","GLOBAL",2) SetGlobal("ISNFQuest","GLOBAL",2)~ GOTO Sunite006
IF~~THEN REPLY @5 /* Why do you live in a temple? Are you homeless? */ GOTO Sunite003
IF~~THEN REPLY @7 /* I need your service. */ GOTO Sunite005
IF~Global("ISNFSun6","GLOBAL",1) GlobalGT("CHAPTER","GLOBAL",%bg2_chapter_5%)~THEN REPLY @8 /* It's been a while since I've been here. Have you got any new wares? */ GOTO New000
IF~Global("ISNFQuest","GLOBAL",6)~THEN REPLY @18 /*  I'm looking for someone who could make a sculpture for one of my friends. I thought I should ask if you - as a Sunite - knew someone appropriate. */ GOTO SuniteS0
IF~PartyHasItem("ISNFXSS")~THEN REPLY @10 /* I have found this figurine. I think you should have it. */ DO ~TakePartyItem("ISNFXSS") DestroyItem("ISNFXSS")~ GOTO SuniteFig0
IF~~THEN REPLY @11 /* Uhm, I think I should go. Goodbye. */ GOTO Sunite002
END

IF~~THEN BEGIN Sunite006
SAY @19 /* Was her body destroyed? */
IF~~THEN REPLY @20 /* Yes. */ GOTO Sunite007
IF~~THEN REPLY @21 /* If it wasn't, I wouldn't bother myself to find this pathetic temple of yours. */ GOTO Sunite007
END

IF~~THEN BEGIN Sunite007
SAY @22 /* Then I'm afraid I can't help you. This Orion must endure it somehow. */
IF~~THEN REPLY @23 /* But you're a Sunite! A Heartwarden. You should protect their love; you should help them! */ GOTO Sunite008
IF~~THEN REPLY @24 /* Isn't there any trick that would serve the purpose. */ GOTO Sunite009
IF~~THEN REPLY @25 /* I understand. Sorry to have bothered you. Goodbye. */ GOTO Sunite002
END

IF~~THEN BEGIN Sunite009
SAY @26 /* We are priests, not "tricksters", I'm afraid. */
IF~~THEN GOTO Sunite008
END

IF~~THEN BEGIN Sunite008
SAY @27 /* I'm sorry. Life is fragile, so is love. If we could raise all those who were in love, then the feeling and the loss would lose their significance. It's beauty is in its delicateness. */
= @28 /* Again - I'm sorry. */
IF~~THEN REPLY @29 /* It's fine... I'll pass the news to my employer. Goodbye. */ GOTO Sunite002
IF~~THEN REPLY @30 /* Before I leave - may I use your services. */ GOTO Sunite005
END  

IF~~THEN BEGIN Sunite005
SAY @31 /* Just tell me how I can illuminate your heart. */
IF~~THEN DO ~StartStore("ISNFSu",LastTalkedToBy())~ EXIT
END

IF~~THEN BEGIN New000
SAY @32 /* Ah, I remember you! You are the one who brought me Sune's figurine! I think I can show you some special items I got some time ago. Here, take a look. */
IF~~THEN DO ~StartStore("ISNFSu2",LastTalkedToBy())~ EXIT
END

IF~~THEN BEGIN Sunite002
SAY @33 /* Goodbye. Let passion illuminate your heart. */
IF~~THEN DO ~~ EXIT
END

IF~~THEN BEGIN SuniteFig0
SAY @34 /* Oh, it is marvelous! Thank you! */
= @35 /* Hmm, I should give you something in exchange... ah! A figurine for a figurine! Please, take this. I hope you'll find it useful. */
IF~Global("ISNFSun6","GLOBAL",0)~THEN DO ~GiveItemCreate("ISNFxEF",Player1,1,0,0) SetGlobal("ISNFSun6","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SuniteS0
SAY @36 /* Well, I'm glad you asked, as I know someone who can help you. */
= @37 /* There are some artists in Athkatla, but if you want someone good, you should ask Amontias. You should find him on the Promenade, near the wooden construction where they sell paintings and portraits. */
IF~~THEN EXIT
END

