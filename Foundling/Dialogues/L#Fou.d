BEGIN L#Fou

////////////////////////////
////TALK 1 - PRE-Dragon/////
////////////////////////////

CHAIN
IF~Global("L#FouPlot","GLOBAL",0)~THEN L#Fou Join000
@0 /* I won't let you continue. You should go back--take the same route you used to get here and just forget this place. Everything happening here is beyond your comprehension. */ 
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @1 /* We know exactly what is going on here, creature, so I'd rather you stop telling us what you “think” we know and expect. */
== L#Fou IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @2 /* You're the one who was kept in the western cells!  It seems you forced the lock and killed his minions... */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @3 /* I was offered aid.  We slew many on our way here.  We have the support of Arvoreen and Amaunator: you and your master stand no chance. */
== JaheiraJ IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID)~ THEN @4 /* I'm surprised we've met someone who's telling us to go back instead of trying to kill us where we stand.  But somehow I doubt this creature's good intentions. */
== KeldorJ IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @5 /* You should be careful, <CHARNAME>.  This may be an ambush; this one may be a decoy. */
== L#Fou IF ~InParty("Keldorn") !StateCheck("Keldorn",CD_STATE_NOTVALID)~ THEN @6 /* It's not an ambush!  I'm just telling you to go back! */
END
IF~~THEN REPLY @7 /* What are you?  Why would someone like you let us go, eh? */ EXTERN L#Fou Join001
IF~~THEN REPLY @8 /* (snort) A talking shadow?  Hmm, that's something new.  Can you do any other tricks? */ EXTERN L#Fou Join002
IF~~THEN REPLY @9 /* No more talking!  Prepare to die! */ EXTERN L#Fou Join003
 
CHAIN
IF~~THEN L#Fou Join001
@10 /* I do not attack on sight. */
= @11 /* I'm not an assassin, and nor am I a merciless beast. */
== AnomenJ  IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN  @12 /* I find that difficult to believe, monster.  What is this place, if not a profaned temple?  And it is you and your masters who desecrated it!  */
== AnomenJ  IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN  @13 /* I don't understand why we are talking to this beast, anyway, <CHARNAME>! */
EXTERN L#Fou Join004
 
CHAIN 
IF~~THEN L#Fou Join002
@14 /* I'm not a shadow.  And do not provoke me. */
== KorganJ  IF ~InParty("Korgan") !StateCheck("Korgan",CD_STATE_NOTVALID)~ THEN  @15 /* Har har! That's a good one, <CHARNAME>!  Now, get this shadowy bugger out o' our way! We got some good blood lettin' an' plunderin' to be done! */
== AnomenJ  IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN  @16 /* (Snort) Provoke? It is YOU who is in OUR way, creature of deepest darkness! */
EXTERN L#Fou Join004
 
CHAIN 
IF~~THEN L#Fou Join004
@17 /* I do not find pleasure in harming others, but I can harm if you make me.  You do not belong to this place.  You should leave these chambers. */
== AerieJ  IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN  @18 /* <CHARNAME>?  I--I don't think we should listen to this... thing. */
== L#Fou @19 /* Are you from the village to the south east? */
END
IF~~THEN REPLY @20 /* No.  I'm not from Imnesvale.  I was brought to the Umar Hills by rumors of disappearing villagers and it seems I have found the source of the disturbance.  Right? */ EXTERN L#Fou Join005
IF~~THEN REPLY @21 /* It's not your business, creature.  It is I who am going to ask the questions here, understood? */ EXTERN L#Fou Join006
IF~~THEN REPLY @22 /* That's not your business. Better prepare--I'll banish you from Faerun.  Die! */ EXTERN L#Fou Join003
 
CHAIN
IF~~THEN L#Fou Join005
@23 /* I did nothing to them.  It was someone else.  But not me. */
== YoshJ  IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN  @24 /* Forgive me for interrupting, my friend, but I am not sure we should believe in these words. */
EXTERN L#Fou Join007
 
CHAIN 
IF~~THEN L#Fou Join006
@25 /* I didn't expect those of your plane to be so blind with self-confidence. */
== MinscJ  IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN  @26 /* Boo sees through you, shadowy-man! …Although I suppose we can all see through you, but it doesn't matter!  We know there be evil here needing a good butt-kicking!  Out of our way, shady one, that we may deliver it like all good-doers deliver the milk to the righteous families! Right, Boo? */
== MinscJ  IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN  @27 /* (Boo) *Squeak!* */ 
== YoshJ IF ~InParty("Yoshimo") !StateCheck("Yoshimo",CD_STATE_NOTVALID)~ THEN  @28 /* Easy, Minsc my big friend.  If you shout, you may lure some more of his kind and we should deal with this one, first. */
EXTERN L#Fou Join007
 
CHAIN 
IF~~THEN L#Fou Join007
@29 /* This is leading us nowhere.  Go back or you'll diminish right here. */
== HaerdaJ  IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN  @30 /* Is this a threat?  Or perhaps a promise?  'Tis most intriguing how this rook tries to guide us to our final decision. */
== KeldorJ  IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN  @31 /* <CHARNAME>? */
END
IF~~THEN REPLY @32 /* Eh, I thought we could find a compromise.  Prepare to die. */ EXTERN L#Fou Join003
IF~~THEN REPLY @33 /* I won't leave.  I want you to tell me everything. */ EXTERN L#Fou Join008
 
CHAIN 
IF~~THEN L#Fou Join003
@34 /* No.  I do not wish to fight... */
== ViconiJ  IF ~InParty("Viconia") !StateCheck("Viconia",CD_STATE_NOTVALID)~ THEN  @35 /* Begging already?  Iblith.  I expected something more from an extra-planar being.  How disappointing. */
END
IF~~THEN REPLY @36 /* Tell me about this place and I may spare your life. */ EXTERN L#Fou Join008
IF~~THEN REPLY @37 /* Oh, did you just say you're going to tell me everything? */ EXTERN L#Fou Join008
IF~~THEN REPLY @38 /* No mercy for monsters like you! */ EXTERN L#Fou Join00D
 
CHAIN
IF~~THEN L#Fou Join008
@39 /* But there is danger all around. */
= @40 /* (Seems more confident for a while) Do you really want to take part in this?  This place is doomed already.  The trees are dead, the stones are colder... This place is dead. */
== CerndJ  IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN  @41 /* He's right, <CHARNAME>.  This place is dead, but if we don't stop, this place will be like venom--it will infect the lands nearby. */
== EdwinJ  IF ~InParty("Edwin") !StateCheck("Edwin",CD_STATE_NOTVALID)~ THEN  @42 /* This place has become most interesting, indeed. If it were further researched, powerful magic could possibly be mined from its secrets... (Powerful enough even to stop *this* babbling Bhaalspawn monkey. Making me trudge through these dirty halls like some filthy mineworker. Bah!) */
== JanJ  IF ~InParty("Jan") !StateCheck("Jan",CD_STATE_NOTVALID)~ THEN  @43 /* Oh, this man is speaking the truth. It's been a while since I have seen such a silent and gloomy place. It's much more silent than... than any other place a Jansen has seen! But on the other hand... */
== L#Fou @44 /* Why would you fight for something that's dead already? */
END
IF~~THEN REPLY @45 /* Just tell me what's at the end of this passage. */ EXTERN L#Fou Join009
IF~~THEN REPLY @46 /* You won't understand. It's time for you to die. */ EXTERN L#Fou Join00D
IF~~THEN REPLY @47 /* You know what? It doesn't matter. Just die! */ EXTERN L#Fou Join00D
IF~~THEN REPLY @48 /* Please, just let me know what's going on, will you? */ EXTERN L#Fou Join009
 
CHAIN 
IF~~THEN L#Fou Join009
@49 /* Fine.  But I warned you. You should just go back. */
= @50 /* Up there you can find my master--Thaxll'ssillyia--and his master, the Shade Lord.  Their power is far too formidable. You cannot hope to win. You just can't. It's not possible. Save yourselves and walk away. */
== MazzyJ  IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @51 /* Where is Patrick?  Did you see him? */
== L#Fou IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @52 /* The other short man?  The one of your height? */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @53 /* Yes.  I suppose I'll take that as a “yes”.  <CHARNAME>, I cannot let him down, so no matter what will happen, we need to go there. */
== L#Fou IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @54 /* I'm not sure if he can be saved. */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @55 /* What do you mean? */
== L#Fou IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @56 /* He's with the Shade Lord.  That's all I know. */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @57 /* Arvoreen, aid him.  He is a good man and I know he will be alright.  He would never allow any shadows or undead to touch his soul. */
END
IF~~THEN REPLY @58 /* Is that all? */ EXTERN L#Fou Join010
IF~~THEN REPLY @59 /* What's the Lord's weakness? */ EXTERN L#Fou Join011
IF~~THEN REPLY @60 /* Good.  Now I know everything I need. Prepare to die! */ EXTERN L#Fou Join00D
IF~~THEN REPLY @61 /* Thank you for telling me this. */ EXTERN L#Fou Join012
 
CHAIN
IF~~THEN L#Fou Join010
@62 /* That's all I know. */
== Imoen2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN  @63 /* You know, I kinda feel like he told us the truth. I'm not sure why, though. */
EXTERN L#Fou Join013
 
CHAIN 
IF~~THEN L#Fou Join011
@64 /* I don't know. He's a really powerful one. */
== Imoen2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @65 /* I think he told us the truth, <CHARNAME>. */
EXTERN L#Fou Join013
 
CHAIN 
IF~~THEN L#Fou Join012
@66 /* (He says nothing in reply, but just looks at you, his shadowed face troubled.) */
EXTERN L#Fou Join013
 
CHAIN
IF~~THEN L#Fou Join013
@67 /* Are you really going to face them? */
== MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN  @68 /* We have to. */
== Imoen2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @69 /* We fought Irenicus before, and even though he ran away, we survived.  I don't think any monster can be worse than him... */
== CerndJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN  @70 /* As long as we want to make sure there's balance in this world. */
== AerieJ IF ~InParty("Aerie") !StateCheck("Aerie",CD_STATE_NOTVALID)~ THEN  @71 /* I... */
== NaliaJ IF ~InParty("Nalia") !StateCheck("Nalia",CD_STATE_NOTVALID)~ THEN  @72 /* This Shade Lord is a threat to many innocent people.  He must be stopped. */
END
IF~~THEN REPLY @73 /* Yes. */ EXTERN L#Fou Join014
IF~~THEN REPLY @74 /* I'm afraid there's no other way. */ EXTERN L#Fou Join014
IF~~THEN REPLY @75 /* I'm not sure yet. */ EXTERN L#Fou Join014
IF~~THEN REPLY @71 /* I... */ EXTERN L#Fou Join014
 
CHAIN
IF~~THEN L#Fou Join014
@76 /* I see... */
== L#Fou @77 /* You should know that I am nothing more than a prisoner here.  I wish I could support you and make my master disappear on your way to the Shade Lord, but I can't oppose him openly. */
== L#Fou @78 /* I was sent to try to stop you. I did so. I'm not going to stand in your way or fight you as I was never ordered to. */
DO ~GiveItemCreate("RESTORE",Player1,2,0,0) GiveItemCreate("POTN08",Player1,2,0,0) GiveItemCreate("AMUL15",Player1,1,10,0)~
== L#Fou @79 /* Here, take these. They are the belongings of--(he seems troubled again)-–they won't be needing them anymore. */ 
== L#Fou @80 /* I am sure you can make proper use of these. That's all I can do. */
== ValygarJ IF ~InParty("Valygar") !StateCheck("Valygar",CD_STATE_NOTVALID)~ THEN  @81 /* You should examine these "gifts" before you use them. They may be cursed. */
END
IF~~THEN REPLY @82 /* You've done enough. */ EXTERN L#Fou Join015
IF~~THEN REPLY @83 /* Thank you. Now fall in--there are some beasts to kill. */ EXTERN L#Fou Join015
IF~~THEN REPLY @84 /* I can't let you go. You may be dangerous. Prepare to die. */ EXTERN L#Fou Join00D
IF~~THEN REPLY @85 /* Whatever. Leave before I change my mind and just get rid of you. */ EXTERN L#Fou Join015
 
CHAIN 
IF~~THEN L#Fou Join015
@86 /* Remember: they are powerful foes... */
DO ~SetGlobal("L#FouPlot","GLOBAL",1) EscapeArea()~
EXIT
 
CHAIN 
IF~~THEN L#Fou Join00D
@87 /* I won't let you kill me. */
DO ~SetGlobal("L#FouPlot","GLOBAL",70) Enemy()~
EXIT


////////////////////////////
///TALK 3 - POST-Dragon/////
////////////////////////////


CHAIN 
IF ~Global("L#FouPlot","GLOBAL",2)~ THEN L#Fou JoinCon000
@88 /* (Foundling's walk is calm, but on his face you see a mixture of amazement and the joy of success.) */
== L#Fou @89 /* You really did it.  I thought you would join these bones and end consumed by the shadows and rats, but--good job.  Really.  And the final blow: it was a bullseye.  His fall was a remarkable sight. */ 
== YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @90 /* And here comes the infamous Foundling. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @91 /* Ah, suddenly the beak of the rook has grown; he 'sings' louder, too.  'Tis a miracle. */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @92 /* The Foundling.  We should be more careful and no matter what, we shouldn't trust this thing.  Remember the dragon's words: "he knows some tricks." */
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @93 /* It is him again.  Please, be careful, <CHARNAME>.  He may be dangerous. */
== L#Fou @94 /* A *really* good job. */
END
IF~~THEN REPLY @95 /* Why do I have a feeling that you planned the entire thing? */ EXTERN L#Fou JoinCon001
IF~~THEN REPLY @96 /* Indeed.  A pity you didn't join, though.  We could have used some help. */ EXTERN L#Fou JoinCon002
IF~~THEN REPLY @97 /* You!  You planned this! You didn't even tell me that your master was a Shadow Dragon! */ EXTERN L#Fou JoinCon001
IF~~THEN REPLY @98 /* You'll pay for getting me into this!  Prepare to die! */ EXTERN L#Fou JoinCon003
IF~~THEN REPLY @99 /* Haha! I love that kind of work. */ EXTERN L#Fou JoinCon004

CHAIN L#Fou JoinCon001
@100 /* I may have predicted some of these events, but I didn't plan everything.  I had no idea someone like you would come. */
EXTERN L#Fou JoinCon005

CHAIN L#Fou JoinCon002
@101 /* I thought I told you: I couldn't oppose my master openly when he was alive. But now he's not. */
EXTERN L#Fou JoinCon005

CHAIN L#Fou JoinCon004
@102 /* Hmm, you must be a daredevil--to be happy because of a fight with a dragon. */
EXTERN L#Fou JoinCon005

CHAIN L#Fou JoinCon005
@103 /* But now, please: make me some space.  I need to--it must be somewhere here. */
== L#Fou @104 /* (The Foundling comes to the dragon's corpse and looks for something rapidly.  He checks some bags, and looks around nervously.  He seems confused, as if he expected to find something.) */
== AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @105 /* What is he--? */
== L#Fou @106 /* It's... it's not here!  Bloody wyrm!  He's hidden it somewhere! */
END
IF~~THEN REPLY @107 /* What's going on?  What are you looking for? */ EXTERN L#Fou JoinCon006
IF~~THEN REPLY @108 /* You missed something in your plan, I suppose? */ EXTERN L#Fou JoinCon007
IF~~THEN REPLY @109 /* Leave that bag!  It doesn't belong to you.  I killed him, not you. */ EXTERN L#Fou JoinCon008
IF~~THEN REPLY @110 /* I don't care what you are or what are you looking for--you're one of them.  Prepare to die! */ EXTERN L#Fou JoinCon003

CHAIN L#Fou JoinCon006
@71 /* I... */
== KorganJ IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @111 /* Oh, jus' say it! */
EXTERN L#Fou JoinCon009

CHAIN L#Fou JoinCon007
@112 /* Nothing can be planned when the matter includes a shadow dragon. */
EXTERN L#Fou JoinCon009

CHAIN L#Fou JoinCon008
@113 /* I don't need these things. */
EXTERN L#Fou JoinCon009

CHAIN L#Fou JoinCon009
@114 /* He would never let me go, so he cursed me.  If I left him, I would die slowly, and--and now he's gone.  So he "left".  If I don't find a token he had, I'll just die.  I need it, now.  I am finally free and-- */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @115 /* You deserve to die, kin of the shadows. */
== ViconiJ IF ~InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @116 /* This thing doesn't seem to be truly powerful, but Shar would be pleased if he survived.  He comes from a land that is close to her dark heart. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @117 /* 'Tis getting more and more fascinating, my raven: a play with many twists and an uncertain ending.  We shouldn't let it end, yet. */
== MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @118 /* He helped the Shade Lord--we shouldn't let him go. */
== MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @119 /* Minsc and Boo do not trust him.  Boo says he smells of treachery! */
== NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @120 /* I'm not sure if we should help him.  What if he's hiding something again?  But on the other hand... */
== KeldorJ IF ~InParty("keldorn") !StateCheck("kelodrn",CD_STATE_NOTVALID)~ THEN @121 /* I would not help him, but I leave the decision to you. */
== JaheiraJ IF ~InParty("Jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @122 /* He's already used us before.  We shouldn't trust him--I say this both as your friend, and as a Harper. */
== Imoen2J IF ~InParty("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @123 /* I don't like him.  He reminds me of *his* fiends... */
== CerndJ IF ~InParty("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @124 /* If we help him, we may damage the balance. */
== YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @125 /* What say you, <CHARNAME>? Should we help him? */
END
IF~~THEN REPLY @126 /* Tell me how can we help you. */ EXTERN L#Fou JoinCon010
IF~~THEN REPLY @127 /* I'm not going to help you.  Work on your own, or die. */ EXTERN L#Fou JoinCon011
IF~~THEN REPLY @128 /* I can help you.  Not with the curse, though, but with ending your life.  Die, daemon! */ EXTERN L#Fou JoinCon003

CHAIN L#Fou JoinCon010
@129 /* You really want to help me?  Surprising. */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @130 /* What?! */
== KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @131 /* So be it. */
== HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @132 /* An interesting move, my raven! */
== JaheiraJ IF ~InParty("Jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @133 /* I can't agree with your decision.  At least be careful when he's around. */
== L#Fou @134 /* I don't understand why you would help someone from the Plane of Shadows, someone you do not know.  It's rather reckless of you. */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @135 /* If we get into trouble, it's going to be because of your foolhardy decision. */
END
IF~~THEN REPLY @136 /* Reckless? I can still change my mind. */ EXTERN L#Fou JoinCon0110
IF~~THEN REPLY @137 /* I'm not afraid of any risk. */ EXTERN L#Fou JoinCon012
IF~~THEN REPLY @138 /* I trust you. */ EXTERN L#Fou JoinCon012
IF~~THEN REPLY @139 /* Ha! You really thought I was serious?  Step back and prepare to die! */ EXTERN L#Fou JoinCon003

CHAIN L#Fou JoinCon0110
@140 /* No.  I'm happy to get your help. */
EXTERN L#Fou JoinCon013

CHAIN L#Fou JoinCon012
@141 /* You must be foolish or powerful, then. */
EXTERN L#Fou JoinCon013

CHAIN L#Fou JoinCon013
@142 /* I must admit that I would never have thought I would be offered any help.  Not by any of *your* kind. */
== AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @143 /* I'm equally surprised. */
== L#Fou @144 /* Most in my Sphere would be more... impassive. */
END
IF~OR(2) CheckStatGT(Player1,14,WIS) CheckStatGT(Player1,14,INT)~THEN REPLY @145 /* I read some manuscripts about your homeland, so I'm not really surprised. */ EXTERN L#Fou JoinCon014
IF~CheckStatGT(Player1,13,CHR)~THEN REPLY @146 /* No need to worry.  I'm not from your plane and you can trust me. */ EXTERN L#Fou JoinCon015
IF~~THEN REPLY @147 /* Isn't your place the home of shadows and daemons? */ EXTERN L#Fou JoinCon016
IF~~THEN REPLY @148 /* Most would be like that?  And what about you, then? */ EXTERN L#Fou JoinCon017
IF~~THEN REPLY @149 /* On second thought, I'm not going to risk it.  Prepare to die! */ EXTERN L#Fou JoinCon003
IF~~THEN REPLY @150 /* You know what?  You should go.  I won't kill you, but I'm not going to work with you either. */ EXTERN L#Fou JoinCon011

CHAIN L#Fou JoinCon014
@151 /* You read about the Shadow Plane?  Impressive... */
EXTERN L#Fou JoinCon018

CHAIN L#Fou JoinCon015
@152 /* I'm not sure why, but I want to trust you.  I hope we'll succeed. */
EXTERN L#Fou JoinCon018

CHAIN L#Fou JoinCon016
@153 /* No, not really.  I mean--there are many shadows, but it's not an Abyss.  There are also some other... beings.  If you feel like talking about it, we can.  But not now.  This isn't the right time. */
EXTERN L#Fou JoinCon018

CHAIN L#Fou JoinCon017
@154 /* I'm not like them.  I'm not a shadow.  I'm nothing like my former master.  It's--it's rather complicated. */
EXTERN L#Fou JoinCon018

CHAIN L#Fou JoinCon018
@155 /* Anyway, the token we're looking for is a small figurine of a bird.  Of--more or less this size.  (He joins his hands as if he was holding something inside.) */
== L#Fou @156 /* He rarely leaves this room, so I am sure someone hid it for him.  Probably one of the shadows.  First of all, we should check the chambers where we met.  It can't be far away as the link could be dispelled. */
== L#Fou @157 /* Also, shadows can't walk in daylight so I doubt any would be sent far. */
== L#Fou @158 /* --but let me ask again. Do you really want me to join? */
END
IF~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN REPLY @159 /* Yes. But you should know that once we're done here, I will continue with my personal mission.  I need to rescue Imoen, who is my only... relative, let's say. */ EXTERN L#Fou JoinCon019
IF~GlobalLT("CHAPTER","GLOBAL",%bg2_chapter_4%)~THEN REPLY @160 /* Yes, but you should know that I'm trying to find Irenicus--a mage who tortured me. I want to get even. I suppose you understand it means we're not going to avoid dangerous situations. */ EXTERN L#Fou JoinCon019
IF~~THEN REPLY @161 /* Yes. Let's go. */ EXTERN L#Fou JoinCon020
IF~~THEN REPLY @162 /* I changed my mind. Leave. */ EXTERN L#Fou JoinCon011

CHAIN L#Fou JoinCon019
@163 /* I see and I agree to help you. */
EXTERN L#Fou JoinCon021

CHAIN L#Fou JoinCon020
@164 /* Fine. */
EXTERN L#Fou JoinCon021

CHAIN L#Fou JoinCon021
@165 /* However, if you want to get my help after we're done with the token, we need to find it first.  If we don't I'll die slowly.  I will lose some power every now and then and one day--I'll just pass away. */
== L#Fou @166 /* Let's go.  We should waste no more time. */
END
IF~~THEN REPLY @167 /* Wait.  You've been addressed as Foundling all this time.  What's your real name? */ EXTERN L#Fou JoinCon022
IF~~THEN REPLY @168 /* The final question then: how should I address you? */ EXTERN L#Fou JoinCon022

CHAIN L#Fou JoinCon022
@169 /* I'm afraid I don't have a name.  I've been found.  He would always call me 'Foundling' or a 'servant'.  I got used to being called 'Foundling' so you should use that. */
== L#Fou @170 /* It may seem strange, but it's better than his name.  And I never really cared for that name, anyway. */
== L#Fou @171 /* Come, we should go. */
DO ~SetGlobal("L#FouPlot","GLOBAL",3) JoinParty()~
EXIT

CHAIN L#Fou JoinCon011
@172 /* I'll try to work on my own, then. */
DO ~SetGlobal("L#FouPlot","GLOBAL",75) EscapeArea()~ 
EXIT

CHAIN L#Fou JoinCon003
@173 /* I won't give up without a fight! */
DO ~SetGlobal("L#FouPlot","GLOBAL",75) Enemy()~
EXIT

//////////////////////////////////
//////////////////////////////////

BEGIN L#FouP

CHAIN IF ~Global("L#FouPlot","GLOBAL",20)~ THEN L#FouP StartNow000
@174 /* It shall begin. */
DO ~SetGlobal("L#FouPlot","GLOBAL",21)~
EXIT

////////////////////////////////
////////TALK 16 - HEAL//////////
////////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",26)~ THEN L#FouP HealHim000
@175 /* (You see Foundling's body lying on the ground. He is half dead and the Shadow Dragon seems to have departed his body. If you don't hurry, Foundling will die.) */
END
IF~OR(2) Class(Player1,CLERIC) Class(Player1,DRUID)~THEN REPLY @176 /* There's not much time - but I can heal you! */ DO ~CreateVisualEffectObject("SPHEALIN","L#Fou")~ EXTERN L#FouP HealHim001
IF~OR(2) Class(Player2,CLERIC) Class(Player2,DRUID)~THEN REPLY @177 /* Quickly! Heal his wounds, <Player2>! */ DO ~CreateVisualEffectObject("SPHEALIN","L#Fou")~ EXTERN L#FouP HealHim001
IF~OR(2) Class(Player3,CLERIC) Class(Player3,DRUID)~THEN REPLY @178 /* Quickly! Heal his wounds, <Player3>! */ DO ~CreateVisualEffectObject("SPHEALIN","L#Fou")~ EXTERN L#FouP HealHim001
IF~OR(2) Class(Player4,CLERIC) Class(Player4,DRUID)~THEN REPLY @179 /* Quickly! Heal his wounds, <Player4>! */ DO ~CreateVisualEffectObject("SPHEALIN","L#Fou")~ EXTERN L#FouP HealHim001
IF~OR(2) Class(Player5,CLERIC) Class(Player5,DRUID)~THEN REPLY @180 /* Quickly! Heal his wounds, <Player5>! */ DO ~CreateVisualEffectObject("SPHEALIN","L#Fou")~ EXTERN L#FouP HealHim001
IF~OR(2) Class(Player6,CLERIC) Class(Player6,DRUID)~THEN REPLY @181 /* Quickly! Heal his wounds, <Player6>! */ DO ~CreateVisualEffectObject("SPHEALIN","L#Fou")~ EXTERN L#FouP HealHim001
IF~PartyHasItem("POTN08")~THEN REPLY @182 /* Please, drink this potion of healing. */ DO ~TakePartyItemNum("POTN08",1) UseItem("Potn08",Myself)~ EXTERN L#FouP HealHim001
IF~PartyHasItem("POTN52")~THEN REPLY @183 /* Please, drink this potion of extra healing. */ DO ~TakePartyItemNum("POTN52",1) UseItem("Potn52",Myself)~ EXTERN L#FouP HealHim001
IF~PartyHasItem("POTN42")~THEN REPLY @184 /* Please, drink this potion of regeneration. It should help. */ DO ~TakePartyItemNum("POTN42",1) UseItem("Potn42",Myself)~ EXTERN L#FouP HealHim001
IF~PartyHasItem("POTN55")~THEN REPLY @185 /* Please, drink this greater potion of healing. */ DO ~TakePartyItemNum("POTN55",1) UseItem("Potn55",Myself)~ EXTERN L#FouP HealHim001
IF~PartyHasItem("POTN17")~THEN REPLY @186 /* Please, drink this potion of health. */ DO ~TakePartyItemNum("POTN17",1) UseItem("Potn17",Myself)~ EXTERN L#FouP HealHim001
IF~~THEN REPLY @187 /* I'm sorry... (leave him) */ EXTERN L#FouP HealHim002

CHAIN L#FouP HealHim001
@188 /* (Foundling takes a sudden breath and starts to move.) */
DO ~SetGlobal("L#FouPlot","GLOBAL",27)~ EXIT

CHAIN L#FouP HealHim002
@189 /* (Foundling's breath becomes more and more shallow and, in a short time, he passes away.) */
DO ~SetGlobal("L#FouPlot","GLOBAL",75) Kill("L#Fou")~ EXIT

///////////////////////////////////
////////TALK 17 - REJOIN Q/////////
///////////////////////////////////

CHAIN IF ~Global("L#FouPlot","GLOBAL",28)~ THEN L#FouP WhatHappenedTalk000
@190 /* It's... it's you? */ 
END
IF~~THEN REPLY @191 /* And who else could it be? */ EXTERN L#FouP WhatHappenedTalk001
IF~~THEN REPLY @192 /* Are you well? I must admit that I thought you wouldn't come back. I thought... you would die with him. */ EXTERN L#FouP WhatHappenedTalk002
IF~~THEN REPLY @193 /* You idiot! I thought you knew him well enough to predict something like that! */ EXTERN L#FouP WhatHappenedTalk002
IF~~THEN REPLY @194 /* Stay back--is it you, Foundling? Don't lie! I can smell lies! */ EXTERN L#FouP WhatHappenedTalk003

CHAIN L#FouP WhatHappenedTalk002
@195 /* 'Him'...? */
EXTERN L#FouP WhatHappenedTalk004

CHAIN L#FouP WhatHappenedTalk003
@196 /* What... what are you doing? */
EXTERN L#FouP WhatHappenedTalk004

CHAIN L#FouP WhatHappenedTalk001
@197 /* I'm... not sure. */
EXTERN L#FouP WhatHappenedTalk004

CHAIN L#FouP WhatHappenedTalk004
@198 /* What happened? */
END
IF~~THEN REPLY @199 /* He found a way to control you, but now he's dead. You're free. */ EXTERN L#FouP WhatHappenedTalk005
IF~~THEN REPLY @200 /* After you summoned the link and hit it, he hatched. The Shadow Dragon. He... controlled you. He was 'sleeping' inside you. He modified the ritual and used it as a door to his return. He almost won. Almost. 'Cause he's dead now. */ EXTERN L#FouP WhatHappenedTalk005
IF~~THEN REPLY @201 /* Actually, I'm not sure what happened myself. It seems that all of this was your Master's trick. But we're done with him. */ EXTERN L#FouP WhatHappenedTalk005

CHAIN L#FouP WhatHappenedTalk005
@202 /* You're lying... */
==Imoen2J IF ~InParty("Imoen2") !StateCheck("Imoen2",CD_STATE_NOTVALID)~ THEN @203 /* I'm not surprised he can't believe in something like that. Even I can barely believe it and I was there. */
==MazzyJ IF ~InParty("Mazzy") !StateCheck("Mazzy",CD_STATE_NOTVALID)~ THEN @204 /* It's not a lie. Creatures like dragons don't give up easily. We should have predicted that he had a second plan. */
END
IF~~THEN REPLY @205 /* No. He's dead. The curse is dispelled. And you are free. */ EXTERN L#FouP WhatHappenedTalk006
IF~~THEN REPLY @206 /* I would never joke about something like that. */ EXTERN L#FouP WhatHappenedTalk006
IF~~THEN REPLY @207 /* You got us into something really dangerous. Try it EVER again, and you're out. */ EXTERN L#FouP WhatHappenedTalk007

CHAIN L#FouP WhatHappenedTalk006
@208 /* I can hardly believe that this is over. I wanted this to happen but now... now it's... it just feels peculiar. */
EXTERN L#FouP WhatHappenedTalk008

CHAIN L#FouP WhatHappenedTalk007
@209 /* I think you knew what you were getting into. As for me, being... free... I wanted this to happen but now... now it's... it just feels peculiar. */
EXTERN L#FouP WhatHappenedTalk008

CHAIN L#FouP WhatHappenedTalk008
@210 /* Hmm...(seems troubled, looks around and then again at you.) */  // I don't think you need the action text here (T1)
==L#FouP @211 /* And... that's it? */
END
IF~~THEN REPLY @212 /* I guess so. Gods, you seem really confused. */ EXTERN L#FouP WhatHappenedTalk009
IF~~THEN REPLY @213 /* I thought you would be more excited about freedom. */ EXTERN L#FouP WhatHappenedTalk010
IF~~THEN REPLY @214 /* And what else should happen? Sorry if you expected some fireworks. */ EXTERN L#FouP WhatHappenedTalk011
IF~~THEN REPLY @215 /* Are you here? You seem absent. */ EXTERN L#FouP WhatHappenedTalk009

CHAIN L#FouP WhatHappenedTalk009
@216 /* It's nothing. I just feel... no difference. */
EXTERN L#FouP WhatHappenedTalk012

CHAIN L#FouP WhatHappenedTalk010
@217 /* But I feel no difference. And... that's it. */
EXTERN L#FouP WhatHappenedTalk012

CHAIN L#FouP WhatHappenedTalk011
@218 /* No. I just expected some feelings. I expected *something*, but I feel no difference. */
EXTERN L#FouP WhatHappenedTalk012

CHAIN L#FouP WhatHappenedTalk012
@219 /* I suppose it should be like that. I suppose this is normality, and it's really... normal. */
==CerndJ IF ~InParty("Cernd") !StateCheck("Cernd",CD_STATE_NOTVALID)~ THEN @220 /* Even though the curse is over, I can see that you still lack the balance. */
END
IF~~THEN REPLY @221 /* I think you'll feel the difference eventually. It may take some time. */ EXTERN L#FouP WhatHappenedTalk013
IF~~THEN REPLY @222 /* Disappointed, yes? You'll get used to it. */ EXTERN L#FouP WhatHappenedTalk013

CHAIN L#FouP WhatHappenedTalk013
@223 /* Hmm, I suppose that's the end then. */
END
IF~~THEN REPLY @224 /* Do I hear 'thank you'? Because I should. */ EXTERN L#FouP WhatHappenedTalk014
IF~~THEN REPLY @225 /* Yes, it is. */ EXTERN L#FouP WhatHappenedTalk015
IF~~THEN REPLY @226 /* I understand that it's bizarre, that even though everything seems the same, the 'shadow' over your head is over. */ EXTERN L#FouP WhatHappenedTalk016
IF~~THEN REPLY @227 /* Whatever. */ EXTERN L#FouP WhatHappenedTalk017

CHAIN L#FouP WhatHappenedTalk014
@228 /* (He looks at you silently.) */
==AnomenJ IF ~InParty("Anomen") !StateCheck("Anomen",CD_STATE_NOTVALID)~ THEN @229 /* We risked our life for you. We deserve to hear it. */
==NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @230 /* I don't think we should force him to thank us. */
==KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @231 /* Those are just words. We shouldn't do something just to hear them, but because we *should* do it. */
==HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @232 /* It seems the rook lost his voice just in time to disappoint our raven! Ha! */
==L#FouP @233 /* I thought we helped each other as both of us could have benefits from that. But if that's what you expect: thank you. */
EXTERN L#FouP WhatHappenedTalk018

CHAIN L#FouP WhatHappenedTalk015
@234 /* I see. */
EXTERN L#FouP WhatHappenedTalk018

CHAIN L#FouP WhatHappenedTalk016
@235 /* What a speech. Rather pompous. But I understand what you meant. */
EXTERN L#FouP WhatHappenedTalk018

CHAIN L#FouP WhatHappenedTalk017
@236 /* Indeed: whatever. */
EXTERN L#FouP WhatHappenedTalk018

CHAIN L#FouP WhatHappenedTalk018
@237 /* As we're done, I need to ask you. Do you want me to stay? Most would tell me to leave and I understand if I am to do so. That would be rather logical of you. Although, if you want me to stay and follow you, I can do so. You aided me. I have a debt. */
==AerieJ IF ~InParty("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @238 /* He... he may seem cold, but I thought he would be worse. If--if you want him to stay, it's fine with me. */
==MazzyJ IF ~InParty("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @239 /* He didn't betray us, after all. The decision is yours. */
==MinscJ IF ~InParty("minsc") !StateCheck("minsc",CD_STATE_NOTVALID)~ THEN @240 /* We have seen that Foundling can kick some butts! Boo and Minsc trust him, right Boo? */
== MinscJ  IF ~InParty("Minsc") !StateCheck("Minsc",CD_STATE_NOTVALID)~ THEN  @27 /* (Boo) *Squeak!* */ 
==NaliaJ IF ~InParty("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @241 /* I'm not sure if I trust him, but he might be helpful in your quest, <CHARNAME>. Why shouldn't we let him be grateful for your help? He deserves that chance. */
==JanJ IF ~InParty("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @242 /* Oh, I think he should stay! He must know many many many many many interesting stories and we Jansens love good stories. */
==HaerdaJ IF ~InParty("haerdalis") !StateCheck("haerdalis",CD_STATE_NOTVALID)~ THEN @243 /* This rook seems to flavor our adventuring with some... unexpectedness. Why shouldn't we let this continue, my raven? */
==YoshJ IF ~InParty("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @244 /* As far as we should keep an eye on him, this one here may aid us on our way to Irenicus and your Imoen. It may be wise to let him go with us. */
==AnomenJ IF ~InParty("anomen") !StateCheck("anomen",CD_STATE_NOTVALID)~ THEN @245 /* Gods, you're not considering it, are you? This is madness. He was with the Shade Lord! He can control dark magic! */
==KeldorJ IF ~InParty("keldorn") !StateCheck("keldorn",CD_STATE_NOTVALID)~ THEN @246 /* Do as you believe, <CHARNAME>. */
==ValygarJ IF ~InParty("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @247 /* We should leave him. We don't need him and his dark magic. */
==ViconiJ IF ~InParty("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @248 /* He is pathetic, but on the other hand, he can use the Shadow Weave. I must admit, it intrigues me. */
==KorganJ IF ~InParty("korgan") !StateCheck("korgan",CD_STATE_NOTVALID)~ THEN @249 /* Pff! Ye shoul' let th' boy go! He can' even hold 'n exe! */
==JaheiraJ IF ~InParty("jaheira") !StateCheck("jaheira",CD_STATE_NOTVALID)~ THEN @250 /* It's your team, <CHARNAME>. You decide. */
END
IF~~THEN REPLY @251 /* Stay. I may need you here. */ EXTERN L#FouP WhatHappenedTalk019
IF~~THEN REPLY @252 /* I don't want you in my team anymore. You're free, so go. */ EXTERN L#FouP WhatHappenedTalk020

CHAIN L#FouP WhatHappenedTalk019
@253 /* Seriously? */
==L#FouP @254 /* I will. You really... surprised me. */
DO ~SetGlobal("L#FouPlot","GLOBAL",29) JoinParty()~ EXIT

CHAIN L#FouP WhatHappenedTalk020
@255 /* I understand. I wish you and your friends well. */
DO ~SetGlobal("L#FouPlot","GLOBAL",85) EscapeArea()~ EXIT

///////////////////
/////KICK OUT//////
///////////////////

//not solved

CHAIN IF ~Global("L#FouJoined","LOCALS",1) GlobalLT("L#FouPlot","GLOBAL",30)~ THEN L#FouP KickOut000
@256 /* I think there are issues we must solve.  If you don't want to help me, I can't just stay here and wait.  It's too important. */
== BEDWIN IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @257 /* Oh, just illuminate this fool and let us move on! (We will do much better without this worthless monkey.) */
END
IF~~THEN REPLY @258 /* I'm sorry, Foundling, but you should go your own way. Farewell. */ EXTERN L#FouP KickOut001
IF~~THEN REPLY @259 /* I think you misunderstood me. I didn't mean to tell you to leave. */ EXTERN L#FouP KickOut002

CHAIN L#FouP KickOut001
@260 /* We won't meet again, then. */
DO ~SetGlobal("L#FouJoined","LOCALS",0) EscapeArea()~ EXIT

CHAIN L#FouP KickOut002
@261 /* I understand. We should move on, then. */
DO ~JoinParty()~ EXIT


//solved

CHAIN IF ~Global("L#FouJoined","LOCALS",1) GlobalGT("L#FouPlot","GLOBAL",29)~ THEN L#FouP KickOutS000
@262 /* I'm not sure if your calculations and predictions are correct--I am sure I may still be of use. You are the leader, but I think you should think it over. */ 
END
IF~~THEN REPLY @263 /* Sorry, but I believe you should leave. For now. I may need you again in a while. */ EXTERN L#FouP KickOutS001
IF~~THEN REPLY @264 /* You may be right. I need you right here. Get back in formation. */ EXTERN L#FouP KickOutS002

CHAIN L#FouP KickOutS001
@265 /* Fine. I will go back to the hideout of my former master. At least there's less sun out there. */
== L#FouP @266 /* You'll find me there when it's the right time. */
DO ~SetGlobal("L#FouJoined","LOCALS",0) EscapeAreaMove("AR1402",1000,1000,6)~ EXIT

CHAIN L#FouP KickOutS002
@267 /* Sagacious decision. Now come: we should move on. */
DO ~JoinParty()~ EXIT


//Come back

CHAIN IF ~Global("L#FouJoined","LOCALS",0) GlobalGT("L#FouPlot","GLOBAL",29)~ THEN L#FouP KickOutB000
@268 /* Ah, it is you. Do you need me back? */
END
IF~~THEN REPLY @269 /* That's why I'm here. */ DO ~SetGlobal("L#FouJoined","LOCALS",1) JoinParty()~ EXIT
IF~~THEN REPLY @270 /* Sorry, but no. */ DO ~~ EXIT