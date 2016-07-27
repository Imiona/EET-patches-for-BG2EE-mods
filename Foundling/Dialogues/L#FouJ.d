BEGIN L#FouJ
BEGIN L#GLOR

////////////////////////////////
//////////CREATE BLADE//////////
////////////////////////////////

CHAIN IF ~Global("L#SMITH","LOCALS",1)~ THEN L#FouJ CREATE00
@0 /* (Once in a lifetime, a shadow adept can create a magic blade.  Its power depends on the current power of the caster.  Do you want to create the blade now?) */
END
IF~~THEN REPLY @1 /* Yes. */ DO ~SetGlobal("L#SMITH","LOCALS",2)~ EXIT
IF~~THEN REPLY @2 /* No. */ DO ~SetGlobal("L#SMITH","LOCALS",0)~ EXIT

///////////////////////////
////TALK 5 - Figurine//////
///////////////////////////

CHAIN
IF ~PartyHasItem("l#sha1i") Global("L#FouPlot","GLOBAL",4)~ THEN L#FouJ Item01x00
@3 /* I have it.  Finally... */ 
== l#fouj @4 /* It's so strange to hold my own freedom in my bare hands.  As if it was material. */
== haerdaj IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @5 /* It seems that even our dark rook has moments, when he becomes more poetic, perhaps even nostalgic.  Indeed, freedom is something that one may really miss.  I can still remember those hours in Mekrath's house. */
== Imoen2J IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @6 /* I think I can understand the feeling.  I dreamed about being free when... when he kept me.  It wasn't easy. */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @7 /* It must be... beautiful to become free again. */
END
IF~~THEN REPLY @8 /* Are you sure this is the thing we've been looking for? */ EXTERN L#FouJ Item01x01
IF~~THEN REPLY @9 /* What now?  Is that what you've been looking for? */ EXTERN L#FouJ Item01x01
IF~~THEN REPLY @10 /* I would appreciate it if you could stop being quasi-lyrical.  I hate cheap poetry. Better tell me if that's what you needed. */ EXTERN L#FouJ Item01x01

CHAIN L#FouJ Item01x01
@11 /* Yes.  The Bird of the Deep Shade. */
== L#FouJ @12 /* (Foundling takes the bird and breaks it as if it were made from baked clay - it is not empty inside.  Foundling breaks it into smaller pieces.) */
END
IF~~THEN REPLY @13 /* What are you doing?! */ EXTERN L#FouJ Item01x02
IF~~THEN REPLY @14 /* What the...? */ EXTERN L#FouJ Item01x02
IF~~THEN REPLY @15 /* Are you sure you know what're doing? */ EXTERN L#FouJ Item01x02

CHAIN L#FouJ Item01x02
@16 /* There's no need to worry.  I know *exactly* what I'm doing. */
== L#FouJ @17 /* (As he shows you the shards in his hands, you can see that the bird has something inside.  The clay has some small veins with blue 'blood'.  Foundling takes the pieces and lifts them up, then he lets the blue liquid drip into his mouth.) */
== L#FouJ @18 /* (You can hear something that sounds like the soft coo of a turtle-dove.  And then it stops.) */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @19 /* D-did he just eat it...? */
END
IF~~THEN REPLY @20 /* Did it work? */ EXTERN L#FouJ Item01x03
IF~~THEN REPLY @21 /* It looked really strange.  What was this... liquid? */ EXTERN L#FouJ Item01x04
IF~~THEN REPLY @22 /* And...? */ EXTERN L#FouJ Item01x05

CHAIN L#FouJ Item01x04
@23 /* Something called 'Night's Blood'.  They brought it from the Shadow Plane. */
== ValygarJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @24 /* I have a bad feeling about this. */
END
IF~~THEN REPLY @20 /* Did it work? */ EXTERN L#FouJ Item01x03
IF~~THEN REPLY @25 /* Can you feel any difference? */ EXTERN L#FouJ Item01x03

CHAIN L#FouJ Item01x05
@26 /* ... */
== KorganJ IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @27 /* So?  Will ye say somethin' or're we just goin' to stand an' stare? */
END
IF~~THEN REPLY @28 /* Hmm?  Did it work? */ EXTERN L#FouJ Item01x03
IF~~THEN REPLY @29 /* So?  Any difference? */ EXTERN L#FouJ Item01x03

CHAIN L#FouJ Item01x03
@30 /* I'm not sure... */
== L#FouJ @31 /* (Suddenly his face sharpens.)  I knew he would think of something more.  Damned dragon.  He must have sealed the energy.  He was more crafty than any daemon.  (His hair starts to wave as if it were a knot of snakes.) */
== L#FouJ @32 /* There must be something more--a chant or some kind of... ritual. */
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @33 /* Boo says that the hathrans know much about rituals!  But Rashemen is far far away... */
== EdwinJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @34 /* Don't even look at me, worthless thing.  I have more significant work than you and your curse!  (Why do we even drag this thing with us?) */
== L#FouJ @35 /* There must be something... */
END
IF~~THEN REPLY @36 /* Maybe we should look for a hint in where we left the dragon's corpse? */ EXTERN L#FouJ Item01x06
IF~~THEN REPLY @37 /* But maybe you just can't feel the change?  Maybe everything's fine and there's no need to do anything more. */ EXTERN L#FouJ Item01x07
IF~~THEN REPLY @38 /* You know, I don't really care.  You should go now.  I'm not interested in getting into trouble because of you. */ EXTERN L#FouJ Item01x08
IF~~THEN REPLY @39 /* Maybe we should check this room?  Maybe there is some kind of scroll, or something? */ EXTERN L#FouJ Item01x06
IF~~THEN REPLY @40 /* Eh, what should we do then? */ EXTERN L#FouJ Item01x06

CHAIN L#FouJ Item01x07
@41 /* It's never that easy.  I think I would know... */
EXTERN L#FouJ Item01x09

CHAIN L#FouJ Item01x06
@42 /* But-- */
EXTERN L#FouJ Item01x09

CHAIN L#FouJ Item01x09
@43 /* --Wait!  Look!  I think I've found something! */
== L#FouJ @44 /* (He shows you some signs on the shards of the figurine.) */
== L#FouJ @45 /* That must be it.  The problem is that I can't read these marks.  I'm afraid it's some kind of... code. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @46 /* Ah, if only Miss Raelis were with us--she is like an endless book, with all the secrets written down. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @47 /* I think I know someone we could ask for some help. */
== L#FouJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @48 /* You're not joking, are you? */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @49 /* No, I'm not.  I never joke about matters like this. */
== L#FouJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @50 /* But we both know you do not trust me.  Why would you help, then? */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @51 /* <CHARNAME> let you join.  Even though I do not agree with <PRO_HISHER> decision, I'm not going to cause any pointless delay.  Do not misunderstand me, though.  I still believe you do not belong with us. */
== L#FouJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @52 /* Fine. I understand. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @53 /* I think we should ask Ribald at the Adventurer's Mart.  He is an experienced and wise adventurer.  If someone can tell us something more, it would be him. */
//Jaheira is not in the party, or unable to talk
== L#FouJ IF ~OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @54 /* We're not sure what kind of specialist we should ask, so I suppose we should find someone with many connections.  Someone wise with even wiser friends. */
== L#FouJ IF ~OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @55 /* Maybe a magician-craftsman... an old... someone. */
END
IF~InParty("Jaheira")!StateCheck("jaheira",CD_STATE_NOTVALID)~THEN REPLY @56 /* Thank you, Jaheira.  I appreciate your help. */ EXTERN JaheiraJ Item01x10
IF~InParty("Jaheira")!StateCheck("jaheira",CD_STATE_NOTVALID)~THEN REPLY @57 /* It's good that you know hiding information is *highly* prohibited in this team, Harper. */ EXTERN JaheiraJ Item01x11
IF ~OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN REPLY @58 /* I think we should ask someone in Athkatla, at the Promenade. */ EXTERN L#FouJ Item01x12 // J not in party or unable to talk
IF~OR(2) !InParty("Jaheira") StateCheck("jaheira",CD_STATE_NOTVALID)~THEN REPLY @59 /* Hmm, I suppose we should ask at the Adventurer's Mart.  It's the most prestigious shop in Athkatla. */ EXTERN L#FouJ Item01x12 // J not in party or unable to talk

CHAIN JaheiraJ Item01x10
@60 /* I hope so. */
EXTERN L#FouJ Item01x13

CHAIN JaheiraJ Item01x11
@61 /* Harper?  So that's how you're going to address me?  I thought Gorion's child would be different.  It seems I was wrong, *Bhaalspawn*. */
EXTERN L#FouJ Item01x13

CHAIN L#FouJ Item01x12
@62 /* I know nothing about this Athkatla place, so I can only trust you know what you're doing. */
EXTERN L#FouJ Item01x13

CHAIN L#FouJ Item01x13
@63 /* We should take the shards of this token.  Make sure we do not lose them. */
== L#FouJ @64 /* I suppose we should move on now.  These chambers remind me of my former master.  Let's do what we must and leave these damn ruins. */
END
IF~~THEN REPLY @65 /* Fine.  Let's go, we need to deal with the Shade Lord. */ EXTERN L#FouJ Item01x14
IF~~THEN REPLY @66 /* Right.  Let's go. */ EXTERN L#FouJ Item01x15

CHAIN L#FouJ Item01x08
@67 /* So you're telling me to leave? */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @68 /* That would be the right thing to do. */
END
IF~~THEN REPLY @69 /* Eh, stay, but keep in mind we've got some other business to attend to besides your curse.  Understood? */ EXTERN L#FouJ Item01x06
IF~~THEN REPLY @70 /* Yes.  Leave. */ EXTERN L#FouJ Item01x16

CHAIN L#FouJ Item01x14
@71 /* You're right. */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @72 /* We can waste no more time. */
== L#FouJ @73 /* Lead then.  I shall be behind you. */
DO ~SetGlobal("L#FouPlot","GLOBAL",5) TakePartyItem("l#sha1i") DestroyItem("l#sha1i")~
EXIT

CHAIN L#FouJ Item01x15
@74 /* I'm right behind you. */
DO ~SetGlobal("L#FouPlot","GLOBAL",5) TakePartyItem("l#sha1i") DestroyItem("l#sha1i")~
EXIT

CHAIN L#FouJ Item01x16
@75 /* I thought you wanted to help me!  You're even worse than my former master was.  I curse you. */
DO ~SetGlobal("L#FouPlot","GLOBAL",75) TakePartyItem("l#sha1i") DestroyItem("l#sha1i") LeaveParty() EscapeArea()~ 
EXIT

////////////////////////////
//////TALK 6 - Ribald///////
////////////////////////////

EXTEND_TOP ~RIBALD~ 0
IF~InParty("L#FOU") Global("L#FouPlot","GLOBAL",5)~THEN REPLY @76 /* Ribald, there's something I'd like to discuss.  We have found an object with some strange markings.  We need someone to take a look at it. */ EXTERN RIBALD FouItem000
END

CHAIN RIBALD FouItem000
@77 /* Hmm, that's an interesting request.  Let me see this "object". */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @78 /* It may have something to do with the Plane of Shadow. */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @79 /* Ah, Jaheira.  I should have known you would be somewhere here.  Another job for your friends? */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @80 /* Not for the ones you mean, Ribald. */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @81 /* I see. */
== RIBALD @82 /* These shards seem really interesting.  They've held some magic, that's for sure.  I can't read those signs, but I think I know someone who may help you. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @83 /* I hope you don't mean-- */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @84 /* I'm afraid I do.  I know you hate her, but she's one of my best customers.  She may be a buffoon, but she can read codes like this one. */
== RIBALD @85 /* We need to ask Gloria D'Orlaux. */
== L#FouJ @86 /* You think she can help us? */
== RIBALD @1 /* Yes. */
END
IF~~THEN REPLY @87 /* Where can we find her? */ EXTERN RIBALD FouItem001
IF~~THEN REPLY @88 /* How can I get in touch with her?  It's an urgent issue. */ EXTERN RIBALD FouItem002

CHAIN RIBALD FouItem001
@89 /* I wouldn't tell you about her if I thought otherwise. */
EXTERN RIBALD FouItem002

CHAIN RIBALD FouItem002
@90 /* She should be here in a few hours.  She comes here every three days to buy some ingredients and to talk about her progress.  Just come back in a little while--she should be here. */
== L#FouJ @91 /* We will.  Thank you. */
== L#FouJ @92 /* We have to meet this Gloria, <CHARNAME>.  I can feel the curse inside of me.  Believe me, I don't want to die.  No one would. */
END
IF~~THEN REPLY @93 /* Of course we're going to meet this woman. I understand how important this is. */ EXTERN L#FouJ FouItem003
IF~~THEN REPLY @94 /* Whatever. We still have some time so stop whining and let us do something significant in the meantime. */ EXTERN L#FouJ FouItem003

CHAIN L#FouJ FouItem003
@95 /* I need to know the answer. */
DO ~SetGlobal("L#FouPlot","GLOBAL",6) SetGlobalTimer("L#FoundGloriaTime","GLOBAL",2000)~ EXIT

///////////////////////////////
//TALK 6+ - Extra Gloria talk//
///////////////////////////////

CHAIN IF ~Global("L#fouGloriatalk","GLOBAL",2)~ THEN L#FouJ GloriaT000
@96 /* I'm wondering if this person will help us. */ 
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @97 /* We should believe that this Gloria can help us. There are still many who understand that altruism is a noble attitude. */
== EdwinJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @98 /* I doubt any cheap merchant and his friends have any competence in matters of magic. (I doubt they have *any* competence at all.) */
== ValygarJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @99 /* I'm not sure if they should. I have a bad feeling about this. We're trying to play with a dangerous matter. He's not worth it. */
== L#FouJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @100 /* Blunt and harsh. As always. */
END
IF~~THEN REPLY @101 /* Help *us*? Heh, it's you who's cursed, not me. */ EXTERN L#FouJ GloriaT001
IF~~THEN REPLY @102 /* This city can be full of surprises, Foundling. We shouldn't give up. */ EXTERN L#FouJ GloriaT002
IF~~THEN REPLY @103 /* I don't care. It's your problem, after all. */ EXTERN L#FouJ GloriaT001
IF~~THEN REPLY @104 /* We need to move. Just wait and we'll see how this is going to end. */ EXTERN L#FouJ GloriaT003

CHAIN L#FouJ GloriaT001
@105 /* You're *so* sympathetic. */
EXTERN L#FouJ GloriaT004

CHAIN L#FouJ GloriaT002
@106 /* I'm not giving up. I'm wondering. */
EXTERN L#FouJ GloriaT004

CHAIN L#FouJ GloriaT004
@107 /* I didn't free myself to die because of the curse now. My Master is dead and that was always going to be the most difficult part. If only I had suspected the true nature of this curse--that dispelling it would be this troublesome. */
== YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @108 /* An interesting use of the word troublesome, darkling. Hehe, if you consider being consumed by a curse 'troublesome', then I'm not sure if I want to know what you would describe as 'deadly', my companion! */
== L#FouJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @109 /* 'Deadly'? */
== L#FouJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @110 /* Spending a week in the Plane of Shadows without any support or protection would be deadly. */
== YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @111 /* And indeed, I hardly consider it a pleasant adventure. */
END
IF~~THEN REPLY @112 /* So you didn't know much about the details when the Shadow Dragon was still alive? */ EXTERN L#FouJ GloriaT005
IF~~THEN REPLY @113 /* Everything's going to be fine, so there's no need to worry. */ EXTERN L#FouJ GloriaT006
IF~~THEN REPLY @114 /* Whatever. I think we should move on. We need to get back to Ribald soon. */ EXTERN L#FouJ GloriaT003

CHAIN L#FouJ GloriaT005
@115 /* No, not really. Master never discussed this matter. He wasn't that foolish. He was rather... crafty. */
END
IF~~THEN REPLY @116 /* I have a feeling that so are you. */ EXTERN L#FouJ GloriaT007
IF~~THEN REPLY @117 /* Yeah... we should go. */ EXTERN L#FouJ GloriaT003

CHAIN L#FouJ GloriaT006
@118 /* How optimistic of you. */
== L#FouJ @119 /* I've seen much in my lifetime. We stand a chance and we should waste no time in trying to predict the ending. Most endings are unpredictable, anyway. Or at least complicated. */
END
IF~~THEN REPLY @120 /* Especially when a Bhaalspawn enters the stage. */ EXTERN L#FouJ GloriaT008
IF~~THEN REPLY @121 /* Maybe. But we should go now. Let's go. */ EXTERN L#FouJ GloriaT003

CHAIN L#FouJ GloriaT007
@122 /* It's just a feeling. They're not always really accurate. I believe I'm being rather honest with you. */
DO ~SetGlobal("L#fouGloriatalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ GloriaT008
@123 /* I have a feeling that nothing's easy or predictable when you're near. */
DO ~SetGlobal("L#fouGloriatalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ GloriaT003
@124 /* Right. */
DO ~SetGlobal("L#fouGloriatalk","GLOBAL",3)~ 
EXIT

/////////////////////////////
//////TALK 7 - GLORIA 1//////
/////////////////////////////

CHAIN IF WEIGHT #-2 ~Global("L#FouPlot","GLOBAL",7)~ THEN Ribald GloriaHere000
@125 /* --I know you're very busy, Madam Gloria, but I think you should wait for another moment. Wait and you get a ten percent discount for your next purchase of supplies and components. */
== L#Glor @126 /* Ten percent? I really hate being insulted, Barterman. I expect at least twenty percent. You should know my time is precious. I am the most productive researcher in Athkatla. */
== Ribald @127 /* Oh, that's why I am proud that you choose to buy supplies at my Adventurer's Mart. You shall get your twenty percent discount, fine. */
== L#Glor @128 /* Good. I shall give them another minute then. */
== Ribald @129 /* Thank you-- */
== Ribald @130 /* Ah, here you are! Let me introduce the customer I mentioned before--Madam Gloria D'Orlaux. */
== L#Glor @131 /* Humph! I can talk for myself, Ribald. And why for All the Sisters did you introduce me as some kind of minor shopping woman? I am a researcher, not just a customer. */
END
IF~~THEN REPLY @132 /* I'm <CHARNAME>. */ EXTERN L#Glor GloriaHere001
IF~~THEN REPLY @133 /* You're a woman with quite a temperament, I see. */ EXTERN L#Glor GloriaHere002

CHAIN L#Glor GloriaHere001
@134 /* And do I look bothered? */
EXTERN L#Glor GloriaHere003

CHAIN L#Glor GloriaHere002
@135 /* Excuse me?! I'm *busy*, not temperamental! Impertinent <PRO_RACE>. */
EXTERN L#Glor GloriaHere003

CHAIN L#Glor GloriaHere003
@136 /* Tell me what you want, as my time is precious. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @137 /* Sometimes I wonder how your husband can stand your moods, Madam Gloria. */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @138 /* And here it goes again... */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @139 /* What?! Ribald, you didn't tell me they're with Jaheira! I demand a greater discount! */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @140 /* Jaheira, Gloria: we've been there already. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @141 /* You're greedy as always, D'Orlaux. You think only about your research and the bottom of your pockets. Shame on you--there are more important issues than your study of Netherese art. */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @142 /* Ignorant as always. */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @143 /* And where is your d-d-d-d-dear Kh-khalid? Finally decided to leave you? */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @144 /* Say one more word and you'll regret that you didn't move to Sembia. */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @145 /* *One more word.* */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @146 /* If I moved, then I wouldn't need to tolerate you and your friends. And remember it's this one here who needs me. */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @147 /* There is no need to fight. We are all here on business. Gloria, you'll get your discount. As for you and your friends, Jaheira: I just hope you know which shop you should visit when you're done with your problems. */
== RIBALD IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @148 /* And now, my friends, I think we should focus on the task at hand. */
END
IF~~THEN REPLY @149 /* So, we're trying to get rid of a curse. We thought that this thing would work, the cursed one already drank the 'antidote'--not sure what else I should call it, if not antidote--but it seems we need something more to activate it. */ EXTERN L#Glor GloriaHere004
IF~~THEN REPLY @150 /* There was a big dragon, and a fight--poof, and he's dead. The dragon cursed one guy and now we need to use this thing to get rid of the curse. Here, there are some words here. Just tell us what to do. */ EXTERN L#Glor GloriaHere005

CHAIN L#Glor GloriaHere005
@151 /* Hmm... */
== L#FouJ @152 /* You told this story as if it were some kind of cute anecdote... */
EXTERN L#Glor GloriaHere004

CHAIN L#Glor GloriaHere004
@153 /* It seems really... peculiar. I think I've seen symbols like these somewhere before. Give me this and return for the results in a day. I should have the book at home. */
== L#Glor @154 /* We'll meet here. I'll come for some more whispering roots and thyme. (She shoots Ribald a harsh look) */
END
IF~~THEN REPLY @155 /* Wait! Why should I trust you? */ EXTERN L#Glor GloriaHere006
IF~~THEN REPLY @156 /* Fine. It's rather urgent, so be here. */ EXTERN L#Glor GloriaHere007

CHAIN L#Glor GloriaHere006
@157 /* Because you have no other option, I believe. */
== Ribald @158 /* There's no need to worry. She'll come. She's always here when I get the herbs in. */
DO ~SetGlobal("L#FouPlot","GLOBAL",8) SetGlobalTimer("L#FouGloriaOneDay","GLOBAL",ONE_DAY)~ EXIT

CHAIN L#Glor GloriaHere007 
@159 /* Don't tell me what to do-- */
== RIBALD @160 /* --it always ends badly. */
== L#Glor @161 /* Exactly. */
DO ~SetGlobal("L#FouPlot","GLOBAL",8) SetGlobalTimer("L#FouGloriaOneDay","GLOBAL",ONE_DAY)~ EXIT

/////////////////////////////
//////TALK 8 - GLORIA 2//////
/////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",8) GlobalTimerExpired("L#FouGloriaOneDay","GLOBAL")~ THEN L#Glor GloriaThere000
@162 /* It's you. I must say that you gave me quite interesting material. */
== L#FouJ @163 /* Does it mean you've got something? */
== L#Glor @164 /* Obviously. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @165 /* A perfect moment for a plot twist, I admit! So? What is it this time? Some condemned ruins? Forgotten beasts that must be hunted? */
== L#Glor @166 /* To dispel the curse, you need to do more than consume the liquid, as you did. You need to destroy the link between you and the one who cursed you. */
== L#FouJ @167 /* But he's dead already. */
== L#Glor @168 /* And did I say you need to kill him or her? You need to *destroy the link*. */
== L#Glor @169 /* When he cursed you, he made a special link between you and him. A kind of bond that can't be broken easily. But there is a way. */
== L#Glor @170 /* First of all, you need the weapon. Yes, "the" weapon, not "a". Any won't do. You need something special: something extraordinary that may affect powerful beings. */
== L#Glor @171 /* Leira's Lie--the blade that is said to turn truth into a lie. Obviously, it's more like a fairy tale, but this sword should be powerful enough to cut the link. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @172 /* You can't be serious. And how should we get this thing? */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @173 /* Just let me speak, Jaheira! */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @174 /* Oh, a forgotten blade? It's getting more and more interesting! I can feel an amazing adventure, my raven. */
== KorganJ IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @175 /* Ha! We need no lies 'r cheap blades! I've got my axe! */
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @176 /* Oh, it seems like an epic battle, my little friend! Sharpen your teeth, Boo! Sharpen your teeth! */
== MINSCJ IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @177 /* (Boo) *Squeak!* */ 
== L#FouJ @178 /* It doesn't seem like an easy thing to do. */
== L#Glor @179 /* I hate being interrupted, so just listen. */
== L#Glor @180 /* I'll mark the place where the blade may be. Many have tried to find it, but none of them succeeded. If you're lucky enough, you'll do it. */
END
IF~~THEN REPLY @181 /* And the other thing I may need to stop the curse? */ EXTERN L#Glor GloriaThere001
IF~~THEN REPLY @182 /* But there's something more, right? */ EXTERN L#Glor GloriaThere001
IF~~THEN REPLY @183 /* What else do I need? */ EXTERN L#Glor GloriaThere001

CHAIN L#Glor GloriaThere001
@184 /* You'll need a chant that will open the door and seal the link in our world. It will become more... real. */
== L#Glor @185 /* And I have prepared the spell here. Just say those words when you're ready and you've got the blade. But you should know that it can't be said anywhere. It needs to be used in the place you killed his master. */
== L#FouJ @186 /* It doesn't seem very difficult... */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @187 /* I believe it may be more difficult than it seems... A curse... the blade--this may be exciting, but... but also dangerous. Maybe too dangerous. */
END
IF~~THEN REPLY @188 /* Is something wrong, madam? You seem as though there was something more. */ EXTERN L#Glor GloriaThere002
IF~~THEN REPLY @189 /* Is there something more I should know? */ EXTERN L#Glor GloriaThere002


CHAIN L#Glor GloriaThere002
@190 /* There's something strange--these markings. And the chant. There was something-- */
== L#Glor @191 /* Disturbing. */
== L#Glor @192 /* But never mind. It might be nothing and there are no more resources we could check, so if I were you, I wouldn't worry. */
== L#FouJ @193 /* So what we need to do, is find the blade, right? */
== L#Glor @194 /* Yes--that's what you need to do. But you should be cautious. It is said that there are some magical anomalies in that area. */
== L#FouJ @195 /* Anomalies? */
== L#Glor @196 /* Yes. I thought I was clear enough. */
== L#Glor @197 /* I am not sure what the true nature of those anomalies is. Just be warned. */
END
IF~~THEN REPLY @198 /* Fine. I suppose it's time to leave, then. */ EXTERN L#Glor GloriaThere003
IF~~THEN REPLY @199 /* Thank you for your help. */ EXTERN L#Glor GloriaThere003

CHAIN L#Glor GloriaThere003
@200 /* Whatever. I'm rather busy so do what you must. I need to continue my own work. */
== L#Glor @201 /* I'll come back soon, Ribald. */
== RIBALD @202 /* I'm at your service. */
== L#Glor @203 /* Goodbye, then. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @204 /* Goodbye, D'Orlaux. */
== L#Glor IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @205 /* Humph! */
== L#FOUJ @206 /* We should leave the city as soon as possible. Let's go to the city gates. */
DO ~SetGlobal("L#FouPlot","GLOBAL",9) ActionOverride("L#Glor",EscapeArea())~ EXIT

////////////////////////////////
////////NEW AREA TALK///////////
////////////////////////////////

CHAIN IF ~AreaCheck("L#FOU0")
Global("L#FouPlot","GLOBAL",11)~ THEN L#FOUJ WeAreNotThere000
@207 /* It is not the place, yet, but there is something bizarre in the air: something different to the usual arcane energy. */ 
== EDWINJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @208 /* Bah, do you think some pathetic goblin shamans would stop us now--when our magnificent leader already sent us on this doubtful adventure? (Who else would we meet in the frozen middle of nowhere if not some crude humanoids? A waste of my talents!) */
== MINSCJ IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @209 /* Boo says our friend is right! There's something in the air! Something that may require some nice butt-kicking! */
== MINSCJ IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @177 /* (Boo) *Squeak!* */ 
== YOSHJ IF ~InParty("YOSHIMO") !StateCheck("YOSHIMO",CD_STATE_NOTVALID)~ THEN @210 /* I've seen ice passages like these before. They make a fine place for an ambush. We should be careful, my friend. */
== HAERDAJ IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @211 /* Ah, frozen peaks, some black beaks on the old trees--indeed, something must be awaiting. Otherwise, we would have no spectators! But, my raven, it seems I made an unwelcome interjection. What sayeth thou? */
END
IF~~THEN REPLY @212 /* Hmm, at this point, we need to keep our eyes and ears open. */ EXTERN L#FOUJ WeAreNotThere001
IF~~THEN REPLY @213 /* Hah! Nothing can stop us. Stop whining and let's move on. */ EXTERN L#FOUJ WeAreNotThere001

CHAIN L#FOUJ WeAreNotThere001
@26 /* ... */
== L#FOUJ @214 /* Make sure your weapons are ready. */
DO ~SetGlobal("L#FouPlot","GLOBAL",12)~ EXIT

/////////////////////////////
//////TALK 9 - MOUNTAIN//////
/////////////////////////////

CHAIN IF ~AreaCheck("L#FOU1")
Global("L#FouPlotNEW","LOCALS",0)~ THEN L#FouJ Area000
@215 /* This must be the place. Strange. */ 
END
IF~~THEN REPLY @216 /* What do you mean? */ EXTERN L#FouJ Area001
IF~~THEN REPLY @217 /* Eh, and what's strange now? The sky? The ground? The feeling in your toes? */ EXTERN L#FouJ Area001

CHAIN L#FouJ Area001
@218 /* It seems that magic doesn't work well here. Maybe it's this rock or--I don't know. But I hate the feeling. */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @219 /* Some fool must have set an anti-magic field. It will block any magical attempts. (We should leave this place as soon as possible, before we get killed because of this worthless baboon.) */
== NaliaJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @220 /* It feels so strange. It's been a while since I could only depend on my bow and blade, but it seems we can't trust magic as long as we're here. We should be careful. */
== AerieJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @221 /* B-but how is this possible? I didn't know magic could be... could be bound like that. It doesn't--doesn't seem to work. */
== JanJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @222 /* Oh! It's fascinating! A place where magic doesn't work! Hmm, it would be a really really really nice place to experiment with, but--hmm, it would be difficult without magic. Possible though! Fascinating! I think I should tell cousin Balgor and his wife Gamola about it. Maybe they could get some samples and examine it. Maybe since this place is that different and blocks spells... maybe it would make a nice fertilizer! It would block negative energy and plants would grow better! */
== JanJ IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN @223 /* Truly fascinating! */ 
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @224 /* Ah, my raven, it seems birds cannot sing here. But worry not, as my friends--Chaos and Entropy--need no sleep. */
== Imoen2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @225 /* It's so weird... I'll stay in the back, if you don't mind. I guess my spells won't work here. I will try to support you in a different way, though. */
END
IF~OR(2) Class(Player1,MAGE) Class(Player1,BARD)~THEN REPLY @226 /* It seems I also have lost my spells. It feels... cold. */ EXTERN L#FouJ Area002
IF~~THEN REPLY @227 /* Ah, I knew it would be something more than a nice mountain trip. A pity. I wish I could do some hiking instead. */ EXTERN L#FouJ Area003
IF~~THEN REPLY @228 /* We need to be careful. Even more than usual. */ EXTERN L#FouJ Area004
IF~~THEN REPLY @229 /* We should waste no time. Let us move on. */ EXTERN L#FouJ Area005

CHAIN L#FouJ Area002
@230 /* Indeed. */
EXTERN L#FouJ Area006

CHAIN L#FouJ Area003
@231 /* I understand that you like to joke, but this is not the right time. */
EXTERN L#FouJ Area006

CHAIN L#FouJ Area004
@232 /* I know. */
EXTERN L#FouJ Area006

CHAIN L#FouJ Area006
@233 /* Eh, I suppose we should check the place before the curse takes another bit of my life. I'd rather avoid it. */
END
IF~~THEN REPLY @234 /* Indeed. Let's go. */ EXTERN L#FouJ Area005
IF~~THEN REPLY @235 /* Yep. Let's take a look at this place. */ EXTERN L#FouJ Area005

CHAIN L#FouJ Area005
@74 /* I'm right behind you. */
DO ~SetGlobal("L#FouPlotNEW","LOCALS",1)~ EXIT

/////////////////////////////////
//////TALK 12 - SWORD AGAIN//////
/////////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",17)~ THEN L#FouJ GotSword000
@236 /* It seems we've got both the sword and the chant--finally.  I can't wait to get rid of the curse.  The next step is the ritual.  We need to get back to the ruins. */ 
== MazzyJ IF ~InParty("MAZZY") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @237 /* The ruins... */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @238 /* They are dead, Mazzy, and that's the only place where we can proceed. */
== MazzyJ IF ~InParty("MAZZY") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @239 /* I know.  And everything's fine; it's not a pleasant feeling to know that we need to go back there, but I can cope with it. */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @240 /* I'm glad. */
== MazzyJ IF ~InParty("MAZZY") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @241 /* I'm not sure if you are.  You're as cold as most shadows. */
== JaheiraJ IF ~InParty("JAHEIRA") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @242 /* The ruins should be safer now.  The Shade Lord was defeated, after all. */
== AerieJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN @243 /* Back to Amaunator's sanctuary...?  I hope none of the shadows came back... */
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @244 /* At least we can make sure we didn't leave some beasts back there. */
== EdwinJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @245 /* (What a waste of time.) */
END
IF~~THEN REPLY @246 /* Right. Let's go back. We need to end this as soon as possible. */ EXTERN L#FouJ GotSword001
IF~~THEN REPLY @247 /* Whatever. Let's go. */ EXTERN L#FouJ GotSword001

CHAIN L#FouJ GotSword001
@124 /* Right. */
DO ~SetGlobal("L#FouPlot","GLOBAL",18)~ EXIT

/////////////////////////////////
//////TALK 13 - THE RITUAL///////
/////////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",19)~ THEN L#FouJ Ritual100
@248 /* We're in the right place. Finally I'll be free of this... this curse. */ 
== AerieJ IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @249 /* Are you sure this is safe...? */
== L#FouJ IF ~InParty("Aerie") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @250 /* No, but there's no other chance. */
== EdwinJ IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @251 /* Ha! I hope something will go wrong. (Anything would do. Even the accidental summoning of a giant mouse that could devour him.) */
== NaliaJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID) InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN @252 /* Edwin! You shouldn't say such a thing! */ 
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN @253 /* You are making a huge mistake letting this happen, <CHARNAME>. */
== L#FouJ @254 /* I hope it's going to work. */
END
IF~~THEN REPLY @255 /* Are you afraid? */ EXTERN L#FouJ Ritual101
IF~~THEN REPLY @256 /* We can't continue. I'm sorry, but this is too dangerous. */ EXTERN L#FouJ Ritual102


CHAIN L#FouJ Ritual101
@257 /* Quite a bit. But fear is rather understandable. My life depends on the results. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN @258 /* If you don't succeed, it means it was Shar's decision. Just do it. */
END
IF~~THEN REPLY @259 /* I suppose it's time. */ EXTERN L#FouJ Ritual103
IF~~THEN REPLY @260 /* Foundling, this is too dangerous. I won't let you proceed. */ EXTERN L#FouJ Ritual102
IF~~THEN REPLY @261 /* Eh, let's do it. */ EXTERN L#FouJ Ritual103
IF~~THEN REPLY @262 /* I always had some doubts about this. I'm afraid I can't let you continue. */ EXTERN L#FouJ Ritual102

CHAIN L#FouJ Ritual103
@124 /* Right. */
DO ~SetGlobal("L#FouPlot","GLOBAL",20) LeaveParty()~
EXIT

CHAIN L#FouJ Ritual102
@263 /* What?! */
== AnomenJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @264 /* You finally realized that this is madness. */
END
IF~~THEN REPLY @265 /* I just can't. This is too dangerous. */ EXTERN L#FouJ Ritual104
IF~~THEN REPLY @266 /* We had some nice adventuring time, but now--it's the end. */ EXTERN L#FouJ Ritual104
IF~~THEN REPLY @267 /* Just joking. We should continue. Let's start the ritual. */ EXTERN L#FouJ Ritual103

CHAIN L#FouJ Ritual104
@268 /* I must do it. With or without you. */
DO ~SetGlobal("L#FouPlot","GLOBAL",20) LeaveParty()~
EXIT



///////////////////////////
//////////SUN//////////////
///////////////////////////

CHAIN IF ~Global("L#FouSunTalk","GLOBAL",2)~ THEN L#FouJ Sun000
@269 /* E-everything's so--so bright!  My eyes... */ 
== AnomenJ IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @270 /* I'm not surprised it hurts you, creature of shadows.  It should. */
== CerndJ IF ~InParty("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @271 /* This world must differ from your plane; it might be that you're being rejected naturally, as you do not suit our realm. */
== ViconiJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @272 /* No one can understand you better than I do, barra.  It's not just unpleasant.  You'll find it difficult to focus here.  It will hurt. */
END
IF~~THEN REPLY @273 /* Does it hurt? */ EXTERN L#FouJ Sun001
IF~~THEN REPLY @274 /* I didn't know you would be stricken like that. */ EXTERN L#FouJ Sun002
IF~~THEN REPLY @275 /* Oh, just stop it!  It can't be that bad! */ EXTERN L#FouJ Sun003
IF~~THEN REPLY @276 /* Are you fine? Does--does it hurt you? */ EXTERN L#FouJ Sun001

CHAIN L#FouJ Sun001
@277 /* Yes.  Just... just give me a while. */
EXTERN L#FouJ Sun004

CHAIN L#FouJ Sun002
@278 /* I didn't know as well.  I think... I think I may need a while. */
EXTERN L#FouJ Sun004

CHAIN L#FouJ Sun003
@279 /* It is.  I may need a while... */
EXTERN L#FouJ Sun004

CHAIN L#FouJ Sun004
@280 /* Gods...  For all the time since we arrived here, it was like the Plane of Shadows.  Everything was dark.  I knew this place was different, but now I can see how big the actual difference is! */
== ViconiJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @281 /* It's a big difference.  The Plane of Shadows is said to be darker than the Underdark.  I suffered when I left Menzoberranzan and House de Vir.  You must feel the same. */
== L#FouJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @282 /* I suppose you're right.  I may get used to it, though, while your kind--because you are a so-called 'dark elf', if I'm right--find it almost impossible.  But I'll need some time, that's for sure. */
END
IF~~THEN REPLY @283 /* What was the Plane of Shadows like? */ EXTERN L#FouJ Sun005
IF~~THEN REPLY @284 /* I would like to know something more about the place you come from, if you don't mind.  So?  What was it like? */ EXTERN L#FouJ Sun005
IF~~THEN REPLY @285 /* I don't want to waste our time on this.  You need to deal with travelling in daylight, Foundling. */ EXTERN L#FouJ Sun006

CHAIN L#FouJ Sun005
@286 /* Almost pitch black.  But those who believe there is nothing more than darkness are wrong.  There is no real source of light, but everything seems to be like it's... bathed in some dying blue glow. */
== HaerdaJ IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @287 /* Dying blue glow?  Ah, that would make a fine title for a play.  A play with mostly unexpected twists of fate and unpredictable events!  Our Foundling would make a most appropriate star. */
== L#FouJ @288 /* That's not all.  The Plane of Shadows isn't just dark.  Everything seems less saturated.  Not just colours or light, but--but everything we do.   You and some others seem to be like... you trust your emotions. I believe you trust them too much. */
== L#FouJ @289 /* It's really difficult to understand.  I myself was touched when I got here.  I can still feel hunger or wrath as I did, but... */
== L#FouJ @290 /* When I was out there, I would be glad to be free, while here there are people who would die for freedom or those who would--love, I suppose.  I'm not sure if that's the thing, as it is difficult to define. */
== L#FouJ @291 /* But no one there would fight for others or for some kind of village like this Patrick and his companions did.  They were so reckless, and they tried even though it was almost certain they would die. */
== MazzyJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @292 /* I'm afraid you can never understand what Patrick and our friends did.  We knew we might need to sacrifice for something greater. */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @293 /* And I just do not understand it, Mazzy.  There were many other options, but still you took the most dangerous route and-- */
== MazzyJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @294 /* I said: you wouldn't understand. */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @295 /* --they would be alive, if you just left.  But you came here, instead. */
== MazzyJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @296 /* We would never let the people of Imnesvale or Trademeet disappear.  Your Shade Lord would continue, though. There was no other *acceptable* way. */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @297 /* He was never *my* Lord, Mazzy. */
== MazzyJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @298 /* You say so. */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @299 /* Indeed, I say so. */
== L#FouJ IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @300 /* What was I...  Ah... */
== L#FouJ @301 /* Everything seems more...unbridled. */
// == JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN ~It sounds fascinating!  The more you say about this Plane of Shadows, the more amazing it seems!  It reminds me of an annex in our basement.  It was really dark in there and you would never know what could be found inside.  We had to lock it though.  It eventually got invaded by rats. Uncle Gerhard said there was no other way but to seal the door.~
// (alternate by T1)
== JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @302 /* It sounds fascinating!  The more you say about this Plane of Shadows, the more amazing it seems!  It reminds me of an annex we had in the Jansen residence, down in the basement.  It was dark in there: real dark.  And late one night, Uncle Gerhard began to hear a rustling in the rutabaga bin.  He thought nothing of it, at first, but the next night he went back for a late night snack of his favourite yellow turnip and there it was again--rustle, rustle... slither... uncanny, it was. */
== JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @303 /* Why, Uncle Gerhard was so discommoded that he put the rutabaga straight down and went back to bed.  (Something that gets between our Uncle and his root vegetable cravings is worrisome.)  Night after night this happened, with Uncle Gerhard sneaking down stairs at the turn of midnight and skittering right back up them, squeaking that there might be something... squamous, down there.  Finally Nanna Petunia (did I tell you about Nanna Petunia?) turned everybody out to dig through the cellar. */
== JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @304 /* *Tch*  In the end we had to seal that whole basement.  Turns out it was rats. */
== JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @305 /* Powerful big rats, gentlemen. */ // all credit to Neil Gaiman, Season of Mists biography
== JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @306 /* *cough* */

== JanJ IF ~InParty("JAN") !StateCheck("JAN",CD_STATE_NOTVALID)~ THEN @307 /* Oh, but continue, Foundling!  Let us hear some more. */
== L#FouJ @308 /* You know, it's really difficult to get used to this place.  You seem to act... chaotic. */
END
IF~~THEN REPLY @309 /* So everything in the Shadow Plane is more faded, right? */ EXTERN L#FouJ Sun007
IF~~THEN REPLY @310 /* You do not seem to react very differently.  I mean, you seem like a normal man.  Well, maybe with some drow-like skin. */ EXTERN L#FouJ Sun008
IF~~THEN REPLY @311 /* Gods, you really know how to bore someone.  This place is different.  You are different.  Just deal with it. */ EXTERN L#FouJ Sun006
IF~~THEN REPLY @312 /* Would you rather leave this place and return to the Plane of Shadow? */ EXTERN L#FouJ Sun009
IF~~THEN REPLY @313 /* Finished already?  Yes?  Then stop whining and let us move on, understood? */ EXTERN L#FouJ Sun006

CHAIN L#FouJ Sun007
@314 /* Much more faded.  Yes, that word should reflect the nature of the Plane. */
EXTERN L#FouJ Sun010 

CHAIN L#FouJ Sun008
@315 /* Maybe.  I've been here for a while, already, and I can feel a difference. */
EXTERN L#FouJ Sun010

CHAIN L#FouJ Sun009
@316 /* I don't know.  There are many creatures there and I would prefer to avoid them.  I just hope that I'll get used to everything here. */
EXTERN L#FouJ Sun010

CHAIN L#FouJ Sun010
@317 /* The thing is--I don't just feel weird.  My powers seem to work differently here.  I'm not sure if it's because of me being confused or if it's because of the power itself, but-- */
== L#FouJ @318 /* My magic seems... weaker. */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @319 /* Ha!  A pathetic weakling is trying to excuse his lack of competence.  Never have I read about any reason why magic could be affected by sunlight.  (Why should we take him with us?  Eh, another worthless simian has joined the zoo.) */
== L#FouJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @320 /* I am not lying.  It seems different here, wizard. */
== L#FouJ @321 /* Hmm, maybe I'm having this trouble because of the curse my former master left on me.  I don't know.  I will try to use it effectively, though. */
== L#FouJ @322 /* I believe that the progress will be much easier when we get rid of the curse.  If we don't, you'll have no benefit from me as I'll be dead.  No progress will be available when that happens. */
== KorganJ IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @323 /* Ha!  We c'n check it right here if ye wan'! */
END
IF~~THEN REPLY @324 /* So let's go and do something about it. */ EXTERN L#FouJ Sun011
IF~~THEN REPLY @325 /* Let's go then. */ EXTERN L#FouJ Sun011
IF~~THEN REPLY @326 /* Whatever.  You really talk too much... */ EXTERN L#FouJ Sun006

CHAIN L#FouJ Sun011
@327 /* Right.  Lead then. */
DO ~SetGlobal("L#FouSunTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ Sun006
@328 /* Hmm, you seem nervous.  And chaotic.  Like most from this Plane. */
DO ~SetGlobal("L#FouSunTalk","GLOBAL",3)~ EXIT

///////////////////////////////
/////////IRENICUS//////////////
///////////////////////////////


CHAIN IF ~Global("L#FouIrenicusTalk","GLOBAL",2)~ THEN L#FouJ IrenicusFou000
@329 /* This Irenicus--what did he do to you?  Apart from taking Imoen, that is. */ 
END
IF~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~THEN REPLY @330 /* He didn't just hurt me and Imoen.  He hurt our friends.  Jaheira lost her husband because of him. */ EXTERN JAHEIRAJ IrenicusFou001
IF~~THEN REPLY @331 /* He tortured me.  He kept us in cages.  I want to get even with him.  I want to see him feel what I felt: humiliation. */ EXTERN L#FouJ IrenicusFou002
IF~~THEN REPLY @332 /* I'm afraid he did many evil things.  If you could only see his laboratory: all those glass tubes with creatures inside, beasts, slaves... */ EXTERN L#FouJ IrenicusFou003
IF~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN REPLY @333 /* He took Imoen and I am sure he's performing some experiment on her, somewhere over there. */ EXTERN L#FouJ IrenicusFou004
IF~~THEN REPLY @334 /* He messed with me and that's the worst thing he could ever do.  I won't let him get away. */ EXTERN L#FouJ IrenicusFou005
IF~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN REPLY @335 /* He offered me power.  He said that there's some potential locked inside me and I think he can unlock it, somehow. */ EXTERN L#FouJ IrenicusFou006
IF~~THEN REPLY @336 /* It's none of your business. */ EXTERN L#FouJ IrenicusFou007

CHAIN JAHEIRAJ IrenicusFou001
@337 /* I can speak for myself, <CHARNAME>.  I'm glad you want to speak for me, but if I wanted to make a note, I would do it. */
END
IF~~THEN REPLY @338 /* I didn't mean to offend you, or anything.  Khalid was also my friend. */ EXTERN JAHEIRAJ IrenicusFou008
IF~~THEN REPLY @339 /* He also did some nasty experiments in his base.  There was some strange... equipment in there.  Glass tubes with some pathetic creatures inside.  He can't be a "good but curious mage," I assure you. */ EXTERN L#FouJ IrenicusFou003
IF~~THEN REPLY @340 /* He messed with me. That's the worst thing he could do, if you know what I mean. */ EXTERN L#FouJ IrenicusFou005
IF~~THEN REPLY @341 /* --however, this isn't the right time, Jaheira. We should all move on.  And Foundling: do not ask about things that do not concern you.  In other words: that's not your business, it's mine. */ EXTERN L#FouJ IrenicusFou007


CHAIN L#FouJ IrenicusFou002
@342 /* So you are an avenger, then. */
== KeldorJ IF ~InParty("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @343 /* I wouldn't say that's the right goal to follow, <CHARNAME>, and I hope there's something more into it than vengeance. */
== ValygarJ IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @344 /* Vengeance.  I know it can motivate quite strongly.  I wanted to have my vengeance on Lavok.  It's a double-edged sword, though. */
EXTERN L#FouJ IrenicusFou009

CHAIN L#FouJ IrenicusFou003
@345 /* Glass tubes? Creatures?  I can hardly imagine it. */
== Imoen2J IF ~InParty("IMOEN2") !StateCheck("IMOEN2",CD_STATE_NOTVALID)~ THEN @346 /* You're lucky, then.  I saw it all and I can still see some of those images when I close my eyes.  It was really... creepy. */
== MinscJ IF ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID)~ THEN @347 /* Minsc and Boo can still remember them.  A horrbie, horrible view! No one should do such... such... horrible things! */
== JaheiraJ IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @348 /* There was even more than that.  He hurt many, even his own friend: Rielev was his name, if I'm correct.  And all those bodies. */
== JaheiraJ IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @349 /* Khalid was one of them.  My husband. */
== YoshJ IF ~InParty("YOSHIMO") !StateCheck("YOSHIMO",CD_STATE_NOTVALID)~ THEN @350 /* None would enjoy the view, believe me, my friend.  It was like a big and deadly mouse trap.  An extremely deadly one. */
EXTERN L#FouJ IrenicusFou009

CHAIN L#FouJ IrenicusFou004
@351 /* If she's still alive.  But I know what you mean. */
== JaheiraJ IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @352 /* Foundling! You should mind your words.  She is our friend; one of us.  We are aware that she's in danger and there is no need to remind us about it. */
EXTERN L#FouJ IrenicusFou009

CHAIN L#FouJ IrenicusFou005
@353 /* You speak like a true avenger. */
== KeldorJ IF ~InParty("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @354 /* Indeed. I wouldn't say that's the right goal to follow, <CHARNAME>, and I hope there's something more into it than simple vengeance. */
== ValygarJ IF ~InParty("VALYGAR") !StateCheck("VALYGAR",CD_STATE_NOTVALID)~ THEN @355 /* Vengeance can motivate quite strongly.  I wanted to have my vengeance on Lavok.  It's a double-edged sword, though. */
EXTERN L#FouJ IrenicusFou009

CHAIN L#FouJ IrenicusFou006
@356 /* So you demand power. */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @357 /* It's quite an understandable demand. (At least he doesn't talk about some 'noble goals of saving those he may hurt'.) */
== KeldorJ IF ~InParty("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @358 /* I believe you could have a better goal. Everything isn't just about power. */
EXTERN L#FouJ IrenicusFou009

CHAIN JAHEIRAJ IrenicusFou008
@359 /* I... I know. */
== L#FouJ @360 /* So it's not just about you, but also about your friends. */
EXTERN L#FouJ IrenicusFou009

CHAIN L#FouJ IrenicusFou009
@361 /* You seem to put a lot of effort into getting to him, but I suppose I can understand it.  Not fully, I'm afraid, but partially.  I find it difficult to understand it fully, as you're getting yourself into trouble.  Or rather: danger. */
== L#FouJ @362 /* He sounds like a smart man and he has a plan.  You're willingly changing yourself into one of his pawns. */
== L#FouJ @363 /* You may end up no better than me; you may end up a slave. */
== YoshJ IF ~InParty("YOSHIMO") !StateCheck("YOSHIMO",CD_STATE_NOTVALID)~ THEN @364 /* I'm afraid our friend has no other way. */
END
IF~GlobalGT("AsylumPlot","GLOBAL",30)~THEN REPLY @365 /* He took something from me.  Something from within.  I'm afraid I'm like a slave already. */ EXTERN L#FouJ IrenicusFou010
IF~GlobalGT("AsylumPlot","GLOBAL",30)~THEN REPLY @366 /* He took my soul.  It's too late to turn back now. */ EXTERN L#FouJ IrenicusFou010
IF~~THEN REPLY @367 /* It doesn't matter.  I just have to do it. */ EXTERN L#FouJ IrenicusFou011
IF~~THEN REPLY @368 /* It is dangerous and I have already been hurt by him, but I'm also a Bhaalspawn. I know I'll be the one who wins this war. */ EXTERN L#FouJ IrenicusFou012
IF~~THEN REPLY @369 /* As long as I have some support, everything should be fine.  And I've got you.  And some others. */ EXTERN L#FouJ IrenicusFou013
IF~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN REPLY @370 /* But he's got Imoen! */ EXTERN L#FouJ IrenicusFou014
IF~~THEN REPLY @371 /* It doesn't matter.  Stop telling me what to do and what may happen, understood? */ EXTERN L#FouJ IrenicusFou007

CHAIN L#FouJ IrenicusFou010
@372 /* I suppose you're right. */
EXTERN L#FouJ IrenicusFou015

CHAIN L#FouJ IrenicusFou011
@373 /* If you say so.  And I'm not trying to change your mind.  I'm just making my point, that's all. */
EXTERN L#FouJ IrenicusFou015

CHAIN L#FouJ IrenicusFou012
@374 /* You are confident.  You must know what you're doing, then. */
EXTERN L#FouJ IrenicusFou015

CHAIN L#FouJ IrenicusFou013
@375 /* That sounds rather idealistic, but indeed, you seem to know how to get the necessary support. */
EXTERN L#FouJ IrenicusFou015

CHAIN L#FouJ IrenicusFou014
@376 /* And he may get you, as well.  But I'm not going to change your mind.  I'm not the leader. */
EXTERN L#FouJ IrenicusFou015

CHAIN L#FouJ IrenicusFou015
@377 /* However, there is a reason why I'm telling you all of this.   If you want to win, you need a strategy.  You need to know your enemy and use his weakness.  Most have weaknesses. */
== L#FouJ @378 /* --or you may listen to him, accept everything he wants to do and hope you won't die. */
== AnomenJ IF ~InParty("ANOMEN") !StateCheck("ANOMEN",CD_STATE_NOTVALID)~ THEN @379 /* You can't be serious!  Why would <CHARNAME> accept anything from Irenicus?  I wasn't there, but even so I can tell he's nothing but a fierce beast eagerly meddling in the calm lives of innocent people. */
END
IF~~THEN REPLY @380 /* Oh, stop checking me.  If we're being serious, I can tell you that I'm not going to let him blind me with some doubtfully beneficial offers. */ EXTERN L#FouJ IrenicusFou016
IF~~THEN REPLY @381 /* I'm not sure if he has any weak points.  Maybe it's that he would do anything to become even more powerful.  I doubt it's a weakness, though. */ EXTERN L#FouJ IrenicusFou017
IF~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN REPLY @382 /* Two extreme options, right? I'm not sure if any of these will do.  I would rather get Imoen and just run away as far as possible. */ EXTERN L#FouJ IrenicusFou018
IF~~THEN REPLY @383 /* I just hope everything's going to be fine. */ EXTERN L#FouJ IrenicusFou019
IF~~THEN REPLY @384 /* We don't have more time to waste, understood? */ EXTERN L#FouJ IrenicusFou007

CHAIN L#FouJ IrenicusFou016
@385 /* Checking?  I just want to know we're not just running into the beast's den without any plan. */
EXTERN L#FouJ IrenicusFou020

CHAIN L#FouJ IrenicusFou017
@386 /* It's something that makes him even more dangerous, so no--it's not a weak point. */
EXTERN L#FouJ IrenicusFou020

CHAIN L#FouJ IrenicusFou018
@387 /* Run?  That would be rational, but I doubt he will let us leave just like that. */
EXTERN L#FouJ IrenicusFou020

CHAIN L#FouJ IrenicusFou019
@388 /* Hope?  It's too little.  We need more than hope. */
EXTERN L#FouJ IrenicusFou020

CHAIN L#FouJ IrenicusFou020
@389 /* I just want to tell you: before we're there, in front of *him*, make sure that we're not missing anything.  Make sure we're ready for him. */
END
IF~~THEN REPLY @390 /* I will.  I am aware of who he is and how dangerous.  I won't let us lose. */ EXTERN L#FouJ IrenicusFou021
IF~~THEN REPLY @391 /* I... I'm the leader here so... just don't tell me what I should do. I'll do what I must. */ EXTERN L#FouJ IrenicusFou022
IF~~THEN REPLY @392 /* Whatever! Listen, we need to go so just let it go, understood? */ EXTERN L#FouJ IrenicusFou007


CHAIN L#FouJ IrenicusFou021
@393 /* You won't?  Fine, I suppose that should do for now.  Remember that it's not just about making it to Irenicus.  We need to survive the encounter. */
DO ~SetGlobal("L#FouIrenicusTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ IrenicusFou022
@394 /* You don't seem sure.  Remember: leaders shouldn't risk the lives of their companions. */
DO ~SetGlobal("L#FouIrenicusTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ IrenicusFou007
@395 /* Fine.  Just don't do anything stupid. */
DO ~SetGlobal("L#FouIrenicusTalk","GLOBAL",3)~ EXIT


/////////////////////////
////////MAGIC////////////
/////////////////////////

CHAIN IF ~Global("L#FouMagicTalk","GLOBAL",2)~ THEN L#FouJ Magic000
@396 /* Do you all here use the--I think Thaxll'ssillyia called it a Shadow Weave? */ 
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @397 /* You don't even know what power you use?  Ignorant thing.  (How can something like that use the Shadow Weave?!  How does he access all that power?) */
END
IF~~THEN REPLY @398 /* Shadow Weave?!  You can use the Shadow Weave?! */ EXTERN L#FouJ Magic001
IF~~THEN REPLY @399 /* I'm not sure what you're talking about.  I'm not aware of the terminology. */ EXTERN L#FouJ Magic002
IF~~THEN REPLY @400 /* Hmm, the source used by most wizards is called the Weave, so I suppose the thing you mentioned *is* the Shadow Weave.  I'm not sure what it is, though. */ EXTERN L#FouJ Magic003
IF~~THEN REPLY @401 /* You're not here to cause a delay, so let us just move on, understood? */ EXTERN L#FouJ Magic004

CHAIN L#FouJ Magic001
@402 /* Yes, I believe I do. */
EXTERN L#FouJ Magic005

CHAIN L#FouJ Magic002
@403 /* I understand.  But I had thought you might know. */
EXTERN L#FouJ Magic005

CHAIN L#FouJ Magic003
@404 /* I suppose.  I don't have anything better to call it. */
EXTERN L#FouJ Magic005

CHAIN L#FouJ Magic005
@405 /* Thaxll'ssillyia used to say that I am "a sacrifice to Shar that a man performed to get the power of the Shadow Weave."  Both Master and the Shade Lord examined me, as they found the power really intriguing.  The Shade Lord used a slightly different power--Shadow Magic. */
== L#FouJ @406 /* Shadow Magic is a bit different than Shadow Weave Magic, but--you know, I always found it a bit confusing, so I'm not sure how to tell you more about it.  Well, he just... used the... essence of the Shadow Plane to... shape it--I'm not an expert, sorry. */
== L#FouJ @407 /* I tried to use it, too, as I observed the Shade Lord when he used it himself, but I'm not a master of it.  The Shadow Weave Magic comes more... naturally. */
== ViconiJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @408 /* Truly intriguing.  A thing like that--using the Shadow Weave created by none other than Mistress Shar. */
== ViconiJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @409 /* I believe he got it accidentally, though.  This type of magic can be given to mages that serve Shar or those who give her something in exchange.  If I'm right, he was the "gift" and that's the reason he can use it. */
== ViconiJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @410 /* Someone must have found him in the darkness of the Shadow Plane. */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID) InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @411 /* I'm not happy to say so, but the drow may be right. (Somehow.) */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @412 /* I read about both Shadow Magic and Shadow Weave Magic.  If this here was the gift, it is possible that a bond was created, that also gave him the access one as ignorant as he does not deserve. */
== L#FouJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @413 /* "I do not deserve"?  Are you jealous, Edwin? */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @414 /* Jealous?  Ha!  I have much greater power than you can ever have, Foundling, so there's nothing I can be jealous about!  (I would never give up my arcane powers to use the Shadow Weave.  It's not worth it.  Probably.) */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @415 /* I doubt you even understand what the use of the Shadow Weave means, creature. */
== L#FouJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @216 /* What do you mean? */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @416 /* Once someone uses the Shadow Weave, you can never use Mystra's Weave again.  And the use of Shadow Magic isn't completely safe.  (I hope he will experience what I mean.) */
== L#FouJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @417 /* I never used the other source, so I do not miss much. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @418 /* The more you tell us, rook, the more amazed I become!  You would truly make an amusing theme for a play.  A tragic one, perhaps.  We shall see. */
== L#FouJ @419 /* However, I was just wondering.  That's all. */
END
IF~~THEN REPLY @420 /* Why are your spells weaker in daylight, again? */ EXTERN L#FouJ Magic006
IF~~THEN REPLY @421 /* Can you teach anyone else the type of magic you use? */ EXTERN L#FouJ Magic007
IF~~THEN REPLY @422 /* To be honest, I do not care what kind of magic you use as long as the effects are satisfying. */ EXTERN L#FouJ Magic008
IF~~THEN REPLY @423 /* All this talk is taking up too much time.  Get back into formation and let us work. */ EXTERN L#FouJ Magic004
IF~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~THEN REPLY @424 /* Viconia - you said that Shar has something to do with the Shadow Weave? */ EXTERN L#FouJ Magic009
IF~~THEN REPLY @425 /* So you can use Shadow Magic too?  I'm not sure how that's different from Shadow Weave Magic. */ EXTERN L#FouJ Magic010
IF~~THEN REPLY @426 /* It's fine.  Feel free to ask as many questions as you want.  I always have some time for my companions. */ EXTERN L#FouJ Magic011

CHAIN L#FouJ Magic006
@427 /* I think it may be because of the curse.  Or maybe that's a matter of the source and its nature.  Or--I find it really difficult to focus and control the magic when everything around us is so bright and tense.  That's also a factor. */
== EdwinJ IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @428 /* I would use the word "incompetence". */
EXTERN L#FouJ Magic012

CHAIN L#FouJ Magic007
@429 /* I don't think so.  I just... use it.  I don't know how and why. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @430 /* I doubt it can be taught.  It is a matter of Shar's favor and the Plane of Shadows. */
EXTERN L#FouJ Magic012

CHAIN L#FouJ Magic008
@431 /* I understand. */
EXTERN L#FouJ Magic012

CHAIN L#FouJ Magic009
@432 /* I think-- */
== ViconiJ IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @433 /* <CHARNAME> asked me, not you. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @434 /* Yes, it was Shar who created the Shadow Weave and she is the the one who grants access to its power. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @435 /* I believe she created it in between the strings of Mystra's Weave.  But that's all I know, so spare me the questioning, abbil. */
EXTERN L#FouJ Magic012

CHAIN L#FouJ Magic010
@436 /* Just some spells.  I tried to learn more, but it needs time and--more experience, I suppose.  And those types of magic are very different.  The Shadow Weave is a kind of source, while Shadow Magic is a kind of magic.  But I told you: I'm not an expert.  I just use it. */
EXTERN L#FouJ Magic012

CHAIN L#FouJ Magic011
@437 /* Hmm... I will, if that's fine.  (Foundling seems slightly surprised) */
EXTERN L#FouJ Magic012

CHAIN L#FouJ Magic012
@438 /* And I think that would be all. */
END
IF~~THEN REPLY @439 /* Fine.  Let's go, then. */ EXTERN L#FouJ Magic013
IF~~THEN REPLY @440 /* Wait.  I want to make sure you cause no more delay.  You know what I mean, right? */ EXTERN L#FouJ Magic004

CHAIN L#FouJ Magic013
@441 /* ... actually, there is something more. */
END
IF~~THEN REPLY @442 /* Yes? */ EXTERN L#FouJ Magic014
IF~~THEN REPLY @443 /* Oh, what is it now? */ EXTERN L#FouJ Magic014
IF~~THEN REPLY @444 /* We don't have time for this. */ EXTERN L#FouJ Magic004

CHAIN L#FouJ Magic014
@445 /* Aren't you afraid that I may betray you?  I am a "vicious creature that came here along with shadows."  I use "some strange and dark magic."  Most would never let me join. */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @446 /* That is a very good question, <CHARNAME>. */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @447 /* I wouldn't demonize yourself like that, Foundling.  You should be glad that <CHARNAME> let you join, as even you know that most wouldn't let that happen. */
== KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @448 /* Indeed, some would rather attack without asking a single question, but such a rush isn't a smart tactic either. */
== ValygarJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @449 /* I wouldn't.  None should converse with those who came from the Plane of Shadows. */
== ViconiJ IF ~InParty("Viconia") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @450 /* It seems our leader has a habit of letting those of questionable reputation join. */
END
IF~~THEN REPLY @451 /* I am a Bhaalspawn and many would say a "merciless monster" just because of my heritage.  Judging others on their bloodline isn't my cup of tea. */ EXTERN L#FouJ Magic015
IF~~THEN REPLY @452 /* And who said that I trust you?  The thing is that you can control some rather interesting powers.  As long as you use them for me, I don't care where you come from. */ EXTERN L#FouJ Magic016
IF~~THEN REPLY @453 /* If I want to find and get even with Irenicus I need any possible support, and you want to aid me.  I guess you know what I mean. */ EXTERN L#FouJ Magic016
IF~!InPartyAllowDead("Imoen") !Dead("Imoen")~THEN REPLY @454 /* I want to save Imoen.  If I want to succeed, I need all the help I can get. */ EXTERN L#FouJ Magic016
IF~~THEN REPLY @455 /* Stop asking me stupid questions.  You do not need to know my motives.  Better focus on our work and cause no delay. */ EXTERN L#FouJ Magic004
IF~~THEN REPLY @456 /* 'Cause I don't care?  Hehe, I am strong enough to stop you if you try something stupid. */ EXTERN L#FouJ Magic016

CHAIN L#FouJ Magic015
@457 /* A Bhaalspawn?  I'm not sure if I know what that is, but I deduce that they don't have a good reputation. */
== Imoen2J IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @458 /* It's not just a matter of bad reputation, I'm afraid... */
END
IF~~THEN REPLY @459 /* Bhaal was a god of murder and I am his child. */ EXTERN L#FouJ Magic017
IF~~THEN REPLY @460 /* Never mind.  Just forget it.  We should move on and cause no more delay. */ EXTERN L#FouJ Magic004

CHAIN L#FouJ Magic016
@461 /* I see.  I suppose there is some logic in this. */
EXTERN L#FouJ Magic018

CHAIN L#FouJ Magic017
@462 /* Hmm, interesting.  And I think I get what you mean, now. */
EXTERN L#FouJ Magic018

CHAIN L#FouJ Magic018
@463 /* Well, that would be all I wanted to know.  For real, this time. */
END
IF~~THEN REPLY @464 /* I'm glad I could answer your questions.  Let's go. */ EXTERN L#FouJ Magic019
IF~~THEN REPLY @465 /* Good.  Let's go. */ EXTERN L#FouJ Magic019
IF~~THEN REPLY @466 /* Fine.  Next time don't ask so many questions.  I hate it.  Understood? */ EXTERN L#FouJ Magic004

CHAIN L#FouJ Magic019
@124 /* Right. */
DO ~SetGlobal("L#FouMagicTalk","GLOBAL",3)~ EXIT


CHAIN L#FouJ Magic004
@467 /* Hmm, I'm not sure if I understood, but I'll bother you no more. */
DO ~SetGlobal("L#FouMagicTalk","GLOBAL",3)~ EXIT


///////////////////////
///////PARENTS/////////
///////////////////////

CHAIN IF ~Global("L#FouParentsTalk","GLOBAL",2)~ THEN L#FouJ Parents000
@468 /* Do all humans look the same? */ 
== L#FouJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @469 /* It seems there are some of... different colour, but you still seem to call them the same word. Like Valygar--he is a human, isn't he? */
== BValyga IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @470 /* I am, while the more words you say, dark mage, the more I doubt you're one yourself. */
END
IF~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~THEN REPLY @471 /* It's not the colour of his skin that makes him a human, any more than the length of his hair. Let's say it's more a matter of blood. */ EXTERN L#FouJ Parents001
IF~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~THEN REPLY @472 /* Huh, maybe Valygar doesn't seem really human, sometimes, but rather like a golem, but I can assure you he is, most certainly, human. */ EXTERN L#FouJ Parents001V
IF~~THEN REPLY @473 /* Well, I would say that everyone's different. There are different shades of skin, different eyes, different hair and smells. */ EXTERN L#FouJ Parents002
IF~!Race(Player1,HUMAN)~THEN REPLY @474 /* Sometimes I find it difficult to understand and define 'human'. They are different to my kind. I'm not sure how similar or different they are. */ EXTERN L#FouJ Parents003
IF~Race(Player1,HUMAN)~THEN REPLY @475 /* We are different. We don't look the same. */ EXTERN L#FouJ Parents004
IF~~THEN REPLY @476 /* I'm not sure if I understand your question. What's more, I'm afraid it's not the right time for this kind of chit-chat. */ EXTERN L#FouJ Parents005


CHAIN L#FouJ Parents001
@477 /* I see. So it means that one blood may be better than another? Some may be more unique? */
== BJAHEIR IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @478 /* For Oak Father's sake, no. You should never say something like that, Foundling. */
END
IF~~THEN REPLY @479 /* Oh, that's not what I meant! I mean that blood--the heritage--may be different, but it does not determine the value of someone's life or--or anything. */ EXTERN L#FouJ Parents006
IF~~THEN REPLY @480 /* It's not like that. I mean that everyone is different because of who they are--people have different smells, skin colours, hair and the like. */ EXTERN L#FouJ Parents002
IF~~THEN REPLY @481 /* I believe that, yes. For example, I myself have extraordinary blood. There are many Bhaalspawn, but still a lesser number when compared to normal people, elves, or dwarves. */ EXTERN L#FouJ Parents007
IF~~THEN REPLY @482 /* It's not time for that kind of talking, Foundling, and I believe we should move on. */ EXTERN L#FouJ Parents005

CHAIN L#FouJ Parents001V
@483 /* Hmm, so he is a human of a different colour. I see. */
EXTERN L#FouJ Parents008


CHAIN L#FouJ Parents002
@484 /* Hmm, so even the smell. I am more concerned with the look, but indeed--most people smell different. */
EXTERN L#FouJ Parents008

CHAIN L#FouJ Parents003
@485 /* Sometimes I forget that you are not one of them. You seem to live as them. */
EXTERN L#FouJ Parents008

CHAIN L#FouJ Parents004
@486 /* Indeed, you seem different than those we meet in those cities of yours. Or those we help and kill. But on the other hand, with you, I understand that you're not fully a human. You have this... heritage of yours. */
EXTERN L#FouJ Parents008

CHAIN L#FouJ Parents006
@487 /* I see. It seems more complicated than I would have thought. Also, you seem to be more nervous, but after what you have said, I deduced that some may be better. */
== BNALIA IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @488 /* No, you can't call someone better or worse. I hardly believe there is someone like a model human. Or pure human. We may have our paragons, but--I think it's something different. */
EXTERN L#FouJ Parents008


CHAIN L#FouJ Parents007
@489 /* I see. Some would call you an aasimar... or maybe a tiefling, due to your father's nature. Sometimes I'm not sure how to classify it, but still--your blood makes you different. */
== BJAHEIR IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @490 /* I am surprised that you can call yourself better so easily, <CHARNAME>. I don't think Gorion taught you that. */
== BNALIA IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @491 /* You shouldn't say that *anyone* can be better because of his or her bloodline, <CHARNAME>. That's wrong; I disagree. */
EXTERN L#FouJ Parents008

CHAIN L#FouJ Parents008
@492 /* No matter your answer, I asked because of myself. */
END
IF~~THEN REPLY @442 /* Yes? */ EXTERN L#FouJ Parents009
IF~~THEN REPLY @493 /* We all usually ask because of ourselves. Or rather, because of our thoughts. What's bothering you, then? */ EXTERN L#FouJ Parents009
IF~~THEN REPLY @494 /* We don't have time for your strange philosophy, Foundling, so keep your questions and doubts for yourself. */ EXTERN L#FouJ Parents005

CHAIN L#FouJ Parents009
@495 /* When the Shadow Dragon found me and acknowledged me as his very own servant, he decided to examine me. He wanted to know how it was possible that I was there, in the Plane of Shadow, as rarely would one meet children of a few scant years. */
= @496 /* I can hardly remember anything but the fear, that time. Everything was more vivid when I was like a hatchling. His hatchling. */
= @497 /* However, when I was a bit older, I could hear him talking to the Shade Lord when they met for the first time; I think I was ten that day. More or less, as no one could be sure about my age. But he said that I might be one of the Deep Imaskari. */
END
IF~OR(2) CheckStatGT(Player1,35,LORE) CheckStatGT(Player1,15,WIS)~THEN REPLY @498 /* I think I have heard of those. Aren't they powerful mages of the Imaskar who fled to hide themselves in the Underdark? */ EXTERN L#FouJ Parents009X
IF~OR(2) CheckStatGT(Player1,45,LORE) CheckStatGT(Player1,17,WIS)~THEN REPLY @499 /* That may be so. It is said, that even though they didn't hail any gods for real, later some of them would--but they acknowledge only the Old Gods. One of them is Shar; your parents must have been those Imaskari who served her. It makes sense. */ EXTERN L#FouJ Parents010
IF~InParty("VICONIA")~THEN REPLY @500 /* You seem to know something, Viconia, don't you? */ EXTERN BVICONI Parents011
IF~~THEN REPLY @501 /* I'm not sure if I have ever heard of the deep Imaskari. Are they from the Plane of Shadows? */ EXTERN L#FouJ Parents012
IF~~THEN REPLY @502 /* We don't have time for any "family stories" Foundling. Forgive my bluntness, but we need to move on. */ EXTERN L#FouJ Parents005


CHAIN L#FouJ Parents009X
@503 /* I don't know much, but I think you're right. */
EXTERN L#FouJ Parents013

CHAIN L#FouJ Parents010
@504 /* It makes sense to you? Well, it seems you know even more than I do. */
EXTERN L#FouJ Parents013

CHAIN BVICONI Parents011
@505 /* Nothing more than some stories, abbil. Deep Imaskari are said to be the only humans who would willingly live in the Underdark. */
== BVICONI @506 /* Even if that's true, I have no proof that there are any near Menzoberranzan or... or anywhere else. I was never really interested in something that had no impact on my personal plans, so if you want to know something else, look for some literature on the subject. */
== L#FouJ @507 /* Hmm, I should have expected that you would know something. */
EXTERN L#FouJ Parents013

CHAIN L#FouJ Parents012
@508 /* No, I don't think so. I mean... */
EXTERN L#FouJ Parents013

CHAIN L#FouJ Parents013
@509 /* I tried to find some information, but I had no access to tomes or grimoires that could be useful. Just a scroll that the Shadow Dragon considered worthless--anyway, they are said to be some... mages or... sorcerers who fled to the Underdark to hide themselves. I think... they created some enclaves. */
== L#FouJ @510 /* I would tell you more, but even the Shade Lord and my Master weren't sure. Those are just their assumptions. Nothing more. */
END
IF~~THEN REPLY @511 /* So that's why you asked me about the human race, yes? */ EXTERN L#FouJ Parents014
IF~~THEN REPLY @512 /* Do you think there is any way to find out who you actually are? */ EXTERN L#FouJ Parents015
IF~~THEN REPLY @513 /* Well, if that's all, I suppose we should get moving. */ EXTERN L#FouJ Parents005
IF~~THEN REPLY @514 /* You must feel bizarre. I mean--you're not sure who you are. */ EXTERN L#FouJ Parents016

CHAIN L#FouJ Parents014
@515 /* Yes, but it's not something I must know; it's not essential. */
EXTERN L#FouJ Parents017

CHAIN L#FouJ Parents015
@516 /* Maybe, but it's not essential to find out. That wouldn't change me and I asked only because there were others who asked the question. */
EXTERN L#FouJ Parents017

CHAIN L#FouJ Parents016
@517 /* Bizarre? You mean strange, yes? It's not. It's not essential to find the answer. */
EXTERN L#FouJ Parents017

CHAIN L#FouJ Parents017
@518 /* Even if I find the answer, one day, it won't change me so I shouldn't bother you or even myself with such a question. I just thought that it might be good to know, but--I just don't think it would have any impact... */
== BJAHEIR IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @519 /* You don't seem to be very sure of that statement. */
== L#FouJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @520 /* I am. */
END
IF~~THEN REPLY @521 /* Sometimes heritage can be more like a burden than useful knowledge. Sometimes I think my life would be very different if I didn't know about my own bloodline. */ EXTERN L#FouJ Parents018
IF~~THEN REPLY @522 /* Believe me, awareness of your heritage can have a *huge* impact on your life. */ EXTERN L#FouJ Parents018
IF~~THEN REPLY @523 /* You know, it was nice to have a chat, but now we should get moving. We should be on our way already. Let's go. */ EXTERN L#FouJ Parents005
IF~~THEN REPLY @524 /* The facts of who we are don't matter. Our decisions are more significant than heritage. */ EXTERN L#FouJ Parents019

CHAIN L#FouJ Parents018
@525 /* I suppose you may be considered an expert when it comes to heritage. */
== BIMOEN2 IF ~InParty("imoen") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @526 /* Sadly, yes. I suppose no one else can tell you more about heritage than <CHARNAME>. */
EXTERN L#FouJ Parents020

CHAIN L#FouJ Parents019
@527 /* Maybe. I don't know. But you may be right. */
EXTERN L#FouJ Parents020

CHAIN L#FouJ Parents020
@528 /* However it is, we have talked enough and we should move on as there are more significant matters we should focus on. */
DO ~SetGlobal("L#FouParentsTalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ Parents005
@529 /* Let's move on, then. */
DO ~SetGlobal("L#FouParentsTalk","GLOBAL",3)~
EXIT

///////////////////////
//////EXCITEMENT///////
///////////////////////


CHAIN IF ~Global("L#FouExcTalk","GLOBAL",2)~ THEN L#FouJ Exc000
@530 /* How do you... get excited? */ 
END
IF~~THEN REPLY @531 /* I... I'm not sure if I understand what you are asking me about... */ EXTERN L#FouJ Exc001
IF~~THEN REPLY @532 /* Seriously, what kind of question is that?! */ EXTERN L#FouJ Exc002
IF~~THEN REPLY @533 /* You're not talking about sexual arousal, are you? */ EXTERN L#FouJ Exc003
IF~~THEN REPLY @534 /* Excite? */ EXTERN L#FouJ Exc004
IF~~THEN REPLY @535 /* Seriously, I'm not in a mood for this.  Just let us go. */ EXTERN L#FouJ Exc005

CHAIN L#FouJ Exc001
@536 /* I mean the excitement.  This... thing on your face when you are... surprised, I think.  And when something unexpected happens? */
EXTERN L#FouJ Exc006

CHAIN L#FouJ Exc002
@537 /* Is it wrong?  I just want to know how it works.  How do you get surprised and... unexpectedly cheered or saddened...? */
EXTERN L#FouJ Exc006

CHAIN L#FouJ Exc003
@538 /* I--I don't think so, but... maybe that counts, too?  I mean the moment your face changes when something... unexpected happens, I guess. */
EXTERN L#FouJ Exc006

CHAIN L#FouJ Exc004
@539 /* Well, yes.  When your face changes because unexpected things happen, I guess... */
EXTERN L#FouJ Exc006

CHAIN L#FouJ Exc006
@540 /* I'm not sure if I can describe it properly, but when I compare my attitude and others'... aren't you all overreacting?  Emotions can't change a fact.  And those expressions seem so... unnatural. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @541 /* ...and 'tis how the rook scalped us and the expressions themselves.  Oh, rook, hardly do I believe the coldness of *your* attitude. */
END
IF~~THEN REPLY @542 /* It's not that emotions can change anything, Foundling.  They are a reaction to change, not the other way around. */ EXTERN L#FouJ Exc007
IF~~THEN REPLY @543 /* You're wrong. Emotions can change things.  How many times has hatred killed? */ EXTERN L#FouJ Exc008
IF~~THEN REPLY @544 /* No one is overreacting, Foundling.  It is you who is overly cold, I'm afraid. */ EXTERN L#FouJ Exc009
IF~~THEN REPLY @545 /* And does it feel nice?  To be distant as you are? */ EXTERN L#FouJ Exc010
IF~~THEN REPLY @546 /* We don't have time for this.  We should go. */ EXTERN L#FouJ Exc005
IF~~THEN REPLY @547 /* Remember that excitement isn't just about unexpectedness, but also about achieving something you desired strongly. */ EXTERN L#FouJ Exc00A

CHAIN L#FouJ Exc00A
@548 /* Desire?  Another thing I can't fully understand.  I understand "need" or when someone "wants" something, but desire... it isn't the same, is it? */
EXTERN L#FouJ Exc011

CHAIN L#FouJ Exc007
@549 /* So it is me who's resistant to the reaction?  I suppose that's what you're trying to tell me.  A change of perspective... */
== L#FouJ @550 /* ... maybe... */
EXTERN L#FouJ Exc011

CHAIN L#FouJ Exc008
@551 /* I think I would say that it's mostly a *need* that kills, as the kill may serve the purpose and fill the need.  But I think hatred is close enough, too.  Yes, you may be right. */
EXTERN L#FouJ Exc011

CHAIN L#FouJ Exc009
@552 /* Me? Hmm, it seems that it is me who's different here, after all. */
EXTERN L#FouJ Exc011

CHAIN L#FouJ Exc010
@553 /* How does it feel? I don't know.  I know it can serve a purpose though.  But how does it feel... */
EXTERN L#FouJ Exc011

CHAIN L#FouJ Exc011
@554 /* Have you ever used words like "interesting", "intriguing", "charming", or others, without being actually interested, intrigued or charmed?  Because I think that's more or less how I feel when I hear about "friendly companionship" and "insurmountable passion".  These feel... artificial. */
== L#FouJ @555 /* Aren't they like that?  This is different than a need.  This is different than serving a purpose and even the success in one's doings, right? */
END
IF~~THEN REPLY @556 /* Huh, it's really strange, because on the one hand you can discuss it and you know it's something different, but you don't grasp the crucial part. */ EXTERN L#FouJ Exc012
IF~~THEN REPLY @557 /* Yes, that's something different.  You're talking about "accomplishment" and that's not fully about the emotions.  Emotions do not mean "accomplishment". */ EXTERN L#FouJ Exc013
IF~~THEN REPLY @558 /* I must say that you're lucky if you aren't under the influence of strong emotions.  You can focus on what's rational. */ EXTERN L#FouJ Exc014
IF~~THEN REPLY @559 /* I don't know what to tell you.  Just let us move on, as I hate this kind of chatting. */ EXTERN L#FouJ Exc005

CHAIN L#FouJ Exc012
@560 /* I don't?  Well, I suppose I should know that. */
EXTERN L#FouJ Exc015

CHAIN L#FouJ Exc013
@561 /* Accomplishment and emotions aren't the same?  I never thought about it. */
EXTERN L#FouJ Exc015

CHAIN L#FouJ Exc014
@562 /* Right.  I guess it may be better.  More appropriate. */
EXTERN L#FouJ Exc015

CHAIN L#FouJ Exc015
@563 /* Nevertheless, is being like me that wrong?  Because some seem to believe it is. */
== EDWINJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @564 /* Do we really need to waste our time on some insignificant disputes? (I might as well teach some monkeys a few tricks.) */
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @565 /* It's not wrong, but it's certainly not right, I'm afraid.  If it weren't for empathy, many would have suffered. I would never have found the help to free my Keep. */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @566 /* I... I think it's wrong... and slightly scary. */
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @567 /* Oh, this can make one weaker! The more angry you are, the better you kick! And the more goodness you want, the better you get, too! */
== L#FouJ @568 /* Hmm? What would you tell me? */
END
IF~~THEN REPLY @569 /* It's not wrong.  It's different and most are afraid of difference.  That's how it is. */ EXTERN L#FouJ Exc016
IF~~THEN REPLY @570 /* It is.  It's devious.  How can you even live like that?  It must make you restless. */ EXTERN L#FouJ Exc017
IF~~THEN REPLY @571 /* It is neither wrong nor right I guess. */ EXTERN L#FouJ Exc018
IF~~THEN REPLY @572 /* I don't care.  We need to go so make sure there are no more delays. */ EXTERN L#FouJ Exc005

CHAIN L#FouJ Exc016
@573 /* I don't know 'most'. */
== L#FouJ @574 /* But it doesn't matter.  We should go. */
DO ~SetGlobal("L#FouExcTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ Exc017
@575 /* No, not really.  Don't forget that I'm not sure what "restless" means. */
DO ~SetGlobal("L#FouExcTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ Exc018
@576 /* Diplomatic.  Never mind.  We should go. */
DO ~SetGlobal("L#FouExcTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ Exc005
@577 /* Fine. */
DO ~SetGlobal("L#FouExcTalk","GLOBAL",3)~ EXIT

///////////////////////
////////LIFE///////////
///////////////////////


CHAIN IF ~Global("L#FouLifeTalk","GLOBAL",2)~ THEN L#FouJ Life000
@578 /* Do you really think that this friend of yours is still alive? */ 
END
IF~~THEN REPLY @60 /* I hope so. */ EXTERN L#FouJ Life001
IF~~THEN REPLY @579 /* I don't think so. But Irenicus may still be there. I want to get him. */ EXTERN L#FouJ Life004
IF~~THEN REPLY @580 /* I don't care. Let us go. */ EXTERN L#FouJ Life002
IF~~THEN REPLY @581 /* How in the Nine Hells should I know? */ EXTERN L#FouJ Life003
IF~~THEN REPLY @582 /* She must be. I... she just must! */ EXTERN L#FouJ Life001

CHAIN L#FouJ Life001
@583 /* Hmm. That would be rather fortunate. */
EXTERN L#FouJ Life005

CHAIN L#FouJ Life003
@584 /* Indeed, that was a stupid question. */
EXTERN L#FouJ Life005

CHAIN L#FouJ Life004
@585 /* So you're fighting for revenge. Is it worth more than life? */
EXTERN L#FouJ Life005

CHAIN L#FouJ Life005
@586 /* Isn't it fascinating? Every creature--both here and in the Plane of Shadows--does its best to survive. To make sure its being will continue. Even when one is close to death, he or she does everything to leave something behind. */
== L#FouJ @587 /* A journal. A house. A sword. A memory. */
== L#FouJ @588 /* Or a child. */
== CerndJ IF ~InParty("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @589 /* It's a natural chain of events. Every creature is a part of its world. A particle. The existence of one proves the existence of all. And leaving everything behind--dying--is always difficult to accept. */
== EdwinJ IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @590 /* Don't tell me that we're going to stand and wonder about life! (Someone wake me up, this must be a nightmare! A nightmare of some monkeys and mice!) */
== KorganJ IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @591 /* Ha! Ye'r puttin' too much philosophy into it! Life is life! As long as I can swing me axe, I'm alive! There's nothing mor' to it! */
== Jan IF ~InParty("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @592 /* Oh, this reminds me of Petunia! Once she asked Gerhard "What does it mean for a turnip to grow, dear Gerhard?" but he didn't know! Well, actually he knew, but the answer couldn't satisfy Petunia, so she tried to find an answer. Oh, she spent nights and days trying to find out the answer, but she never succeeded! Philosophical questions like these are always the hardest--but you always know where you are with a turnip! */
END
IF~~THEN REPLY @593 /* Why do I have a feeling that you're talking about me? That it is I--the child of Bhaal--who was left here as a continuation of my father's plan? */ EXTERN L#FouJ Life006
IF~~THEN REPLY @594 /* I didn't know you would think about something like that. You've been a slave for most of your life and those... those don't usually pay any attention to philosophy. */ EXTERN L#FouJ Life007
IF~~THEN REPLY @595 /* I don't care, seriously. Do I look like someone who can enjoy disputes like that? Let me answer for you--no. I hate it. So let us move on. */ EXTERN L#FouJ Life002
IF~~THEN REPLY @596 /* You impress me. I didn't know that you would think about matters like this one. */ EXTERN L#FouJ Life007

CHAIN L#FouJ Life006
@597 /* I told you--I know as much about this Bhaal as you have told me. But what I have said seems to suit your situation as well. You just confirmed it. */
EXTERN L#FouJ Life008

CHAIN L#FouJ Life007
@598 /* We--slaves--have much time to think. Even now, when I'm free: everything's here. */
EXTERN L#FouJ Life008

CHAIN L#FouJ Life008
@599 /* Don't get me wrong: I'm no different. The curse--death doesn't seem like a fine destination, if you know what I mean. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @600 /* 'Tis unavoidable, though, as none but the rocks can live forever; doom takes everyone--like bright fire. So says a Doomguard. */
END
IF~~THEN REPLY @601 /* You speak rather freely of it, Foundling. On the one hand, you didn't want to die, but on the other hand... */ EXTERN L#FouJ Life009
IF~~THEN REPLY @602 /* Indeed. Death doesn't seem a nice solution. That's why I kill. To make sure I'm not the one to be killed. */ EXTERN L#FouJ Life010
IF~~THEN REPLY @603 /* Sometimes I feel it would be easier if I could surrender. Struggling with the prophecies and my heritage isn't really nice. */ EXTERN L#FouJ Life011
IF~~THEN REPLY @604 /* I don't care. I don't want to talk about it, so just stop bothering me and let us move on. */ EXTERN L#FouJ Life002

CHAIN L#FouJ Life009
@605 /* I've spent most my life in the Plane of Shadows. Sometimes I'm like that. Sometimes I'm not. */
EXTERN L#FouJ Life012

CHAIN L#FouJ Life010
@606 /* A rather aggressive attitude, that. */
== KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @607 /* Indeed. I would prefer you reconsider your views, <CHARNAME>. */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @608 /* This--this approach seems a bit... scary. */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @609 /* I cannot say that I agree with you, <CHARNAME>. Not this time. */
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @610 /* But that kind of attitude is wrong, <CHARNAME>. */
EXTERN L#FouJ Life012

CHAIN L#FouJ Life011
@611 /* But if you give up, it means you're worse than a slave. Even they do not accept everything as it is. */
EXTERN L#FouJ Life012

CHAIN L#FouJ Life012
@612 /* Tell me: do you kill easily? */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @613 /* And what sort of question is that?! */
END
IF~~THEN REPLY @614 /* Sometimes. It depends on the circumstances, to be honest. */ EXTERN L#FouJ Life013
IF~~THEN REPLY @615 /* No. When I kill, I feel as if I were allowing this to just... happen. I don't want to be the one from Alaundo's prophecy, though. */ EXTERN L#FouJ Life014
IF~~THEN REPLY @616 /* Yes. They are weaker than me. It's natural selection, I would say. Only the strong can survive. */ EXTERN L#FouJ Life015
IF~~THEN REPLY @617 /* I don't know how to answer that kind of question, so I'm not going to try. */ EXTERN L#FouJ Life016
IF~~THEN REPLY @618 /* We need to go. */ EXTERN L#FouJ Life002

CHAIN L#FouJ Life014
@619 /* But you're aware of the fact that I have no idea what you are talking about, aren't you? */
== JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @620 /* He's not from here, <CHARNAME>. He may never have heard about Alaundo. */
END
IF~~THEN REPLY @621 /* Alaundo wrote: "The Lord of Murder shall perish, but in his doom he shall spawn a score of mortal progeny, chaos will be sown by their passage." And here I am! A Bhaalspawn. */ EXTERN L#FouJ Life017
IF~~THEN REPLY @622 /* You know what? It doesn't matter. We should move on. We need no more delays. */ EXTERN L#FouJ Life002

CHAIN L#FouJ Life013
@623 /* Circumstances? Does it depend on the race? Or maybe the age? Time of the day? */
== L#FouJ @624 /* Death is the same for everyone. It's the end. */
END
IF~~THEN REPLY @625 /* I don't agree with you. */ EXTERN L#FouJ Life018
IF~~THEN REPLY @626 /* Ehh... it's never easy. And I don't want to be like those in Alaundo's prophecy. */ EXTERN L#FouJ Life014
IF~~THEN REPLY @627 /* You want the answer then? Yes, it's easy. Most of those I kill deserve it. */ EXTERN L#FouJ Life015
IF~~THEN REPLY @628 /* I just don't know. Give me a break. */ EXTERN L#FouJ Life016
IF~~THEN REPLY @629 /* Just let us go. */ EXTERN L#FouJ Life002

CHAIN L#FouJ Life015
@630 /* That sounded cold. Just as if you were the one from the Plane of Shadow. */
EXTERN L#FouJ Life019

CHAIN L#FouJ Life016
@631 /* It seems someone here is afraid of difficult questions. But I won't push you to get the answer. It's fine. */
EXTERN L#FouJ Life019

CHAIN L#FouJ Life017
@632 /* You learned it by heart? However, it doesn't seem to be a cheerful vision. I suppose I understand why it makes you nervous. */
EXTERN L#FouJ Life019

CHAIN L#FouJ Life018
@633 /* It's fine. It's not like I want you to think the same. */
EXTERN L#FouJ Life019

CHAIN L#FouJ Life019
@634 /* To me, death in this Plane seems different. */
END
IF~~THEN REPLY @635 /* More difficult? */ EXTERN L#FouJ Life020
IF~~THEN REPLY @636 /* Easier? */ EXTERN L#FouJ Life020
IF~~THEN REPLY @637 /* Why? What do you mean? */ EXTERN L#FouJ Life021
IF~~THEN REPLY @618 /* We need to go. */ EXTERN L#FouJ Life002

CHAIN L#FouJ Life020
@638 /* No. Just... different. */
DO ~SetGlobal("L#FouLifeTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ Life021
@639 /* Life in the Shadow Plane was cold. Death was cold too. Here it's just different. */
DO ~SetGlobal("L#FouLifeTalk","GLOBAL",3)~ EXIT

CHAIN L#FouJ Life002
@640 /* I see. Well, just lead then. I'm right behind you. */
DO ~SetGlobal("L#FouLifeTalk","GLOBAL",3)~ EXIT

////////////////////////////
/////////DRUNK//////////////
////////////////////////////

CHAIN IF ~Global("L#FouDrunkTalk","GLOBAL",1)~ THEN L#FouJ Drunk000
@641 /* I... I feel strange... */ 
== KORGANJ IF ~InParty("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @642 /* Ha!  Yer a virgin in drinkin'!  Goo' boy, yer a man now, he he. */
== L#FouJ @643 /* Everything is so... unstable... Was--was it a poison that I drank...? */
END
IF~~THEN REPLY @644 /* No.  Heh, I suppose you were never a heavy drinker, Foundling.  That was alcohol.  Most drink it to... relax. */ EXTERN L#FOUJ Drunk001
IF~~THEN REPLY @645 /* A kind.  But not deadly.  Most drink it to relax a bit. */ EXTERN L#FOUJ Drunk001
IF~~THEN REPLY @646 /* Uh, I knew you would cause some problems.  Calm down, you just drank a bit too much. */ EXTERN L#FOUJ Drunk002

CHAIN L#FouJ Drunk001
@647 /* How... how can anyone relax in... in a state like this? */
EXTERN L#FouJ Drunk003

CHAIN L#FouJ Drunk002
@648 /* Drank too much?  So it's because of this... thing.  I should have known, it tasted like... like nothing I've had until now. */
EXTERN L#FouJ Drunk003

CHAIN L#FouJ Drunk003
@649 /* How can I make it stop?  How can I make everything stop spiralling as... as if I were under some kind of... spell...? */
END
IF~~THEN REPLY @650 /* You just need to wait.  You should feel better after a couple of hours. */ EXTERN L#FouJ Drunk004
IF~~THEN REPLY @651 /* Just ignore it.  You may drink more, though.  I dare you. */ EXTERN L#FouJ Drunk005

CHAIN L#FouJ Drunk004
@652 /* Couple of hours...? How... how can I stand it?! This... this is... */
END
IF~~THEN REPLY @653 /* ... horrible? */ EXTERN L#FouJ Drunk006
IF~~THEN REPLY @654 /* ... amazing? */ EXTERN L#FouJ Drunk007
IF~~THEN REPLY @655 /* ... fun? */ EXTERN L#FouJ Drunk007
IF~~THEN REPLY @656 /* Just stop whining.  You should have another drink.  I dare you. */ EXTERN L#FouJ Drunk005


CHAIN L#FouJ Drunk005
@657 /* No.  I won't drink this... thing. I... I don't want to. */
EXTERN L#FouJ Drunk008

CHAIN L#FouJ Drunk006
@658 /* Or even worse... */
EXTERN L#FouJ Drunk008

CHAIN L#FouJ Drunk007
@659 /* ... no... that's not it. The word is... */
== L#FouJ @660 /* The word is 'un-stand-able'... I feel so dizzy... */
END
IF~~THEN REPLY @661 /* I don't think such a word exists.  But I think I know what you mean. */ EXTERN L#FouJ Drunk008
IF~~THEN REPLY @662 /* The feeling shall pass.  As I said, you just need to wait. */ EXTERN L#FouJ Drunk008

CHAIN L#FouJ Drunk008
@663 /* I have no idea how... how all of these people may drink this liquid!  It just... just makes me feel... sick... */
== VICONIJ IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @664 /* It is you who make *me* sick.  Get him away from me, abbil, before he vomits on my boots.  His presence is more than unacceptable! */
== JAHEIRAJ IF ~InParty("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @665 /* You should not have let him drink that much, <CHARNAME>. */
END
IF~~THEN REPLY @666 /* You just need to know how to use this drink.  Once you know how it works, I am sure you'll be more... careful next time. */ EXTERN L#FouJ Drunk009
IF~~THEN REPLY @667 /* Stop acting as if you were some kind of weakling.  Just prepare yourself next time: eat something before you start drinking. */ EXTERN L#FouJ Drunk009
IF~~THEN REPLY @668 /* I suppose we can't go until your head's clear.  Have a rest, we'll move on later. */ EXTERN L#FouJ Drunk010 

CHAIN L#FouJ Drunk009
@669 /* There--there won't be a next time.  It's the... first and the last time I drink this... thing. */
END
IF~~THEN REPLY @670 /* Everyone says something like that at least once in a lifetime. */ EXTERN L#FouJ Drunk011
IF~~THEN REPLY @671 /* I think you need to have a rest before we continue.  Take a nap.  We'll move on once you feel better. */ EXTERN L#FouJ Drunk010

CHAIN L#FouJ Drunk011
@672 /* T-take me seriously.  I... I will never drink this 'alcohol' again.  We... we should move on... */
== L#FouJ @673 /* ...the door seems smaller than before... uh... */
DO ~SetGlobal("L#FouDrunkTalk","GLOBAL",2)~
EXIT

CHAIN L#FouJ Drunk010
@674 /* I... */
== L#FouJ @675 /* I guess it's a good idea... */
DO ~SetGlobal("L#FouDrunkTalk","GLOBAL",2) RestParty()~ 
EXIT 

///////////////////////
//////UNDERDARK////////
///////////////////////

CHAIN IF ~Global("L#UnderdarkTalk","GLOBAL",2)~ THEN L#FouJ Underdark000
@676 /* This is the... Underdark? */ 
== BVICONI IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @677 /* Nau... I've run away from this place and now I am forced to return. You may feel proud of yourself, <CHARNAME>, as very little would have ever succeeded in dragging me back to my homeland. */
== BVICONI IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @678 /* But your Foundling seems fascinated. */
== BNALIA IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN @679 /* This place seems vile: too dark and deadly. */
== BYOSHIM IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @680 /* I thought I would never see this place, my friend, as some are not destined to wander through the tunnels of the Underdark. We should watch out: I'm sure there are more than a dozen creatures eager to feast on our flesh. */
== BJAHEIR IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @681 /* The Underdark... the homeland of drow, derro, and other fierce creatures. We should make sure there's always someone posted on guard duty, <CHARNAME>. We need to be even more careful than usual. */
== BIMOEN2 IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @682 /* This place is... */
== BIMOEN2 IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @683 /* But it's still better than his cells. If we can survive Spellhold, we won't be stopped here. */
== BMINSC IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @684 /* This place stinks with evilness! Prepare yourself, Boo, as I feel we'll kick some butts very soon! You too, Foundling, prepare your best spells and support Boo! */
= @177 /* (Boo) *Squeak!* */ 
== BANOMEN IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @685 /* It must feel like home, Foundling, am I right? */
== L#FouJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @686 /* Almost, Anomen. But that's the answer you expected, no? Yes, it feels almost like home. Dark. Deadly. Fearsome. */
== L#FouJ @687 /* If not for the stone ceiling, and narrow tunnels, I would be ready to believe it's a part of the Shadow Plane. */
END
IF~~THEN REPLY @688 /* You're used to darkness, aren't you? */ EXTERN  L#FouJ Underdark001
IF~InParty("VICONIA")~THEN REPLY @689 /* Heh, the drow isn't happy to be here, but a human is. Quite extraordinary. */ EXTERN L#FouJ Underdark002
IF~~THEN REPLY @690 /* We shouldn't talk, we need to make sure we're not observed. We'll talk later. */ EXTERN L#FouJ Underdark003

CHAIN L#FouJ Underdark001
@691 /* Yes. I've been in denser darkness than this, before. */
EXTERN L#FouJ Underdark004

CHAIN L#FouJ Underdark002
@692 /* Not really. She is an exile and I'm just used to it. To cold darkness like this. */
EXTERN L#FouJ Underdark004

CHAIN L#FouJ Underdark004
@693 /* But--on second thought it's not the same as the Shadow Plane. The feeling is different, the smell--this place smells like humid rock. Calcium. The air is cold. */
== L#FouJ @694 /* The Shadow Plane was different. More like the air on the surface, just faded. Without strong scents. You can tell how difficult hunting becomes. And how deadly. */
== BVICONI IF ~InParty("VICONIA") !StateCheck("VICONIA",CD_STATE_NOTVALID)~ THEN @695 /* Hmm, I think you underestimate the Underdark. I assure you--this place can be even deadlier. Poisonous. */
== BKORGAN IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @696 /* Ha! Tha' only makes it better! More fightin' means more fun fer Korgan! */
== BCERND IF ~InParty("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @697 /* Dens like this one can hide many dangerous creatures: beasts with noses and ears sharper than any swords. We should watch out--we are the "unnatural" things here. */
== L#FouJ @698 /* A piece of advice--it may sound strange for someone who lives in a place with constant light, but *do not* even try to use any light spells or strong torches. It may lure enemies. I suppose this rule works both in the Shadow Plane and the Underdark. */
END
IF~~THEN REPLY @699 /* Good point. */ EXTERN L#FouJ Underdark005
IF~~THEN REPLY @700 /* I don't need your "hints". I'm not stupid. */ EXTERN L#FouJ Underdark006
IF~~THEN REPLY @701 /* I know. Now, we need to move on. */ EXTERN L#FouJ Underdark003

CHAIN L#FouJ Underdark005
@702 /* I would like you to remember that, as I'd rather not die after being freed from my former master. */
EXTERN L#FouJ Underdark007

CHAIN L#FouJ Underdark006
@703 /* I'm not saying that you are stupid, <CHARNAME>, but I would rather share common knowledge than risk you getting us into trouble. */
EXTERN L#FouJ Underdark007

CHAIN L#FouJ Underdark007
@704 /* I hadn't expected that Irenicus would make us come down, under your lands. I must admit that it may be difficult to follow his plan--it seems complex. */
END
IF~~THEN REPLY @705 /* I'm not surprised that a man like him would seek help from drow or other creatures of the Underdark. He's just like them. */ EXTERN L#FouJ Underdark008
IF~~THEN REPLY @706 /* Indeed, who would expect that his and my encounter would result in travel to Brynnlaw and then to the Underdark. If we aren't careful, we might end up in Lolth's Demon Web pits. */ EXTERN L#FouJ Underdark008
IF~~THEN REPLY @707 /* Whatever. We need to move on, I'm afraid, so let's stop with this chattering and let's move on before it's too late. */ EXTERN L#FouJ Underdark003

CHAIN L#FouJ Underdark008
@708 /* I think Irenicus is... unpredictable. */
END
IF~~THEN REPLY @709 /* But he will lose. */ EXTERN L#FouJ Underdark009
IF~~THEN REPLY @710 /* And that makes it even more interesting. Sadly, he will lose in the end, no doubt about that. */ EXTERN L#FouJ Underdark009
IF~~THEN REPLY @711 /* That's what makes him dangerous, but--I just don't want to end up dead.  We must do our best... */ EXTERN L#FouJ Underdark010
IF~~THEN REPLY @712 /* That's why we need to move on. Come, we must stop him. */ EXTERN L#FouJ Underdark003

CHAIN L#FouJ Underdark009
@713 /* I see. I suppose you'll do everything to kill him. That's what I would promise myself if I were you. */
DO ~SetGlobal("L#UnderdarkTalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ Underdark010
@714 /* You need to lead us, if you don't want us to die. This is not the time and place for uncertainty. */
DO ~SetGlobal("L#UnderdarkTalk","GLOBAL",3)~ 
EXIT

CHAIN L#FouJ Underdark003
@715 /* Lead then. */
DO ~SetGlobal("L#UnderdarkTalk","GLOBAL",3)~ 
EXIT

///////////////////////////
//////////ADALON///////////
///////////////////////////

CHAIN IF ~AreaCheck("AR2102")
Global("PlayerLooksLikeDrow","GLOBAL",1)
Global("L#FouAda","GLOBAL",0)~ THEN L#FouJ Adalon000
@716 /* This silver dragon,  even though she was more lawful than my master, there was something demanding in the way she spoke.  As if she was giving orders, not just asking for help. */ 
END
IF~~THEN REPLY @717 /* She is a dragon, after all.  They don't need to fear anything. */ EXTERN L#FouJ Adalon001
IF~~THEN REPLY @718 /* She was purposeful, that's all.  I believe that's a result of years spent in the Underdark. */ EXTERN L#FouJ Adalon002
IF~~THEN REPLY @719 /* We don't have time to discuss it.  Let us move on. */ EXTERN L#FouJ Adalon003

CHAIN L#FouJ Adalon001
@720 /* They should.  They're not immortal. */
EXTERN L#FouJ Adalon004

CHAIN L#FouJ Adalon002
@721 /* Maybe. */
EXTERN L#FouJ Adalon004

CHAIN L#FouJ Adalon004
@722 /* I hate being given orders.  Especially by creatures of her kind.  I already had to tolerate it for years. */
END
IF~~THEN REPLY @723 /* She may give orders, but we can do what we want. */ EXTERN L#FouJ Adalon005
IF~~THEN REPLY @724 /* She's different from the Shadow Dragon that had you.  I know it.  She may have sounded domineering, but she didn't mean to control us. */ EXTERN L#FouJ Adalon006
IF~~THEN REPLY @725 /* Whatever.  Let's just move on, Foundling.  There is work to do. */ EXTERN L#FouJ Adalon003

CHAIN L#FouJ Adalon005
@726 /* Good. */
DO ~SetGlobal("L#FouAda","GLOBAL",1)~ EXIT

CHAIN L#FouJ Adalon006
@727 /* Her kind shouldn't be trusted.  The colour of her scales doesn't matter.  She's still a dragon. */
DO ~SetGlobal("L#FouAda","GLOBAL",1)~ EXIT

CHAIN L#FouJ Adalon003
@728 /* Lead then.  Let's do what we must. */
DO ~SetGlobal("L#FouAda","GLOBAL",1)~ EXIT

///////////////////////////
////////COLOURS////////////
///////////////////////////

CHAIN IF ~Global("L#FouColours","GLOBAL",1)~ THEN L#FouJ Colours000
@729 /* Colours... */ 
END
IF~~THEN REPLY @730 /* Colours?  What do you mean?  Is something wrong? */ EXTERN L#FouJ Colours001
IF~~THEN REPLY @731 /* Hmm?  Did you say something? */ EXTERN L#FouJ Colours001 

CHAIN L#FouJ Colours001
@732 /* Even though we've been here for days, I still can't get used to all these colours and shades.  A cacophony of bright lights.  Just look around. */
END
IF~~THEN REPLY @733 /* Daylight.  Colours.  They are quite usual to me.  I can hardly understand how it feels to consider those a novelty. */ EXTERN L#FouJ Colours002
IF~~THEN REPLY @734 /* I know what you mean.  *I* find the sun irritating and blinding, so to you it must be worse than tiresome. */ EXTERN L#FouJ Colours003
IF~~THEN REPLY @735 /* We don't have time to talk about this again, so just give me a break. */ EXTERN L#FouJ Colours004

CHAIN L#FouJ Colours002
@736 /* Imagine you're blinded by magic lights and shades.  It's twice as tortuous.  And it does not end. */
EXTERN L#FouJ Colours005

CHAIN L#FouJ Colours003
@737 /* To me, it's something very different.  I doubt you can even imagine that. */
EXTERN L#FouJ Colours005

CHAIN L#FouJ Colours005
@738 /* These colours all around.  Gold.  Red.  Purple.  Orange.  They all make me feel nauseous. */
== L#FouJ @739 /* The Plane of Shadows was more drab, like a grey graveyard.  Just look around--at all this! */
END
IF~~THEN REPLY @740 /* You know, there are places like this, colourful, but also places that are more gloomy.  Places where you can hardly find colours other than brown and black. */ EXTERN L#FouJ Colours006
IF~~THEN REPLY @741 /* Faerun is full of colour and I like it.  I would rather visit places that are somehow varied, than be caged in a world of black and shades of grey, Foundling. */ EXTERN L#FouJ Colours007
IF~~THEN REPLY @742 /* Indeed, it's not a place in which I'd like to stay.  It's too vivid.  But worry not, as I do not plan to stay here for more than is necessary. */ EXTERN L#FouJ Colours008
IF~~THEN REPLY @743 /* This is getting us nowhere.  Let us do what we must, understood?  And now, let us move on. */ EXTERN L#FouJ Colours004

CHAIN L#FouJ Colours006
@744 /* --places where the eyes can rest.  I've seen places like that, you are right, but they're mostly underground.  I would prefer to walk freely rather than from one shelter to another. */
EXTERN L#FouJ Colours009

CHAIN L#FouJ Colours007
@745 /* Are you trying to say that my place was like a jail?  My place--in regard to colour--wasn't as aggressive as yours.  It was calmer. */
EXTERN L#FouJ Colours009

CHAIN L#FouJ Colours008
@746 /* I regret that our presence here is necessary at all. */
EXTERN L#FouJ Colours009

CHAIN L#FouJ Colours009
@747 /* I just realized that the people of Faerun, or at least half of them, associate colours with... a good emotion.  Joy, I think.  Am I right? */
END
IF~~THEN REPLY @748 /* Vivid colours seem more alive. */ EXTERN L#FouJ Colours010
IF~~THEN REPLY @749 /* Yes.  Pink, orange, red--they are bright.  What's bright, is considered more "happy". */ EXTERN L#FouJ Colours011
IF~~THEN REPLY @750 /* Not necessarily.  I think there are colours that even though they are bright, have negative connotations.  Like red for spilt blood, or green for pestilence. */ EXTERN L#FouJ Colours012
IF~~THEN REPLY @751 /* I don't know, really.  Can't you just let us move on? */ EXTERN L#FouJ Colours004

CHAIN L#FouJ Colours010
@752 /* Alive?  I think they are like needles. */
EXTERN L#FouJ Colours013

CHAIN L#FouJ Colours011
@753 /* "Happy"?  That is irrational. */
EXTERN L#FouJ Colours013

CHAIN L#FouJ Colours012
@754 /* I see.  However, more often do I hear of positive associations with bright shades. */
EXTERN L#FouJ Colours013

CHAIN L#FouJ Colours013
@755 /* To me, they are like chaos.  They are unheeded markings or signs.  The more I see of those, the more confused I get.  Not only do I find it more difficult to focus, but they're also irritating. */
END
IF~~THEN REPLY @756 /* Oh, come on--you find everything irritating! */ EXTERN L#FouJ Colours014
IF~~THEN REPLY @757 /* They must feel somehow overwhelming.  It's the first time you've seen so many colours at the same time, surrounding you all the time. */ EXTERN L#FouJ Colours015
IF~~THEN REPLY @758 /* Whatever.  Cope with it, now we need to move on. */ EXTERN L#FouJ Colours004

CHAIN L#FouJ Colours014
@759 /* I don't.  But I won't try to make you think otherwise.  It doesn't really matter. */
EXTERN L#FouJ Colours016

CHAIN L#FouJ Colours015
@760 /* Maybe.  Maybe you're right. */ 
EXTERN L#FouJ Colours016

CHAIN L#FouJ Colours016
@761 /* I just feel strangely surprised that something that could be used as a weapon, something that is confusing, something that can blind and cause headaches, is considered joyful at the same time. */
== L#FouJ @762 /* However, we have talked long enough.  There are issues that need be solved.  Come.  Let's go. */
DO ~SetGlobal("L#FouColours","GLOBAL",2)~ EXIT

CHAIN L#FouJ Colours004
@763 /* As you wish. */
DO ~SetGlobal("L#FouColours","GLOBAL",2)~ EXIT

///////////////////////////
///////TOTDG:BLACK/////////
///////////////////////////

CHAIN IF ~PartyHasItem("DGIBLAC")
Global("L#FouTOTDGB","GLOBAL",0)~ THEN L#FouJ TOTDG000
@764 /* For a moment I thought he might be a Shade Lord, but as it turned out, he seems to be like most mages. */ 
== BMAZZY IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @765 /* We should be happy for that.  If he were anything like the the puppet master from the Temple Ruins, the battle would have been much deadlier. */
== BHAERDA IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @766 /* Ah, he was far from being like most of them, our gloomy Foundling! Rather he's like a dark phantasm, thrilling and with an infernal aura.  A splendid battle, indeed. */
== BEDWIN IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @767 /* Like most mages--ah! By this single statement, I can tell you've never been to Thay.  (They are all like ants closed in their limited terrarium.) */
== BAERIE IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @768 /* There was a moment when I-I thought that he would win.  I'm glad it's over already. */
END
IF~~THEN REPLY @769 /* Like most mages?! He almost killed us! */ EXTERN L#FouJ TOTDG001
IF~~THEN REPLY @770 /* He was very different from a Shade Lord.  He was more like... like a sorcerer, while both your former allies were nothing more than monsters.  This one here was a power-obsessed mage. */ EXTERN L#FouJ TOTDG002
IF~~THEN REPLY @771 /* He was exactly what we should have expected to encounter in a place like this.  No surprise or disappointment here. */ EXTERN L#FouJ TOTDG003
IF~~THEN REPLY @772 /* We don't have time for this, Foundling.  We've got almost all the Colours we need.  Let's leave this place as soon as possible. */ EXTERN L#FouJ TOTDG004

CHAIN L#FouJ TOTDG001
@773 /* Almost.  Now *he* is dead. */
EXTERN L#FouJ TOTDG005

CHAIN L#FouJ TOTDG002
@774 /* He was just obsessed like the Shade Lord.  That's why I expected them to be alike. */
EXTERN L#FouJ TOTDG005

CHAIN L#FouJ TOTDG003
@775 /* Good.  It means you were well prepared. */
EXTERN L#FouJ TOTDG005

CHAIN L#FouJ TOTDG005
@776 /* This place--the so called Deep Gardens--it makes me sick.  While we're here, I feel as if we're prisoners.  Prisoners locked somewhere inside a marble sphere, with no doors, no windows. */
== L#FouJ @777 /* Everything seems off.  Everything but the one Colour we just found.  Look at it.  Black.  Indeed, it seems to be made of raven black shadow. */
END
IF~~THEN REPLY @778 /* Have you seen anything like that before? */ EXTERN L#FouJ TOTDG006
IF~~THEN REPLY @779 /* We don't have time for this.  We need to get out of here.  Let's go. */ EXTERN L#FouJ TOTDG004
IF~~THEN REPLY @780 /* It's just some kind of... rock.  Or something. */ EXTERN L#FouJ TOTDG007

CHAIN L#FouJ TOTDG006
@781 /* No, I don't think so.  Even if it looks the same, it feels different to the touch. */
EXTERN L#FouJ TOTDG008

CHAIN L#FouJ TOTDG007
@782 /* I don't think it's just a rock. */ 
EXTERN L#FouJ TOTDG008

CHAIN L#FouJ TOTDG008
@783 /* If I were to keep one thing from this place, I would keep this very rock.  I don't know why, but it feels nice.  It makes me feel better...  more confident.  More unbreakable.  It even makes this place a little bit easier to stand. */
END
IF~~THEN REPLY @784 /* It must have some influence on your kind.  I can't feel anything special. */ EXTERN L#FouJ TOTDG009
IF~~THEN REPLY @785 /* I bet it's just your imagination.  Now, let us move on, okay? */ EXTERN L#FouJ TOTDG004
IF~~THEN REPLY @786 /* Strange.  Maybe it has something to do with shadows or... just... something.  I'm not sure why it would affect you. */ EXTERN L#FouJ TOTDG009

CHAIN L#FouJ TOTDG009
@26 /* ... */
== L#FouJ @787 /* Take it.  I don't need it to feel better.  I know that I'm stronger than I was before. */
END
IF~~THEN REPLY @788 /* Is everything all right? */ EXTERN L#FouJ TOTDG010
IF~~THEN REPLY @789 /* Just give it to me and let's move on. */ EXTERN L#FouJ TOTDG004

CHAIN L#FouJ TOTDG010
@790 /* Yes.  The only reason I would keep it is because I would like to know if it can be used in any specific way.  I wanted to indulge my curiosity and check what's inside.  But since we need it--take it. */
END
IF~~THEN REPLY @791 /* I will.  Now, I think we should move on.  Let's go. */ EXTERN L#FouJ TOTDG004
IF~~THEN REPLY @792 /* Whatever.  Just let us move on. */ EXTERN L#FouJ TOTDG004

CHAIN L#FouJ TOTDG004
@124 /* Right. */
DO ~SetGlobal("L#FouTOTDGB","GLOBAL",1)~ EXIT

///////////////////////////
/////THE ELVEN CITY////////
///////////////////////////


CHAIN IF ~Global("L#ElvenTalk","GLOBAL",2)~ THEN L#FouJ Elves000
@793 /* So this is how elves live. And now everything will be ruined. */ 
== BAERIE IF ~InParty("AERIE") !StateCheck("AERIE",CD_STATE_NOTVALID)~ THEN @794 /* You--you shouldn't say something like that! This place is too beautiful to fall... */
== BNALIA IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @795 /* It can't. <CHARNAME>, we must do everything we can to save this city. It's our duty. */
== BVICONI IF ~InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @796 /* Not drow but demons to bring this destruction. I had thought it would be different... */
== BEDWIN IF ~InParty("edwin") !StateCheck("edwin",CD_STATE_NOTVALID)~ THEN @797 /* Hmm, only someone of significant power could summon such a number of demons. It must have been Irenicus. (And if I am the one to kill him, they will realize who Edwin Odesseiron is.) */
== BJAHEIR IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @798 /* This place can't just end like this. We must do something to stop this madness. */
== BYOSHIM IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @799 /* As mad as he is cruel--Irenicus has proven his twisted wishes. It shouldn't end like this, my friends, and we are the ones that should tame this beast. */
END
IF~~THEN REPLY @800 /* It's the first time I've seen a city like Suldanessellar. If only the circumstances could be different. */ EXTERN L#FouJ Elves001
IF~~THEN REPLY @801 /* It's the first time I've seen a city like Suldanessellar. And this chaos! It's splendid. */ EXTERN L#FouJ Elves001
IF~~THEN REPLY @802 /* We have no time for talk if we want to save this place. We should help to protect the elves. */ EXTERN L#FouJ Elves002
IF~~THEN REPLY @803 /* No talking. We need to find Irenicus. */ EXTERN L#FouJ Elves002

CHAIN L#FouJ Elves001
@804 /* Didn't you just see Ust Natha? That was an elven city too. */
END
IF~~THEN REPLY @805 /* This place is very different from the homeland of the drow. I wouldn't call those places similar. */ EXTERN L#FouJ Elves003
IF~~THEN REPLY @806 /* The circumstances didn't allow me to really focus in Ust Natha. I doubt we'll have any time to take a closer look at this place, either. There's always something. */ EXTERN L#FouJ Elves004
IF~~THEN REPLY @807 /* We can't talk right now. We need to find Irenicus. */ EXTERN L#FouJ Elves002

CHAIN L#FouJ Elves003
@808 /* I can see many similarities. Especially one. */
EXTERN L#FouJ Elves005

CHAIN L#FouJ Elves004
@809 /* You don't need "a closer look" to spot the main similarity. */
EXTERN L#FouJ Elves005

CHAIN L#FouJ Elves005
@810 /* The death. */
END
IF~~THEN REPLY @811 /* You're not even bothered by the fact that wherever we go, we witness the same thing. That thing you mentioned. */ EXTERN L#FouJ Elves006
IF~~THEN REPLY @812 /* I think that's what Alaundo meant--no matter where I go, I'll mark the land with chaos and death. I'm afraid this is my fault... */ EXTERN L#FouJ Elves007
IF~~THEN REPLY @813 /* And this is beautiful. It's like a song of drums. Like a revolution. */ EXTERN L#FouJ Elves008
IF~~THEN REPLY @814 /* I'm afraid we have no time for this. We need to find Irenicus before it's too late. */ EXTERN L#FouJ Elves002

CHAIN L#FouJ Elves006
@815 /* It's natural. It happens. Many gain power. Others fall. It's nothing we can change--actually it shouldn't be changed, I guess. That's what I think. */
EXTERN L#FouJ Elves009

CHAIN L#FouJ Elves007
@816 /* Your fault? I don't think so. It's a matter of a few events that happened, of some deaths and deeds of the past. */
EXTERN L#FouJ Elves009

CHAIN L#FouJ Elves008
@817 /* You seem to be enjoying it. I'm not sure if I can name more of the emotions that take part in this, but I know that it may be called life. */
EXTERN L#FouJ Elves009

CHAIN L#FouJ Elves009
@818 /* But there were no battles like this one in the Shadow Plane. There it was something like... neverending attempts to survive. This here is more... dynamic. */
END
IF~~THEN REPLY @819 /* That's how war looks in the Prime Material Plane. I believe it exists in our home because there are too many of us. Dwarves, elves, humans, halflings, gnomes--even some like tieflings or... Bhaalspawn. */ EXTERN L#FouJ Elves010
IF~~THEN REPLY @820 /* Because this world is different. There is fire and snow, hatred and love. When mixed, they result in both good changes, and wars. */ EXTERN L#FouJ Elves011
IF~~THEN REPLY @821 /* And that's what I like--you can just stand and look at everything. At the slaughter. And you know that you're alive. */ EXTERN L#FouJ Elves012
IF~~THEN REPLY @822 /* Maybe. However, we need to move on. Irenicus is waiting. */ EXTERN L#FouJ Elves002

CHAIN L#FouJ Elves010
@823 /* Yes. You are all like a trigger. But no one knows what kind of happening that trigger may start. */
DO ~SetGlobal("L#ElvenTalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ Elves011
@824 /* A world of opposition. Just like you and Irenicus? Or maybe not. */
DO ~SetGlobal("L#ElvenTalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ Elves012
@825 /* So you feel alive among the dead. Some wouldn't agree. Especially the dead. */
DO ~SetGlobal("L#ElvenTalk","GLOBAL",3)~
EXIT

CHAIN L#FouJ Elves002
@826 /* So lead. Let's find the one behind this. */
DO ~SetGlobal("L#ElvenTalk","GLOBAL",3)~
EXIT

//////////////////////////////
////////INTERJECTIONS/////////
//////////////////////////////

INTERJECT_COPY_TRANS SHADEL 0 L#FoundlingShadowLord1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@827 /* She isn't the only one who's free, Lord. */
== SHADEL @828 /* Foundling betrayed his master?  Hehe, the circumstances get more and more interesting. But if you think that a group of servants and weaklings can stop my shadows, then you're wrong. */
== SHADEL @829 /* Since my winged friend is dead, you now belong to me.  Come here, servant, you can pay for your stupidity.  Come and bow and maybe you'll be forgiven. */
== L#FouJ @2 /* No. */
== SHADEL @830 /* What?  You dare to oppose me?  If so, then you'll pay just like the others. */
END

INTERJECT_COPY_TRANS SHADEL 4 L#FoundlingShadowLord2
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@831 /* I've been there and I'll never follow you again, Lord. */
== SHADEL @832 /* Foundling betrayed his dragon master?  The circumstances get more and more interesting. If you think that this group of servants and weaklings can stop my shadows, then you're wrong. */
== SHADEL @833 /* Since my winged friend is dead, you now belong to me, Foundling.  You can pay for your stupidity, though.  Come and bow and maybe you'll be forgiven! */
== L#FouJ @834 /* No.  My former master is dead.  You'll join him soon. */
== SHADEL @835 /* You dare to oppose me...? */
END

INTERJECT_COPY_TRANS AERIE 0 L#FoundlingAerie1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@836 /* If she begs for it, it means you may get something in exchange.  It's the obvious rule. */
END

INTERJECT_COPY_TRANS ANOMEN 0 L#FoundlingAnomen1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@837 /* Do men always tell their names to strangers?  The Prime Material Plane is very different. */
END

INTERJECT_COPY_TRANS ARAN 0 L#FoundlingAran1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@838 /* He talks more freely than others.  He must be the one in charge, the one who gives orders.  Be prepared, his type is no different than Thaxll'ssillyia. */
END

INTERJECT_COPY_TRANS ARAN 13 L#FoundlingAran2
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@839 /* This is obviously a difficult task.  Before you accept, think it over--there is a chance this Imoen is already dead. */
END

INTERJECT_COPY_TRANS ARENTHIS 2 L#FoundlingArenthis1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@840 /* You're not considering this, are you? */
END

INTERJECT_COPY_TRANS ARNGRL01 1 L#FoundlingAranGirl1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@841 /* This woman must have lost her senses.  Most of these cloaks are just rags. */
END

INTERJECT_COPY_TRANS BARONP 0 L#FoundlingPloyer1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@842 /* Do you know this man, Jaheira? */
END

INTERJECT_COPY_TRANS BMUGG1 0 L#FoundlingMug1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@843 /* <CHARNAME>? */
END

INTERJECT_COPY_TRANS C6DRIZZ2 0 L#FoundlingDrizzt1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@844 /* (whispers) If the situation gets too tense, we should let this man fight for us.  Losing him may be better than losing our own lives. */
END

INTERJECT_COPY_TRANS C6ELHAN2 7 L#FoundlingElhan1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@845 /* Then you must have plenty of enemies already. */
== C6ELHAN2 @846 /* Adventuring with someone of your kind puts this one here in a doubtful light, already.  We must be cautious. */
END

INTERJECT_COPY_TRANS C6ELHAN2 14 L#FoundlingElhan2
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@847 /* (whispers) So it's because of *him*. */
END

INTERJECT_COPY_TRANS C6ELHAN2 36 L#FoundlingElhan3
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@848 /* Do we think of the same person, <CHARNAME>? */
END

INTERJECT_COPY_TRANS FIRKRA01 5 L#FoundlingFir1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@849 /* 10,000 gold pieces? */
END

INTERJECT_COPY_TRANS FIRKRA02 15 L#FoundlingFir2
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@850 /* What now, <CHARNAME>?  Should we fetch the child or deal with this dragon?  It may be wise to leave him be.  If he's as powerful as my former Master, one of us may die. */
END

INTERJECT_COPY_TRANS GAAL 3 L#FoundlingGaal1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@851 /* Such a sacrifice would be nothing but stupidity. */
END

INTERJECT_COPY_TRANS IMOEN2 7 L#FoundlingImoen1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@852 /* He weakened you. */
END

INTERJECT_COPY_TRANS KALAH2 4 L#FoundlingKalah1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@853 /* You deserve this death. */
END

INTERJECT_COPY_TRANS UDPHAE01 31 L#FoundlingDrow1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@854 /* Well planned. */
END

INTERJECT_COPY_TRANS UDSILVER 0 L#FoundlingAdalon1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@855 /* Another one of dragon kind.  And this one is radiant. */
== L#FOUJ @856 /* Make sure she doesn't trick you.  Almost every dragon knows a trick or two. */
== UDSILVER @857 /* I'm surprised you work with someone like this darkling, <PRO_RACE>. */
END

INTERJECT_COPY_TRANS HELLJON 1 L#FoundlingJon1
== L#FouJ IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@858 /* The end. The end always seems obvious, until it is to come. Then we do our best to avoid it. */
END

//TREE OF LIFE

INTERJECT PLAYER1 33 L#FoundTreeOfLife
== PLAYER1 IF ~InParty("L#FOU") !StateCheck("L#FOU",CD_STATE_NOTVALID)~ THEN
@859 /* (Foundling, the prisoner whom you freed from the Shadow Dragon and the curse, looks at you.  As always he seems cold and somehow absent.) */
END
IF~~THEN REPLY @860 /* Foundling, you don't need to follow me.  But if you do... I want to know that I can count on you. */ EXTERN L#FouJ L#FouTree
IF~~THEN REPLY @861 /* Can I really trust you?  This fight won't be an easy one. */ EXTERN L#FouJ L#FouTree
IF~~THEN REPLY @862 /* Do you want to come with me? */ EXTERN L#FouJ L#FouTree


APPEND L#FouJ
IF ~~ THEN BEGIN L#FouTree
SAY @863 /* I risked my life before.  You had no doubts until we got here. I will help you; I want to see the end of this.  You were there when we fought the Shadow Dragon and I'll see the end of Joneleth Irenicus. */ 
= @864 /* I will stay... It's the first time I can feel a real thrill.  And fear.  Maybe--maybe even something more.  It's something new.  Or at least partially new. */
= @865 /* But I don't want to talk about it right now.  It's probably the only time I can feel this... thing.  We will forget about this and about Irenicus, soon enough. */
COPY_TRANS PLAYER1 33
END
END 