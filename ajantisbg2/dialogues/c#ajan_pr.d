/////////////////////////////////////////////////////////////////////////////////
//+C#Ajan
////////////////////////////////////////////////////////////////////////////////
/*Warning: This is the most horrible ordered .d-file I ever coded. Trying to read through the dialogues requires an editor with a search function. */

//f r PID: Global("C#AjantisVerbittert","GLOBAL",1)

//Global("C#AjantisQuestErschaffen","GLOBAL",1) : Begr  ung in Firkraags Enklave
//GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0): Tempel des Oghma (Quest wurde  bersprungen)

BEGIN C#KNIG01
BEGIN C#KNIG02
BEGIN C#KNIG03
BEGIN C#KNIG04


BEGIN ~C#Ajan~

//Global("C#TalkedToAjantis","GLOBAL",1)


/*
//--debug
IF ~True()~ THEN direktaufnahme
SAY ~I shall gladly join you.~
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
RealSetGlobalTimer("C#AjantisFriendTalkT","GLOBAL",300)
    SetGlobal("C#AjantisFriendTalk","GLOBAL",1)
SetGlobal("C#AjantisExistiert","GLOBAL",1)
JoinParty()~ EXIT
END
//-----
*/

IF ~~ THEN ajantis_direktentstehung_nr
SAY @0
++ @1 + ajantis_direktentstehung_nr_01
++ @2 + ajantis_direktentstehung_nr_01
++ @3 + ajantis_direktentstehung_nr_01 
END

IF ~~ THEN ajantis_direktentstehung_nr_01
SAY @4
++ @5 + ajantis_direktentstehung_nr_02
++ @6 + ajantis_direktentstehung_nr_02
++ @7 + ajantis_direktentstehung_nr_02
++ @8 + ajantis_direktentstehung_nr_02
END

IF ~~ THEN ajantis_direktentstehung_nr_02
SAY @9
++ @10 + ajantis_direktentstehung_nr_03
++ @11 + ajantis_direktentstehung_nr_03
END

IF ~~ THEN ajantis_direktentstehung_nr_03
SAY @12
= @13
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#TalkedToAjantis","GLOBAL",1) EraseJournalEntry(@10000)
EraseJournalEntry(@10001)
EraseJournalEntry(@10002)
EraseJournalEntry(@10011)
EraseJournalEntry(@10012)
EraseJournalEntry(@10013)
EraseJournalEntry(@10014)
EraseJournalEntry(@10015)
EraseJournalEntry(@10016)
EraseJournalEntry(@10017)
EraseJournalEntry(@10018)
EraseJournalEntry(@10019)
EraseJournalEntry(@10020)
EraseJournalEntry(@10021)
ActionOverride("C#KNIG01",EscapeAreaMove("AR0903",1730,825,0))
ActionOverride("C#KNIG02",EscapeArea())
ActionOverride("C#KNIG03",EscapeArea())
ActionOverride("C#KNIG04",EscapeArea())~
SOLVED_JOURNAL @10024 + welcome_chain
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#TalkedToAjantis","GLOBAL",1) 
EraseJournalEntry(@10000)
EraseJournalEntry(@10001)
EraseJournalEntry(@10002)
EraseJournalEntry(@10011)
EraseJournalEntry(@10012)
EraseJournalEntry(@10013)
EraseJournalEntry(@10014)
EraseJournalEntry(@10015)
EraseJournalEntry(@10016)
EraseJournalEntry(@10017)
EraseJournalEntry(@10018)
EraseJournalEntry(@10019)
EraseJournalEntry(@10020)
EraseJournalEntry(@10021)
ActionOverride("C#KNIG01",EscapeAreaMove("AR0903",1730,825,0))
ActionOverride("C#KNIG02",EscapeArea())
ActionOverride("C#KNIG03",EscapeArea())
ActionOverride("C#KNIG04",EscapeArea())~
SOLVED_JOURNAL @10024 + welcome_chain_rom
END


IF ~~ THEN BEGIN firkraagdead
SAY @14 
+ ~!Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @15 + firstmeeting_4a
+ ~Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @15 + firstmeeting_4b
+ ~Global("C#ReportFirkrTodOhneAjantis","GLOBAL",1)~ + @16 + firkraagdead_reported
+ ~!Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @17 + firstmeeting_4a
+ ~Alignment(Player1,MASK_EVIL) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @17 + firstmeeting_4b
END 

IF ~~ THEN BEGIN firkraagdead_reported
SAY @18
IF ~!Alignment(Player1,MASK_EVIL)~ THEN + firstmeeting_4a
IF ~Alignment(Player1,MASK_EVIL)~ THEN + firstmeeting_4b
END

IF ~~ THEN BEGIN firkraag_notdead
SAY @19 
IF ~~ THEN GOTO firstmeeting_3
END 

IF ~~ THEN BEGIN firkraag_notdead_enemy
SAY @20 
++ @21 + enemy
++ @22 + enemy
END 

IF ~~ THEN BEGIN enemy
SAY @23
IF ~~ THEN DO ~SetGlobal("TempleShout0903","GLOBAL",1) Enemy() Attack(Player1) 
ActionOverride("C#KNIG01",Enemy()) 
ActionOverride("C#KNIG02",Enemy()) 
ActionOverride("C#KNIG03",Enemy()) 
ActionOverride("C#KNIG04",Enemy())
ActionOverride("C#KNIG01",Attack(Player1))
ActionOverride("C#KNIG02",Attack(Player1))
ActionOverride("C#KNIG03",Attack(Player1))
ActionOverride("C#KNIG04",Attack(Player1))~ EXIT
END

IF ~~ THEN BEGIN firstmeeting_3
SAY @24
IF ~!Alignment(Player1, MASK_EVIL)~ THEN + firstmeeting_3a
IF ~Alignment(Player1, MASK_EVIL)~ THEN + firstmeeting_3b
END

IF ~~ THEN BEGIN firstmeeting_3a
SAY @25
+ ~!Dead("firkra02")~+ @26 DO ~SetGlobal("C#AjantisFirkraagWarten","GLOBAL",1)~ + firkraag_warten
+ ~!Dead("firkra02") GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @27 + joined_1
+ ~!Dead("firkra02")~ + @28 + joined_2
+ ~!Dead("firkra02") GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @29 + joined_3
+ ~!Dead("firkra02")~ + @30 SOLVED_JOURNAL @10027 
+ waiting_atkatla
+ ~Dead("firkra02")~ + @31 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead
END

IF ~~ THEN BEGIN firstmeeting_3b
SAY @32
+ ~!Dead("firkra02")~+ @26 DO ~SetGlobal("C#AjantisFirkraagWarten","GLOBAL",1)~ + firkraag_warten
+ ~!Dead("firkra02") GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @27 + joined_1
+ ~!Dead("firkra02")~ + @33 + joined_2
+ ~!Dead("firkra02") GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @29 + joined_3
+ ~!Dead("firkra02")~ + @34 SOLVED_JOURNAL @10027 
+ waiting_atkatla
+ ~Dead("firkra02")~ + @31 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead
END

IF ~~ THEN firkraag_warten
SAY @35
++ @36 + firstmeeting_5
++ @37 + waiting_atkatla
END

IF ~~ THEN BEGIN firstmeeting_4a
SAY @38
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @39 + joined_1
++ @40 + joined_2
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @41 + joined_3
++ @42 + waiting_atkatla
END

IF ~~ THEN BEGIN firstmeeting_4b
SAY @43
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @39 + joined_1
++ @40 + joined_2
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @29 + joined_3
++ @34 + waiting_atkatla
END

IF ~~ THEN BEGIN firstmeeting_5
SAY @44
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @39 + joined_1
++ @40 + joined_2
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @29 + joined_3
++ @45 + waiting_atkatla
END


IF ~~ THEN BEGIN waiting_atkatla
SAY @46 
IF ~~ THEN DO ~EscapeAreaMove("AR0903",1730,400,0) SetGlobal("C#AjanDirektInDenOrden","GLOBAL",1)~ SOLVED_JOURNAL @10027 
EXIT
END

IF~~ THEN BEGIN joined_1
SAY @47 
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF~~ THEN BEGIN joined_2
SAY @48 
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF~~ THEN BEGIN joined_3
SAY @49 
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1)
JoinParty()~ EXIT
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
END


//----romance-----------------------------------------------------------

IF ~~ THEN ajantis_direktentstehung_rom
SAY @50
= @51
++ @52 + ajantis_direktentstehung_rom_01
++ @53 + ajantis_direktentstehung_rom_01
++ @54 + other_romance_01
END

IF ~~ THEN ajantis_direktentstehung_rom_om
SAY @55
= @56
++ @57 + other_romance_01
++ @58 + ajantis_direktentstehung_rom_01b
END

IF ~~ THEN other_romance_01
SAY @59
= @60
IF ~~ THEN DO ~SetGlobal("C#AjantisPCWantsRomEnd","GLOBAL",1)~ + ajantis_direktentstehung_rom_01b
END

IF ~~ THEN ajantis_direktentstehung_rom_01
SAY @61
IF ~~ THEN + ajantis_direktentstehung_rom_01b
END

IF ~~ THEN ajantis_direktentstehung_rom_01b
SAY @62
++ @63 + ajantis_direktentstehung_rom_02
++ @64 + ajantis_direktentstehung_rom_02
++ @7 + ajantis_direktentstehung_rom_02
++ @65 + ajantis_direktentstehung_rom_02
END

IF ~~ THEN ajantis_direktentstehung_rom_02
SAY @9
++ @10 + ajantis_direktentstehung_nr_03
++ @11 + ajantis_direktentstehung_nr_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisPCWantsRomEnd","GLOBAL",0) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @66 + ajantis_direktentstehung_rom_02b
END

IF ~~ THEN ajantis_direktentstehung_rom_02b
SAY @67
++ @68 + ajantis_direktentstehung_nr_03
++ @69 + ajantis_direktentstehung_nr_03
END

IF ~~ THEN wiedersehen_rom_01
SAY @70
IF ~GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0)~ THEN + wiedersehen_rom_03
IF ~Global("C#AjantisQuestErschaffen","GLOBAL",1)~ THEN + quest_rom_03
END

IF ~~ THEN wiedersehen_rom_02
SAY @71
IF ~GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0)~ THEN + wiedersehen_rom_03
IF ~Global("C#AjantisQuestErschaffen","GLOBAL",1)~ THEN + quest_rom_03
END

IF ~~ THEN wiedersehen_rom_03
SAY @72
+ ~Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @73 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead_rom
+ ~Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @74 + firkraag_notdead_rom
+ ~OR(2)
Global("Firmag01Move","GLOBAL",0)
Global("Kidnap","GLOBAL",3)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @75 + garrenkind
+ ~OR(3)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @76 + firkraag_enemy_rom
+ ~!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @77 + firstmeeting_rom_04
+ ~!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @78 + firstmeeting_rom_05
END

IF ~~ THEN wiedersehen_rom_04
SAY @79
IF ~GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0)~ THEN + wiedersehen_rom_03
IF ~Global("C#AjantisQuestErschaffen","GLOBAL",1)~ THEN + quest_rom_03
END

IF ~~ THEN wiedersehen_rom_05
SAY @80
IF ~GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0)~ THEN + wiedersehen_rom_03
IF ~Global("C#AjantisQuestErschaffen","GLOBAL",1)~ THEN + quest_rom_03
END

IF ~~ THEN quest_rom_03
SAY @81
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",0)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @82 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead_rom
+ ~Global("C#AjantisPCKilledFirkraag","GLOBAL",1)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @83 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead_rom_quest
+ ~Global("C#AjantisPCSawFirkraag","GLOBAL",0)
Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @74 + firkraag_notdead_rom
+ ~Global("C#AjantisPCSawFirkraag","GLOBAL",1)
Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @84 + firkraag_notdead_rom_quest
+ ~OR(2)
Global("Firmag01Move","GLOBAL",0)
Global("Kidnap","GLOBAL",3)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @75 + garrenkind
+ ~OR(3)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @76 + firkraag_enemy_rom
+ ~!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @77 + firstmeeting_rom_04
+ ~!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @78 + firstmeeting_rom_05
END

IF ~~ THEN BEGIN firkraagdead_rom
SAY @85 
+ ~Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @86 + firstmeeting_rom_02
+ ~Global("C#ReportFirkrTodOhneAjantis","GLOBAL",1)~ + @87 + firkraagdead_reported_rom
+ ~Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @17 + firstmeeting_rom_01
END 

IF ~~ THEN BEGIN firkraagdead_rom_quest
SAY @88 
+ ~Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @86 + firstmeeting_rom_02
+ ~Global("C#ReportFirkrTodOhneAjantis","GLOBAL",1)~ + @87 + firkraagdead_reported_rom
+ ~Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @17 + firstmeeting_rom_01
END 

IF ~~ THEN BEGIN firkraagdead_reported_rom
SAY @89
IF ~~ THEN + firstmeeting_rom_02
END

IF ~~ THEN BEGIN firkraag_notdead_rom
SAY @90 
IF ~~ THEN + firstmeeting_rom_02
END 

IF ~~ THEN BEGIN firkraag_notdead_rom_quest
SAY @91 
IF ~~ THEN + firstmeeting_rom_02
END 

IF ~~ THEN garrenkind
SAY @92
IF ~~ THEN + firstmeeting_rom_02
END

IF ~~ THEN BEGIN firstmeeting_rom_01
SAY @93
IF ~~ THEN + firstmeeting_rom_02
END

IF ~~ THEN BEGIN firstmeeting_rom_02
SAY @94
+ ~!Dead("firkra02")~ + @95 DO ~SetGlobal("C#AjantisFirkraagWarten","GLOBAL",1)~ + firstmeeting_rom_03
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @96 + joined_rom_01
++ @97 + joined_rom_02
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @98 + joined_rom_03
++ @99 + waiting_atkatla_rom
END

IF ~~ THEN BEGIN firstmeeting_rom_03
SAY @100
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @96 + joined_rom_01
++ @97 + joined_rom_02
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @98 + joined_rom_03
++ @99 + waiting_atkatla_rom
END

IF ~~ THEN BEGIN firstmeeting_rom_04
SAY @101 
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
END

IF ~~ THEN BEGIN firstmeeting_rom_05
SAY @102
++ @103 + firstmeeting_rom_02
++ @104 + firstmeeting_rom_06
END

IF ~~ THEN BEGIN firstmeeting_rom_06
SAY @105
++ @106 + firstmeeting_rom_02
++ @107 DO ~SetGlobal("C#AjantisVerbittert","GLOBAL",1)~ + waiting_atkatla_rom
END

IF ~~ THEN BEGIN waiting_atkatla_rom
SAY @108 
IF ~~ THEN DO ~EscapeAreaMove("AR0903",1730,400,0) SetGlobal("C#AjanDirektInDenOrden","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN joined_rom_01
SAY @109 
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN joined_rom_02
SAY @110 
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN joined_rom_03
SAY @111 
IF ~Dead("firkra02")~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisJoined","GLOBAL",1) JoinParty()~ EXIT
IF ~!Dead("firkra02")~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN firkraag_enemy_rom
SAY @20 
++ @112 + enemy_rom
++ @22 + enemy_rom
END 

IF ~~ THEN BEGIN enemy_rom
SAY @113
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("TempleShout0903","GLOBAL",1) Enemy() Attack(Player1) 
ActionOverride("C#KNIG01",Enemy()) 
ActionOverride("C#KNIG02",Enemy()) 
ActionOverride("C#KNIG03",Enemy()) 
ActionOverride("C#KNIG04",Enemy())
ActionOverride("C#KNIG01",Attack(Player1))
ActionOverride("C#KNIG02",Attack(Player1))
ActionOverride("C#KNIG03",Attack(Player1))
ActionOverride("C#KNIG04",Attack(Player1))~ EXIT
END






//---------------------------------------------------------
CHAIN 
IF ~Global("C#AjantisDirektErschaffen","GLOBAL",1)~ THEN C#Ajan direktentstehung_chain
@114 DO ~SetGlobal("C#AjantisDirektErschaffen","GLOBAL",2)~ 
== C#KNIG01 @115 
== C#KNIG02 @116
END
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",0) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
~ THEN EXTERN C#Ajan ajantis_direktentstehung_nr
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",1) 
Global("C#AjantisRomanceActive","GLOBAL",2)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN EXTERN C#Ajan ajantis_direktentstehung_rom
IF ~Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisPCBrokeRomance","GLOBAL",1)~ THEN EXTERN C#Ajan ajantis_direktentstehung_rom_om


CHAIN C#Ajan welcome_chain
@117 
== KELDORJ IF ~InParty("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID) InMyArea("KELDORN") Global("C#AjantisKeldornWelcome","GLOBAL",0)~ THEN @118 
== C#Ajan IF ~InParty("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID) InMyArea("KELDORN") Global("C#AjantisKeldornWelcome","GLOBAL",0)~ THEN @119 DO ~SetGlobal("C#AjantisKeldornWelcome","GLOBAL",1)~ 
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") Global("C#AjantisAnomenWelcome","GLOBAL",0) !StateCheck("ANOMEN",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @120 DO ~SetGlobal("C#AjantisAnomenWelcome","GLOBAL",1)~
END
IF ~~ THEN + welcome_chain_extention

APPEND C#Ajan

IF ~~ THEN welcome_chain_extention
SAY @121
+ ~Global("FirkraagDeal","GLOBAL",0)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @122 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead
+ ~Global("FirkraagDeal","GLOBAL",0)
Global("Firmag01Move","GLOBAL",1)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @123 + firkraag_notdead
+ ~Global("FirkraagDeal","GLOBAL",0)
OR(2)
Global("Firmag01Move","GLOBAL",0)
Global("Kidnap","GLOBAL",3)
!Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")~ + @124 + firstmeeting_3
+ ~OR(4)
Global("FirkraagDeal","GLOBAL",1)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @76 + firkraag_notdead_enemy
+ ~Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @125 + firstmeeting_3
+ ~Global("FirkraagDeal","GLOBAL",0)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @126 + firstmeeting_3
END
END


CHAIN C#Ajan welcome_chain_rom
@117 
== KELDORJ IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID) Global("C#AjantisKeldornWelcome","GLOBAL",0)~ THEN @118 
== C#Ajan IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID) Global("C#AjantisKeldornWelcome","GLOBAL",0)~ THEN @119 DO ~SetGlobal("C#AjantisKeldornWelcome","GLOBAL",1)~
== ANOMENJ IF ~InParty("ANOMEN") InMyArea("ANOMEN") Global("C#AjantisAnomenWelcome","GLOBAL",0) !StateCheck("ANOMEN",CD_STATE_NOTVALID) !Global("AnomenIsNotKnight","GLOBAL",1)~ THEN @127  DO ~SetGlobal("C#AjantisAnomenWelcome","GLOBAL",1)~
== C#Ajan @128
END
IF ~Global("C#AjantisPCWantsRomEnd","GLOBAL",1)~ THEN + rom_end
+ ~Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @129 + wiedersehen_rom_01
+ ~Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @130 + wiedersehen_rom_02
+ ~Global("C#AjantisPCWantsRomEnd","GLOBAL",0)~ + @131 DO ~SetGlobal("C#AjantisRitterinnenAjan","GLOBAL",1)~ + wiedersehen_rom_04
++ @132 + rom_end_01

APPEND C#Ajan
IF ~~ THEN rom_end
SAY @133
++ @134 + wiedersehen_rom_02
++ @135 + rom_end_02
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + wiedersehen_rom_05
END

IF ~~ THEN rom_end_01
SAY @137
++ @138 + wiedersehen_rom_02
++ @135 + rom_end_02 
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + wiedersehen_rom_05
END

IF ~~ THEN BEGIN rom_end_02
SAY @139
+ ~Global("C#AjantisRomanceActive","GLOBAL",3)~ + @140 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisPCAnomenNight","GLOBAL",2)
SetGlobal("C#AjantisPCModRomance","GLOBAL",3)
SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2)~ + rom_end_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @141 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)~ + rom_end_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @142 + wiedersehen_rom_05
++ @143 + wiedersehen_rom_02
END

IF ~~ THEN rom_end_03
SAY @144
++ @145 + rom_end_03b
++ @146 + rom_end_03b
++ @147 + rom_end_03b
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3)~ + @148 + wiedersehen_rom_05
++ @143 + wiedersehen_rom_02
END

IF ~~ THEN rom_end_03b
SAY @149
= @150
IF ~Global("C#AjantisDirektErschaffen","GLOBAL",1)~ THEN + welcome_chain_extention
IF ~Global("C#AjantisQuestErschaffen","GLOBAL",1)~ THEN + ajan_01
END


END
//----------------------------------------------------------
//Wiedertreffen (ohne Ajantis aufgenommen zu haben)



APPEND C#Ajan

//Ajantis knows of other PC love (engaged path)


IF ~Global("C#TalkedToAjantis","GLOBAL",1)
GlobalTimerExpired("C#AjantisKnowsPCLoveT","GLOBAL")
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisBrokenRomanceP","GLOBAL",0)~ THEN other_romance
SAY @151
IF ~Global("AnomenRomanceActive","GLOBAL",2)
OR(2)
GlobalGT("C#CheckAnomenLTGT32","GLOBAL",0) //after Anomen love night
Global("C#AjantisPCSleptWithAno","GLOBAL",1)
Global("C#AjantisPCAnomenRomance","GLOBAL",0)
Global("C#AjantisPCAnomenRom","GLOBAL",1)~ THEN + anomen_romance_0

IF ~OR(2)
Global("C#CheckAnomenLTGT34","GLOBAL",1) //romance proceeded 
Global("C#AjantisPCSleptWithAno","GLOBAL",1) //PC slept with Anomen
Global("C#AjantisPCAnomenRomance","GLOBAL",0) //no dialogue after Anomen loving
Global("AnomenRomanceActive","GLOBAL",3) //Anomen romance dead	Global("C#AjantisPCAnomenNight","GLOBAL",0)
Global("C#AjantisPCAnomenRom","GLOBAL",1)~ THEN + anomen_lovenight_0

IF ~Global("C#AjantisPCModRomance","GLOBAL",0)
Global("C#AjantisPCAnomenRom","GLOBAL",0)~ THEN + mod_romance_0
END

IF ~~ THEN anomen_romance_0
SAY @152
IF ~~ THEN + broken_romance_detected
END

IF ~~ THEN anomen_lovenight_0
SAY @153
IF ~~ THEN + broken_romance_detected
END

IF ~~ THEN mod_romance_0
SAY @154
IF ~~ THEN + broken_romance_detected
END

IF ~~ THEN broken_romance_detected
SAY @155
IF ~~ THEN EXIT
END

IF ~~ THEN end_engagement_0
SAY @156
= @157
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",2) 
SetGlobal("C#AjantisPCModRomance","GLOBAL",3)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
~ SOLVED_JOURNAL @10029 EXIT
END



//-----------------------------normal meeting dialogue



IF ~Global("C#TalkedToAjantis","GLOBAL",1)
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",0)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN meeting_again_01
SAY @158
+ ~Global("FirkraagDeal","GLOBAL",0)
Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")
Global("C#FirkraagErledigt","GLOBAL",0)~ + @159 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + firkraagdead_meeting_again
+ ~OR(4)
Global("FirkraagDeal","GLOBAL",1)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @160 + ma_firkraag_notdead_enemy
+ ~Global("FirkraagDeal","GLOBAL",0)
OR(2)
	!Dead("firkra02")
	Global("C#FirkraagErledigt","GLOBAL",1)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @161 + meeting_again_2
++ @162 EXIT
END


IF ~~ THEN BEGIN firkraagdead_meeting_again
SAY @163
IF ~~ THEN + meeting_again_2
END 
 
IF ~~ THEN BEGIN ma_firkraag_notdead_enemy
SAY @20 
++ @21 + ma_enemy
++ @22 + ma_enemy
END 

IF ~~ THEN BEGIN ma_enemy
SAY @164
IF ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN BEGIN meeting_again_2
SAY @165
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @166 + joined_3
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @167 + joined_1
++ @168 + joined_2
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @169 + joined_3
++ @170 EXIT
END



//-----------------------------normal meeting dialogue romance


IF ~Global("C#TalkedToAjantis","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN meeting_again_rom
SAY @171
+ ~Dead("firkra02") 
!Dead("garren")
!Dead("garkid01")
!Dead("garkid02")
Global("C#FirkraagErledigt","GLOBAL",0)~ + @172 DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1)~ + meeting_again_rom_01
+ ~OR(3)
Dead ("garren")
Dead("garkid01")
Dead("garkid02")~ + @173 + meeting_again_rom_02
+ ~OR(2)
	!Dead("firkra02")
	Global("C#FirkraagErledigt","GLOBAL",1)
!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @174 + meeting_again_rom_06
+ ~!Dead("garren") 
!Dead("garkid01")
!Dead("garkid02")~ + @175 + meeting_again_rom_04
+ ~Global("C#AjantisVerbittert","GLOBAL",1)~ + @176 + meeting_again_rom_07
END

IF ~~ THEN BEGIN meeting_again_rom_01
SAY @177
IF ~~ THEN + meeting_again_rom_05
END

IF ~~ THEN BEGIN meeting_again_rom_02
SAY @178 
++ @112 + meeting_again_rom_03
++ @22 + meeting_again_rom_03
END 

IF ~~ THEN BEGIN meeting_again_rom_03
SAY @179
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
END

IF ~~ THEN BEGIN meeting_again_rom_04
SAY @180
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN meeting_again_rom_05
SAY @181
+ ~GlobalLT("chapter","GLOBAL",%bg2_chapter_4%)~ + @27 + joined_rom_01
++ @182 + joined_rom_02
+ ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ + @183 + meeting_again_rom_06
++ @175 + meeting_again_rom_04
END

IF ~~ THEN BEGIN meeting_again_rom_06
SAY @101 
IF ~~ THEN DO ~SetGlobal("C#AjantisJoined","GLOBAL",1) 
JoinParty()~ EXIT
END

IF ~~ THEN BEGIN meeting_again_rom_07
SAY @184
IF ~~ THEN EXIT
END


END //APPEND