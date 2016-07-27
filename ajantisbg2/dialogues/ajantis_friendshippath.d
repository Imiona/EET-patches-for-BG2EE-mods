//////////////////////////////////////////////////////////
//Friendship path for Sir Ajantis NPC for BGII
/////////////////////////////////////////////////////////

/*

Global("C#AjantisWarUnzufrieden","GLOBAL",1)
//Global("C#AjantisThiefStronghold","GLOBAL",2)


//Global("C#AjantisQuestErschaffen","GLOBAL",1) : Begrüßung in Firkraags Enklave
//GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0): Tempel des Oghma (Quest wurde übersprungen)


Friendship Path

// befinden sich in AjanJ_pr.d:
-Im Unterreich, über Adalon, und die Illusion eines Drachen: Wir sollen als Drow unter Drow wandeln?!

-Nun stehen wir wieder unter dem Einfluss eines mächtigen Illusionszaubers.

-Die Silberdame verlässt ihren Posten?!

-Nach dem Treffen mit Elhan: Das Leben der Guten und der Bösen, Fremdbestimmung über Egoismus




Spielevent-Reaktionen (in AjanJ.d)

-Waukeens Promenade
-Seelenklau
- Schlächterverwandlung -*
-unter Drow wandeln (2 Dialoge)
-die silberne Dame verlässt ihren Posten
-Ankunft Hölle
-Kommentar zu nur guten oder nur schlechten Höllenprüfungslösungen

*/

BEGIN C#AjanB //needed for compilation

APPEND C#AjanJ


IF ~~ THEN talk_no_interest
SAY @0
IF ~~ THEN EXIT
END

IF ~~ THEN schweigen
SAY @1
IF ~~ THEN DO ~SetGlobal("C#AjantisSchweigen","GLOBAL",1)~ EXIT
END


//------first talk---------

IF ~Global("C#AjantisFriendTalk","GLOBAL",2)~ THEN talk_0
SAY @2 
+ ~!Alignment(Player1,MASK_EVIL)
Global("C#AjanEngagementBrokenBG1","GLOBAL",0)~ + @3 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + talk_0_03

+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",1)~ + @3 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + talk_0_08

+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",1)~ + @332 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + talk_0_09

+ ~Alignment(Player1,MASK_EVIL)~ + @4 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + talk_0_04
+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)~ + @5 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + talk_0_02
++ @6 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + talk_0_01
++ @7 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",3)~ + schweigen
END

IF ~~ THEN talk_0_01
SAY @8
IF ~~ THEN + talk_0_02
END

IF ~~ THEN talk_0_02
SAY @9
+ ~OR(2)
Global("Chapter","GLOBAL",%bg2_chapter_1%)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + @10 + talk_0_fortsetzung
++ @11 + talk_0_fortsetzung
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)~ + @12 + talk_0_fortsetzung
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + @13 + talk_0_05
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + @14 + talk_0_05
++ @15 + talk_0_fortsetzung
++ @16 + talk_no_interest
END

IF ~~ THEN talk_0_03
SAY @17
+ ~OR(2)
Global("Chapter","GLOBAL",%bg2_chapter_1%)
Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + @10 + talk_0_fortsetzung
++ @11 + talk_0_fortsetzung
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_2%)~ + @12 + talk_0_fortsetzung
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @13 + talk_0_05
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @14 + talk_0_05
++ @15 + talk_0_fortsetzung
++ @16 + talk_no_interest
END

IF ~~ THEN talk_0_04
SAY @18
IF ~~ THEN + talk_0_02
END

IF ~~ THEN talk_0_05
SAY @19
++ @20 + talk_0_fortsetzung_2
++ @21 + talk_0_fortsetzung_2
++ @22 + talk_0_fortsetzung_2
++ @23 + talk_0_fortsetzung_2
END

IF ~~ THEN talk_0_fortsetzung
SAY @19
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_4%)~ + @24 + talk_0_fortsetzung_1
++ @25 + talk_0_fortsetzung_1
++ @22 + talk_0_fortsetzung_1
++ @23 + talk_0_fortsetzung_1
END

IF ~~ THEN talk_0_fortsetzung_1
SAY @26
+ ~InParty("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) 
InMyArea("MINSC")~ + @27 EXTERN BMINSC talk_0_Ajantis_chain 
+ ~OR(3)
!InParty("MINSC") StateCheck("MINSC",CD_STATE_NOTVALID) 
!InMyArea("MINSC")~ + @27 + talk_0_fortsetzung_2
++ @28 + talk_no_interest
END

END //APPEND c#AjanJ

CHAIN 
IF ~~ THEN BMINSC talk_0_Ajantis_chain
@29 
== BJAHEIR IF ~InParty("Jaheira") !StateCheck("Jaheira",CD_STATE_NOTVALID) 
InMyArea("Jaheira")~ THEN @30 
EXTERN C#AjanJ talk_0_fortsetzung_2

APPEND c#AjanJ
IF ~~ THEN talk_0_fortsetzung_2
SAY @31
IF  ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN + talk_0_07
IF  ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN + talk_0_06
END

IF ~~ THEN talk_0_06
SAY @32
= @33
= @34
IF ~~ THEN EXIT
END

IF ~~ THEN talk_0_07
SAY @35
= @36
= @37
IF ~~ THEN EXIT
END

IF ~~ THEN talk_0_08
SAY @334
IF ~~ THEN + talk_0_02
END

IF ~~ THEN talk_0_09
SAY @333
IF ~~ THEN + talk_0_02
END

//------2nd talk---------

IF ~Global("C#AjantisFriendTalk","GLOBAL",4)~ THEN talk_1
SAY @38 
++ @39 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",5)~ + talk_1_01
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @40 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",5)~ + talk_1_04
++ @41 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",5)~ + talk_1_02
++ @42 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",5)~ + talk_1_03
END

IF ~~ THEN talk_1_01
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN talk_1_02
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN talk_1_03
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN talk_1_04
SAY @46
IF ~~ THEN EXIT
END


//------3rd talk---------


IF ~Global("C#AjantisFriendTalk","GLOBAL",6)~ THEN talk_2
SAY @47 
+ ~Global("C#FirkraagErledigt","GLOBAL",1)~ + @48 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_01
+ ~Global("C#FirkraagErledigt","GLOBAL",1)~ + @49 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_01
+ ~Global("C#FirkraagErledigt","GLOBAL",1)~ + @50 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_01
+ ~!Global("C#FirkraagErledigt","GLOBAL",1)~ + @48 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_01b
+ ~!Global("C#FirkraagErledigt","GLOBAL",1)~ + @49 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_01b
+ ~!Global("C#FirkraagErledigt","GLOBAL",1)~ + @50 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_01b
++ @51 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_03
++ @52 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",7)~ + talk_2_02
END

IF ~~ THEN talk_2_01
SAY @53
IF ~~ THEN + talk_2_01c
END

IF ~~ THEN talk_2_01b
SAY @54
IF ~~ THEN + talk_2_01c
END

IF ~~ THEN talk_2_01c
SAY @55  
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @56 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_05b
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @57 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1) SetGlobal("C#AjantisWindspearBodyRom","GLOBAL",1)~ + talk_2_05
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @58 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_05c

+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @59 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_06
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @60 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_08
+ ~!Alignment(Player1,MASK_EVIL) OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @61 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_09
+ ~Alignment(Player1,MASK_EVIL)~ + @61 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_10

+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @59 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_06b

+ ~Class(Player1,PALADIN) OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @62 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_07


+ ~Class(Player1,PALADIN) Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @62 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_07b
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @60 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_08b
+ ~!Alignment(Player1,MASK_EVIL) Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @61 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + talk_2_09b
END

IF ~~ THEN talk_2_02
SAY @63
IF ~Global("C#FirkraagErledigt","GLOBAL",1)~ THEN + talk_2_04
IF ~!Global("C#FirkraagErledigt","GLOBAL",1)~ THEN + talk_2_04b
END

IF ~~ THEN talk_2_03
SAY @64
IF ~Global("C#FirkraagErledigt","GLOBAL",1)~ THEN + talk_2_04
IF ~!Global("C#FirkraagErledigt","GLOBAL",1)~ THEN + talk_2_04b
END

IF ~~ THEN talk_2_04
SAY @65
IF ~~ THEN + talk_2_01c
END

IF ~~ THEN talk_2_04b
SAY @66
IF ~~ THEN + talk_2_01c
END

IF ~~ THEN talk_2_05
SAY @67
IF ~~ THEN + talk_2_05c
END

IF ~~ THEN talk_2_05b
SAY @68
IF ~~ THEN EXIT
END

IF ~~ THEN talk_2_05c
SAY @69
= @70
IF ~~ THEN EXIT
END

IF ~~ THEN talk_2_06
SAY @71
IF ~~ THEN + talk_2_06_1
END

IF ~~ THEN talk_2_06_1
SAY @72
IF ~~ THEN EXIT
END

IF ~~ THEN talk_2_06b
SAY @71
IF ~~ THEN + talk_2_05c
END

IF ~~ THEN talk_2_07
SAY @73
IF ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN + talk_2_06_1
IF ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN + talk_2_05c
END

IF ~~ THEN talk_2_07b
SAY @74
IF ~~ THEN + talk_2_07
END

IF ~~ THEN talk_2_08
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN talk_2_08b
SAY @76
IF ~~ THEN + talk_2_05c
END

IF ~~ THEN talk_2_09
SAY @77
IF ~~ THEN + talk_2_11
END

IF ~~ THEN talk_2_09b
SAY @78
IF ~~ THEN + talk_2_11
END

IF ~~ THEN talk_2_10
SAY @79
IF ~~ THEN + talk_2_11
END

IF ~~ THEN talk_2_11
SAY @80
IF ~~ THEN DO ~SetGlobal("C#AjantisSchweigen","GLOBAL",1)~  EXIT
END


//------4th talk---------

IF ~Global("C#AjantisFriendTalk","GLOBAL",8)~ THEN talk_heritage
SAY @81 
++ @82 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",9)~ + talk_heritage_01
++ @83 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",9)~ + talk_heritage_02
++ @84 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",9)~ + talk_heritage_03
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + @85 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",9)~ + talk_heritage_04
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%)~ + @86 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",9)~ + talk_heritage_04
++ @87 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",9)~ + talk_heritage_08
END

IF ~~ THEN talk_heritage_01
SAY @88
++ @89 + talk_heritage_07
++ @90 + talk_heritage_05
++ @91 + talk_heritage_08
END

IF ~~ THEN talk_heritage_02
SAY @92
++ @93 + talk_heritage_07
++ @94 + talk_heritage_07
++ @90 + talk_heritage_05
++ @91 + talk_heritage_08
END

IF ~~ THEN talk_heritage_03
SAY @71
IF ~~ THEN + talk_heritage_02
END

IF ~~ THEN talk_heritage_04
SAY @95
IF ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN EXIT
IF ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN EXIT
END

IF ~~ THEN talk_heritage_05
SAY @96
++ @97 + talk_heritage_06
++ @98 + talk_heritage_07
++ @99 + talk_heritage_08
END

IF ~~ THEN talk_heritage_06
SAY @100
IF ~~ THEN EXIT
END

IF ~~ THEN talk_heritage_07
SAY @101
IF ~~ THEN + talk_heritage_06
END

IF ~~ THEN talk_heritage_08
SAY @102
IF ~~ THEN EXIT
END




//------5th talk---------

IF ~Global("C#AjantisFriendTalk","GLOBAL",10)~ THEN talk_thoughts
SAY @103 
IF ~!Alignment(Player1, MASK_EVIL)~ THEN DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",11)~ + talk_thoughts_02
IF ~Alignment(Player1, MASK_EVIL)~ THEN DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",11)~ + talk_thoughts_01
END

IF ~~ THEN talk_thoughts_01
SAY @104
IF ~~ THEN + talk_thoughts_02
END

IF ~~ THEN talk_thoughts_02
SAY @105
++ @106 + talk_thoughts_03
++ @107 + talk_thoughts_03
++ @108 + talk_thoughts_03
++ @109 + talk_thoughts_04
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @110 + talk_thoughts_05
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @110 + talk_thoughts_06
+ ~Class(Player1,PALADIN)~ + @111 DO ~SetGlobal("C#AjantisBadJoke","GLOBAL",1)~ + talk_thoughts_11a
+ ~!Class(Player1,PALADIN) !Alignment(Player1, MASK_EVIL)~ + @111 DO ~SetGlobal("C#AjantisBadJoke","GLOBAL",1)~ + talk_thoughts_11b
+ ~Alignment(Player1, MASK_EVIL)~ + @111 + talk_thoughts_11
++ @112 + schweigen
END

IF ~~ THEN talk_thoughts_03
SAY @113
++ @114 + talk_thoughts_07
++ @115 + talk_thoughts_08
++ @116 + talk_thoughts_10
+ ~!Class(Player1,PALADIN)~ + @117 + talk_thoughts_09
++ @118 + talk_thoughts_05
END

IF ~~ THEN talk_thoughts_04
SAY @119
++ @120 + talk_thoughts_03
++ @107 + talk_thoughts_03
++ @108 + talk_thoughts_03
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @110 + talk_thoughts_05
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @110 + talk_thoughts_06
+ ~Class(Player1,PALADIN)~ + @111 DO ~SetGlobal("C#AjantisBadJoke","GLOBAL",1)~ + talk_thoughts_11a
+ ~!Class(Player1,PALADIN) !Alignment(Player1, MASK_EVIL)~ + @111 DO ~SetGlobal("C#AjantisBadJoke","GLOBAL",1)~ + talk_thoughts_11b
+ ~Alignment(Player1, MASK_EVIL)~ + @111 + talk_thoughts_11
++ @112 + schweigen
END

IF ~~ THEN talk_thoughts_05
SAY @121
IF ~~ THEN + talk_thoughts_15
END

IF ~~ THEN talk_thoughts_06
SAY @122
IF ~~ THEN + talk_thoughts_15
END

IF ~~ THEN talk_thoughts_07
SAY @123
++ @115 + talk_thoughts_08
++ @116 + talk_thoughts_10
+ ~!Class(Player1,PALADIN)~ + @117 + talk_thoughts_09
++ @118 + talk_thoughts_05
END

IF ~~ THEN talk_thoughts_08
SAY @124
IF ~~ THEN + talk_thoughts_15
END

IF ~~ THEN talk_thoughts_09
SAY @125
IF ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN + talk_thoughts_09a
IF ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN + talk_thoughts_09b
END

IF ~~ THEN talk_thoughts_09a
SAY @126
IF ~~ THEN + talk_thoughts_15
END

IF ~~ THEN talk_thoughts_09b
SAY @127
IF ~~ THEN + talk_thoughts_15
END

IF ~~ THEN talk_thoughts_10
SAY @128
IF ~~ THEN + talk_thoughts_15
END

IF ~~ THEN talk_thoughts_11
SAY @129
= @130
IF ~~ THEN EXIT
END

IF ~~ THEN talk_thoughts_11a
SAY @131
++ @132 + talk_thoughts_12
++ @133 + talk_thoughts_13
END

IF ~~ THEN talk_thoughts_11b
SAY @131
++ @132 + talk_thoughts_12
++ @133 + talk_thoughts_13
++ @134 + talk_thoughts_14
END

IF ~~ THEN talk_thoughts_12
SAY @135
++ @120 + talk_thoughts_03
++ @107 + talk_thoughts_03
++ @108 + talk_thoughts_03
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + talk_thoughts_05
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + talk_thoughts_06
END

IF ~~ THEN talk_thoughts_13
SAY @137
++ @120 + talk_thoughts_03
++ @107 + talk_thoughts_03
++ @108 + talk_thoughts_03
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + talk_thoughts_05
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + talk_thoughts_06
END

IF ~~ THEN talk_thoughts_14
SAY @138
++ @120 + talk_thoughts_03
++ @107 + talk_thoughts_03
++ @108 + talk_thoughts_03
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + talk_thoughts_05
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @136 + talk_thoughts_06
END

IF ~~ THEN talk_thoughts_15
SAY @139
IF ~~ THEN EXIT
END



//------6th talk---------

IF ~Global("C#AjantisFriendTalk","GLOBAL",12)~ THEN talk_weapons
SAY @140 
= @141 
++ @142 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPGutesSchwert","LOCALS",1)~ + talk_weapons_08
++ @143 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPSchwertSchild","LOCALS",1)~ + talk_weapons_03
++ @144 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPZweihand","LOCALS",1)~ + talk_weapons_02
++ @145 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPDolche","LOCALS",1)~ + talk_weapons_04
++ @146 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPStreitkolben","LOCALS",1)~ + talk_weapons_05
++ @147 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPSpeere","LOCALS",1)~ + talk_weapons_06
++ @148 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPArmbrust","LOCALS",1)~ + talk_weapons_07
++ @149 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13)~ + talk_weapons_01
++ @150 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPBastard","LOCALS",1)~ + talk_weapons_16
++ @151 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13) SetGlobal("C#AjantisFPGrossK","LOCALS",1)~ + talk_weapons_17
++ @152 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",13)~ + talk_weapons_15
END

IF ~~ THEN talk_weapons_01
SAY @153
++ @154 DO ~SetGlobal("C#AjantisFPGambeson","LOCALS",1)~ + talk_weapons_09
++ @155 DO ~SetGlobal("C#AjantisFPLeder","LOCALS",1)~ + talk_weapons_10
++ @156 DO ~SetGlobal("C#AjantisFPKetten","LOCALS",1)~ + talk_weapons_11
++ @157 DO ~SetGlobal("C#AjantisFPPlatten","LOCALS",1)~ + talk_weapons_12
++ @158 + talk_weapons_13
++ @150 DO ~SetGlobal("C#AjantisFPBastard","LOCALS",1)~ + talk_weapons_16
++ @151 DO ~SetGlobal("C#AjantisFPGrossK","LOCALS",1)~ + talk_weapons_17
++ @159 + talk_weapons_15
END

IF ~~ THEN talk_weapons_02
SAY @160
= @161
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_03
SAY @162
= @163
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_04
SAY @164
= @165
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_05
SAY @166
= @167
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_06
SAY @168
= @169
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_07
SAY @170
= @171
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_08
SAY @172
= @173
IF ~~ THEN + talk_weapons_13
END

IF ~~ THEN talk_weapons_09
SAY @174
IF ~~ THEN + talk_weapons_14
END

IF ~~ THEN talk_weapons_10
SAY @175
IF ~~ THEN + talk_weapons_14
END

IF ~~ THEN talk_weapons_11
SAY @176
= @177
= @178
IF ~~ THEN + talk_weapons_14
END

IF ~~ THEN talk_weapons_12
SAY @179
IF ~~ THEN + talk_weapons_14
END

IF ~~ THEN talk_weapons_13
SAY @180
+ ~Global("C#AjantisFPGutesSchwert","LOCALS",0)~ + @181 DO ~SetGlobal("C#AjantisFPGutesSchwert","LOCALS",1)~ + talk_weapons_08
+ ~Global("C#AjantisFPSchwertSchild","LOCALS",0)~ + @182 DO ~SetGlobal("C#AjantisFPSchwertSchild","LOCALS",1)~ + talk_weapons_03
+ ~Global("C#AjantisFPZweihand","LOCALS",0)~ + @144 DO ~SetGlobal("C#AjantisFPZweihand","LOCALS",1)~ + talk_weapons_02
+ ~Global("C#AjantisFPDolche","LOCALS",0)~ + @145 DO ~SetGlobal("C#AjantisFPDolche","LOCALS",1)~ + talk_weapons_04
+ ~Global("C#AjantisFPStreitkolben","LOCALS",0)~ + @146 DO ~SetGlobal("C#AjantisFPStreitkolben","LOCALS",1)~ + talk_weapons_05
+ ~Global("C#AjantisFPSpeere","LOCALS",0)~ + @147 DO ~SetGlobal("C#AjantisFPSpeere","LOCALS",1)~ + talk_weapons_06
+ ~Global("C#AjantisFPArmbrust","LOCALS",0)~ + @148 DO ~SetGlobal("C#AjantisFPArmbrust","LOCALS",1)~ + talk_weapons_07
++ @183 + talk_weapons_14
+ ~Global("C#AjantisFPBastard","LOCALS",0)~ + @150 DO ~SetGlobal("C#AjantisFPBastard","LOCALS",1)~ + talk_weapons_16
+ ~Global("C#AjantisFPGrossK","LOCALS",0)~ + @151 DO ~SetGlobal("C#AjantisFPGrossK","LOCALS",1)~ + talk_weapons_17
++ @184 + talk_weapons_15
END

IF ~~ THEN talk_weapons_14
SAY @185
+ ~Global("C#AjantisFPGambeson","LOCALS",0)~ + @154 DO ~SetGlobal("C#AjantisFPGambeson","LOCALS",1)~ + talk_weapons_09
+ ~Global("C#AjantisFPLeder","LOCALS",0)~ + @155 DO ~SetGlobal("C#AjantisFPLeder","LOCALS",1)~ + talk_weapons_10
+ ~Global("C#AjantisFPKetten","LOCALS",0)~ + @156 DO ~SetGlobal("C#AjantisFPKetten","LOCALS",1)~ + talk_weapons_11
+ ~Global("C#AjantisFPPlatten","LOCALS",0)~ + @157 DO ~SetGlobal("C#AjantisFPPlatten","LOCALS",1)~ + talk_weapons_12
++ @158 + talk_weapons_13
+ ~Global("C#AjantisFPBastard","LOCALS",0)~ + @150 DO ~SetGlobal("C#AjantisFPBastard","LOCALS",1)~ + talk_weapons_16
+ ~Global("C#AjantisFPGrossK","LOCALS",0)~ + @151 DO ~SetGlobal("C#AjantisFPGrossK","LOCALS",1)~ + talk_weapons_17
++ @184 + talk_weapons_15
END

IF ~~ THEN talk_weapons_15
SAY @186
IF ~~ THEN EXIT
END

IF ~~ THEN talk_weapons_16
SAY @187
= @188
++ @189 + talk_weapons_13
++ @190 + talk_weapons_14
++ @191 + talk_weapons_15
END

IF ~~ THEN talk_weapons_17
SAY @192
++ @193 + talk_weapons_18
++ @194 + talk_weapons_19
END

IF ~~ THEN talk_weapons_18
SAY @195
++ @196 + talk_weapons_13
++ @197 + talk_weapons_14
++ @198 + talk_weapons_15
END

IF ~~ THEN talk_weapons_19
SAY @199
IF ~~ THEN EXIT
END



//------7th talk---------
IF ~Global("C#AjantisFriendTalk","GLOBAL",14)~ THEN talk_illusion
SAY @200 
+ ~!Class(Player1,PALADIN)~ + @201 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_03
+ ~!Class(Player1,PALADIN)~ + @202 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_03
+ ~Class(Player1,PALADIN)~ + @201 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_03b
+ ~Class(Player1,PALADIN)~ + @202 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_03b
++ @203 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_09
++ @204 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_12
+ ~!Alignment(Player1,MASK_EVIL) Global("C#AjantisBadJoke","GLOBAL",0)~ + @205 DO ~IncrementGlobal("C#AjantisBadJoke","GLOBAL",1) SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_13
+ ~!Alignment(Player1,MASK_EVIL) Global("C#AjantisBadJoke","GLOBAL",1)~ + @205 DO ~IncrementGlobal("C#AjantisBadJoke","GLOBAL",1) SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_02
+ ~Alignment(Player1,MASK_EVIL)~ + @205 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",15)~ + talk_illusion_01
END

IF ~~ THEN talk_illusion_01
SAY @206
= @207
= @208
IF ~~ THEN EXIT
END

IF ~~ THEN talk_illusion_02
SAY @209
++ @210 + talk_illusion_08
+ ~ReputationGT(Player1,11)~ + @211 + talk_illusion_08
+ ~ReputationLT(Player1,12)~ + @211 + talk_illusion_14
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @212 + talk_no_interest
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @212 + talk_illusion_15
END

IF ~~ THEN talk_illusion_03
SAY @213
++ @214 + talk_illusion_04
++ @215 + talk_illusion_07
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @216 + talk_no_interest
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @216 + talk_illusion_15
END

IF ~~ THEN talk_illusion_03b
SAY @217
++ @218 + talk_illusion_05
++ @219 + talk_illusion_04
++ @215 + talk_illusion_07
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @216 + talk_no_interest
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @216 + talk_illusion_15
END

IF ~~ THEN talk_illusion_04
SAY @220
+ ~!Class(Player1,PALADIN)~ + @221 + talk_illusion_05
+ ~Class(Player1,PALADIN)~ + @222 + talk_illusion_05
++ @223 + talk_illusion_05
++ @224 + talk_illusion_06
END

IF ~~ THEN talk_illusion_05
SAY @225
IF ~~ THEN EXIT
END

IF ~~ THEN talk_illusion_06
SAY @226
IF ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN EXIT
IF ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ THEN EXIT
END

IF ~~ THEN talk_illusion_07
SAY @227
+ ~!Class(Player1,PALADIN)~ + @221 + talk_illusion_05
+ ~Class(Player1,PALADIN)~ + @222 + talk_illusion_05
++ @223 + talk_illusion_05
++ @224 + talk_illusion_06
END

IF ~~ THEN talk_illusion_08
SAY @228
+ ~!Class(Player1,PALADIN)~ + @229 + talk_illusion_03
+ ~!Class(Player1,PALADIN)~ + @230 + talk_illusion_03
+ ~Class(Player1,PALADIN)~ + @229 + talk_illusion_03b
+ ~Class(Player1,PALADIN)~ + @230 + talk_illusion_03b
++ @203 + talk_illusion_09
++ @231 + talk_illusion_12
++ @232 + talk_no_interest
END

IF ~~ THEN talk_illusion_09
SAY @233
IF ~GlobalGT("udDrowPlot","GLOBAL",99)
GlobalGT("Chapter","GLOBAL",%bg2_chapter_4%)~ THEN + talk_illusion_10
IF ~OR(2)
GlobalLT("udDrowPlot","GLOBAL",100)
GlobalLT("Chapter","GLOBAL",%bg2_chapter_5%)~ + talk_illusion_11
END

IF ~~ THEN talk_illusion_10
SAY @234
IF ~!Class(Player1,PALADIN)~ THEN + talk_illusion_03
IF ~Class(Player1,PALADIN)~ THEN + talk_illusion_03b
END

IF ~~ THEN talk_illusion_11
SAY @235
IF ~!Class(Player1,PALADIN)~ THEN + talk_illusion_03
IF ~Class(Player1,PALADIN)~ THEN + talk_illusion_03b
END

IF ~~ THEN talk_illusion_12
SAY @236
IF ~!Class(Player1,PALADIN)~ THEN + talk_illusion_03
IF ~Class(Player1,PALADIN)~ THEN + talk_illusion_03b
END

IF ~~ THEN talk_illusion_13
SAY @206
++ @237 + talk_illusion_08
+ ~ReputationGT(Player1,11)~ + @211 + talk_illusion_08
+ ~ReputationLT(Player1,12)~ + @211 + talk_illusion_14
+ ~OR(2) Global("C#AjantisNewRomMatch","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",3)~ + @212 + talk_no_interest
+ ~Global("C#AjantisNewRomMatch","GLOBAL",1) !Global("C#AjantisRomanceActive","GLOBAL",3)~ + @212 + talk_illusion_15
END

IF ~~ THEN talk_illusion_14
SAY @238
= @239
IF ~~ THEN EXIT
END

IF ~~ THEN talk_illusion_15
SAY @240
IF ~~ THEN EXIT
END



//------8th talk---------

// coded so this talk triggers inside a tavern after 6th dialogue (friendship timer reset) 

IF ~Global("C#AjantisFTTavernDrink","GLOBAL",1)~ THEN talk_drinking
SAY @241 
++ @242 DO ~SetGlobal("C#AjantisFTTavernDrink","GLOBAL",2)~ + talk_drinking_01
++ @243 DO ~SetGlobal("C#AjantisFTTavernDrink","GLOBAL",2)~ + talk_drinking_02
++ @244 DO ~SetGlobal("C#AjantisFTTavernDrink","GLOBAL",2)~ + talk_drinking_02
++ @245 DO ~SetGlobal("C#AjantisFTTavernDrink","GLOBAL",2)~ + talk_drinking_03
END 

IF ~~ THEN talk_drinking_01
SAY @246
= @247
++ @248 + talk_drinking_07
++ @249 + talk_drinking_06
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @250 + talk_drinking_05
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @251 + talk_drinking_08
++ @252 + talk_drinking_03
END

IF ~~ THEN talk_drinking_02
SAY @253
IF ~~ THEN + talk_drinking_01
END

IF ~~ THEN talk_drinking_03
SAY @254
IF ~~ THEN EXIT
END

IF ~~ THEN talk_drinking_04
SAY @255
IF ~~ THEN EXIT 
END

IF ~~ THEN talk_drinking_05
SAY @256
IF ~~ THEN + talk_drinking_04
END

IF ~~ THEN talk_drinking_06
SAY @257
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @250 + talk_drinking_05
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @251 + talk_drinking_08
++ @258 + talk_drinking_04
END

IF ~~ THEN talk_drinking_07
SAY @259
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @250 + talk_drinking_05
+ ~Global("C#AjantisRomanceActive","GLOBAL",1)~ + @251 + talk_drinking_08
++ @258 + talk_drinking_04
END

IF ~~ THEN talk_drinking_08
SAY @260
IF ~~ THEN + talk_drinking_05
END

END

//------encounter of the embarrassing sort---------
// happens after "tavern " dialogue or talk 7, depending on what happened earlier, on the street
//see Ajantis, see Player1

BEGIN C#AJPROS

CHAIN
IF ~Global("C#AjantisFTVerwechslung","GLOBAL",1)~ THEN C#AJPROS verwechslung
@261 DO ~SetGlobal("C#AjantisFTVerwechslung","GLOBAL",2)~
== C#AjanJ @262
== C#AJPROS @263
== C#AjanJ @264
== C#AJPROS @265
== C#AjanJ @266
= @267
= @268
END
++ @269 DO ~SetGlobal("C#AjantisFPVerwHilfe","LOCALS",1)~ EXTERN C#AjanJ verwechslung_aj
++ @270 EXTERN C#AjanJ verwechslung_aj 
++ @271 EXTERN C#AjanJ verwechslung_aj 

CHAIN
IF ~~ THEN C#AjanJ verwechslung_aj
@272
== C#AJPROS @273
= @274
== C#AjanJ @275
END
++ @276 EXTERN C#AJPROS verwechslung_02 
++ @277 EXTERN C#AJPROS verwechslung_02 
++ @278 EXTERN C#AJPROS verwechslung_02 
+ ~Gender(Player1,MALE)~ + @279 EXTERN C#AJPROS verwechslung_02

CHAIN
IF ~~ THEN C#AJPROS verwechslung_02
@280
== C#AjanJ @281
== C#AJPROS IF ~Gender(Player1,MALE)~ THEN @282
== C#AJPROS @283 DO ~EscapeArea()~
== C#AjanJ @284
== C#AjanJ @285
== C#AjanJ IF ~Global("C#AjantisFPVerwHilfe","LOCALS",1)~ THEN @286
== C#AjanJ @287
EXIT




////////////////////////////////////////////////////////////////////////
/* Bodhi's Labyrinth: slayer changes */


APPEND C#AjanJ



IF ~Global("C#AjanSlayerChangeAR1514","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",2) 
!Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN slayerchange
SAY @335 
= @336
++ @337 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + slayerchange_01
++ @338 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + slayerchange_01
++ @339 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + slayerchange_01
++ @340 DO ~SetGlobal("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + slayerchange_04
END

IF ~~ THEN slayerchange_01
SAY @341
+ ~!Alignment(Player1,MASK_EVIL)~ + @342 + slayerchange_08
+ ~!Alignment(Player1,MASK_EVIL)~ + @345 + slayerchange_09
+ ~Alignment(Player1,MASK_EVIL)~ + @342 + slayerchange_02
++ @343 + slayerchange_05
++ @344 + slayerchange_06
+ ~Alignment(Player1,MASK_EVIL)~ + @345 + slayerchange_07
END

IF ~~ THEN slayerchange_02
SAY @346
IF ~~ THEN + slayerchange_03
END

IF ~~ THEN slayerchange_03
SAY @347
IF ~~ THEN EXIT
END

IF ~~ THEN slayerchange_04
SAY @348
IF ~~ THEN + slayerchange_01
END

IF ~~ THEN slayerchange_05
SAY @349
IF ~~ THEN + slayerchange_03
END

IF ~~ THEN slayerchange_06
SAY @350
IF ~~ THEN + slayerchange_03
END

IF ~~ THEN slayerchange_07
SAY @351
IF ~~ THEN + slayerchange_06
END

IF ~~ THEN slayerchange_08
SAY @352
IF ~~ THEN + slayerchange_03
END

IF ~~ THEN slayerchange_09
SAY @353
IF ~~ THEN + slayerchange_03
END


///////////////////////////////////////////////////////////////////////

//Cycle continues after the exit of the Underdark (after "silver lady gives up her post" FT)

//------10th talk---------


IF ~Global("C#AjantisFriendTalk","GLOBAL",16)~ THEN talk_destiny
SAY @288 
= @289
= @290
IF ~~ THEN DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",17)~ EXIT
END

//------11th talk---------

//sacrifice of the good
IF ~Global("C#AjantisFriendTalk","GLOBAL",18)~ THEN talk_sacrifices
SAY @291 
++ @292 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",19)~ + talk_sacrifices_03
++ @293 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",19)~ + talk_sacrifices_03
++ @294 DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",19)~ + talk_sacrifices_01
END

IF ~~ THEN talk_sacrifices_01
SAY @295
IF ~~ THEN + talk_sacrifices_02
END

IF ~~ THEN talk_sacrifices_02
SAY @296
IF ~~ THEN EXIT
END

IF ~~ THEN talk_sacrifices_03
SAY @297
= @298
++ @299 + talk_sacrifices_04
++ @300 + talk_sacrifices_08
++ @301 + talk_sacrifices_09
++ @302 + talk_sacrifices_01
END

IF ~~ THEN talk_sacrifices_04
SAY @303
IF ~~ THEN + talk_sacrifices_08
END

IF ~~ THEN talk_sacrifices_05
SAY @304
++ @305 + talk_sacrifices_10
++ @306 + talk_sacrifices_06
++ @307 + talk_sacrifices_07
++ @308 + talk_sacrifices_01
END

IF ~~ THEN talk_sacrifices_06
SAY @309
IF ~~ THEN + talk_sacrifices_02
END

IF ~~ THEN talk_sacrifices_07
SAY @310
= @311
++ @312 + talk_sacrifices_10
++ @306 + talk_sacrifices_06
++ @308 + talk_sacrifices_01
END

IF ~~ THEN talk_sacrifices_08
SAY @313
= @314
++ @315 + talk_sacrifices_05
++ @305 + talk_sacrifices_10
++ @306 + talk_sacrifices_06
++ @307 + talk_sacrifices_07
++ @308 + talk_sacrifices_01
END

IF ~~ THEN talk_sacrifices_09
SAY @316
IF ~~ THEN + talk_sacrifices_08
END

IF ~~ THEN talk_sacrifices_10
SAY @317
IF ~~ THEN + talk_sacrifices_02
END



//------12th talk---------

IF ~Global("C#AjantisFriendTalk","GLOBAL",20)~ THEN talk_power
SAY @318 
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @319 + talk_power_01
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @320 + talk_power_01
IF ~Global("C#AjantisRomanceActive","GLOBAL",1)~ THEN + talk_power_07
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @321 + talk_power_05
+ ~!Global("C#AjantisRomanceActive","GLOBAL",1)~ + @322 + talk_power_08
END

IF ~~ THEN talk_power_01
SAY @323
IF ~ReputationGT(Player1,17)~ THEN + talk_power_02
IF ~ReputationGT(Player1,9) ReputationLT(Player1,18)~ THEN + talk_power_03 
IF ~ReputationLT(Player1,10)~ THEN + talk_power_04
END

IF ~~ THEN talk_power_02
SAY @324
IF ~~ THEN + talk_power_06
END

IF ~~ THEN talk_power_03
SAY @325
IF ~~ THEN + talk_power_06
END

IF ~~ THEN talk_power_04
SAY @326
IF ~~ THEN + talk_power_06
END

IF ~~ THEN talk_power_05
SAY @327
IF ~~ THEN + talk_power_01
END

IF ~~ THEN talk_power_06
SAY @328
= @329
IF ~~ THEN + talk_power_09
END

IF ~~ THEN talk_power_07
SAY @330
IF ~~ THEN + talk_power_01
END

IF ~~ THEN talk_power_08
SAY @102
IF ~~ THEN + talk_power_09
END

IF ~~ THEN talk_power_09
SAY @331
IF ~~ THEN DO ~SetGlobal("C#AjantisFriendTalk","GLOBAL",21)~ EXIT
END


END

