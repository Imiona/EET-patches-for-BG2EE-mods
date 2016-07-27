//////////////////////////////////////////////////////////
//C#AjanJ
/////////////////////////////////////////////////////////

//In C#AjantJ fehlen noch Checkvariablen!!

//Romanzenbruch für "verheiratet" fehlt noch:
//Antworten für Global("C#AjantisPCMarriage","GLOBAL",1) einfügen!

//Global("C#AjantisPCMarriage","GLOBAL",1) nach Heirat

//Global("C#AjantisVerstossen","GLOBAL",1): Wenn Ajantis von seiner Familie verstossen wird (Ajantisromanze)


//IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) einfügen

//"SOLVED_JOURNAL ~Meine Verlobung mit Ajantis" einfügen etc.

//Abgleichen: Global("C#AjantisPCGodIsHelm","GLOBAL",1), Kit(Player1,GODHELM)

//ReputationGT(PLayer1,17) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)
//OR(2) ReputationLT(PLayer1,18) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)

APPEND C#AjanJ


//Firkraag is dead

IF ~Global("C#FirkraagErledigt","GLOBAL",0) Global("C#AjantisFirkraagDead","GLOBAL",1) Dead("Firkra02") Global("C#ReportFirkraagsTod","GLOBAL",0)~ THEN BEGIN firkraag_dead
SAY @0
= @1 
IF ~~ THEN DO ~SetGlobal("C#FirkraagErledigt","GLOBAL",1) SetGlobal("C#AjantisFirkraagDead","GLOBAL",2) SetGlobal("C#KilledFirkraagWithAjantis","GLOBAL",1)~ EXIT
END

IF ~Global("C#FirkraagErledigt","GLOBAL",1) Global("C#AjantisFirkraagDead","GLOBAL",1) Dead("Firkra02") Global("C#ReportFirkraagsTod","GLOBAL",0)~ THEN BEGIN firkraag_dead
SAY @2
= @3 
IF ~~ THEN DO ~SetGlobal("C#AjantisFirkraagDead","GLOBAL",2)~ EXIT
END


//kill Firkraag 

IF ~Global("C#AjantisKillFirkraag","GLOBAL",2) 
!Dead("Firkra02")~ THEN BEGIN kill_firkraag
SAY @4 
++ @5 DO ~SetGlobal("C#AjantisKillFirkraag","GLOBAL",3)~ + kill_firkraag_01
+ ~Global("C#AjantisFirkraagWarten","GLOBAL",1)~ + @6 DO ~SetGlobal("C#AjantisKillFirkraag","GLOBAL",3)~ + kill_firkraag_02
++ @7 DO ~SetGlobal("C#AjantisKillFirkraag","GLOBAL",3)~ + kill_firkraag_01
++ @8 DO ~SetGlobal("C#AjantisKillFirkraag","GLOBAL",3)~ + kill_firkraag_01
++ @9 DO ~SetGlobal("C#AjantisKillFirkraag","GLOBAL",3)~ + kill_firkraag_02
END

IF ~~ THEN BEGIN kill_firkraag_01
SAY @10 
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN kill_firkraag_02
SAY @11 
IF ~~ THEN EXIT
END

//Garren's Kid

IF ~Global("C#Ajantis_KidnapComplain","GLOBAL",1)~ THEN garrens_kind_retten
  SAY @12
+ ~PartyHasItem("KEY09")~ + @13 DO ~SetGlobal("C#Ajantis_KidnapComplain","GLOBAL",0)~ + garrens_kind_retten_01
+ ~!PartyHasItem("KEY09")
OR(3)
AreaCheck("AR1200")
AreaCheck("AR1201")
AreaCheck("AR1202")~ + @14 DO ~SetGlobal("C#Ajantis_KidnapComplain","GLOBAL",0)~ + garrens_kind_retten_01
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1) Global("C#AjantisEngaged","GLOBAL",1)~ + @15 DO ~SetGlobal("C#Ajantis_KidnapComplain","GLOBAL",0)~ + garrens_kind_retten_01
++ @16 DO ~SetGlobal("C#Ajantis_KidnapComplain","GLOBAL",0)~ + garrens_kind_retten_01
++ @17 DO ~SetGlobal("C#Ajantis_KidnapComplain","GLOBAL",0)~ + garrens_kind_retten_02
END

IF ~~ THEN BEGIN garrens_kind_retten_01
  SAY @18 
  IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN garrens_kind_retten_02
SAY @19
IF ~~ THEN EXIT
END

//Renal Diebesgilde Stronghold

IF ~Global("C#AjantisThiefStronghold","GLOBAL",1)~ THEN renal_diebesgilde
SAY @20
++ @21 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisThiefStronghold","GLOBAL",2)~ + renal_diebesgilde_01
++ @22 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisThiefStronghold","GLOBAL",2)~ + renal_diebesgilde_02
END

IF ~~ THEN renal_diebesgilde_01
SAY @23
++ @24 + renal_diebesgilde_03
++ @25 + renal_diebesgilde_04
++ @26 + renal_diebesgilde_02
END

IF ~~ THEN renal_diebesgilde_02
SAY @27
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @28 + renal_diebesgilde_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @29 + maevar_rom_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @30 + renal_diebesgilde_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @29 + renal_diebesgilde_13
END

IF ~~ THEN renal_diebesgilde_03
SAY @31
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @28 + renal_diebesgilde_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @29 + maevar_rom_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @30 + renal_diebesgilde_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @29 + renal_diebesgilde_13
END

IF ~~ THEN renal_diebesgilde_04
SAY @32
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @33 + renal_diebesgilde_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @29 + maevar_rom_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @30 + renal_diebesgilde_05
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @29 + renal_diebesgilde_13
END

IF ~~ THEN renal_diebesgilde_05 //Verlobung
SAY @34
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + renal_diebesgilde_05a
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + renal_diebesgilde_05b
END


IF ~~ THEN renal_diebesgilde_05a //Verlobt
SAY @35
+ ~ReputationGT(Player1,12)~ + @36 + renal_diebesgilde_08
+ ~ReputationLT(Player1,13)~ + @36 + renal_diebesgilde_07
++ @37 + renal_diebesgilde_12
++ @38 + renal_diebesgilde_06
END

IF ~~ THEN renal_diebesgilde_05b //Verheiratet
SAY @39
++ @40 + renal_diebesgilde_14
++ @41 + renal_diebesgilde_13
END

IF ~~ THEN renal_diebesgilde_06
SAY @42
IF ~ReputationGT(Player1,12)~ THEN + maevar_rom_06a
IF ~ReputationLT(Player1,13)~ THEN + maevar_rom_06b
END

IF ~~ THEN renal_diebesgilde_07
SAY @43
IF ~~ THEN + maevar_rom_06a
END

IF ~~ THEN renal_diebesgilde_08
SAY @44
++ @45 + renal_diebesgilde_09
++ @46 + renal_diebesgilde_10
++ @47 + renal_diebesgilde_06
END

IF ~~ THEN renal_diebesgilde_09
SAY @48
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN renal_diebesgilde_10
SAY @49
++ @45 + renal_diebesgilde_11
++ @47 + renal_diebesgilde_06
END

IF ~~ THEN renal_diebesgilde_11
SAY @50
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN renal_diebesgilde_12
SAY @51
++ @52 + renal_diebesgilde_14
+ ~ReputationGT(Player1,12)~ + @36 + renal_diebesgilde_08
+ ~ReputationLT(Player1,13)~ + @36 + renal_diebesgilde_07
++ @38 + renal_diebesgilde_06
END

IF ~~ THEN renal_diebesgilde_13 //Trennung 
SAY @53
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN renal_diebesgilde_14 
SAY @54
+ ~Global("C#AjantisPCMarriage","GLOBAL",0) ReputationGT(Player1,9)~ + @36 + renal_diebesgilde_08
+ ~Global("C#AjantisPCMarriage","GLOBAL",0) ReputationLT(Player1,10)~ + @36 + renal_diebesgilde_07
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @55 + renal_diebesgilde_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @36 + renal_diebesgilde_13
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @55 + renal_diebesgilde_13
END


//Maevar Diebstahl Talostempel
IF ~Global("C#AjantisPCStoleForMaeVar","GLOBAL",1)
PartyHasItem("MISC4Y")~ THEN maevar_thalos
SAY @56
++ @744 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ + thalos_zusatz_01
++ @57 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ + maevar_thalos_01
++ @58 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ + maevar_thalos_03
+ ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @59 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ + maevar_thalos_04
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @59 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ + maevar_thalos_05
END

IF ~~ THEN thalos_zusatz_01
SAY @745
= @746
IF ~~ THEN DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ EXIT
END

IF ~~ THEN maevar_thalos_01
SAY @60
++ @748 + thalos_zusatz_01
++ @61 DO ~SetGlobal("C#AjantisFirstMaevarQuest1","GLOBAL",2)~ + maevar_thalos_02
++ @62 + maevar_thalos_03
+ ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @63 + maevar_thalos_04
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @63 + maevar_thalos_05
END

IF ~~ THEN maevar_thalos_02
SAY @64
IF ~~ THEN DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ EXIT
END

IF ~~ THEN maevar_thalos_03
SAY @65
++ @748 + thalos_zusatz_01
++ @66 + maevar_thalos_01
++ @67 + maevar_thalos_02
+ ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @68 + maevar_thalos_04
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @68 + maevar_thalos_05
END

IF ~~ THEN maevar_thalos_04
SAY @69
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN maevar_thalos_05
SAY @70
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @71 + maevar_thalos_02
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @72 + maevar_thalos_02
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @73 + maevar_rom_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @73 + maevar_thalos_05b
END

IF ~~ THEN maevar_thalos_05b
SAY @74
++ @75 + maevar_thalos_02 
++ @76 + renal_diebesgilde_13
END

//Maevar Diebstal Lathandertempel
//Konfliktdialod nur für RA = 2
IF ~Global("C#AjantisFirstMaevarQuestRom","GLOBAL",2)~ THEN maevar_rom
SAY @77
++ @744 DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + lathander_01
++ @78 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",3)~ + maevar_rom_02
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ + @79 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",3)~ + maevar_rom_01
++ @80 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",3)~ + maevar_rom_01
++ @81 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",3) SetGlobal("C#AjantisMaevarSchlechtesLicht","GLOBAL",1)~ + maevar_rom_07
END

IF ~~ THEN lathander_01
SAY @745
= @746
+ ~Global("C#AjantisMaevarSchlechtesLicht","GLOBAL",0)~ + @90 + lathander_02
+ ~Global("C#AjantisMaevarSchlechtesLicht","GLOBAL",0)~ + @89 + maevar_rom_04
IF ~Global("C#AjantisMaevarSchlechtesLicht","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ EXIT
END

IF ~~ THEN lathander_02
SAY @747
IF ~~ THEN DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ EXIT
END

IF ~~ THEN maevar_rom_01
SAY @82
++ @744 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + lathander_01
++ @83 + maevar_rom_02
++  @84 + maevar_rom_02
++ @81 DO ~SetGlobal("C#AjantisMaevarSchlechtesLicht","GLOBAL",1)~ + maevar_rom_07
END

IF ~~ THEN maevar_rom_02
SAY @60
++ @748 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + lathander_01
++ @85 DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ + maevar_rom_03
++ @86 + maevar_rom_05
+ ~Global("C#AjantisMaevarSchlechtesLicht","GLOBAL",0)~ + @81 DO ~SetGlobal("C#AjantisMaevarSchlechtesLicht","GLOBAL",1)~ + maevar_rom_07
END

IF ~~ THEN maevar_rom_03
SAY @87
++ @88 + maevar_rom_04
++ @89 + maevar_rom_04
+ ~Global("C#AjantisMaevarSchlechtesLicht","GLOBAL",0)~ + @90 DO ~SetGlobal("C#AjantisMaevarSchlechtesLicht","GLOBAL",1)~ + maevar_rom_07
END

IF ~~ THEN maevar_rom_04
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN maevar_rom_05
SAY @92
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @71 DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ + maevar_rom_03
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @73 + maevar_rom_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @93 DO ~SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ + maevar_rom_03
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @73 + renal_diebesgilde_13
END

IF ~~ THEN maevar_rom_06
SAY @94
IF ~ReputationGT(Player1,12)~ THEN + maevar_rom_06b
IF ~ReputationLT(Player1,13)~ THEN + maevar_rom_06a
END

IF ~~ THEN maevar_rom_06a
SAY @95
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) SetGlobal("C#AjantisReputation","GLOBAL",1)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)
~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN maevar_rom_06b
SAY @96
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN maevar_rom_07
SAY @97
++ @98 + maevar_rom_02
++ @99 + maevar_rom_08
END

IF ~~ THEN maevar_rom_08
SAY @100
++ @101 + maevar_rom_02
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @102 + maevar_rom_06
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @102 + renal_diebesgilde_13
END

IF ~Global("C#AjantisPCStoleForMaeVar","GLOBAL",1)
PartyHasItem("MISC4X")
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ THEN maevar_rom_09
SAY @103
IF ~~ THEN DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ EXIT
END

IF ~Global("C#AjantisPCStoleForMaeVar","GLOBAL",1)
PartyHasItem("MISC4X")
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisFirstMaevarQuestRom","GLOBAL",4)~ THEN maevar_rom_10
SAY @104
IF ~~ THEN DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",2)~ EXIT
END


//If Ajantis' love promised not to steal from the temple of Lathander
IF ~Global("C#AjantisPCStoleForMaeVar","GLOBAL",3)
Global("C#AjantisFirstMaevarQuestRom","GLOBAL",4)
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN maevar_rom_09a
SAY @105
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) PartyHasItem("MISC4X")~ + @106 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) PartyHasItem("MISC4Y")~ + @107 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) PartyHasItem("MISC4X")~ + @106 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13b
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) PartyHasItem("MISC4Y")~ + @107 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13b
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_10b
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @109 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_10c
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @110 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + renal_diebesgilde_13
END

//If Ajantis' love did not promise not to steal from the temple of Lathander
IF ~Global("C#AjantisKickedOut","GLOBAL",0) 
Global("C#AjantisPCStoleForMaeVar","GLOBAL",3)
!Global("C#AjantisFirstMaevarQuestRom","GLOBAL",4)
!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN maevar_rom_09b
SAY @111
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) PartyHasItem("MISC4X")~ + @106 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) PartyHasItem("MISC4Y")~ + @107 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) PartyHasItem("MISC4X")~ + @106 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13b
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%) PartyHasItem("MISC4Y")~ + @107 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_13b
++ @112 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_15
++ @109 DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)~ + maevar_rom_16
END

//PC took the Lathander statuette or the thalos necklace outside the temple (non-romance case)
IF ~Global("C#AjantisKickedOut","GLOBAL",0) 
Global("C#AjantisPCStoleForMaeVar","GLOBAL",3)
OR(3) 
Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN maevar_09c
SAY @113
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) SetGlobal("C#AjantisReputation","GLOBAL",1)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3)
SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisPCStoleForMaeVar","GLOBAL",4)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) SetGlobal("C#AjantisReputation","GLOBAL",1)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN maevar_rom_10b
SAY @114
IF ~ReputationGT(Player1,12)~ THEN + maevar_rom_06b
IF ~ReputationLT(Player1,13)~ THEN + maevar_rom_06a
END

IF ~~ THEN maevar_rom_10c
SAY @115
IF ~~ THEN + maevar_rom_10b
END

IF ~~ THEN maevar_rom_13
SAY @116
++ @117 + maevar_rom_19
++ @118 + maevar_rom_15
END

IF ~~ THEN maevar_rom_13b
SAY @119
IF ~~ THEN + maevar_rom_15 
END

IF ~~ THEN maevar_rom_15 
SAY @120
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @121 + maevar_rom_17
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @122 + maevar_rom_18
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + maevar_rom_15b
END

IF ~~ THEN maevar_rom_15b //Verheiratet
SAY @123
++ @124 + maevar_rom_19
++ @125 + renal_diebesgilde_13
END

IF ~~ THEN maevar_rom_16
SAY @115
IF ~~ THEN + maevar_rom_15
END

IF ~~ THEN maevar_rom_17
SAY @126
++ @127 + maevar_rom_19
++ @128 + maevar_rom_18
END

IF ~~ THEN maevar_rom_18
SAY @129
IF ~ReputationGT(Player1,12)~ THEN + maevar_rom_06b
IF ~ReputationLT(Player1,13)~ THEN + maevar_rom_06a
END

IF ~~ THEN maevar_rom_19
SAY @130
IF ~Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + renal_diebesgilde_13
IF ~Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + maevar_rom_18
END

////PC betritt Mae'Vars Diebesgilde mit dem Diebesgut aus dem Tempel
IF ~Global("C#AjantisKickedOut","GLOBAL",0) Global("C#AjantisWorkingForMaevar","GLOBAL",1)~ THEN working_for_maevar
SAY @131
IF ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) GlobalLT("C#AjantisNoWorkingForMaevar","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisWorkingForMaevar","GLOBAL",2)~ + working_for_maevar_01
IF ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) Global("C#AjantisNoWorkingForMaevar","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisWorkingForMaevar","GLOBAL",2)~ + working_for_maevar_01b
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisWorkingForMaevar","GLOBAL",2)~ + working_for_maevar_02
END

IF ~~ THEN working_for_maevar_01
SAY @132
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() 
EscapeAreaMove("AR0903",1730,400,9)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile()
LeaveParty() 
EscapeAreaMove("AR0903",1730,400,9)~ EXIT
END

IF ~~ THEN working_for_maevar_01b
SAY @133 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() EscapeArea()~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() EscapeArea()~ EXIT
END

IF ~~ THEN working_for_maevar_02
SAY @134
++ @135 + working_for_maevar_03
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @136 + maevar_rom_17
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @136 + renal_diebesgilde_13
END

IF ~~ THEN working_for_maevar_03
SAY @137
++ @138 + working_for_maevar_04
++ @139 + working_for_maevar_04
++ @140 + maevar_rom_16
END

IF ~~ THEN working_for_maevar_04
SAY @141
++ @127 + maevar_rom_19
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @142 + maevar_rom_18
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @143 + renal_diebesgilde_13
END
 

//Wenn der HC den Orden des Strahlenden Herzens angreift
IF ~Global("C#AjantisTempleShout","GLOBAL",1)~ THEN temple_enemy
SAY @144 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisTempleShout","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty()
Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisTempleShout","GLOBAL",2) SetGlobal("TempleShout0903","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisTempleShout","GLOBAL",2)~ + unzufrieden_angriff_01
END

//attacking of Snirvlebi (Underworld)
IF ~Global("C#AjantisSvirHostile","GLOBAL",1)~ THEN no_fighting_snirflebi
SAY @145
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisSvirHostile","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisSvirHostile","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisSvirHostile","GLOBAL",2)~ + unzufrieden_angriff_01
END

//Adalons Eier
IF ~Global("C#AjantisEggsDie","GLOBAL",1)~ THEN BEGIN verrat_unterwelt
SAY @146 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisEggsDie","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisEggsDie","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisEggsDie","GLOBAL",2)~ + unzufrieden_angriff_01
END

//Bad decision warning-------------------
/* 
First warning for:
//GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)

Attacking for:

GlobalGT("C#AjantisWarUnzufrieden","GLOBAL"5)
*/

IF ~Global("C#AjantisUnzufriedenWarnung","GLOBAL",1)~ THEN unzufrieden_warnung
SAY @147
IF ~OR(2)
!Global("C#AjantisRomanceActive","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUnzufriedenWarnung","GLOBAL",2)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUnzufriedenWarnung","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)~ EXIT
END

IF ~Global("C#AjantisUnzufriedenWarnung","GLOBAL",3)~ THEN unzufrieden_angriff
SAY @148
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisUnzufriedenWarnung","GLOBAL",4) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisUnzufriedenWarnung","GLOBAL",4) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisUnzufriedenWarnung","GLOBAL",4)~ + unzufrieden_angriff_01
END

IF ~~ THEN unzufrieden_angriff_01
SAY @149 
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
END


//Reputation-------------------------------------------------

//Ajantis recognizes low rep of a freshly joined group
IF ~Global("C#AjantisBadRepJoinTalk","GLOBAL",1) 
OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_joining 
SAY @150
IF ~~ THEN DO ~SetGlobal("C#AjantisBadRepJoinTalk","GLOBAL",2)~  EXIT
END

IF ~Global("C#AjantisBadRepJoinTalk","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_joining_rom
SAY @151
IF ~~ THEN DO ~SetGlobal("C#AjantisBadRepJoinTalk","GLOBAL",2)~  EXIT
END

//reputation below 12 - 1
IF ~RandomNum(3,1) ReputationLT(Player1,12) ReputationGT(Player1,9) Global("C#AjantisBadReputationWarning","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_warning_01
SAY @152 
IF ~~ THEN DO ~SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)~ EXIT
END

//reputation below 12 - 2
IF ~RandomNum(3,2) ReputationLT(Player1,12) ReputationGT(Player1,9) Global("C#AjantisBadReputationWarning","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_warning_02
SAY @153 
IF ~~ THEN DO ~SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)~ EXIT
END

//reputation below 12 - 3
IF ~RandomNum(3,3) ReputationLT(Player1,12) ReputationGT(Player1,9) Global("C#AjantisBadReputationWarning","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_warning_03
SAY @154 
IF ~~ THEN DO ~SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)~ EXIT
END

// reputation smaller 8 (non-romance)
IF ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) ReputationLT(Player1,8)~ THEN BEGIN Ajantis_badreputation_leave // from:
SAY @155 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

// reputation smaller 8 (romance)
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) ReputationLT(Player1,8)~ THEN BEGIN Ajantis_badreputation_leave_rom // from:
SAY @156 
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
END

// reputation smaller 10
IF ~ReputationLT(Player1,10)
Global("C#AjantisBadReputationWarning","GLOBAL",1)~ THEN BEGIN Ajantis_badreputation_warning // from:
SAY @157 
+ ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @158 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)
SetGlobal("C#AjantisReachedTen","GLOBAL",2)~ + Ajantis_badreputation_relief
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @158 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)
SetGlobal("C#AjantisReachedTen","GLOBAL",2)~ + Ajantis_badrep_loverelief
+ ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @159 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)
SetGlobal("C#AjantisReachedTen","GLOBAL",2)~ + Ajantis_badreputation_letssee
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @159 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)
SetGlobal("C#AjantisReachedTen","GLOBAL",2)~ + Ajantis_badrep_loveletssee
+ ~OR(3) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @160 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)
SetGlobal("C#AjantisReachedTen","GLOBAL",2)~ + Ajantis_badreputation_noway
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @160 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisBadReputationWarning","GLOBAL",2)
SetGlobal("C#AjantisReachedTen","GLOBAL",2)~ + Ajantis_badrep_lovenoway
END

IF ~~ THEN BEGIN Ajantis_badreputation_relief
SAY @161
IF ~~ THEN EXIT
END   

IF ~~ THEN BEGIN Ajantis_badrep_loverelief
SAY @162
IF ~~ THEN EXIT
END   

IF ~~ THEN BEGIN Ajantis_badreputation_letssee
SAY @163
IF ~~ THEN EXIT
END   

IF ~~ THEN BEGIN Ajantis_badrep_loveletssee
SAY @164
IF ~~ THEN EXIT
END  

IF ~~ THEN BEGIN Ajantis_badreputation_noway
SAY @165
IF ~~ THEN EXIT
END   

IF ~~ THEN BEGIN Ajantis_badrep_lovenoway
SAY @166 
IF ~~ THEN EXIT
END   

//Ajantis recognizes rep increase after former bad rep talk
IF ~Global("C#AjantisBadReputationIncrease","GLOBAL",1)~ THEN BEGIN Ajantis_reputation_increase
SAY @167 
IF ~~ THEN DO ~SetGlobal("C#AjantisBadReputationIncrease","GLOBAL",2)~  EXIT
END

//Ajantis good rep talk for rep >17
IF ~Global("C#AjantisGoodReputationTalk","GLOBAL",1)~ THEN BEGIN Ajantis_goodreputation_talk 
SAY @168  
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1) SetGlobal("C#AjantisGoodReputationTalk","GLOBAL",2)~  EXIT
END

//Ajantis 20 rep

IF ~Global("C#AjantisBestReputationTalk","GLOBAL",1)~ THEN BEGIN Ajantis_goodreputation_talk 
SAY @169 
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1) SetGlobal("C#AjantisBestReputationTalk","GLOBAL",2)~ EXIT
END






//Hell trials. Player1 made an evil choice. 
IF ~Global("C#AjantisHellTrialsEvil","GLOBAL",1)~ THEN hell_trial_evil
SAY @170
IF ~Alignment(Player1,MASK_EVIL)~ THEN DO ~SetGlobal("C#AjantisHellTrialsEvil","GLOBAL",2)~ + hell_trial_evil_01
IF ~!Alignment(Player1,MASK_EVIL)
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisHellTrialsEvil","GLOBAL",2)~ + hell_trial_evil_02
IF ~!Alignment(Player1,MASK_EVIL)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisHellTrialsEvil","GLOBAL",2)~ + hell_trial_evil_03
END 

IF ~~ THEN hell_trial_evil_01
SAY @171
IF ~~ THEN EXIT
END

IF ~~ THEN hell_trial_evil_02
SAY @172
IF ~~ THEN EXIT
END

IF ~~ THEN hell_trial_evil_03
SAY @837
IF ~~ THEN EXIT
END


END //APPEND


/* hell trials. The PC turned evil */

CHAIN
IF ~Global("C#AjantisHellTrialsEvil","GLOBAL",3)~ THEN C#AjanJ hell_trial_evil_change
@173 
== C#AjanJ @174
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @175
== C#AjanJ @176
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @177 
== C#AjanJ @836
END
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisHellTrialsEvil","GLOBAL",4)~ EXIT
IF ~Global("C#AjantisPCMarriage","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisHellTrialsEvil","GLOBAL",4)~ SOLVED_JOURNAL @10048 EXIT
IF ~Global("C#AjantisPCMarriage","GLOBAL",1) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisHellTrialsEvil","GLOBAL",4)~  SOLVED_JOURNAL @10048 EXIT




/* Hells trials. Player1 made only good choices. 

Global("C7OriginalAlignment","GLOBAL",2) - Quest Pack "Revised Hell Trials": PC had evil alignment
*/


APPEND C#AjanJ

IF ~Global("C#AjantisHellTrialsGood","GLOBAL",1)~ THEN hell_trials_good
SAY @178
IF ~OR(2)
Global("C7OriginalAlignment","GLOBAL",2)
Alignment(Player1,MASK_EVIL)~ THEN DO ~SetGlobal("C#AjantisHellTrialsGood","GLOBAL",2) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + hell_trial_good_01

IF ~!Global("C7OriginalAlignment","GLOBAL",2) !Alignment(Player1,MASK_EVIL)~ DO ~SetGlobal("C#AjantisHellTrialsGood","GLOBAL",2) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + hell_trial_good_02

END

IF ~~ THEN hell_trial_good_01
SAY @179
IF ~~ THEN + hell_trial_good_03
END

IF ~~ THEN hell_trial_good_02
SAY @180
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + hell_trial_good_03
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + hell_trial_good_04
END

IF ~~ THEN hell_trial_good_03
SAY @181
IF ~~ THEN EXIT
END

IF ~~ THEN hell_trial_good_04
SAY @182
IF ~~ THEN EXIT
END


//drow transformation, after Adalon's dialogue
IF ~Global("C#AjantisDrowVerwandlung","GLOBAL",1)~ THEN  unter_drow_wandeln
SAY @671
++ @662 + unter_drow_2
++ @663 + unter_drow_2
+ ~Global("C#AjantisAdalonComplain","GLOBAL",1)~ + @664 + unter_drow_4
++ @666 + unter_drow_3
END

IF ~~ THEN unter_drow_2
SAY @665
= @667
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowVerwandlung","GLOBAL",2) SetGlobalTimer("C#AjantisDrowVerwTimer","GLOBAL",800)~ EXIT
END

IF ~~ THEN unter_drow_3
SAY @668
IF ~~ THEN + unter_drow_2
END

IF ~~ THEN unter_drow_4
SAY @670
IF ~~ THEN + unter_drow_2
END


//Transformation into Drow, triggers outside of Adalon's Lair

IF ~Global("C#AjantisDrowVerwandlung","GLOBAL",3)~ THEN drowverwandlung
SAY @183
= @184
++ @185 + drowverwandlung_01
++ @186 + drowverwandlung_03
++ @187 + drowverwandlung_01
++ @188 + drowverwandlung_02
END

IF ~~ THEN drowverwandlung_01
SAY @189
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowVerwandlung","GLOBAL",4)~ EXIT
END

IF ~~ THEN drowverwandlung_02
SAY @190
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowVerwandlung","GLOBAL",4)~ EXIT
END

IF ~~ THEN drowverwandlung_03
SAY @191
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowVerwandlung","GLOBAL",4)~ EXIT
END


//The silver lady is leaving her post. Triggers shortly after the exit is open
IF ~Global("C#AjantisAdalonLeaves","GLOBAL",1)~ THEN adalon_leaves
SAY @672 
++ @704 + adalon_leaves_01
++ @705 + adalon_leaves_01
++ @706 + adalon_leaves_01
END

IF ~~ THEN adalon_leaves_01
SAY @707
= @708
++ @709 + adalon_leaves_03
++ @735 + adalon_leaves_05
++ @710 + adalon_leaves_03
++ @711 + adalon_leaves_02
END

IF ~~ THEN adalon_leaves_02
SAY @712
++ @713 + adalon_leaves_03
++ @714 + adalon_leaves_03
++ @715 + adalon_leaves_04
END

IF ~~ THEN adalon_leaves_03
SAY @716
= @717
= @718
IF ~~ THEN DO ~SetGlobal("C#AjantisAdalonLeaves","GLOBAL",2)~ EXIT
END

IF ~~ THEN adalon_leaves_04
SAY @719
IF ~~ THEN + adalon_leaves_03
END

IF ~~ THEN adalon_leaves_05
SAY @736 
IF ~~ THEN + adalon_leaves_03
END


//Drowsklaven
IF ~Global("C#AjantisDrowSklaven3","GLOBAL",2)~ THEN drow_sklaven_7b
SAY @192
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) ReputationGT(PLayer1,11) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @193 + drow_sklaven_7b_01
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) 
OR(2)
ReputationLT(PLayer1,12)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @193 + drow_sklaven_7b_05
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) 
ReputationGT(PLayer1,11)  GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @194 + drow_sklaven_7b_06
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) 
OR(2)
ReputationLT(PLayer1,12)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @195 + drow_sklaven_7b_04
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @196 + drow_sklaven_7b_02
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @197 + drow_sklaven_7b_03
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN + drow_sklaven_rom_01
END

IF ~~ THEN drow_sklaven_7b_01
SAY @198
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisDrowSklavenGeopfert","GLOBAL",2) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ EXIT
END

IF ~~ THEN drow_sklaven_7b_02
SAY @199 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN drow_sklaven_7b_03
SAY @200 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN drow_sklaven_7b_04
SAY @201 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN drow_sklaven_7b_05
SAY @202 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) !Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN drow_sklaven_7b_06
SAY @203
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisDrowSklavenGeopfert","GLOBAL",2)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ EXIT
END

IF ~~ THEN drow_sklaven_rom_01
SAY @204
++ @205 + drow_sklaven_rom_03
++ @193 + drow_sklaven_rom_02
++ @206 + drow_sklaven_rom_04
END

IF ~~ THEN drow_sklaven_rom_02
SAY @207
++ @208 + drow_sklaven_rom_03
++ @209 + drow_sklaven_rom_04
END

IF ~~ THEN drow_sklaven_rom_03
SAY @210
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisDrowSklavenGeopfert","GLOBAL",2) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ EXIT
END

IF ~~ THEN drow_sklaven_rom_04
SAY @211
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",3) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END



//Drowsklaven befreien 

IF ~Global("C#AjantisDrowSklavenBefreit","GLOBAL",1)~ THEN drow_sklaven_dialog
SAY @212
++ @213 DO ~SetGlobal("C#AjantisDrowSklavenBefreit","GLOBAL",2)~ + drow_sklaven_dialog_01
++ @214 DO ~SetGlobal("C#AjantisDrowSklavenBefreit","GLOBAL",2)~ + drow_sklaven_dialog_01
+ ~!Class(Player1,PALADIN)~ + @215 DO ~SetGlobal("C#AjantisDrowSklavenBefreit","GLOBAL",2)~ + drow_sklaven_dialog_07
+ ~Class(Player1,PALADIN)~ + @216 DO ~SetGlobal("C#AjantisDrowSklavenBefreit","GLOBAL",2)~ + drow_sklaven_dialog_08
++ @217 DO ~SetGlobal("C#AjantisDrowSklavenBefreit","GLOBAL",2)~ + drow_sklaven_dialog_15
END

IF ~~ THEN drow_sklaven_dialog_01
SAY @229
IF ~Global("DrowSlavesFree","GLOBAL",1)~ THEN + drow_sklaven_dialog_02
IF ~Global("DrowSlavesFree","GLOBAL",2)~ THEN + drow_sklaven_dialog_03
END

IF ~~ THEN drow_sklaven_dialog_02
SAY @219
IF ~OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_04
IF ~OR(2) !Global("C#AjantisRomanceActive","GLOBAL",2) !Global("C#AjantisRomanceMatch","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_05
IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisRomanceMatch","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_06
END

IF ~~ THEN drow_sklaven_dialog_03
SAY @220
IF ~OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_04
IF ~OR(2) !Global("C#AjantisRomanceActive","GLOBAL",2) !Global("C#AjantisRomanceMatch","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_05
IF ~Global("C#AjantisRomanceActive","GLOBAL",2) Global("C#AjantisRomanceMatch","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_06
END

IF ~~ THEN drow_sklaven_dialog_04
SAY @221
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_05
SAY @222
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_06
SAY @223
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_07
SAY @224
++ @225 + drow_sklaven_dialog_09
++ @226 + drow_sklaven_dialog_10
END

IF ~~ THEN drow_sklaven_dialog_08
SAY @227
++ @225 + drow_sklaven_dialog_09
++ @228 + drow_sklaven_dialog_09
END

IF ~~ THEN drow_sklaven_dialog_09
SAY @229
IF ~OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_04
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_05
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_06
END

IF ~~ THEN drow_sklaven_dialog_10
SAY @230
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_11
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_23
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_12
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_13
END

IF ~~ THEN drow_sklaven_dialog_11
SAY @231
= @232
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_12
SAY @233
= @234
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_13
SAY @235
= @234
++ @236 + drow_sklaven_dialog_04
++ @237 + drow_sklaven_dialog_22
++ @238 + drow_sklaven_dialog_14 
END

IF ~~ THEN drow_sklaven_dialog_14
SAY @239
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_15
SAY @240
+ ~Global("DrowSlavesFree","GLOBAL",1)~ + @241 + drow_sklaven_dialog_02
+ ~Global("DrowSlavesFree","GLOBAL",2)~ + @241 + drow_sklaven_dialog_03
+ ~!Class(Player1,PALADIN)~ + @242 + drow_sklaven_dialog_16
+ ~Class(Player1,PALADIN)~ + @243 + drow_sklaven_dialog_16
++ @218 + drow_sklaven_dialog_14
END

IF ~~ THEN drow_sklaven_dialog_16
SAY @224
+ ~OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @225 + drow_sklaven_dialog_04
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @225 + drow_sklaven_dialog_05
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @225 + drow_sklaven_dialog_06
+ ~Class(Player1,PALADIN)~ + @228 + drow_sklaven_dialog_21
+ ~!Class(Player1,PALADIN)~ + @226 + drow_sklaven_dialog_17
END

IF ~~ THEN drow_sklaven_dialog_17
SAY @230
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_18
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
OR(2)
ReputationLT(PLayer1,16) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ THEN + drow_sklaven_dialog_24
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_19
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
ReputationGT(PLayer1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ THEN + drow_sklaven_dialog_20
END

IF ~~ THEN drow_sklaven_dialog_18
SAY @231
= @251
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_19
SAY @252
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_20
SAY @252
++ @253 + drow_sklaven_dialog_04
++ @237 + drow_sklaven_dialog_22
++ @238 + drow_sklaven_dialog_14 
END

IF ~~ THEN drow_sklaven_dialog_21
SAY @254
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN drow_sklaven_dialog_22
SAY @255
IF ~~ THEN + drow_sklaven_dialog_21
END

IF ~~ THEN drow_sklaven_dialog_23
SAY @256
= @234
++ @236 + drow_sklaven_dialog_04
++ @237 + drow_sklaven_dialog_22
++ @238 + drow_sklaven_dialog_14 
END

IF ~~ THEN drow_sklaven_dialog_24
SAY @259
++ @253 + drow_sklaven_dialog_04
++ @237 + drow_sklaven_dialog_22
END


//Drowsklaven nicht befreit
IF ~Global("C#AjantisDrowSklaven","GLOBAL",2)~ THEN drow_sklaven_dialog2_01
SAY @260
= @261
IF ~~ THEN DO ~SetGlobal("C#AjantisDrowSklaven","GLOBAL",3)~ EXIT
END

//ReputationGT(PLayer1,17) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)
//OR(2) ReputationLT(PLayer1,18) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)

//PC hat Elgea befreit
IF ~Global("C#AjantisElgeaBefreit","GLOBAL",1)~ THEN elgea_frei
SAY @262
+ ~Alignment(Player1,MASK_GOOD) ReputationGT(PLayer1,17) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @263 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_01
+ ~Alignment(Player1,MASK_GOOD) 
ReputationLT(PLayer1,18) ReputationGT(PLayer1,12)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @263 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_02
+ ~Alignment(Player1,MASK_GOOD) 
OR(2) 
ReputationLT(PLayer1,13) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @263 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_03
++ @264 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_04
++ @265 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_05
++ @266 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_06
++ @267 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_07
++ @268 DO ~SetGlobal("C#AjantisElgeaBefreit","GLOBAL",2)~ + elgea_frei_08
END

IF ~~ THEN elgea_frei_01
SAY @269
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN elgea_frei_02
SAY @270 
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN elgea_frei_03
SAY @271
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN elgea_frei_04
SAY @272
+ ~Alignment(Player1,MASK_GOOD) ReputationGT(PLayer1,17) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @263 + elgea_frei_01
+ ~Alignment(Player1,MASK_GOOD) 
ReputationLT(PLayer1,18) ReputationGT(PLayer1,12)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @263 + elgea_frei_02
+ ~Alignment(Player1,MASK_GOOD) 
OR(2) 
ReputationLT(PLayer1,13) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @263 + elgea_frei_03
++ @273 + elgea_frei_05
++ @266 + elgea_frei_06
++ @267 + elgea_frei_07
++ @268 + elgea_frei_08
END

IF ~~ THEN elgea_frei_05
SAY @274 
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN elgea_frei_06
SAY @275 
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

IF ~~ THEN elgea_frei_07
SAY @276
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT 
END

IF ~~ THEN elgea_frei_08
SAY @277
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END

//PC hat Fürstin Elgea nicht befreit
IF ~Global("C#AjantisPCNichtElgea","GLOBAL",4)~ THEN elgea_gefangen_01
SAY @278
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",5)~ + elgea_gefangen_02
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",5)~ + elgea_gefangen_03
END

IF ~~ THEN elgea_gefangen_02
SAY @279 
IF ~~ THEN EXIT
END

IF ~~ THEN elgea_gefangen_03
SAY @280
IF ~~ THEN EXIT
END


//PC wollte Fürstin Elgea nicht befreien
IF ~Global("C#AjantisPCNichtElgea","GLOBAL",2)~ THEN elgea_befreien_01
SAY @281
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @264 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_02
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @282 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_04
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @283 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_06
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) !Class(Player1,PALADIN)~ + @284 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_07
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1) Class(Player1,PALADIN)~ + @285 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_07

+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @264 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_08
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @282 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_09
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @286 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_10
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) !Class(Player1,PALADIN)~ + @287 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_11
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) Class(Player1,PALADIN)~ + @288 DO ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + elgea_befreien_11
END

IF ~~ THEN elgea_befreien_02
SAY @289
+ ~!Global("C#AjantisPCGodIsHelm","GLOBAL",1)~ + @290 + elgea_befreien_03
++ @282 + elgea_befreien_04
++ @291 + elgea_befreien_06
++ @292 + elgea_befreien_07
END

IF ~~ THEN elgea_befreien_03
SAY @293 
++ @282 + elgea_befreien_04
++ @291 + elgea_befreien_06
++ @294 + elgea_befreien_07
END

IF ~~ THEN elgea_befreien_04
SAY @295
++ @296 EXIT
++ @297 + elgea_befreien_05
++ @298 + elgea_befreien_07
END

IF ~~ THEN elgea_befreien_05
SAY @299
++ @300 EXIT
++ @301 + elgea_befreien_07
END

IF ~~ THEN elgea_befreien_06
SAY @302
IF ~~ THEN EXIT
END

IF ~~ THEN elgea_befreien_07
SAY @303
= @304
IF ~~ THEN EXIT
END

IF ~~ THEN elgea_befreien_08
SAY @289
+ ~!Global("C#AjantisPCGodIsHelm","GLOBAL",1)~ + @290 + elgea_befreien_12
++ @305 + elgea_befreien_09
++ @291 + elgea_befreien_10
+ ~!Class(Player1,PALADIN)~ + @306 + elgea_befreien_16
+ ~Class(Player1,PALADIN)~ + @307 + elgea_befreien_13
END

IF ~~ THEN elgea_befreien_09
SAY @308
++ @309 + elgea_befreien_14
++ @310 + elgea_befreien_14
+ ~!Class(Player1,PALADIN)~ + @311 + elgea_befreien_16
+ ~Class(Player1,PALADIN)~ + @307 + elgea_befreien_14
END

IF ~~ THEN elgea_befreien_10
SAY @312 
++ @313 + elgea_befreien_13
++ @314 + elgea_befreien_11
END

IF ~~ THEN elgea_befreien_11
SAY @303
IF ~~ THEN + elgea_befreien_15
END

IF ~~ THEN elgea_befreien_12
SAY @293 
++ @305 + elgea_befreien_09
++ @291 + elgea_befreien_10
+ ~!Class(Player1,PALADIN)~ + @306 + elgea_befreien_16
+ ~Class(Player1,PALADIN)~ + @307 + elgea_befreien_13
END

IF ~~ THEN elgea_befreien_13
SAY @315
++ @316 + elgea_befreien_14
++ @310 + elgea_befreien_14
END

IF ~~ THEN elgea_befreien_14
SAY @321
IF ~~ THEN EXIT
END

IF ~~ THEN elgea_befreien_15
SAY @319
IF ~~ THEN EXIT
END

IF ~~ THEN elgea_befreien_16
SAY @320
= @321
IF ~~ THEN EXIT
END


//Sir Sarles
IF ~Global("C#LegierungsLuege","GLOBAL",2)~ THEN sir_sarles_belogen
SAY @322
++ @323 DO ~SetGlobal("C#LegierungsLuege","GLOBAL",3)~ + sir_sarles_belogen_01
++ @324  DO ~SetGlobal("C#LegierungsLuege","GLOBAL",3)~ + sir_sarles_belogen_02
++ @325 DO ~SetGlobal("C#LegierungsLuege","GLOBAL",3)~ + sir_sarles_belogen_03
++ @268 DO ~SetGlobal("C#LegierungsLuege","GLOBAL",3)~ + sir_sarles_belogen_03
END

IF ~~ THEN sir_sarles_belogen_01
SAY @326
IF ~~ THEN + sir_sarles_belogen_04
END

IF ~~ THEN sir_sarles_belogen_02
SAY @327
IF ~~ THEN + sir_sarles_belogen_04
END

IF ~~ THEN sir_sarles_belogen_03
SAY @328
IF ~~ THEN + sir_sarles_belogen_04
END

IF ~~ THEN sir_sarles_belogen_04
SAY @329
IF ~~ THEN EXIT
END

IF ~Global("C#AjantisValen","GLOBAL",2)~ THEN ajantis_valen
SAY @330 
++ @331 DO ~SetGlobal("C#AjantisValen","GLOBAL",3)~ + ajantis_valen_int_01
++ @332 DO ~SetGlobal("C#AjantisValen","GLOBAL",3)~ + ajantis_valen_int_02
++ @333  DO ~SetGlobal("C#AjantisValen","GLOBAL",3)~ + ajantis_valen_int_03
END

IF ~~ THEN ajantis_valen_int_01
SAY @334
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_valen_int_02
SAY @335
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_valen_int_03
SAY @336 
IF ~~ THEN EXIT
END


//free Mazzy from her cell
IF ~Global("C#AjantisFreeMazzy","GLOBAL",2)~ THEN mazzy_befreien
SAY @337 // Mazzy's Kameraden sind doch schon tot zu diesem Zeitpunkt
++ @338 DO ~SetGlobal("C#AjantisFreeMazzy","GLOBAL",3)~ + mazzy_befreien_01
++ @339 DO ~SetGlobal("C#AjantisFreeMazzy","GLOBAL",3)~ + mazzy_befreien_02
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @340 DO ~SetGlobal("C#AjantisFreeMazzy","GLOBAL",3)~ + mazzy_befreien_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @341 DO ~SetGlobal("C#AjantisFreeMazzy","GLOBAL",3)~ + mazzy_befreien_04
END

IF ~~ THEN mazzy_befreien_01
SAY @342
IF ~~ THEN EXIT 
END

IF ~~ THEN mazzy_befreien_02
SAY @343
IF ~~ THEN EXIT
END

IF ~~ THEN mazzy_befreien_03
SAY @344 
IF ~OR(2) Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1)
SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

IF ~~ THEN mazzy_befreien_04
SAY @345
++ @338 + mazzy_befreien_01
++ @339 + mazzy_befreien_05
++ @346 + mazzy_befreien_06
END

IF ~~ THEN mazzy_befreien_05
SAY @347
IF ~~ THEN EXIT
END

IF ~~ THEN mazzy_befreien_06
SAY @348
++ @349 + mazzy_befreien_07
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @350 + mazzy_befreien_08
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @350 + mazzy_befreien_08b
END

IF ~~ THEN mazzy_befreien_07
SAY @351
IF ~~ THEN EXIT
END

IF ~~ THEN mazzy_befreien_08
SAY @352 
++ @353 + mazzy_befreien_08a
++ @354 + mazzy_befreien_08a
++ @355 + mazzy_befreien_08a
END

IF ~~ THEN mazzy_befreien_08b
SAY @356 
++ @353 + mazzy_befreien_08bb
++ @357 + mazzy_befreien_08bb
++ @358 + mazzy_befreien_08bb
++ @359 + mazzy_befreien_07
END

IF ~~ THEN mazzy_befreien_08a
SAY @360
= @361
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() 
EscapeAreaMove("AR0903",1730,400,9)~ SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN mazzy_befreien_08bb
SAY @362
= @363
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisScheidung","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END


//Lederhautrüstung
IF ~Global("C#AjantisHautRuestung","GLOBAL",1) Global("C#SB_BlutVonAdalon","GLOBAL",1)
!Alignment (Player1,MASK_EVIL)~ THEN haut_ruestung
SAY @364
IF ~~ THEN DO ~SetGlobal("C#AjantisHautRuestung","GLOBAL",2)~ EXIT
END

IF ~Global("C#AjantisHautRuestung","GLOBAL",1) 
OR(2)
Alignment (Player1,MASK_EVIL)
Global("C#SB_BlutVonAdalon","GLOBAL",0)~ THEN haut_ruestung
SAY @365
IF ~~ THEN DO ~SetGlobal("C#AjantisHautRuestung","GLOBAL",2)~ EXIT
END

IF ~Global("C#AjantisHautRuestung","GLOBAL",3)~ THEN haut_ruestung
SAY @366
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2) !Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisHautRuestung","GLOBAL",4) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisHautRuestung","GLOBAL",4) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisHautRuestung","GLOBAL",4) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT

END

//If PC poisens the druid grove
IF ~Global("C#AjantisGrovePoisoned","GLOBAL",1)~ THEN druidenhain_vergiftet
SAY @367 
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2) !Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisGrovePoisoned","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisGrovePoisoned","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ SOLVED_JOURNAL @10041 EXIT
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisGrovePoisoned","GLOBAL",2) SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ EXIT
END

//Waukeen's Promenade, first visit
IF ~Global("C#AjantisAR0700","GLOBAL",1)~ THEN waukeen_promenade
SAY @368
++ @369 + waukeen_promenade_01
++ @370 + waukeen_promenade_01
++ @371 + waukeen_promenade_02
+ ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ + @372 + waukeen_promenade_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @268 + waukeen_promenade_03a
END

IF ~~ THEN waukeen_promenade_01
SAY @373
IF ~OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisAR0700","GLOBAL",2)~ EXIT
IF ~Global("C#AjantisGoldsmithLT","GLOBAL",0)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisAR0700","GLOBAL",2)~ + waukeen_promenade_04
IF ~Global("C#AjantisGoldsmithLT","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisAR0700","GLOBAL",2)~ + waukeen_promenade_04b
END

IF ~~ THEN waukeen_promenade_02
SAY @374
IF ~~ THEN + waukeen_promenade_01
END

IF ~~ THEN waukeen_promenade_03
SAY @375
IF ~~ THEN DO ~SetGlobal("C#AjantisAR0700","GLOBAL",2)~ EXIT
END

IF ~~ THEN waukeen_promenade_03a
SAY @376
IF ~Global("C#AjantisGoldsmithLT","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisAR0700","GLOBAL",2)~ + waukeen_promenade_04
IF ~Global("C#AjantisGoldsmithLT","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisAR0700","GLOBAL",2)~ + waukeen_promenade_04b
END

IF ~~ THEN waukeen_promenade_04
SAY @377
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @378 DO ~SetGlobal("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ + waukeen_promenade_07
++ @379 + waukeen_promenade_13
++ @380 + waukeen_promenade_05
END

IF ~~ THEN waukeen_promenade_04b
SAY @381
= @382
IF ~~ THEN EXIT
END

IF ~~ THEN waukeen_promenade_05
SAY @383
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @378 DO ~SetGlobal("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ + waukeen_promenade_07
++ @384 + waukeen_promenade_13
++ @385 + waukeen_promenade_13
++ @386 + waukeen_promenade_06
END

IF ~~ THEN waukeen_promenade_06
SAY @387
IF ~~ THEN EXIT
END

IF ~~ THEN waukeen_promenade_07
SAY @388
IF ~~ THEN + waukeen_promenade_07b
END

IF ~~ THEN waukeen_promenade_07b
SAY @389
++ @390 + waukeen_promenade_10
++ @391 + waukeen_promenade_11
END

IF ~~ THEN waukeen_promenade_08
SAY @389
= @382
IF ~~ THEN EXIT
END

IF ~~ THEN waukeen_promenade_09
SAY @393
++ @394 + waukeen_promenade_12
++ @391 + waukeen_promenade_11
END

IF ~~ THEN waukeen_promenade_10
SAY @395
++ @396 + waukeen_promenade_09
++ @391 + waukeen_promenade_11
END

IF ~~ THEN waukeen_promenade_11
SAY @397
IF ~~ THEN EXIT
END

IF ~~ THEN waukeen_promenade_12
SAY @398
IF ~~ THEN EXIT
END

IF ~~ THEN waukeen_promenade_13
SAY @399
= @400
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @401 DO ~SetGlobal("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ + waukeen_promenade_07b
++ @402 + waukeen_promenade_16
++ @403 + waukeen_promenade_12
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",0)~ + @404 + waukeen_promenade_15
++ @391 + waukeen_promenade_11
END

IF ~~ THEN waukeen_promenade_14
SAY @393
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @401 DO ~SetGlobal("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ + waukeen_promenade_08
++ @405 + waukeen_promenade_12
++ @391 + waukeen_promenade_11
END

IF ~~ THEN waukeen_promenade_15
SAY @406
++ @396 + waukeen_promenade_14
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @401 DO ~SetGlobal("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ + waukeen_promenade_08
++ @403 + waukeen_promenade_12
++ @391 + waukeen_promenade_11
END

IF ~~ THEN waukeen_promenade_16
SAY @407
IF ~~ THEN + waukeen_promenade_15
END

IF ~Global("C#AjantisC#RINGSM","GLOBAL",1)~ THEN surianko
SAY @408
= @409
IF ~~ THEN DO ~SetGlobal("C#AjantisC#RINGSM","GLOBAL",2)~ EXIT 
END

/* in hell... non romance case*/

IF ~Global("C#AjantisInHell","GLOBAL",2)
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN in_hell
SAY @410
++ @411 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + in_hell_03
++ @412 + in_hell_03
++ @413 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + in_hell_01
++ @414 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + in_hell_01
++ @415 DO ~SetGlobal("C#AjantisInHell","GLOBAL",3)~ + in_hell_04
END

IF ~~ THEN in_hell_01
SAY @416
IF ~~ THEN + in_hell_02
END

IF ~~ THEN in_hell_02
SAY @417
IF ~~ THEN EXIT
END

IF ~~ THEN in_hell_03
SAY @418
IF ~~ THEN + in_hell_02
END

IF ~~ THEN in_hell_04
SAY @419
IF ~~ THEN + in_hell_02
END

//Keldorn death comment

IF ~Global("C#AjantisKeldornDie","GLOBAL",2)~ THEN keldorn_dead
SAY @420
IF ~~ THEN DO ~SetGlobal("C#AjantisKeldornDie","GLOBAL",3)~ EXIT
END

IF ~Global("C#AjantisKeldornDie","GLOBAL",4)~ THEN keldorn_lives
SAY @421
IF ~~ THEN DO ~SetGlobal("C#AjantisKeldornDie","GLOBAL",5)~ EXIT
END

//Ajantis Reactions to Anomen romance, flirt status, Ajantis engaged romance not active
/* Anomen */
/* the following assumes that Anomen has not yet passed his knighthood test */


IF ~Global("C#AnomenRomanceComment1","GLOBAL",2)~ THEN C#AjantisAnomenPCReaction1
SAY @422
++ @423 DO ~SetGlobal("C#AnomenRomanceComment1","GLOBAL",3)~ + C#AjantisAnomenPCInnocent
++ @424 DO ~SetGlobal("C#AnomenRomanceComment1","GLOBAL",3)~ + C#AjantisAnomenPCNoInterest
++ @425 DO ~SetGlobal("C#AnomenRomanceComment1","GLOBAL",3)~ + C#AjantisAnomenPCInterest
++ @426 DO ~SetGlobal("C#AnomenRomanceComment1","GLOBAL",3)~ + C#AjantisAnomenPCConsider
++ @427 DO ~SetGlobal("C#AnomenRomanceComment1","GLOBAL",3)~ + C#AjantisAnomenPCYouToldMe
END

IF ~~ THEN C#AjantisAnomenPCInnocent
SAY @428
++ @429 + C#AjantisAnomenPCInterest
++ @430 + C#AjantisAnomenPCNoInterest
++ @431 + C#AjantisAnomenPCConsider
++ @432 + C#AjantisAnomenPCYouToldMe
END

IF ~~ THEN C#AjantisAnomenPCNoInterest
SAY @433
++ @434 + C#AjantisAnomenPCBadTiming
++ @435 + C#AjantisAnomenPCCruel
++ @436 + C#AjantisAnomenPCYouToldMe
END

IF ~~ THEN C#AjantisAnomenPCInterest
SAY @437
++ @438 + C#AjantisAnomenPCRightThing
++ @439 + C#AjantisAnomenPCYouToldMe
++ @440 + C#AjantisAnomenPCConsider
++ @441 + C#AjantisAnomenPCYouToldMe
END

IF ~~ THEN C#AjantisAnomenPCConsider
SAY @442
++ @443 EXIT
++ @444 + C#AjantisAnomenPCOffend
++ @445 + C#AjantisAnomenPCYouToldMe
END

IF ~~ THEN C#AjantisAnomenPCYouToldMe
SAY @446
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisAnomenPCBadTiming
SAY @447
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisAnomenPCCruel
SAY @448
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisAnomenPCRightThing
SAY @449
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisAnomenPCOffend
SAY @450
IF ~~ THEN EXIT
END


//Ajantis and the PC speak after Anomen's decision, but prior to the test

/* LG path -- too brief to be affected by relationship status */

IF ~OR(2)
Global("AnomenDecide","GLOBAL",3)
Global("AnomenDecide","GLOBAL",4)
Global("C#AnomenDecisionComment1","GLOBAL",2)~ THEN BEGIN AjantisAnomenPCTestDecisionLG
SAY @451
= @452
++ @453 DO ~SetGlobal("C#AnomenDecisionComment1","GLOBAL",3)~ + AAPTDLG1
++ @454 DO ~SetGlobal("C#AnomenDecisionComment1","GLOBAL",3)~ + AAPTDLG2
++ @455 DO ~SetGlobal("C#AnomenDecisionComment1","GLOBAL",3)~ + AAPTDLG3
END

IF ~~ THEN BEGIN AAPTDLG1
SAY @456
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTDLG2
SAY @457
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTDLG3
SAY @458
IF ~~ THEN EXIT
END

/* CN path -- too brief to be affected by relationship status */

IF ~Global("AnomenDecide","GLOBAL",2)
Global("C#AnomenDecisionComment1","GLOBAL",2)~ THEN BEGIN AjantisAnomenPCTestDecisionCN
SAY @451
= @459
++ @460 DO ~SetGlobal("C#AnomenDecisionComment1","GLOBAL",3)~ + AAPTDCN1
++ @461 DO ~SetGlobal("C#AnomenDecisionComment1","GLOBAL",3)~ + AAPTDCN2
++ @455 DO ~SetGlobal("C#AnomenDecisionComment1","GLOBAL",3)~ + AAPTDCN3
END

IF ~~ THEN BEGIN AAPTDCN1
SAY @462
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN AAPTDCN2
SAY @463
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ EXIT
END

IF ~~ THEN BEGIN AAPTDCN3
SAY @464
IF ~~ THEN DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ EXIT
END


//Ajantis and the PC speak after the results are fully realized

/* LG -- No relationship between the PC and Ajantis */

IF ~Global("C#AnomenDecisionComment2","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1)
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN BEGIN AjantisAnomenPCTestLGRomanceNone
SAY @465
= @466
++ @467 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRNO1
++ @468 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRNO2
++ @469 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRNO3
++ @470 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRNO4
END

IF ~~ THEN BEGIN AAPTLGRNO1
SAY @471
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTLGRNO2
SAY @472
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTLGRNO3
SAY @473
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTLGRNO4
SAY @474
IF ~~ THEN EXIT
END

/* LG -- Relationship between the PC and Ajantis */

IF ~Global("C#AnomenDecisionComment2","GLOBAL",2) Global("AnomenIsKnight","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN BEGIN AjantisAnomenPCTestLGRomanceAjantis
SAY @475
= @476
++ @477 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRAJ1
++ @478 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRAJ2
++ @479 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRAJ3
++ @470 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ + AAPTLGRNO4
END

IF ~~ THEN BEGIN AAPTLGRAJ1
SAY @480
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTLGRAJ2
SAY @481
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTLGRAJ3
SAY @482
IF ~~ THEN EXIT
END

/* CN -- No relationship between the PC and either of the men */

IF ~Global("C#AnomenDecisionComment2","GLOBAL",2) Global("AnomenIsNotKnight","GLOBAL",1)
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN BEGIN AjantisAnomenPCTestCNRomanceNone
SAY @465
= @483
++ @484 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRNO1
++ @485 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRNO2
++ @486 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRNO2
++ @487 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRNO3
END

IF ~~ THEN BEGIN AAPTCNRNO1
SAY @488
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTCNRNO2
SAY @489
= @490
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTCNRNO3
SAY @491
IF ~~ THEN EXIT
END

/* CN -- Relationship between PC and Ajantis */

IF ~Global("C#AnomenDecisionComment2","GLOBAL",2) Global("AnomenIsNotKnight","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN BEGIN AjantisAnomenPCTestCNRomance
SAY @492
= @493
++ @484 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRAJ1
++ @485 + AAPTCNRAJ2
++ @486 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRAJ3
++ @487 DO ~SetGlobal("C#AnomenDecisionComment2","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ + AAPTCNRAJ4
END

IF ~~ THEN BEGIN AAPTCNRAJ1
SAY @494
IF ~~ THEN + AAPTCNRAJ5
END

IF ~~ THEN BEGIN AAPTCNRAJ2
SAY @489
IF ~~ THEN + AAPTCNRAJ5
END

IF ~~ THEN BEGIN AAPTCNRAJ3
SAY @495
= @496
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN AAPTCNRAJ4
SAY @497
IF ~~ THEN EXIT
END

IF ~~ THEN AAPTCNRAJ5
SAY @498
IF ~~ THEN EXIT
END

/* PC was accepted as Order member. Ajantis reacts, if he joins later. */

IF ~Global("C#AjantisCongratPaladinOrder","GLOBAL",2)~ THEN joined_order
SAY @729
IF ~Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisCongratPaladinOrder","GLOBAL",3)~ + joined_order_01
IF ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN DO ~SetGlobal("C#AjantisCongratPaladinOrder","GLOBAL",3)~ + joined_order_02
END

IF ~~ THEN joined_order_01
SAY @731
IF ~~ THEN EXIT
END

IF ~~ THEN joined_order_02
SAY @730
IF ~~ THEN EXIT
END

/* Player1 failed the Order of the Most Radiant Heart. Ajantis will leave 
Global("PaladinOrder","GLOBAL",3)*/

/* non-romance case, Ajantis joins later */
IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisFailedPaladinOrder","GLOBAL",0)
Global("C#AjanPCOrderKickOut","GLOBAL",1)~ THEN order_failed
SAY @499
IF ~~ THEN DO ~SetGlobal("C#AjantisFailedPaladinOrder","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Escapearea()~ EXIT
END

/*  new beginnings romance case */
IF ~Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisFailedPaladinOrder","GLOBAL",0)
Global("C#AjanPCOrderKickOut","GLOBAL",1)~ THEN order_failed_NBR
SAY @500
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisFailedPaladinOrder","GLOBAL",2) SetLeavePartyDialogFile() LeaveParty() Escapearea()~ EXIT
END

/* (PC failed the Order of the Radiant Heart, engaged romance case: Romance_Add.d)  */


/* PC failed the Church of Helm 
OR(2)
Global("Stripped","GLOBAL",2)
Global("Talonwar","GLOBAL",5) 
*/

IF ~Global("C#AjanPCHelmKickOut","GLOBAL",1)~ THEN helm_kick_out
SAY @501
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @502 DO ~SetGlobal("C#AjanPCHelmKickOut","GLOBAL",2)~ + helm_kick_out_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @503 DO ~SetGlobal("C#AjanPCHelmKickOut","GLOBAL",2)~ + helm_kick_out_01
+ ~Global("C#AjantisRomanceActive","GLOBAL",2)~ + @504 DO ~SetGlobal("C#AjanPCHelmKickOut","GLOBAL",2)~ + helm_kick_out_01

+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @502 DO ~SetGlobal("C#AjanPCHelmKickOut","GLOBAL",2)~ + helm_kick_out_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @503 DO ~SetGlobal("C#AjanPCHelmKickOut","GLOBAL",2)~ + helm_kick_out_03
+ ~!Global("C#AjantisRomanceActive","GLOBAL",2)~ + @504 DO ~SetGlobal("C#AjanPCHelmKickOut","GLOBAL",1)~ + helm_kick_out_03

END

IF ~~ THEN helm_kick_out_01
SAY @505
IF ~~ THEN + helm_kick_out_02
END

IF ~~ THEN helm_kick_out_02
SAY @506
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END

IF ~~ THEN helm_kick_out_03
SAY @507
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~ EXIT
IF ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) 
SetLeavePartyDialogFile()
LeaveParty() EscapeArea()~ EXIT
END



/* Ajantis Shield Removed talk */

IF ~Global("C#AjantisShieldGone","GLOBAL",2)~ THEN ajantis_shield_gone
SAY @508
++ @509 DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_02
++ @510 DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_02
++ @511 DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",3)~ + ajantis_shield_gone_01
END

IF ~~ THEN ajantis_shield_gone_01
SAY @512
IF ~~ THEN + ajantis_shield_gone_02
END

IF ~~ THEN ajantis_shield_gone_02
SAY @513
IF ~~ THEN EXIT
END

/* Ajantis Shield Returned talk */

IF ~Global("C#AjantisShieldGone","GLOBAL",4)~ THEN ajantis_shield_back
SAY @514
IF ~~ THEN DO ~SetGlobal("C#AjantisShieldGone","GLOBAL",5)~ EXIT
END

IF ~Global("C#AjantisWieldsCarsomyr","GLOBAL",1)~ THEN carsomyr
SAY @734
IF ~~ THEN DO ~SetGlobal("C#AjantisWieldsCarsomyr","GLOBAL",2)~ EXIT
END




END //APPEND C#AjanJ

//////////////////////////////////////////////////////////
// Other stuff Appends, extend_bottoms etc
/////////////////////////////////////////////////////////

I_C_T JAGALVAR 27 C#AjantisJAGALVAR27
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @515
== JAGALVAR IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @516
END

I_C_T JAGALVAR 42 C#AjantisJAGALVAR42
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",1)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @517
END

I_C_T GARKID01 28 C#FirkraagChallenge
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @518
END

I_C_T GARKID02 27 C#FirkraagChallenge
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @518
END

I_C_T FIRKRA02 21 C#FirkraagChallenge1
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @519
END

I_C_T FIRKRA02 29 C#FirkraagDealWarning //No deal with dragon!
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @520
END

I_C_T3 FIRKRA02 32 C#FirkraagDeal
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @521 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @522 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @523 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
END

I_C_T KELDORJ 170 C#LegierungsLuege
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @524
= @525 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
END

I_C_T KELDOR 0 C#AjantisKeldornWelcome
== KELDOR IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @526 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @527 
== KELDOR IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @528 
END

I_C_T KELDORP 6 C#AjantisKeldornMaria
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @529 
== KELDORP IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @530
END

//fake ilithium for Sir Sarles
I_C_T SCJERLIA 12 C#LegierungAngeboten
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @531
 END

I_C_T SCTELWYN 30 C#AjantisSarlesTelwyn
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("SarlesPissed","GLOBAL",1)~ THEN @532
END

//no lying to Sir Sarles

I_C_T SCSARLES 20 C#LegierungsLuege
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn")~ THEN @533
= @534 
= @535 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
END


//free the slaves (Hendak, Kupferkrone)
I_C_T HENDAK 37 C#AjantisHendakBittet
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @536 
END

I_C_T HENDAK 13 C#AjantisHendakWartet
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @537 
END

I_C_T3 HENDAK 7 C#AjantisHendak
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @538 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @538 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @538 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
END

I_C_T BANOMEN 541 C#AjantisAnomenSearkBote
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @539 
END

I_C_T ANOMENJ 55 C#AjantisAnomenSeark
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @540 
END

I_C_T KAYL2 7 C#AjantisDoExpaladinQuest
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @541 
END


//Verwandlung in Avatar non-romance
I_C_T Player1 5 C#AjantisPCAvatar
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @542
END

//Bodhis Labyrinth: Schwindelgefühle
I_C_T Player1 3 C#AjantisPCSchwindelgefuehle
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @543
= @544
END


//Irenicus tot (Nr.1)
I_C_T Player1 16 C#AjantisIrenicusTot
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @545
END

//Ankunft Hölle, 
I_C_T3 Player1 25 C#AjantisWelcomeHell
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN @546
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) !Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN @547
END

//last fight Irenicus in Hell
I_C_T3 HELLJON 7 C#AjantisHelljon7
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @548
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @549
END

//last fight Irenicus in Hell
I_C_T3 HELLJON 8 C#AjantisHelljon7
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @548
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @549
END

//last fight Irenicus in Hell
I_C_T3 HELLJON 9 C#AjantisHelljon7
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @548
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @549
END

//last fight Irenicus in Hell
I_C_T3 HELLJON 10 C#AjantisHelljon7
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @548
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @549
END


//Talk vor Abstieg zu Irenicus (Tree of Life)
EXTEND_BOTTOM Player1 33 
IF ~Global("C#AjantisDownToIrenicus","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN + PLAYER1_Ajantis_downtoIrenicus 
IF ~Global("C#AjantisDownToIrenicus","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN + PLAYER1_Ajantis_downtoIrenicus_newrom
IF ~Global("C#AjantisDownToIrenicus","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN + PLAYER1_Ajantis_downtoIrenicus_lovetalk
END

APPEND Player1
IF ~~ THEN PLAYER1_Ajantis_downtoIrenicus
SAY @550
++ @551 DO ~SetGlobal("C#AjantisDownToIrenicus","GLOBAL",1)~ EXTERN C#AjanJ go_down_to_irenicus
++ @552 DO ~SetGlobal("C#AjantisDownToIrenicus","GLOBAL",1)~ EXTERN C#AjanJ go_down_to_irenicus
++ @553 DO ~SetGlobal("C#AjantisDownToIrenicus","GLOBAL",1)~ EXTERN C#AjanJ go_down_to_irenicus
END

IF ~~ THEN PLAYER1_Ajantis_downtoIrenicus_newrom
SAY @550
= @554
++ @555 DO ~SetGlobal("C#AjantisDownToIrenicus","GLOBAL",1)~ EXTERN C#AjanJ go_down_to_irenicus_newrom
END

IF ~~ THEN PLAYER1_Ajantis_downtoIrenicus_lovetalk
SAY @556
++ @557 DO ~SetGlobal("C#AjantisDownToIrenicus","GLOBAL",1)~ EXTERN C#AjanJ go_down_to_irenicus_lovetalk
END
END

APPEND C#AjanJ
//Tree of life
IF ~~ THEN BEGIN go_down_to_irenicus
SAY @558 
COPY_TRANS Player1 33
END

IF ~~ THEN BEGIN go_down_to_irenicus_lovetalk
SAY @559 
IF ~GlobalGT("C#AjantisIlvastarrMeeting","GLOBAL",0) Global("C#AjantisPCMarriage","GLOBAL",0)~ THEN + go_down_to_irenicus_lovetalk_02
IF ~OR(2)
Global("C#AjantisIlvastarrMeeting","GLOBAL",0) Global("C#AjantisPCMarriage","GLOBAL",1)~ THEN + go_down_to_irenicus_lovetalk_01
END

IF ~~ THEN BEGIN go_down_to_irenicus_lovetalk_01
SAY @560
COPY_TRANS Player1 33
END

IF ~~ THEN BEGIN go_down_to_irenicus_lovetalk_02
SAY @561
COPY_TRANS Player1 33
END

IF ~~ THEN BEGIN go_down_to_irenicus_newrom
SAY @562
IF ~~ THEN DO ~SetGlobal("C#AjantisConfessionNewRom","GLOBAL",1)~ + go_down_to_irenicus
END
END

//Aranquests
I_C_T ARAN 4 C#AjantisFirstAranQuest
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @563
END

//signing to the thiefs by Gaelan
I_C_T GAELAN 65 C#AjantisGaelan
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @564
= @565
END

//Renal

I_C_T RENAL 30 C#AjantisRenal30
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @566 
END


I_C_T RENAL 63 C#AjantisRenal63
== C#AjanJ IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @567 
END

I_C_T3 RENAL 69 C#AjantisRenal69
== C#AjanJ IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @568 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",1) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @568 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @569 
END

I_C_T RENAL 10 C#AjantisRenalRefused
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @570 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END

I_C_T RENAL 26 C#AjantisRenalRefused
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @570 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END

I_C_T RENAL 104 C#AjantisRenalRefused
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @570 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END


//Maevar 
I_C_T3 MAEVAR 16 C#AjantisFirstMaevarQuest16
== C#AjanJ IF ~OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0) 
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @571 DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) SetGlobal("C#AjantisReputation","GLOBAL",1) 
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() 
EscapeAreaMove("AR0903",1730,400,9)~
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",1) 
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @571 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
SetGlobal("C#AjantisKickedOut","GLOBAL",1) SetGlobal("C#AjantisReputation","GLOBAL",1)
IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)
SetLeavePartyDialogFile() LeaveParty() 
EscapeAreaMove("AR0903",1730,400,9)~
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2)
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @572 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetGlobal("C#AjantisFirstMaevarQuestRom","GLOBAL",1)~
END

I_C_T MAEVAR 17 C#AjantisFirstMaevarQuest17
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @573 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END


I_C_T MAEVAR 31 C#AjantisLastMaevarQuest
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @574
END

I_C_T EMBARL 6 C#AjantisEmbarl
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @575
== EMBARL IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @576
END

I_C_T EDWIN 8 C#AjantisFirstEdwinQuest
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @577 
END

I_C_T EDWIN 49 C#AjantisSecondEdwinQuest
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @578 
END

I_C_T EDWIN 30 C#AjantisEdwinJoin
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @579 
== EDWIN IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @580
END

//No contract with bodhi
I_C_T BODHI 1 C#AjantisBodhiFirstContact
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @581
END

I_C_T BODHI 6 C#AjantisBodhiOffer
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @582
END

I_C_T3 BODHI 18 C#AjantisBodhiAlly
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @583  DO ~SetGlobal("C#AjantisKickedOut","GLOBAL",1) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @584 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetGlobal("C#AjantisKickedOut","GLOBAL",1) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @585 
DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~  
END

I_C_T BODHI 21 C#AjantisBodhiThreat
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @586 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
== BODHI IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @587
END


//priest of underwater city
I_C_T SAHPR1 60 C#AjantisUnterwasserstadt
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @588
END


//no giving the silver dragon eggs to the deamon
I_C_T UDDEMON 8 C#AjantisUDDemon
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @589
== UDDEMON IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @590 
END

//Unterreich: Explodierende Sklaven

I_C_T UDDROW26 2 C#AjantisUDDROW26_2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @732
END

I_C_T3 UDDROW26 5 C#AjantisUDDROW26_5
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @733 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @733 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @733 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
END

// Drizzt
I_C_T3 C6DRIZZ1 5 C#AjantisDrizztFighting
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @591 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @591 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @592 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) 
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @593
END

I_C_T3 C6DRIZZ1 9 C#AjantisDrizztFighting
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @591 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @591 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @592 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @593
END

I_C_T3 C6DRIZZ1 18 C#AjantisDrizztFighting
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @591 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @591 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @592 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @593
END

I_C_T3 C6DRIZZ1 41 C#AjantisDrizztFighting
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @591 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @591 DO ~SetLeavePartyDialogFile()SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @592 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @593
END

I_C_T3 C6DRIZZ1 48 C#AjantisDrizztFighting
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @591 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @591 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @592 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @593
END

I_C_T3 C6DRIZZ1 55 C#AjantisDrizztFighting
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @591 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @591 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) LeaveParty() Enemy() Attack(Player1)~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @592 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~ 
== C6DRIZZ1 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @593
END


I_C_T C6DRIZZ1 35 C#AjantisDrizztHelp
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @594 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END

I_C_T C6DRIZZ1 38 C#AjantisDrizztHelp
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @594 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END


//Quest of seeing eye
I_C_T BHOISIG 16 C#AjantisAugenlosenKultQuest
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @595
END

I_C_T BHOISIG 19 C#AjantisAugenlosenKultQuestYes
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @596
END

I_C_T BHOISIG 22 C#AjantisAugenlosenKultQuestNo
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @597
END

//Helm playerstronghold
I_C_T3 BHOISIG 39 C#AjantisBhoisig39
== C#AjanJ IF ~!Global("C#AjantisPCGodIsHelm","GLOBAL",1) !Kit(Player1,GODHELM) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @598 DO ~SetGlobal("C#AjantisPCGodIsHelm","GLOBAL",1) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
== C#AjanJ IF ~OR(2) 
Global("C#AjantisPCGodIsHelm","GLOBAL",1) 
Kit(Player1,GODHELM) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @599 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END

I_C_T BHOISIG 41 C#AjantisBhoisig41
== C#AjanJ IF ~OR(2) 
Global("C#AjantisPCGodIsHelm","GLOBAL",1) 
Kit(Player1,GODHELM)
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @600 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END

I_C_T BHARVAL 37 C#AjantisBharval37
== C#AjanJ IF ~OR(2) 
Global("C#AjantisPCGodIsHelm","GLOBAL",1) 
Kit(Player1,GODHELM)
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @601 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END

I_C_T3 BHARVAL 17 C#AjantisBharval17
== C#AjanJ IF ~!Global("C#AjantisPCGodIsHelm","GLOBAL",1) 
!Kit(Player1,GODHELM) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @602
== C#AjanJ IF ~OR(2) 
Global("C#AjantisPCGodIsHelm","GLOBAL",1) 
Kit(Player1,GODHELM)
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @603
END

I_C_T BHNALLA 16 C#AjantisBhnalla16
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @604
END

I_C_T BHNALLA 35 C#AjantisBhnalla35
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @605 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END

//Order Stronghold
I_C_T HPRELATE 17 C#AjantisCongratPaladinOrder
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @606 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END

//Order Stronghold
I_C_T HPRELATE 18 C#AjantisCongratPaladinOrder
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @606 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
END

//Order Stronghold rejected
I_C_T HPRELATE 20 C#AjantisRejectPaladinOrder
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(3)
Global("C#AjantisRomanceActive","GLOBAL",3) 
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)~ THEN @607
END

//Order Stronghold: PC failes, Ajantis leaves. I_C_T for non-romance case.
I_C_T DEMSON 39 C#AjantisFailedPaladinOrder
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN @608 DO ~SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
END

I_C_T DEMSON 41 C#AjantisFailedPaladinOrder
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @608 DO ~SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
END

I_C_T DEMSON 64 C#AjantisFailedPaladinOrder
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",0)~ THEN @608 DO ~SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
END

//Valygar to the Hidden Mages
I_C_T3 TOLGER 36 C#AjantisTolgerVerraten
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)
~ THEN @609 DO ~SetLeavePartyDialogFile() LeaveParty() Escapearea()~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",1)
~ THEN @609 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Escapearea()~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @610 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10030,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Escapearea()~ 
END

I_C_T3 TOLGER 84 C#AjantisTolgerVerraten2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0)
~ THEN @611 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy()~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
Global("C#AjantisRomanceActive","GLOBAL",1)
~ THEN @611 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy()~ 
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @612 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy()~ 
END

I_C_T TOLGER 80 C#AjantisTolgerWarning
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @613
END

I_C_T TOLGER 29 C#AjantisTolgerNoHelp
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @614 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
== TOLGER IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @615 
END

I_C_T TOLGER 40 C#AjantisTolgerNoHelp
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @614 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
== TOLGER IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @615 
END

I_C_T TOLGER 78 C#AjantisTolgerNoHelp
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @616 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~
== TOLGER IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @615 
END


//Yoshimo

I_C_T YOSHJ 113 C#AjantisYoshj113
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @617
END

I_C_T YOSHIMOX 4 C#AjantisYoshimox4
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) GlobalGT("C#Ajantis_YoshimoBanter1","GLOBAL",0)~ THEN @618
END

//Viconia joining offer
I_C_T VICONI 2 C#AjantisViconi2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @619
== VICONI IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @620
END

//Tanner
I_C_T TANNER 18 C#AjantisTanner18
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @621
== TANNER IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @622
END

//druid grove: poisoning

I_C_T TREVIL01 33 C#AjantisDruidGrovePoisoning1
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @623 
== TREVIL01 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @624
END

I_C_T TREVIL01 34 C#AjantisDruidGrovePoisoning1
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @623 
== TREVIL01 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @624
END

I_C_T3 TREVIL02 5 C#AjantisGrovePoisoned
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisRomanceActive","GLOBAL",0) 
~ THEN @625 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @625 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN @625 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
END

//Fallen paladins

I_C_T KAYPAL02 6 C#AjantisFallenPaladin
== KAYPAL02 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!IsValidForPartyDialog("Keldorn") 
!IsValidForPartyDialog("Anomen")~ THEN @626
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!IsValidForPartyDialog("Keldorn") 
!IsValidForPartyDialog("Anomen")~ THEN @627
== KAYPAL02 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!IsValidForPartyDialog("Keldorn") 
!IsValidForPartyDialog("Anomen")~ THEN @628
END

//free drowslaves
I_C_T DADROW3 0 C#AjantisDrowSklaven
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @629
== DADROW3 IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @630
END

I_C_T DASLAVE1 4 C#AjantisDrowSklaven2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @631
END


ADD_TRANS_ACTION DASLAVE1 BEGIN 11 END BEGIN 0 END ~SetGlobal("C#AjantisDrowSklaven3","GLOBAL",1)~

ADD_TRANS_TRIGGER DASLAVE1 11 ~OR(3)
!InParty("C#Ajantis") !InMyArea("C#Ajantis") StateCheck("C#Ajantis",CD_STATE_NOTVALID)~

INTERJECT DASLAVE1 11 C#AjantisDrowSklaven3
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @632   
END DASLAVE1 helms_segen

I_C_T3 DASLAVE1 6 C#AjantisDrowSklaven6
== C#AjanJ IF ~!Global("C#AjantisRomanceActive","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",2) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @633 DO ~SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",1) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @633 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2) 
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @634 
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2) 
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @635 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10041,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() Enemy() Attack(Player1)~
END

I_C_T DASLAVE1 7 C#AjantisDrowSklaven7
== C#AjanJ IF ~Global("C#AjantisDrowSklaven3","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @636
END

I_C_T DASLAVE1 8 C#AjantisDrowSklaven8
== C#AjanJ IF ~Global("C#AjantisDrowSklaven3","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @637
END

I_C_T DASLAVE1 9 C#AjantisDrowSklaven9
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @638
END

EXTEND_BOTTOM DASLAVE1 10 //BioWare Bug
IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("SlaveResult","GLOBAL",4)~ EXIT
IF ~Global("C#AjantisDrowSklaven10","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN DO ~SetGlobal("C#AjantisDrowSklaven10","GLOBAL",1)~ EXTERN C#AjanJ ajantis_daslave_10
END

APPEND C#AjanJ
IF ~~ THEN ajantis_daslave_10
SAY @639
IF ~!IsValidForPartyDialog("Jaheira")
!IsValidForPartyDialog("Nalia")~ THEN DO ~SetGlobal("SlaveResult","GLOBAL",4)~ EXIT
COPY_TRANS DASLAVE1 10
END

END 
APPEND DASLAVE1
IF ~~ THEN helms_segen
SAY @640
  IF ~Global("DrowSlavesFree","GLOBAL",1)~ THEN EXTERN ~DASLAVE1~ 7
  IF ~Global("DrowSlavesFree","GLOBAL",2)~ THEN EXTERN ~DASLAVE1~ 8
END

END


I_C_T LLYNIS 11 C#AjantisLlynis
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @641 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
== LLYNIS IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @642
END

I_C_T LLYNIS 12 C#AjantisLlynis
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @641 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
== LLYNIS IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @642
END

I_C_T WELLYN 3 C#AjantisWellyn
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @643
== WELLYN IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @644
END 

I_C_T WELLYN 5 C#AjantisWellynNo
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @645 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END 

I_C_T WELLYN 6 C#AjantisWellynNo
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @646 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END 




APPEND C#AjanJ 
IF ~Global("C#AjantisWellynYes","GLOBAL",2)~ THEN wellyn
SAY @647 
IF ~~ THEN DO ~SetGlobal("C#AjantisWellynYes","GLOBAL",3) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",-1)~ EXIT
END 

END






//Underworld Snirflebi(if you attack them, Ajantis will leave the group)
I_C_T UDSVIR03 27 C#AjantisSnirflebi
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @648 
END

//free Elgea (gekidnappte Fürstin) 

ADD_TRANS_ACTION ELGEA BEGIN 14 END BEGIN 0 END ~SetGlobal("C#AjantisPCNichtElgea","GLOBAL",1)~

INTERJECT ELGEA 6 C#AjantisFreeElgea
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
!IsValidForPartyDialog("MAZZY")
!IsValidForPartyDialog("KELDORN")~ THEN @649 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END ELGEA 14

INTERJECT ELGEA 7 C#AjantisFreeElgea
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @649 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END ELGEA 14

INTERJECT ELGEA 12 C#AjantisFreeElgea
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @650 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
END ELGEA 14

I_C_T WELTHER 1 C#AjantisWelther1
== C#AjanJ IF ~OR(2) 
Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisRomanceActive","GLOBAL",0) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @651 DO ~SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",1) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @651 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2) 
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @652 
== C#AjanJ IF ~Global("C#AjantisRomanceActive","GLOBAL",2) 
InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @653 DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)
AddJournalEntry(@10030,QUEST_DONE) SetLeavePartyDialogFile() LeaveParty() EscapeArea()~
== WELTHER IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @654
END

//Neb
I_C_T NEB 5 C#AjantisErkenntNeb
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @742
== NEB IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @743
END

I_C_T NEB 8 C#AjantisErkenntNeb
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @742
== NEB IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @743
END

//free Mazzy from her cell
INTERJECT MAZZY 6 C#AjantisFreeMazzy
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) !IsValidForPartyDialog("Keldorn")
!IsValidForPartyDialog("Valygar")~ THEN @655 DO ~SetGlobal("MazzyFreed","GLOBAL",1) IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~
= @656 
END MAZZY 13

//Talospriester
I_C_T ACOLYTE1 1 C#AjantisTalosPriester
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @657 
END

//skinless Raissa
I_C_T TRSKIN02 14 C#AjantisRaissa
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @658 
END

I_C_T TRSKIN02 12 C#AjantisRaissa12
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @659 
END

//Gehäutete Menschen im Brückenviertel
I_C_T INSPECT 13 C#AjatisAegisfeld
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @660
END

//drow transformation, interjection into Adalon's dialogue
I_C_T UDSILVER 26 C#AjantisUnterDrowWandeln
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @661
END

I_C_T UDSILVER 53 C#AjantisAdalonComplain
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @673
END

I_C_T UDSILVER 45 C#AjantisAdalonGeht
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @669
END

//Valen
I_C_T BOANASTE 6 C#AjantisValen
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @674
== BOANASTE IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @675
END

I_C_T BOANASTE 8 C#AjantisValen
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @674
== BOANASTE IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @675
END

I_C_T BOANASTE 10 C#AjantisValen
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @674
== BOANASTE IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @675
END


//Gaal
I_C_T GAAL 14 C#AjantisGaal14
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @676
END

I_C_T GAAL 15 C#AjantisGaal15
== C#AjanJ IF ~!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1) InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @677
END

I_C_T GAAL 20 C#AjantisGaal20
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @678 DO ~Attack("Gaal")~
END

I_C_T2 GAAL 23 C#AjantisGaal23
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @679 DO ~Attack("Gaal")~
END

//Keldorn's family. Peony should great Ajantis once in the whole game.
I_C_T PEONY 2 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @680
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @682 
END

I_C_T PEONY 10 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

I_C_T PEONY 11 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

I_C_T PEONY 12 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

I_C_T PEONY 13 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

I_C_T PEONY 14 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

I_C_T PEONY 15 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

I_C_T PEONY 16 C#AjantisPeony
== PEONY IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @683
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @681
END

//Maria
I_C_T MARIA 15 C#AjantisMaria
== MARIA IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @684
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @685
END

I_C_T MARIA 17 C#AjantisMaria
== MARIA IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @686
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @685
END

I_C_T KELDORJ 75 C#AjantisMaria
== MARIA IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @686
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @687
END

I_C_T MARIA 22 C#AjantisMaria
== MARIA IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @686
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @685
END


ADD_TRANS_TRIGGER ANOMENJ 14 ~OR(3)
!InParty("C#Ajantis") !InMyArea("C#Ajantis") StateCheck("C#Ajantis",CD_STATE_NOTVALID)~

I_C_T ANOMENJ 14 C#Ajantis_Kidnap_Anomen
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!PartyHasItem("KEY09")
!AreaCheck("AR1200")
!AreaCheck("AR1201")
!AreaCheck("AR1202")~ THEN @688
END 

I_C_T ANOMENJ 14 C#Ajantis_Kidnap_Anomen
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
!PartyHasItem("KEY09")
OR(3)
AreaCheck("AR1200")
AreaCheck("AR1201")
AreaCheck("AR1202")~ THEN @689
END 

I_C_T ANOMENJ 14 C#Ajantis_Kidnap_Anomen
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
PartyHasItem("KEY09")
!AreaCheck("AR1200")
!AreaCheck("AR1201")
!AreaCheck("AR1202")~ THEN @690
END 

I_C_T ANOMENJ 14 C#Ajantis_Kidnap_Anomen
== C#AjanJ IF ~InParty("C#Ajantis") 
InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) 
PartyHasItem("KEY09")
OR(3)
AreaCheck("AR1200")
AreaCheck("AR1201")
AreaCheck("AR1202")~ THEN @691
END 

I_C_T ANOMENJ 14 C#Ajantis_Kidnap_Ancom3
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) PartyHasItem("KEY09") Global("C#Ajantis_Kidnap_Anomen","GLOBAL",1)~ THEN @692 
END 



//First meeting with Garren

BEGIN C#AJEILA

I_C_T GARREN 38 C#AjantisGarren38
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @693
== GARREN IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @694
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @695
== GARREN IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @696
END

APPEND C#AjanJ

IF ~Global("C#AjantisEilaFirstSpawn","GLOBAL",1) !Dead("firkra02")~ THEN garren_meeting_01
SAY @697
IF ~~ THEN DO ~SetGlobal("C#AjantisEilaFirstSpawn","GLOBAL",2)
SetGlobal("C#AjantisGarren","GLOBAL",1)~ EXTERN GARREN garren_meeting_03
END

IF ~Global("C#AjantisEilaFirstSpawn","GLOBAL",1) Dead("firkra02")~ THEN garren_meeting_01
SAY @701
IF ~~ THEN DO ~SetGlobal("C#AjantisEilaFirstSpawn","GLOBAL",2)
SetGlobal("C#AjantisGarren","GLOBAL",1)~ EXTERN GARREN garren_meeting_03
END

END

CHAIN
IF ~~ THEN GARREN garren_meeting_03
@698
== C#AjanJ @699
= @700
== GARREN @720
= @721
== C#AjanJ @722
== C#AJEILA @723
== C#AjanJ @724
== C#AJEILA @725
== C#AjanJ @726 
EXIT



CHAIN
IF WEIGHT #-1 
~See("C#Ajantis")
InParty("C#Ajantis")
!StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#HelmAjantis","LOCALS",0)~ THEN bhelm ajantis_meeting
@702 DO ~SetGlobal("C#HelmAjantis","LOCALS",1)~
== c#AjanJ @703 
EXIT



//Courtesan Nin in Copper Coronet: madam.dlg

APPEND MADAM

IF WEIGHT #-1
~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
Global("C#AjantisRomanceActive","GLOBAL",2)~ THEN BEGIN 14 // from:
  SAY #39392 /* ~Greetings, my <LADYLORD>.  I am Madame Nin, and I am here to ensure you are pleasantly accompanied.  Are you interested in companionship, my <LADYLORD>?~ */
  IF ~~ THEN EXTERN C#AJANJ madame_nin_1
END

END //APPEND

APPEND C#AJANJ 

IF ~~ THEN madame_nin_1
SAY @737
IF ~~ THEN EXTERN MADAM 17
END

END //APPEND

I_C_T MADAM 4 C#AjanMadamNin
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",2)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @738 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
END

I_C_T MADAM 5 C#AjanMadamNin
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",2)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @738 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
END

I_C_T MADAM 6 C#AjanMadamNin
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",2)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @738 DO ~IncrementGlobal("C#AjantisWarUnzufrieden","GLOBAL",1)~ 
END

//Salvanas
I_C_T SALVANAS 3 C#AjanMadamSalvanas
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @739  
END

I_C_T SALVANAS 6 C#AjanMadamSalvanas
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @739  
END

I_C_T SALVANAS 9 C#AjanMadamSalvanas
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @739  
END

I_C_T SALVANAS 12 C#AjanMadamSalvanas
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @739  
END

I_C_T SALVANAS 20 C#AjanMadamSalvanas
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)~ THEN @740  
END

I_C_T SALVANAS 23 C#AjanMadamSalvanas2
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID)
OR(2)
Global("C#AjantisRomanceActive","GLOBAL",2)
Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN @741  
END


/* Anomens Amme 
GFTOWN02.


IF WEIGHT #2 ~InParty("Anomen")
See("Anomen")
!StateCheck("Anomen",STATE_SLEEPING)
RandomNum(2,1)
Global("gftown02Anomen","LOCALS",0)~ THEN BEGIN 6 // from:
  SAY #50302 /* ~Wait one moment... that wouldn't be Cor's son there, would it?  Why, I remember when I used to swaddle you in diapers, I do!  My, but you haven't changed a bit!~ */
  IF ~~ THEN DO ~SetGlobal("gftown02Anomen","LOCALS",1)~ EXTERN ~ANOMENJ~ 244
END


IF ~~ THEN BEGIN 244 // from:
  SAY #50304 /* ~Oh.  You must be my governess... er... Martha?  Marilynn, is it?  Good day to you, good woman.~ */
  IF ~!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Korgan")
!IfValidForPartyDialogue("Yoshimo")
~ THEN EXIT
  IF ~IfValidForPartyDialogue("Jan")
~ THEN EXTERN ~JANJ~ 139
  IF ~!IfValidForPartyDialogue("Jan")
IfValidForPartyDialogue("Korgan")
~ THEN EXTERN ~KORGANJ~ 107
  IF ~!IfValidForPartyDialogue("Jan")
!IfValidForPartyDialogue("Korgan")
IfValidForPartyDialogue("Yoshimo")
~ THEN EXTERN ~YOSHJ~ 86
END
*/

