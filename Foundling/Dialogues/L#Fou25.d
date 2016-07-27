BEGIN L#Fou25

//////////////////////////////
///////JOINING DIALOGUE///////
//////////////////////////////

CHAIN IF ~Global("L#FouJoinToB","GLOBAL",0) NumTimesTalkedTo(0)~ THEN L#Fou25 Join000
@1 /* It is you.  I thought you wouldn't need my help. */ 
==EDWIN25J IF ~InParty("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @2 /* Oh, gathering a team of worthless baboons?  If so, then this one is the *best* choices. (He will cause nothing more than pointless struggle.) */
==MAZZY25J IF ~InParty("MAZZY") !StateCheck("MAZZY",CD_STATE_NOTVALID)~ THEN @3 /* Foundling?  Are you sure it's the best choice, <CHARNAME>? */
==HAERD25J IF ~InParty("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @4 /* Ah, it seems your raven is to let the predator into the nest!  That can add nothing but more spice. */
END
IF~~THEN REPLY @5 /* It's good to see you again, Foundling. */ EXTERN L#Fou25 Join001
IF~~THEN REPLY @6 /* A mistake.  I don't need you back.  Stand over there for a while. */ EXTERN L#Fou25 Join002

CHAIN L#Fou25 Join001
@7 /* So, you're back here?  I thought you would never come back to Hell.  Is it because of Irenicus?  Is he back? */
END
IF~~THEN REPLY @8 /* No.  It's something else.  And that's why I need the aid of a powerful mage like you.  With your magic, we'll be able to surprise them. */ EXTERN L#Fou25 Join003
IF~~THEN REPLY @9 /* Uhm, you know... I think I made a mistake.  Wait for me, then I'll let you join again. */ EXTERN L#Fou25 Join002

CHAIN L#Fou25 Join003
@10 /* Sagacious, but who are "they"? */
END
IF~~THEN REPLY @11 /* Other Bhaalspawn, I'm afraid. */ EXTERN L#Fou25 Join004
IF~~THEN REPLY @12 /* It would be easier if I knew. */ EXTERN L#Fou25 Join004
IF~~THEN REPLY @13 /* I--you know, maybe I was wrong.  Stand over there until I need you. */ EXTERN L#Fou25 Join002

CHAIN L#Fou25 Join004
@14 /* There are many questions.  I suppose everything will be more clear once I join. */
DO ~SetGlobal("L#FouJoinToB","GLOBAL",1) JoinParty()~ EXIT

CHAIN L#Fou25 Join002
@15 /* Don't ask me to wait for too long. */
DO ~~ EXIT

//back

CHAIN IF ~Global("L#FouJoinToB","GLOBAL",0)~ THEN L#Fou25 Join00B
@16 /* So? Do you want me to join? */
END
IF~~THEN REPLY @17 /* Yes.  I need your help to win with them. */ EXTERN L#Fou25 Join003
IF~~THEN REPLY @18 /* No. Wait until I'm back. */ EXTERN L#Fou25 Join002

/////////////////////////////////////
/////////////////////////////////////

BEGIN L#Fou25P

CHAIN IF ~Global("L#FouJoinToB","GLOBAL",1)~ THEN L#Fou25P Kick000
@19 /* You're done with me?  I would rather stay to make sure everything we did until now won't become a waste of time. */
END
IF~~THEN REPLY @20 /* You need to wait here.  Sorry. */ EXTERN L#Fou25P Kick001
IF~~THEN REPLY @21 /* I think you're right - you should stay. */ EXTERN L#Fou25P Kick002

CHAIN L#Fou25P Kick001
@22 /* Just make sure the work is done. */
DO ~SetGlobal("L#FouJoinToB","GLOBAL",0)~ EXIT

CHAIN L#Fou25P Kick002
@23 /* Good. */
DO ~JoinParty()~ EXIT


//back

CHAIN IF ~Global("L#FouJoinToB","GLOBAL",0)~ THEN L#Fou25P KickB00
@24 /* Do you need me back? */
END
IF~~THEN REPLY @25 /* Yes.  Welcome back. */ DO ~SetGlobal("L#FouJoinToB","GLOBAL",1) JoinParty()~ EXIT
IF~~THEN REPLY @26 /* No, not yet. */ EXIT