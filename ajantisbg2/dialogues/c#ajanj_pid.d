APPEND C#AjanJ

//Global("C#AjantisPCMarriage","GLOBAL",1) 
//Global("C#AjantisThiefStronghold","GLOBAL",2)
//Global("C#AjantisWarUnzufrieden","GLOBAL",1)

//Global("C#AjantisQuestErschaffen","GLOBAL",1) : Begrüßung in Firkraags Enklave
//GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0): Tempel des Oghma (Quest wurde übersprungen)

//PID

//NPC-specific PIDs 

IF ~IsGabber("keldorn")~ THEN keldorn_PID
SAY @0
IF ~~ THEN EXIT
END

IF ~IsGabber(Player2) !Alignment(Player2,MASK_EVIL)~ THEN player_2
SAY @1
IF ~~ THEN EXIT
END

IF ~IsGabber(Player3) !Alignment(Player3,MASK_EVIL)~ THEN player_3
SAY @2
IF ~~ THEN EXIT
END

IF ~IsGabber(Player4) !Alignment(Player4,MASK_EVIL)~ THEN player_4
SAY @3
IF ~~ THEN EXIT
END

IF ~IsGabber(Player5) !Alignment(Player5,MASK_EVIL)~ THEN player_5
SAY @4
IF ~~ THEN EXIT
END

IF ~IsGabber(Player6) !Alignment(Player6,MASK_EVIL)~ THEN player_6
SAY @5
IF ~~ THEN EXIT
END

IF ~IsGabber(Player2) Alignment(Player2,MASK_EVIL)~ THEN player_2_evil
SAY @6
IF ~~ THEN EXIT
END

IF ~IsGabber(Player3) Alignment(Player3,MASK_EVIL)~ THEN player_3_evil
SAY @1056
IF ~~ THEN EXIT
END

IF ~IsGabber(Player4) Alignment(Player4,MASK_EVIL)~ THEN player_4_evil
SAY @1057
IF ~~ THEN EXIT
END

IF ~IsGabber(Player5) Alignment(Player5,MASK_EVIL)~ THEN player_5_evil
SAY @1058
IF ~~ THEN EXIT
END

IF ~IsGabber(Player6) Alignment(Player6,MASK_EVIL)~ THEN player_6_evil
SAY @1059
IF ~~ THEN EXIT
END


IF ~IsGabber(Player1) Global("Slayer10","GLOBAL",2)~ THEN PID_slayer
SAY @7
IF ~~ THEN EXIT
END

//PC PIDs


//romance

//PC chose another man while Ajantis was away (Ajantis doesn't know yet)
IF ~IsGabber(PLayer1)
Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisPCBrokeRomance","GLOBAL",0)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ THEN PID_romdied
SAY @8 
+ ~Global("AnomenRomanceActive","GLOBAL",2)
OR(2)
GlobalGT("C#CheckAnomenLTGT32","GLOBAL",0) //after Anomen love night
Global("C#AjantisPCSleptWithAno","GLOBAL",1)
Global("C#AjantisPCAnomenRomance","GLOBAL",0)~ + @9 DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",4)~ + 10
+ ~Global("AnomenRomanceActive","GLOBAL",2)
OR(2)
GlobalGT("C#CheckAnomenLTGT32","GLOBAL",0) //after Anomen love night
Global("C#AjantisPCSleptWithAno","GLOBAL",1) Global("C#AjantisPCAnomenRomance","GLOBAL",0)~ + @10 DO ~SetGlobal("C#AjantisPCAnomenRomance","GLOBAL",4)~ + 2
+ ~OR(2)
Global("C#CheckAnomenLTGT34","GLOBAL",1) //romance proceeded 
Global("C#AjantisPCSleptWithAno","GLOBAL",1) //PC slept with Anomen
Global("C#AjantisPCAnomenRomance","GLOBAL",0) //no dialogue after Anomen loving
Global("AnomenRomanceActive","GLOBAL",3) //Anomen romance dead	Global("C#AjantisPCAnomenNight","GLOBAL",0)~ + @11 DO ~SetGlobal("C#AjantisPCAnomenNight","GLOBAL",2)~ + 2
+ ~Global("C#AjantisPCModRomance","GLOBAL",0)
Global("C#AjantisPCAnomenRom","GLOBAL",0)~ + @12 DO ~SetGlobal("C#AjantisPCModRomance","GLOBAL",3) SetGlobal("C#AjantisPCOtherRom","GLOBAL",2)~ + 10
++ @13 EXIT
++ @14 + stringfixer
END

IF ~IsGabber(Player1)
ActuallyInCombat()~ THEN in_combat_PID
SAY @15
IF ~~ THEN EXIT
END



//friendship PID 


/* looks like drow and in hell*/

IF ~IsGabber(Player1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",2)
OR(2)
	Global("C#AjantisRomanceActive","GLOBAL",3) 
	Global("C#AjantisRomanceActive","GLOBAL",0)
OR(8)
Global("PlayerLooksLikeDrow","GLOBAL",1)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
AreaCheck("AR2906")~ THEN PID_friendship_hell
SAY @984 

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04

+ ~RandomNum(2,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_drow_01
+ ~RandomNum(2,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_drow_02

+ ~RandomNum(2,1) Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @19 + C#Advice_drow
+ ~RandomNum(2,2) Global("PlayerLooksLikeDrow","GLOBAL",1)~ + @19 + how_drow_02

+ ~RandomNum(2,1) Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @19 + C#Advice_hell
+ ~RandomNum(2,2) Global("PlayerLooksLikeDrow","GLOBAL",0)~ + @19 + how_drow_02

++ @20 + C#AreYouContent_drow

+ ~Global("C#AjantisSchweigen","GLOBAL",0)~ + @32 + schweigen_PID
+ ~Global("C#AjantisSchweigen","GLOBAL",1)~ + @33 + reden_PID

++ @34 EXIT
++ @35 + stringfixer

END


/* friendship PID: normal PID */

IF ~IsGabber(Player1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",2)
OR(2)
	Global("C#AjantisRomanceActive","GLOBAL",3) 
	Global("C#AjantisRomanceActive","GLOBAL",0)
Global("PlayerLooksLikeDrow","GLOBAL",0)
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN PID_friendship
SAY @16 

+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",0)~ + @1010 DO ~SetGlobal("C#AjantinEilaPID","GLOBAL",1)~ + eila_PID_01
+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",1)~ + @1010 + eila_PID_02
+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",2)~ + @1010 DO ~SetGlobal("C#AjantinEilaPID","GLOBAL",3)~ + eila_PID_03
+ ~Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",3)~ + @1010 DO ~SetGlobal("C#AjantinEilaPID","GLOBAL",4)~ + eila_PID_04
+ ~RandomNum(3,1) Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",4)~ + @1010 + eila_PID_05
+ ~RandomNum(3,2) Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",4)~ + @1010 + eila_PID_06
+ ~RandomNum(3,3) Global("C#AjanEngagementBrokenBG1","GLOBAL",0)
Global("C#AjantisRomanceActive","GLOBAL",0) Global("C#AjanEnderoldQuest","GLOBAL",0)
Global("C#AjantisEilaSecondMeeting","GLOBAL",1)
Global("C#AjantinEilaPID","GLOBAL",4)~ + @1010 + eila_PID_07

++ @17 + PID_friendship_talk

//@18

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04

+ ~RandomNum(4,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_01
+ ~RandomNum(4,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_02
+ ~RandomNum(4,3)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_03
+ ~RandomNum(4,4)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_04 

+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + @19 + C#Advice1
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%)~ + @19 + C#Advice2
+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + @19 + C#Advice3
+ ~Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + @19 + C#Advice4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + @19 + C#Advice5
+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @19 + C#Advice6

+ ~Alignment(Player1,MASK_GOOD) Alignment(Player2,MASK_GOOD) Alignment(Player3,MASK_GOOD) Alignment(Player4,MASK_GOOD) Alignment(Player5,MASK_GOOD) Alignment(Player6,MASK_GOOD)~ + @20 + C#AreYouContent1
+ ~Alignment(Player1,MASK_GOOD) OR(5) !Alignment(Player2,MASK_GOOD) !Alignment(Player3,MASK_GOOD) !Alignment(Player4,MASK_GOOD) !Alignment(Player5,MASK_GOOD) !Alignment(Player6,MASK_GOOD)~ + @20 + C#AreYouContent2
+ ~Alignment(Player1,MASK_GENEUTRAL) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL)~ + @20 + C#AreYouContent3
+ ~!Alignment(Player1,MASK_EVIL) OR(5) Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL)~ + @20 + C#AreYouContent4
+ ~Alignment(Player1,MASK_EVIL)~ + @20 + C#AreYouContent5

+ ~Reputation(Player1,20) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @21 + C#GoodLeader1

+ ~Reputation(Player1,20) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @21 + C#GoodLeader1_1

+ ~ReputationGT(Player1,12) ReputationLT(Player1,20)  GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @21 + C#GoodLeader2

+ ~ReputationGT(Player1,12) ReputationLT(Player1,20)  GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @21 + C#GoodLeader3

+ ~ReputationGT(Player1,9) ReputationLT(Player1,13) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @21 + C#GoodLeader3

+ ~ReputationGT(Player1,9) ReputationLT(Player1,13) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @21 + C#GoodLeader4

+ ~ReputationGT(Player1,8) ReputationLT(Player1,10) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @21 + C#GoodLeader4

+ ~ReputationGT(Player1,8) ReputationLT(Player1,10) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @21 + C#GoodLeader5

+ ~ReputationLT(Player1,9)~ + @21 + C#GoodLeader5

+ ~RandomNum(4,1) !Class(Player1,PALADIN)~ + @22 + C#Paladin1
+ ~RandomNum(4,2) !Class(Player1,PALADIN)~ + @22 + C#Paladin2
+ ~RandomNum(4,3) !Class(Player1,PALADIN)~ + @22 + C#Paladin3
+ ~RandomNum(4,4) !Class(Player1,PALADIN)~ + @22 + C#Paladin4

+ ~RandomNum(4,1)~ + @23 + C#Relax1
+ ~RandomNum(4,2)~ + @23 + C#Relax2
+ ~RandomNum(4,3)~ + @23 + C#Relax3
+ ~RandomNum(4,4)~ + @23 + C#Relax4

+ ~RandomNum(4,1)~ + @24 + C#KnightDayOff1
+ ~RandomNum(4,2)~ + @24 + C#KnightDayOff2
+ ~RandomNum(4,3)~ + @24 + C#KnightDayOff3
+ ~RandomNum(4,4)~ + @24 + C#KnightDayOff4

+ ~RandomNum(4,1) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm1
+ ~RandomNum(4,2) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm2
+ ~RandomNum(4,3) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm3
+ ~RandomNum(4,4) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm4
+ ~OR(2)
Global("JoinHelm","GLOBAL",1)
Kit(Player1,GODHELM)
!Global("Stripped","GLOBAL",2)
!Global("Talonwar","GLOBAL",5)~ + @26 + C#TellMeAboutHelm5

+ ~RandomNum(3,1) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,2) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart2
+ ~RandomNum(3,3) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart3

+ ~RandomNum(3,1)~ + @28 + Waterdeep1
+ ~RandomNum(3,2)~ + @28 + Waterdeep2
+ ~RandomNum(3,3)~ + @28 + Waterdeep3

+ ~RandomNum(3,1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Alignment(Player1,MASK_EVIL)~ + @29 + ale_01
+ ~RandomNum(3,2)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Alignment(Player1,MASK_EVIL)~ + @29 + ale_02 
+ ~RandomNum(3,3)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Alignment(Player1,MASK_EVIL)~ + @29 + ale_03 

+ ~RandomNum(3,3)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
Alignment(Player1,MASK_EVIL)~ + @29 + ale_evil

+ ~RandomNum(3,1) Gender(Player1,MALE)~ + @30 + shoulder_flap_01
+ ~RandomNum(3,2) Gender(Player1,MALE)~ + @30 + shoulder_flap_02
+ ~RandomNum(3,3) Gender(Player1,MALE)~ + @30 + shoulder_flap_03

+ ~RandomNum(3,1) !Alignment(Player1,MASK_EVIL)~ + @31 + competition_01
+ ~RandomNum(3,2) !Alignment(Player1,MASK_EVIL)~ + @31 + competition_02
+ ~RandomNum(3,3) !Alignment(Player1,MASK_EVIL)~ + @31 + competition_03

+ ~RandomNum(3,1) Alignment(Player1,MASK_EVIL)~ + @31 + competition_evil_01
+ ~RandomNum(3,2) Alignment(Player1,MASK_EVIL)~ + @31 + competition_evil_02
+ ~RandomNum(3,3) Alignment(Player1,MASK_EVIL)~ + @31 + competition_evil_03

+ ~Global("C#AjantisSchweigen","GLOBAL",0)~ + @32 + schweigen_PID
+ ~Global("C#AjantisSchweigen","GLOBAL",1)~ + @33 + reden_PID

++ @34 EXIT
++ @35 + stringfixer

END



//new beginnings romance PID: drow

IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",1)
~ THEN PID_new_beginnings_rom_drow
SAY @56 

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70_flirt
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01_flirt
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02_flirt
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03_flirt
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04_flirt

+ ~RandomNum(2,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_drow_01
+ ~RandomNum(2,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_drow_02

+ ~RandomNum(2,1)~ + @19 + C#Advice_drow
+ ~RandomNum(2,2)~ + @19 + how_drow_02

++ @20 + C#AreYouContent_drow

++ @964 + nb_complimenting_fighting_hell
 
+ ~RandomNum(4,1)~ + @965 + nb_complimenting_01
+ ~RandomNum(4,2)~ + @965 + nb_complimenting_02
+ ~RandomNum(4,3)~ + @965 + nb_complimenting_03
+ ~RandomNum(4,4)~ + @965 + nb_complimenting_04

++ @58 + look_nb_drow

++ @990 + teasing_nb_drow

+ ~RandomNum(2,1)~ + @974 + nb_smile_drow_01
+ ~RandomNum(2,2)~ + @974 + nb_smile_drow_02

+ ~Global("C#AjantisNBFlirtCycle1","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisNBFlirtCycle1","GLOBAL",3)~ + flirt_stop
+ ~Global("C#AjantisNBFlirtCycle","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",3)~ + flirt_stop

+ ~Global("C#AjantisSchweigen","GLOBAL",0)~ + @32 + schweigen_PID
+ ~Global("C#AjantisSchweigen","GLOBAL",1)~ + @33 + reden_PID

++ @34 EXIT
++ @35 + stringfixer

END


//new beginnings romance PID: in hell, before marriage proposal (RA = 1)

IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",0)
OR(7)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
AreaCheck("AR2906")
~ THEN PID_new_beginnings_rom_hell
SAY @16 

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70_flirt
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01_flirt
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02_flirt
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03_flirt
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04_flirt

+ ~RandomNum(2,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_drow_01
+ ~RandomNum(2,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_nb_hell

+ ~RandomNum(2,1)~ + @19 + C#Advice_hell
+ ~RandomNum(2,2)~ + @19 + how_drow_02

++ @20 + C#AreYouContent_drow

++ @964 + nb_complimenting_fighting_hell
 
+ ~RandomNum(4,1)~ + @965 + nb_complimenting_01
+ ~RandomNum(4,2)~ + @965 + nb_complimenting_02
+ ~RandomNum(4,3)~ + @965 + nb_complimenting_03
+ ~RandomNum(4,4)~ + @965 + nb_complimenting_04

+ ~RandomNum(2,1)~ + @974 + nb_smile_hell_01
+ ~RandomNum(2,2)~ + @974 + nb_smile_drow_02

+ ~Global("C#AjantisNBFlirtCycle1","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisNBFlirtCycle1","GLOBAL",3)~ + flirt_stop
+ ~Global("C#AjantisNBFlirtCycle","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",3)~ + flirt_stop

+ ~Global("C#AjantisSchweigen","GLOBAL",0)~ + @32 + schweigen_PID
+ ~Global("C#AjantisSchweigen","GLOBAL",1)~ + @33 + reden_PID

++ @34 EXIT
++ @35 + stringfixer

END


//new beginnings romance PID: thinking..

IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",0)
Global("C#AjantisNBThinking","GLOBAL",1)
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN PID_new_beginnings_rom_thinking
SAY @909
++ @910 EXIT
+ ~Global("C#AjantisNBThinkingPID","GLOBAL",0)~ + @911 DO ~SetGlobal("C#AjantisNBThinkingPID","GLOBAL",1)~ + NB_thinking_01
+ ~Global("C#AjantisNBThinkingPID","GLOBAL",1)~ + @911 DO ~SetGlobal("C#AjantisNBThinkingPID","GLOBAL",2)~ + NB_thinking_02
+ ~Global("C#AjantisNBThinkingPID","GLOBAL",2)~ + @911 DO ~SetGlobal("C#AjantisNBThinkingPID","GLOBAL",3)~ + NB_thinking_03
+ ~Global("C#AjantisNBThinkingPID","GLOBAL",3)~ + @916 DO ~SetGlobal("C#AjantisNBThinkingPID","GLOBAL",4)~ + NB_thinking_03
++ @35 + stringfixer
END



//new beginnings romance PID: normal

IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",1) 
!Global("C#AjantisEngaged","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",0)
!Global("C#AjantisNBThinking","GLOBAL",1)
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN PID_new_beginnings_rom
SAY @16 

++ @17 + PID_new_beginnings_rom_talk 

//@18

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70_flirt
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01_flirt
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02_flirt
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03_flirt
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04_flirt

+ ~RandomNum(4,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_01_flirt
+ ~RandomNum(4,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_02_flirt
+ ~RandomNum(4,3)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_03_flirt
+ ~RandomNum(4,4)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_04

+ ~Global("Chapter","GLOBAL",%bg2_chapter_2%)~ + @19 + C#Advice1
+ ~Global("Chapter","GLOBAL",%bg2_chapter_3%)~ + @19 + C#Advice2
+ ~Global("Chapter","GLOBAL",%bg2_chapter_4%)~ + @19 + C#Advice3
+ ~Global("Chapter","GLOBAL",%bg2_chapter_5%)~ + @19 + C#Advice4
+ ~Global("Chapter","GLOBAL",%bg2_chapter_6%)~ + @19 + C#Advice5
+ ~Global("Chapter","GLOBAL",%bg2_chapter_7%)~ + @19 + C#Advice6

+ ~Alignment(Player1,MASK_GOOD) Alignment(Player2,MASK_GOOD) Alignment(Player3,MASK_GOOD) Alignment(Player4,MASK_GOOD) Alignment(Player5,MASK_GOOD) Alignment(Player6,MASK_GOOD)~ + @20 + C#AreYouContent1
+ ~Alignment(Player1,MASK_GOOD) OR(5) !Alignment(Player2,MASK_GOOD) !Alignment(Player3,MASK_GOOD) !Alignment(Player4,MASK_GOOD) !Alignment(Player5,MASK_GOOD) !Alignment(Player6,MASK_GOOD)~ + @20 + C#AreYouContent2
+ ~Alignment(Player1,MASK_GENEUTRAL) !Alignment(Player2,MASK_EVIL) !Alignment(Player3,MASK_EVIL) !Alignment(Player4,MASK_EVIL) !Alignment(Player5,MASK_EVIL) !Alignment(Player6,MASK_EVIL)~ + @20 + C#AreYouContent3
+ ~!Alignment(Player1,MASK_EVIL) OR(5) Alignment(Player2,MASK_EVIL) Alignment(Player3,MASK_EVIL) Alignment(Player4,MASK_EVIL) Alignment(Player5,MASK_EVIL) Alignment(Player6,MASK_EVIL)~ + @20 + C#AreYouContent4

+ ~Reputation(Player1,20) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @21 + C#GoodLeader1

+ ~Reputation(Player1,20) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",2)~ + @21 + C#GoodLeader1_1

+ ~ReputationGT(Player1,12) ReputationLT(Player1,20)  GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3)~ + @21 + C#GoodLeader2

+ ~ReputationGT(Player1,12) ReputationLT(Player1,20)  GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",2)~ + @21 + C#GoodLeader3

+ ~RandomNum(4,1) !Class(Player1,PALADIN)~ + @22 + C#Paladin1
+ ~RandomNum(4,2) !Class(Player1,PALADIN)~ + @22 + C#Paladin2
+ ~RandomNum(4,3) !Class(Player1,PALADIN)~ + @22 + C#Paladin3
+ ~RandomNum(4,4) !Class(Player1,PALADIN)~ + @22 + C#Paladin4

+ ~RandomNum(4,1)~ + @23 + C#Relax1
+ ~RandomNum(4,2)~ + @23 + C#Relax2
+ ~RandomNum(4,3)~ + @23 + C#Relax3
+ ~RandomNum(4,4)~ + @23 + C#Relax4

+ ~RandomNum(4,1)~ + @24 + C#KnightDayOff1
+ ~RandomNum(4,2)~ + @24 + C#KnightDayOff2
+ ~RandomNum(4,3)~ + @24 + C#KnightDayOff3
+ ~RandomNum(4,4)~ + @24 + C#KnightDayOff4

+ ~RandomNum(4,1)~ + @964 + nb_complimenting_fighting_01
+ ~RandomNum(4,2)~ + @964 + nb_complimenting_fighting_02
+ ~RandomNum(4,3)~ + @964 + nb_complimenting_fighting_03
+ ~RandomNum(4,4)~ + @964 + nb_complimenting_fighting_04
 
+ ~RandomNum(4,1)~ + @965 + nb_complimenting_01
+ ~RandomNum(4,2)~ + @965 + nb_complimenting_02
+ ~RandomNum(4,3)~ + @965 + nb_complimenting_03
+ ~RandomNum(4,4)~ + @965 + nb_complimenting_04


+ ~RandomNum(4,1) !Global("JoinHelm","GLOBAL",1) !Kit(Player1,GODHELM)~ + @25 + C#TellMeAboutHelm1
+ ~RandomNum(4,2) !Global("JoinHelm","GLOBAL",1) !Kit(Player1,GODHELM)~ + @25 + C#TellMeAboutHelm2
+ ~RandomNum(4,3) !Global("JoinHelm","GLOBAL",1) !Kit(Player1,GODHELM)~ + @25 + C#TellMeAboutHelm3
+ ~RandomNum(4,4) !Global("JoinHelm","GLOBAL",1) !Kit(Player1,GODHELM)~ + @25 + C#TellMeAboutHelm4
+ ~OR(2)
Global("JoinHelm","GLOBAL",1)
Kit(Player1,GODHELM)
!Global("Stripped","GLOBAL",2)
!Global("Talonwar","GLOBAL",5)~ + @26 + C#TellMeAboutHelm5

+ ~RandomNum(3,1) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,2) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart2
+ ~RandomNum(3,3) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart3

+ ~RandomNum(3,1)~ + @28 + Waterdeep1
+ ~RandomNum(3,2)~ + @28 + Waterdeep2
+ ~RandomNum(3,3)~ + @28 + Waterdeep3

+ ~Global("C#AjantisFamilyFlirt","GLOBAL",0)~ + @57 DO ~SetGlobal("C#AjantisFamilyFlirt","GLOBAL",1)~ + family_01
+ ~RandomNum(3,1) Global("C#AjantisFamilyFlirt","GLOBAL",1)~ + @57 + family_02
+ ~RandomNum(3,2) Global("C#AjantisFamilyFlirt","GLOBAL",1)~ + @57 + family_03
+ ~RandomNum(3,3) Global("C#AjantisFamilyFlirt","GLOBAL",1)~ + @57 + family_04

++ @58 + look_flirt

+ ~RandomNum(3,1)~ + @59 + flip_hair_flirt_01
+ ~RandomNum(3,2)~ + @59 + flip_hair_flirt_02
+ ~RandomNum(3,3)~ + @59 + flip_hair_flirt_03

++ @60 + teasing_flirt

+ ~RandomNum(4,1)~ + @974 + nb_smile_01
+ ~RandomNum(4,2)~ + @974 + nb_smile_02
+ ~RandomNum(4,3)~ + @974 + nb_smile_03
+ ~RandomNum(4,4)~ + @974 + nb_smile_04

++ @921 + touch_nb

+ ~RandomNum(4,1)~ + @1020 + in_face_01
+ ~RandomNum(4,2)~ + @1020 + in_face_02
+ ~RandomNum(4,3)~ + @1020 + in_face_03
+ ~RandomNum(4,4) Global("C#AjantisFaceDirtPID","LOCALS",0)~ + @1020 DO ~SetGlobal("C#AjantisFaceDirtPID","LOCALS",1)~ + in_face_04
+ ~RandomNum(4,4) Global("C#AjantisFaceDirtPID","LOCALS",1)~ + @1020 + in_face_05

+ ~Global("C#AjanNBRSlayerChange2","GLOBAL",3) Global("C#AjanSlayerFightMeNB","LOCALS",0)~ + @1097 DO ~SetGlobal("C#AjanSlayerFightMeNB","LOCALS",1)~ + fight_slayer_nb



+ ~Global("C#AjantisNBFlirtCycle1","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisNBFlirtCycle1","GLOBAL",3)~ + flirt_stop
+ ~Global("C#AjantisNBFlirtCycle","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisNBFlirtCycle","GLOBAL",3)~ + flirt_stop

+ ~Global("C#AjantisSchweigen","GLOBAL",0)~ + @32 + schweigen_PID
+ ~Global("C#AjantisSchweigen","GLOBAL",1)~ + @33 + reden_PID

+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + @1128 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + ritterschlag_PID_nr_05
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0)
GlobalGT("C#AjantisBeschuetzer","GLOBAL",0)~ + @1129 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + ritterschlag_PID_nr_05


++ @34 EXIT
++ @35 + stringfixer

END


IF ~~ THEN fight_slayer_nb
SAY @1130
IF ~~ THEN EXIT
END


IF ~~ THEN in_face_01
SAY @1021
= @1022
= @1023
IF ~~ THEN EXIT
END

IF ~~ THEN in_face_02
SAY @1024
= @1023
IF ~~ THEN EXIT
END

IF ~~ THEN in_face_03
SAY @1025
= @1026
= @1027
= @1028
IF ~~ THEN EXIT
END

IF ~~ THEN in_face_04
SAY @1029
++ @1030 + in_face_04_A
++ @1031 + in_face_04_A
++ @1032 + in_face_04_B
END

IF ~~ THEN in_face_04_A
SAY @1033
IF ~~ THEN + in_face_04_C
END

IF ~~ THEN in_face_04_B
SAY @1034
IF ~~ THEN + in_face_04_A
END

IF ~~ THEN in_face_04_C
SAY @1035
++ @1036 + in_face_05
++ @1037 + in_face_04_D
END

IF ~~ THEN in_face_04_D
SAY @1038
IF ~~ THEN EXIT
END

IF ~~ THEN in_face_05
SAY @1039
= @1028
IF ~~ THEN EXIT
END

IF ~~ THEN look_nb_drow
SAY @302
IF ~RandomNum(3,1)~ THEN + look_drow_01
IF ~RandomNum(3,2)~ THEN + look_nb_drow_02
IF ~RandomNum(3,3)~ THEN + look_drow_03
END

IF ~~ THEN teasing_nb_drow
SAY @984
+ ~RandomNum(3,1)~ + @991 + slap_nb_drow_01
+ ~RandomNum(3,2)~ + @991 + slap_nb_drow_02
+ ~RandomNum(3,3)~ + @991 + slap_nb_drow_03
+ ~RandomNum(3,1)~ + @992 + carry_nb_drow_01
+ ~RandomNum(3,2)~ + @992 + carry_nb_drow_02
+ ~RandomNum(3,3)~ + @992 + carry_nb_drow_03
+ ~RandomNum(3,1)~ + @993 + boots_drow_01
+ ~RandomNum(3,2)~ + @993 + punish_drow_01
+ ~RandomNum(3,3)~ + @993 + punish_drow_03
+ ~RandomNum(3,1)~ + @994 + hot_nb_drow_01
+ ~RandomNum(3,2)~ + @994 + hot_nb_drow_02
+ ~RandomNum(3,3)~ + @994 + hot_nb_drow_03
++ @283 + PID_new_beginnings_rom_drow
END

IF ~~ THEN slap_nb_drow_01
SAY @995
IF ~~ THEN EXIT
END

IF ~~ THEN slap_nb_drow_02
SAY @996
IF ~~ THEN EXIT
END

IF ~~ THEN slap_nb_drow_03
SAY @997
IF ~~ THEN EXIT
END

IF ~~ THEN carry_nb_drow_01
SAY @998
IF ~~ THEN EXIT
END

IF ~~ THEN carry_nb_drow_02
SAY @999
IF ~~ THEN EXIT
END

IF ~~ THEN carry_nb_drow_03
SAY @1000
IF ~~ THEN EXIT
END

IF ~~ THEN hot_nb_drow_01
SAY @1001
IF ~~ THEN EXIT
END

IF ~~ THEN hot_nb_drow_02
SAY @1002
IF ~~ THEN EXIT
END

IF ~~ THEN hot_nb_drow_03
SAY @1003
IF ~~ THEN EXIT
END

IF ~~ THEN nb_smile_drow_01
SAY @985
IF ~~ EXIT 
END

IF ~~ THEN nb_smile_drow_02
SAY @986
IF ~~ EXIT 
END

IF ~~ THEN nb_smile_hell_01
SAY @987
IF ~~ EXIT 
END

IF ~~ THEN nb_smile_01
SAY @980
IF ~~ THEN EXIT
END

IF ~~ THEN nb_smile_02
SAY @981
IF ~~ THEN EXIT
END

IF ~~ THEN nb_smile_03
SAY @982
IF ~~ THEN EXIT
END

IF ~~ THEN nb_smile_04
SAY @983
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_fighting_01
SAY @966
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_fighting_02
SAY @967
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_fighting_03
SAY @968
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_fighting_04
SAY @969
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_fighting_hell
SAY @988
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_01
SAY @966
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_02
SAY @970
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_03
SAY @971
IF ~~ THEN EXIT
END

IF ~~ THEN nb_complimenting_04
SAY @972
IF ~~ THEN EXIT
END

IF ~~ THEN PID_friendship_talk
SAY @36
+ ~Global("C#AjantisAlreadyKnighted","GLOBAL",0)~ + @37 DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ritterschlag_PID_nr_01

+ ~Global("C#AjantisWhatHappened","GLOBAL",0)~ + @38 DO ~SetGlobal("C#AjantisWhatHappened","GLOBAL",1)~ + ajantis_PID_nr_01

+ ~Global("C#AjantisEleianaPID","GLOBAL",0)~ + @39 DO ~SetGlobal("C#AjantisEleianaPID","GLOBAL",1)~ + eleiana_PID

+ ~Global("C#AjantisFirkraagKidnapPID","GLOBAL",0)~ + @40 DO ~SetGlobal("C#AjantisFirkraagKidnapPID","GLOBAL",1)~ + firkraag_kidnap_PID_01

+ ~Global("C#AjantisRitterinnenPID","GLOBAL",0)~ + @41 DO ~SetGlobal("C#AjantisRitterinnenPID","GLOBAL",1)~ + ritterinnen_PID_nr_01

+ ~PartyHasItem("C#AJ0008") Global("C#AjanEngagementBrokenBG1","GLOBAL",1)
Global("C#AjanEngBrokenBG1RingPID","GLOBAL",0)~ + @1053 DO ~SetGlobal("C#AjanEngBrokenBG1RingPID","GLOBAL",1)~ + broken_engagement_ring

++ @42 + PID_friendship
END

IF ~~ THEN broken_engagement_ring
SAY @1054
= @1055
IF ~~ THEN EXIT
END

IF ~~ THEN shoulder_flap_01
SAY @43
IF ~~ THEN EXIT
END

IF ~~ THEN shoulder_flap_02
SAY @44
IF ~~ THEN EXIT
END

IF ~~ THEN shoulder_flap_03
SAY @45
IF ~~ THEN EXIT
END

IF ~~ THEN competition_01
SAY @46
IF ~~ THEN EXIT
END

IF ~~ THEN competition_02
SAY @47
IF ~~ THEN EXIT
END

IF ~~ THEN competition_03
SAY @48
IF ~~ THEN EXIT
END

IF ~~ THEN competition_evil_01
SAY @49
IF ~~ THEN EXIT
END

IF ~~ THEN competition_evil_02
SAY @50
IF ~~ THEN EXIT
END

IF ~~ THEN competition_evil_03
SAY @51
IF ~~ THEN EXIT
END

IF ~~ THEN ale_01
SAY @52
IF ~~ THEN EXIT
END

IF ~~ THEN ale_02
SAY @53
IF ~~ THEN EXIT
END

IF ~~ THEN ale_03
SAY @54
IF ~~ THEN EXIT
END

IF ~~ THEN ale_evil
SAY @55
IF ~~ THEN EXIT
END


IF ~~ THEN NB_thinking_01
SAY @912
IF ~~ THEN EXIT
END

IF ~~ THEN NB_thinking_02
SAY @913
= @914
IF ~~ THEN EXIT
END

IF ~~ THEN NB_thinking_03
SAY @915
IF ~~ THEN EXIT
END

IF ~~ THEN NB_thinking_04
SAY @917
IF ~~ THEN EXIT
END

IF ~~ THEN touch_nb
SAY @123
++ @922 + hair_touch_nb
++ @923 + armour_touch_nb
++ @924 + cheek_touch_nb
++ @34 + PID_new_beginnings_rom
END

IF ~~ THEN hair_touch_nb
SAY @929
+ ~RandomNum(3,1)~ + @925 + hair_touch_nb_01a
+ ~RandomNum(3,2)~ + @925 + hair_touch_nb_01b
+ ~RandomNum(3,3)~ + @925 + hair_touch_nb_01c
++ @34 + PID_new_beginnings_rom
END

IF ~~ THEN hair_touch_nb_01a
SAY @926
IF ~RandomNum(3,1)~ THEN + hair_touch_nb_02a
IF ~RandomNum(3,2)~ THEN + hair_touch_nb_02b
IF ~RandomNum(3,3)~ THEN + hair_touch_nb_02c
END

IF ~~ THEN hair_touch_nb_01b
SAY @930
IF ~RandomNum(3,1)~ THEN + hair_touch_nb_02a
IF ~RandomNum(3,2)~ THEN + hair_touch_nb_02b
IF ~RandomNum(3,3)~ THEN + hair_touch_nb_02c
END

IF ~~ THEN hair_touch_nb_01c
SAY @931
IF ~RandomNum(3,1)~ THEN + hair_touch_nb_02a
IF ~RandomNum(3,2)~ THEN + hair_touch_nb_02b
IF ~RandomNum(3,3)~ THEN + hair_touch_nb_02c
END

IF ~~ THEN hair_touch_nb_02a
SAY @927
IF ~RandomNum(3,1)~ THEN + hair_touch_nb_03a
IF ~RandomNum(3,2)~ THEN + hair_touch_nb_03b
IF ~RandomNum(3,3)~ THEN + hair_touch_nb_03c
END

IF ~~ THEN hair_touch_nb_02b
SAY @932
IF ~RandomNum(3,1)~ THEN + hair_touch_nb_03a
IF ~RandomNum(3,2)~ THEN + hair_touch_nb_03b
IF ~RandomNum(3,3)~ THEN + hair_touch_nb_03c
END

IF ~~ THEN hair_touch_nb_02c
SAY @933
IF ~RandomNum(3,1)~ THEN + hair_touch_nb_03a
IF ~RandomNum(3,2)~ THEN + hair_touch_nb_03b
IF ~RandomNum(3,3)~ THEN + hair_touch_nb_03c
END

IF ~~ THEN hair_touch_nb_03a
SAY @928
IF ~~ THEN EXIT
END

IF ~~ THEN hair_touch_nb_03b
SAY @935
IF ~~ THEN EXIT
END

IF ~~ THEN hair_touch_nb_03c
SAY @934
IF ~~ THEN EXIT
END

IF ~~ THEN armour_touch_nb
SAY @936
+ ~RandomNum(3,1)~ + @947 + armour_touch_nb_zeigen_01
+ ~RandomNum(3,2)~ + @947 + armour_touch_nb_zeigen_02
+ ~RandomNum(3,3)~ + @947 + armour_touch_nb_zeigen_03
+ ~RandomNum(3,1)~ + @948 + armour_touch_nb_touching_01
+ ~RandomNum(3,2)~ + @948 + armour_touch_nb_touching_02
+ ~RandomNum(3,3)~ + @948 + armour_touch_nb_touching_03
++ @34 + PID_new_beginnings_rom
END

IF ~~ THEN armour_touch_nb_zeigen_01
SAY @949
IF ~~ THEN EXIT
END

IF ~~ THEN armour_touch_nb_zeigen_02
SAY @950
IF ~~ THEN EXIT
END

IF ~~ THEN armour_touch_nb_zeigen_03
SAY @951
IF ~~ THEN EXIT
END

IF ~~ THEN armour_touch_nb_touching_01
SAY @952
= @953
= @954
IF ~~ THEN + armour_touch_nb_zeigen_02
END

IF ~~ THEN armour_touch_nb_touching_02
SAY @955
= @956
IF ~~ THEN EXIT
END

IF ~~ THEN armour_touch_nb_touching_03
SAY @957
= @958
IF ~~ THEN + armour_touch_nb_zeigen_01
END

IF ~~ THEN cheek_touch_nb
SAY @973
IF ~RandomNum(3,1)~ THEN + cheek_touch_nb_01
IF ~RandomNum(3,2)~ THEN + cheek_touch_nb_02
IF ~RandomNum(3,3)~ THEN + cheek_touch_nb_03
END

IF ~~ THEN cheek_touch_nb_01
SAY @975
IF ~~ THEN + cheek_touch_nb_end
END

IF ~~ THEN cheek_touch_nb_02
SAY @977
IF ~~ THEN + cheek_touch_nb_end
END

IF ~~ THEN cheek_touch_nb_03
SAY @978
= @979
IF ~~ THEN EXIT
END

IF ~~ THEN cheek_touch_nb_end
SAY @976
IF ~~ THEN EXIT
END

IF ~~ THEN flirt_stop
SAY @920
IF ~~ THEN EXIT
END

IF ~~ THEN family_01
SAY @61
= @62
IF ~~ THEN EXIT
END

IF ~~ THEN family_02
SAY @63
IF ~~ THEN EXIT
END

IF ~~ THEN family_03
SAY @64
IF ~~ THEN EXIT
END

IF ~~ THEN family_04
SAY @65
IF ~~ THEN EXIT
END

IF ~~ THEN teasing_flirt
SAY @66
+ ~RandomNum(3,1)~ + @67 + hips_flirt_01
+ ~RandomNum(3,2)~ + @67 + hips_flirt_02
+ ~RandomNum(3,3)~ + @67 + hips_flirt_03
+ ~RandomNum(3,1)~ + @68 + hair_flirt_01
+ ~RandomNum(3,2)~ + @68 + hair_flirt_02
+ ~RandomNum(3,3)~ + @68 + hips_flirt_02
+ ~RandomNum(3,1)~ + @69 + linger_flirt_01
+ ~RandomNum(3,2)~ + @69 + linger_flirt_02
+ ~RandomNum(3,3)~ + @69 + linger_flirt_03
+ ~RandomNum(3,1)~ + @70 + halt_flirt_01
+ ~RandomNum(3,2)~ + @70 + halt_flirt_02
+ ~RandomNum(3,3)~ + @70 + halt_flirt_03
+ ~RandomNum(3,1)~ + @71 + falling_flirt_01
+ ~RandomNum(3,2)~ + @71 + falling_flirt_02
+ ~RandomNum(3,3)~ + @71 + falling_flirt_03
END

IF ~~ THEN hips_flirt_01
SAY @72
IF ~~ THEN EXIT
END

IF ~~ THEN hips_flirt_02
SAY @73
IF ~~ THEN EXIT
END

IF ~~ THEN hips_flirt_03
SAY @74
IF ~~ THEN EXIT
END

IF ~~ THEN hair_flirt_01
SAY @75
IF ~~ THEN EXIT
END

IF ~~ THEN hair_flirt_02
SAY @76
IF ~~ THEN EXIT
END

IF ~~ THEN linger_flirt_01
SAY @77
IF ~~ THEN EXIT
END

IF ~~ THEN linger_flirt_02
SAY @78
IF ~~ THEN EXIT
END

IF ~~ THEN linger_flirt_03
SAY @79
IF ~~ THEN EXIT
END

IF ~~ THEN halt_flirt_01
SAY @80
IF ~~ THEN EXIT
END

IF ~~ THEN halt_flirt_02
SAY @81
IF ~~ THEN EXIT
END

IF ~~ THEN halt_flirt_03
SAY @82
IF ~~ THEN EXIT
END

IF ~~ THEN falling_flirt_01
SAY @83
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",2)~ THEN EXIT
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",0)~ THEN + falling_flirt_04
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",1)~ THEN + falling_flirt_05
END

IF ~~ THEN falling_flirt_02
SAY @84
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",2)~ THEN EXIT
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",0)~ THEN + falling_flirt_04
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",1)~ THEN + falling_flirt_05
END

IF ~~ THEN falling_flirt_03
SAY @85
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",2)~ THEN EXIT
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",0)~ THEN + falling_flirt_04
IF ~Global("C#AjantisNBFallingFlirt","GLOBAL",1)~ THEN + falling_flirt_05
END

IF ~~ THEN falling_flirt_04
SAY @908 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFallingFlirt","GLOBAL",1)~ EXIT
END

IF ~~ THEN falling_flirt_05
SAY @918 
IF ~~ THEN DO ~SetGlobal("C#AjantisNBFallingFlirt","GLOBAL",2)~ EXIT
END

IF ~~ THEN flip_hair_flirt_01
SAY @86
IF ~~ THEN EXIT
END

IF ~~ THEN flip_hair_flirt_02
SAY @87
IF ~~ THEN EXIT
END

IF ~~ THEN flip_hair_flirt_03
SAY @88
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_70_flirt
SAY @89 
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_70
SAY @90 
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50
SAY @91
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_poisoned
SAY @92
IF ~~ THEN EXIT
END

IF ~~ THEN wounded_50_poisoned
SAY @93
IF ~~ THEN EXIT
END

IF ~~ THEN state_spell
SAY @94
IF ~~ THEN EXIT
END

//day
IF ~~ THEN tired_01_flirt
SAY @95
IF ~~ THEN EXIT
END

IF ~~ THEN tired_01
SAY @96
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02_flirt
SAY @97
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02
SAY @98
IF ~~ THEN EXIT
END

//night
IF ~~ THEN tired_03_flirt
SAY @99
IF ~~ THEN EXIT
END

IF ~~ THEN tired_03
SAY @100
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04_flirt
SAY @101
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04
SAY @102
IF ~~ THEN EXIT
END

IF ~~ THEN how_01_flirt
SAY @103
IF ~~ THEN EXIT
END

IF ~~ THEN how_01
SAY @104
IF ~~ THEN EXIT
END

IF ~~ THEN how_drow_01
SAY @959
IF ~~ THEN EXIT
END

IF ~~ THEN how_drow_02
SAY @960
IF ~~ THEN EXIT
END

IF ~~ THEN how_nb_hell
SAY @1009
IF ~~ THEN EXIT
END

IF ~~ THEN how_02_flirt
SAY @105
IF ~~ THEN EXIT
END

IF ~~ THEN how_02
SAY @106
IF ~~ THEN EXIT
END

IF ~~ THEN how_03_flirt
SAY @107
IF ~~ THEN EXIT
END

IF ~~ THEN how_03
SAY @108
IF ~~ THEN EXIT
END

IF ~~ THEN how_04
SAY @109
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt
SAY @110
++ @111 + look_face_flirt
++ @112 + look_arms_flirt
++ @113 + look_hands_flirt
++ @114 + look_appearance_flirt
++ @115 EXIT
END

IF ~~ THEN look_face_flirt
SAY @116
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_arms_flirt
SAY @117
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_hands_flirt
SAY @118
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_appearance_flirt
SAY @119
IF ~RandomNum(3,1)~ THEN + look_flirt_11
IF ~RandomNum(3,2)~ THEN + look_flirt_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_flirt_11
SAY @120
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt_12
SAY @121
IF ~~ THEN EXIT
END

IF ~~ THEN look_flirt_13
SAY @122
IF ~~ THEN EXIT
END

IF ~~ THEN PID_new_beginnings_rom_talk
SAY @123

//+ ~GlobalGT("C#AjantisFriendTalk","GLOBAL",12)~ + @1092 + weapons_PID

+ ~Global("LadyMaria","GLOBAL",5) Global("C#AjantisNBKeldorn1","GLOBAL",0)~ + @1063 DO ~SetGlobal("C#AjantisNBKeldorn1","GLOBAL",1)~ + keldorns_turmoil_LadyMaria5
+ ~Global("LadyMaria","GLOBAL",4) Global("C#AjantisNBKeldorn1","GLOBAL",0)~ + @1063 DO ~SetGlobal("C#AjantisNBKeldorn1","GLOBAL",1)~ + keldorns_turmoil_LadyMaria4
+ ~OR(2)
Global("LadyMaria","GLOBAL",4)
Global("LadyMaria","GLOBAL",5) Global("C#AjantisNBKeldorn2","GLOBAL",0)~ + @1060 DO ~SetGlobal("C#AjantisNBKeldorn2","GLOBAL",1)~ + keldorns_turmoil_02

+ ~Global("C#AjantisConfessionNewRom","GLOBAL",1)~ + @124 + nearly_confession_PID_01

+ ~Global("C#AjantisQueenOfBeauty","GLOBAL",0)~ + @1040 DO ~SetGlobal("C#AjantisQueenOfBeauty","GLOBAL",1)~ + queen_beauty

+ ~Global("C#AjantisWindspearBody","GLOBAL",1) Global("C#AjantisWindspearBodyRom","GLOBAL",0) Global("C#AjantisRomanceActive","GLOBAL",1)
Global("C#AjantisNewRomMatch","GLOBAL",1)~ + @125 DO ~SetGlobal("C#AjantisWindspearBodyRom","GLOBAL",1)~ + illusion_PID

+ ~Global("C#AjantisAlreadyKnighted","GLOBAL",0)~ + @37 DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ritterschlag_PID_nr_01

+ ~Global("C#AjantisWhatHappened","GLOBAL",0)~ + @38 DO ~SetGlobal("C#AjantisWhatHappened","GLOBAL",1)~ + ajantis_PID_nr_01

+ ~Global("C#AjantisEleianaPID","GLOBAL",0)~ + @39 DO ~SetGlobal("C#AjantisEleianaPID","GLOBAL",1)~ + eleiana_PID

+ ~Global("C#AjantisFirkraagKidnapPID","GLOBAL",0)~ + @40 DO ~SetGlobal("C#AjantisFirkraagKidnapPID","GLOBAL",1)~ + firkraag_kidnap_PID_01

+ ~Global("C#AjantisRitterinnenPID","GLOBAL",0)~ + @41 DO ~SetGlobal("C#AjantisRitterinnenPID","GLOBAL",1)~ + ritterinnen_PID_nr_01

+ ~Global("C#AjantisRomanceActive","GLOBAL",1)
Global("C#AjantisNewRomMatch","GLOBAL",1) Global("C#AjantisTravellingWife","GLOBAL",0)
ReputationGT(Player1,15)~ + @126 DO ~SetGlobal("C#AjantisTravellingWife","GLOBAL",1)~ + travelling_wife
++ @42 + PID_new_beginnings_rom
END

/*
IF ~~ THEN weapons_PID
SAY @1093

*/
IF ~~ THEN keldorns_turmoil_LadyMaria5
SAY @1061
IF ~Global("C#AjantisKeldornMaria5","GLOBAL",2)~ THEN + keldorns_turmoil_LadyMaria5_02
IF ~!Global("C#AjantisKeldornMaria5","GLOBAL",2)~ THEN + keldorns_turmoil_LadyMaria5_03
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_01
SAY @1065
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_02
SAY @1062
+ ~Kit(Player1,GODHELM)~ + @1079 + keldorns_turmoil_LadyMaria5_04
+ ~!Kit(Player1,GODHELM)~ + @1079 + keldorns_turmoil_LadyMaria5_05
++ @1083 + keldorns_turmoil_LadyMaria5_06
+ ~Kit(Player1,GODHELM)~ + @1085 + keldorns_turmoil_LadyMaria5_07
+ ~!Kit(Player1,GODHELM)~ + @1085 + keldorns_turmoil_LadyMaria5_05
++ @1064 + keldorns_turmoil_LadyMaria5_01
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_03
SAY @1078
+ ~Kit(Player1,GODHELM)~ + @1079 + keldorns_turmoil_LadyMaria5_04
+ ~!Kit(Player1,GODHELM)~ + @1079 + keldorns_turmoil_LadyMaria5_05
++ @1083 + keldorns_turmoil_LadyMaria5_06
+ ~Kit(Player1,GODHELM)~ + @1085 + keldorns_turmoil_LadyMaria5_07
+ ~!Kit(Player1,GODHELM)~ + @1085 + keldorns_turmoil_LadyMaria5_05
++ @1064 + keldorns_turmoil_LadyMaria5_01
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_04
SAY @1082
IF ~~ THEN + keldorns_turmoil_LadyMaria5_05
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_05
SAY @1081
= @1080
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_06
SAY @1084
IF ~~ THEN + keldorns_turmoil_LadyMaria5_05
END

IF ~~ THEN keldorns_turmoil_LadyMaria5_07
SAY @1086
IF ~~ THEN + keldorns_turmoil_LadyMaria5_05
END

IF ~~ THEN keldorns_turmoil_LadyMaria4
SAY @1087
IF ~Global("C#AjantisKeldornMaria4","GLOBAL",2)~ THEN + keldorns_turmoil_LadyMaria5_01
IF ~!Global("C#AjantisKeldornMaria4","GLOBAL",2)~ THEN + keldorns_turmoil_LadyMaria5_02
END

IF ~~ THEN keldorns_turmoil_LadyMaria4_01
SAY @1062
++ @1088 + keldorns_turmoil_LadyMaria4_03
+ ~Kit(Player1,GODHELM)~ + @1089 + keldorns_turmoil_LadyMaria4_05
+ ~!Kit(Player1,GODHELM)~ + @1089 + keldorns_turmoil_LadyMaria4_04
++ @1064 + keldorns_turmoil_LadyMaria5_01
END

IF ~~ THEN keldorns_turmoil_LadyMaria4_02
SAY @1078
++ @1088 + keldorns_turmoil_LadyMaria4_03
+ ~Kit(Player1,GODHELM)~ + @1089 + keldorns_turmoil_LadyMaria4_05
+ ~!Kit(Player1,GODHELM)~ + @1089 + keldorns_turmoil_LadyMaria4_04
++ @1064 + keldorns_turmoil_LadyMaria5_01
END

IF ~~ THEN keldorns_turmoil_LadyMaria4_03
SAY @1084
IF ~~ THEN + keldorns_turmoil_LadyMaria4_04
END

IF ~~ THEN keldorns_turmoil_LadyMaria4_04
SAY @1081
= @1090
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_LadyMaria4_05
SAY @1091
IF ~~ THEN + keldorns_turmoil_LadyMaria4_04
END


IF ~~ THEN keldorns_turmoil_02
SAY @1066
= @1067
++ @1092 + keldorns_turmoil_08 
++ @1068 + keldorns_turmoil_04 
+ ~Class(Player1,PALADIN)~ + @1069 + keldorns_turmoil_05
+ ~Class(Player1,PALADIN)~ + @1070 + keldorns_turmoil_06
+ ~!Class(Player1,PALADIN)~ + @1071 + keldorns_turmoil_07
++ @1072 + keldorns_turmoil_03
END

IF ~~ THEN keldorns_turmoil_03
SAY @1073
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_04
SAY @1074
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_05
SAY @1075
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_06
SAY @1076
IF ~~ THEN EXIT
END

IF ~~ THEN keldorns_turmoil_07
SAY @1077
IF ~~ THEN + keldorns_turmoil_04
END

IF ~~ THEN keldorns_turmoil_08
SAY @1093
IF ~~ THEN + keldorns_turmoil_04
END

IF ~~ THEN queen_beauty
SAY @1041
= @1042
= @1043
++ @1044 + queen_beauty_01
++ @1045 + queen_beauty_02
++ @1046 + queen_beauty_03
END

IF ~~ THEN queen_beauty_01
SAY @1049
++ @1050 + queen_beauty_04
++ @1051 + queen_beauty_03
END

IF ~~ THEN queen_beauty_04
SAY @1052
IF ~~ THEN EXIT
END

IF ~~ THEN queen_beauty_02
SAY @1048
IF ~~ THEN EXIT
END

IF ~~ THEN queen_beauty_03
SAY @1047
IF ~~ THEN EXIT
END

IF ~~ THEN nearly_confession_PID_01
SAY @127
++ @128 + nearly_confession_PID_02
++ @129 + nearly_confession_PID_02
++ @130 + nearly_confession_PID_02
END

IF ~~ THEN nearly_confession_PID_02
SAY @131
IF ~~ THEN DO ~SetGlobal("C#AjantisConfessionNewRom","GLOBAL",2)~ EXIT
END

IF ~~ THEN travelling_wife
SAY @132
= @133
IF ~~ THEN EXIT
END

IF ~~ THEN Waterdeep1
SAY @134
IF ~~ THEN EXIT
END

IF ~~ THEN Waterdeep2
SAY @135
IF ~~ THEN EXIT
END

IF ~~ THEN Waterdeep3
SAY @136
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#RadiantHeart1
SAY @137
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#RadiantHeart2
SAY @138
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#RadiantHeart3
SAY @139
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN C#AreYouContent1
SAY @140
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AreYouContent2
SAY @141
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AreYouContent3
SAY @142
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AreYouContent4
SAY @143
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AreYouContent5
SAY @144
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AreYouContent_drow
SAY @962
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice1
SAY @145
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice2
SAY @146
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice3
SAY @147
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice4
SAY @148
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice5
SAY @149
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice6
SAY @150
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Advice_drow
SAY @961
IF ~~ THEN EXIT
END

IF ~~ THEN C#Advice_hell
SAY @963
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm1
SAY @151
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm2
SAY @152
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm3
SAY @153
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm4
SAY @154
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#TellMeAboutHelm5
SAY @155
IF ~RandomNum(4,1)~ THEN + C#TellMeAboutHelm1
IF ~RandomNum(4,2)~ THEN + C#TellMeAboutHelm2
IF ~RandomNum(4,3)~ THEN + C#TellMeAboutHelm3
IF ~RandomNum(4,4)~ THEN + C#TellMeAboutHelm4
END


IF ~~ THEN BEGIN C#KnightDayOff1
SAY @156
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#KnightDayOff2
SAY @157
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#KnightDayOff3
SAY @158
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#KnightDayOff4
SAY @159
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Relax1
SAY @160
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Relax2
SAY @161
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Relax3
SAY @162
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Relax4
SAY @163
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Paladin1
SAY @164
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Paladin2
SAY @165
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Paladin3
SAY @166
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#Paladin4
SAY @167
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#GoodLeader1
SAY @168
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#GoodLeader1_1
SAY @169
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#GoodLeader2
SAY @170
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#GoodLeader3
SAY @171
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#GoodLeader4
SAY @172
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#GoodLeader5
SAY @173
IF ~~ THEN EXIT
END


IF ~~ THEN eila_PID_01
SAY @1011
= @1012
IF ~~ THEN EXIT
END

IF ~~ THEN eila_PID_02
SAY @1013
IF ~Gender(Player1,male)~ THEN DO ~IncrementGlobal("C#AjantinEilaPID","GLOBAL",1)~ EXIT
IF ~Gender(Player1,female)~ THEN DO ~IncrementGlobal("C#AjantinEilaPID","GLOBAL",2)~ EXIT
END

IF ~~ THEN eila_PID_03
SAY @1014 
= @1015
IF ~~ THEN EXIT
END

IF ~~ THEN eila_PID_04
SAY @1016
IF ~~ THEN EXIT
END

IF ~~ THEN eila_PID_05
SAY @1017
IF ~~ THEN EXIT
END

IF ~~ THEN eila_PID_06
SAY @1018
IF ~~ THEN EXIT
END

IF ~~ THEN eila_PID_07
SAY @1019
IF ~~ THEN EXIT
END

IF ~~ THEN schweigen_PID
SAY @174
IF ~~ THEN DO ~SetGlobal("C#AjantisSchweigen","GLOBAL",1)~ EXIT
END

IF ~~ THEN reden_PID
SAY @175
IF ~~ THEN DO ~SetGlobal("C#AjantisSchweigen","GLOBAL",0)~ EXIT
END

IF ~~ THEN gespraech_ende
SAY @176
IF ~~ THEN EXIT
END

IF ~~ THEN illusion_PID
SAY @177
IF ~~ THEN EXIT
END

IF ~~ THEN ritterschlag_PID_nr_01
SAY @178
++ @179 + ritterschlag_PID_nr_03
++ @180 + ritterschlag_PID_nr_03
++ @181 + gespraech_ende
+ ~OR(2)
Alignment(Player1, MASK_EVIL)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",4)~ + @182 + ritterschlag_PID_nr_02
END

IF ~~ THEN ritterschlag_PID_nr_02
SAY @183
IF ~~ THEN EXIT
END

END //APPEND C#AjanJ

CHAIN
IF ~~ THEN C#AjanJ ritterschlag_PID_nr_03
@184
== KELDORJ IF ~InParty("KELDORN") 
!StateCheck("KELDORN",CD_STATE_NOTVALID) 
InMyArea("KELDORN")~ THEN @185
== C#AjanJ IF ~Global("C#AjantisAnomenCongratulations","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",1)~ THEN @186 
== ANOMENJ IF ~Global("C#AjantisAnomenCongratulations","GLOBAL",0) Global("AnomenIsKnight","GLOBAL",1)~ THEN @187 DO ~SetGlobal("C#AjantisAnomenCongratulations","GLOBAL",1)~
== C#AjanJ @188
END
++ @189 + ritterschlag_PID_nr_04
++ @190 + ritterschlag_PID_nr_05

APPEND C#AjanJ

IF ~~ THEN ritterschlag_PID_nr_04
SAY @191
IF ~~ THEN EXIT
END

IF ~~ THEN ritterschlag_PID_nr_05
SAY @192
IF ~~ THEN EXIT
END


IF ~~ THEN ritterinnen_PID_nr_01
SAY @193
++ @194 EXIT 
+ ~!Global("C#AjantisRomanceActive","GLOBAL",3) Global("C#AjantisNewRomMatch","GLOBAL",1)~ + @195 + ritterinnen_PID_nr_02
++ @196 + ritterinnen_PID_nr_04
END

IF ~~ THEN ritterinnen_PID_nr_02
SAY @197
++ @198 + ritterinnen_PID_nr_03
++ @199 + ritterinnen_PID_nr_03
END

IF ~~ THEN ritterinnen_PID_nr_03
SAY @200
IF ~~ THEN EXIT
END

IF ~~ THEN ritterinnen_PID_nr_04
SAY @201
IF ~~ THEN + ritterinnen_PID_nr_03
END

IF ~~ THEN ajantis_PID_nr_01
SAY @202
IF ~Global("C#AjantisAlreadyKnighted","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ritterschlag_PID_nr_03
IF ~Global("C#AjantisAlreadyKnighted","GLOBAL",1)~ THEN + ajantis_PID_nr_02
END

IF ~~ THEN ajantis_PID_nr_02
SAY @203
IF ~~ THEN EXIT
END


// romance PID, engaged path

//!Global("C#AjantisIsThinking","GLOBAL",1) Auch im Unterreich

IF ~IsGabber(PLayer1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisIsThinking","GLOBAL",1)~ THEN PID_rom_thinking
SAY @16 
++ @204 + PID_rom_thinking_01
++ @205 + PID_rom_thinking_02
//+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%)~ + ~Was beschäftigt Euch, Ajantis? Bitte, teilt Euch mir mit.~ + thinking_PID_ ## coden, so dass die beiden "thinking"-Dialoge direkt aufgerufen werden können.

+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) ReputationGT(Player1,11) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4) Global("C#AjantisVerlLoesenPID","GLOBAL",0)~ + @206 DO ~SetGlobal("C#AjantisVerlLoesenPID","GLOBAL",1)~ + PID_rom_thinking_03
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) ReputationGT(Player1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",5) Global("C#AjantisVerlLoesenPID","GLOBAL",0)~ + @206 DO ~SetGlobal("C#AjantisVerlLoesenPID","GLOBAL",1)~ + PID_rom_thinking_03
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
OR(2) ReputationLT(Player1,12) GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3) Global("C#AjantisVerlLoesenPID","GLOBAL",0)~ + @206 DO ~SetGlobal("C#AjantisVerlLoesenPID","GLOBAL",1)~ + PID_rom_thinking_04
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
OR(2) ReputationLT(Player1,16)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",4) Global("C#AjantisVerlLoesenPID","GLOBAL",0)~ + @206 DO ~SetGlobal("C#AjantisVerlLoesenPID","GLOBAL",1)~ + PID_rom_thinking_04
++ @207 + PID_rom_thinking_05

++ @208 + kiss_thinking
++ @209 + hug_thinking

++ @210 + PID_rom_end_01
++ @211 EXIT
++ @212 + stringfixer

END

IF ~~ THEN kiss_thinking
SAY @213
IF ~~ THEN EXIT
END

IF ~~ THEN hug_thinking
SAY @213
IF ~~ THEN EXIT
END

IF ~~ THEN stringfixer
SAY @214
IF ~Global("C#AjantisDisinheritage","GLOBAL",0)~ THEN DO ~StartCutSceneMode() StartCutScene("C#Afix")~ EXIT
IF ~GlobalGT("C#AjantisDisinheritage","GLOBAL",0)~ THEN DO ~StartCutSceneMode() StartCutScene("C#Afixro")~ EXIT
END

IF ~~ THEN PID_rom_thinking_01
SAY @215
IF ~~ THEN EXIT
END

IF ~~ THEN PID_rom_thinking_02
SAY @216
IF ~~ THEN EXIT
END

IF ~~ THEN PID_rom_thinking_03
SAY @217
IF ~~ THEN EXIT
END

IF ~~ THEN PID_rom_thinking_04
SAY @218
++ @219 EXIT
++ @220 + PID_rom_end_02
END

IF ~~ THEN PID_rom_thinking_05
SAY @221
++ @222 EXIT
++ @220 + PID_rom_end_02
END

//wedding ring
/* this PID triggers if Ajantis and the PC went to the goldsmith and are about to chose a wedding ring */

IF ~IsGabber(PLayer1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisHochzeitsPlanen","GLOBAL",2)
!Global("C#AjantisPCChoseRing","GLOBAL",2)
Global("C#AjantisPCSAWWeddingRings","GLOBAL",1)
AreaCheck("AR0704")~ THEN goldsmith_PID
SAY @223 
++ @224 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",1)~ + goldsmith_PID_01
++ @225 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",2)~ + goldsmith_PID_01
++ @226 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",3)~ + goldsmith_PID_01
++ @227 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",4)~ + goldsmith_PID_01
++ @228 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",5)~ + goldsmith_PID_01
++ @229 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",6)~ + goldsmith_PID_01
++ @230 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",7)~ + goldsmith_PID_01
++ @231 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",8)~ + goldsmith_PID_01
++ @232 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",9)~ + goldsmith_PID_01
++ @233 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",10)~ + goldsmith_PID_01
++ @234 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",11)~ + goldsmith_PID_01
++ @235 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",12)~ + goldsmith_PID_01
++ @236 + goldsmith_PID_02
++ @237 EXIT
END

IF ~~ THEN goldsmith_PID_02
SAY @238
= @239
++ @240 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",7)~ + goldsmith_PID_01
++ @241 EXIT
END

END //APPEND

CHAIN
IF ~~ THEN C#AjanJ goldsmith_PID_01
@242
== C#RINGSM IF ~GlobalLT("C#AjantisMusterbeutel","GLOBAL",2)~ THEN @243 DO ~SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6) EscapeArea()~
== C#RINGSM IF ~PartyHasItem("C#AJBA02")~ THEN @244 DO ~TakePartyItem("C#AJBA02") DestroyItem("C#AJBA02") SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6) EscapeArea()~
== C#RINGSM IF ~GlobalGT("C#AjantisMusterbeutel","GLOBAL",1) GlobalLT("C#AjantisMusterbeutel","GLOBAL",5)~ THEN @245 DO ~SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6) EscapeArea()~
== C#RINGSM IF ~Global("C#AjantisMusterbeutel","GLOBAL",5) !PartyHasItem("C#AJBA02")~ THEN @246 DO ~SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6) EscapeArea()~
END
IF ~~ THEN DO ~SetGlobalTimer("C#AjantisGoldsmithSchmiedet","GLOBAL",TWO_DAYS)~ EXIT


APPEND C#AjanJ

//wedding ring
/* this PID triggers if Ajantis has the "sample ring bag" in his inventory */

IF ~IsGabber(PLayer1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisMusterRing","GLOBAL",1)
!Global("C#AjantisPCChoseRing","GLOBAL",2)~ THEN PID_rom_ring
SAY @247 
+ ~PartyHasItem("C#AJBA02")~ + @248 + PID_rom_ring_01
+ ~!PartyHasItem("C#AJBA02")~ + @249 + PID_rom_ring_01b
++ @224 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",1)~ + PID_rom_ring_02
++ @225 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",2)~ + PID_rom_ring_02
++ @226 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",3)~ + PID_rom_ring_02
++ @227 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",4)~ + PID_rom_ring_02
++ @228 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",5)~ + PID_rom_ring_02
++ @229 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",6)~ + PID_rom_ring_02
++ @230 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",7)~ + PID_rom_ring_02
++ @231 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",8)~ + PID_rom_ring_02
++ @232 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",9)~ + PID_rom_ring_02
++ @233 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",10)~ + PID_rom_ring_02
++ @234 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",11)~ + PID_rom_ring_02
++ @235 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",12)~ + PID_rom_ring_02
++ @236 + PID_rom_ring_03
++ @237 EXIT
END

IF ~~ THEN PID_rom_ring_01
SAY @250
IF ~~ THEN EXIT
END

IF ~~ THEN PID_rom_ring_01b
SAY @251
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterbeutel","GLOBAL",1) SetGlobal("C#AjantisMusterRing","GLOBAL",0)~ EXIT
END

IF ~~ THEN PID_rom_ring_02
SAY @252
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterRing","GLOBAL",2) SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisDestroyBag","GLOBAL",1) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6) SetGlobal("C#AjantisBestelltEhering","GLOBAL",1)~ EXIT
END

IF ~~ THEN PID_rom_ring_03
SAY @238
= @239
++ @240 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",7)~ + PID_rom_ring_02
++ @253 EXIT
END



//active romance PIDs, engaged romance

//Unterreich, "looks like drow"

IF ~IsGabber(Player1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisIsThinking","GLOBAL",1)
!Global("C#AjantisMusterRing","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",1)~ THEN PID_rom_engaged_drow
SAY @254  

++ @255 + no_dialogue_drow
++ @256 + drow_flirts

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70_engaged
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~CheckStatGT("C#ajantis",6,FATIGUE) 
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_engaged_hell

+ ~HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
!HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_engaged_drow 

+ ~RandomNum(2,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_engaged_drow_belt

+ ~RandomNum(2,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_engaged_drow

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",1)~ + @257 + C#AjantisPID1.17_drow
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
ReputationGT(Player1,11) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.18
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
ReputationGT(Player1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",5)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.18
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
OR(2) 
ReputationLT(Player1,12) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.19
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
OR(2) 
ReputationLT(Player1,16)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",4) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.19

++ @258 + C#AjantisPID1.23_drow

+ ~RandomNum(3,1)~ + @259 + C#AjantisPID1.40_hell
+ ~RandomNum(3,2)~ + @259 + C#AjantisPID1.41_hell
+ ~RandomNum(3,3)~ + @259 + C#AjantisPID1.42_hell

+ ~RandomNum(3,1)~ + @260 + look_PC_drow_01
+ ~RandomNum(3,2)~ + @260 + look_PC_drow_02
+ ~RandomNum(3,3)~ + @260 + look_PC_drow_03

++ @261 + touch_drow

+ ~RandomNum(3,1)~ + @262 + lust_chambers_PID_01
+ ~RandomNum(3,2)~ + @262 + lust_chambers_PID_02
+ ~RandomNum(3,3)~ + @262 + lust_chambers_PID_03

++ @263 + look_drow

++ @264 + drow_ablehung
++ @265 + drow_ablehung
++ @266 + drow_ablehung

+ ~RandomNum(2,1)~ + @267 + eyecolor_drow
+ ~RandomNum(2,2)~ + @267 + eyecolor_hell

++ @268 + dream_engaged_hell

+ ~OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_drow

++ @270 + no_dialogue_drow

++ @210 + PID_rom_end_01
++ @34 EXIT
++ @212 + stringfixer
END

IF ~~ THEN lust_chambers_PID_01
SAY @271
IF ~~ THEN EXIT
END

IF ~~ THEN lust_chambers_PID_02
SAY @272
IF ~~ THEN EXIT
END

IF ~~ THEN lust_chambers_PID_03
SAY @273
IF ~~ THEN EXIT
END

IF ~~ THEN drow_flirts
SAY @274
++ @275 + kiss_drow_01
++ @276 + kiss_drow_01
+ ~RandomNum(3,1)~ + @277 + smile_drow_01
+ ~RandomNum(3,2)~ + @277 + kiss_drow_01
+ ~RandomNum(3,3)~ + @277 + punish_drow_03

+ ~RandomNum(2,1)~ + @278 + boots_drow_01
+ ~RandomNum(2,2)~ + @278 + punish_drow_03

++ @279 + reward_drow

+ ~RandomNum(3,1) !HasItem("C#AJCHBE","C#Ajantis")~ + @280 + punish_drow_01
+ ~RandomNum(3,2) !HasItem("C#AJCHBE","C#Ajantis")~ + @280 + punish_drow_02
+ ~RandomNum(3,3) !HasItem("C#AJCHBE","C#Ajantis")~ + @280 + punish_drow_03

+ ~RandomNum(3,1) HasItem("C#AJCHBE","C#Ajantis")~ + @280 + punish_drow_04
+ ~RandomNum(3,2) HasItem("C#AJCHBE","C#Ajantis")~ + @280 + punish_drow_02
+ ~RandomNum(3,3) HasItem("C#AJCHBE","C#Ajantis")~ + @280 + punish_drow_03

+ ~RandomNum(3,1)~ + @281 + drink_drow
+ ~RandomNum(3,2)~ + @281 + punish_drow_01
+ ~RandomNum(3,3)~ + @281 + punish_drow_03

+ ~RandomNum(3,1)~ + @282 + service_01
+ ~RandomNum(3,2)~ + @282 + service_02
+ ~RandomNum(3,3)~ + @282 + service_03

++ @283 EXIT 
END

IF ~~ THEN smile_drow_01
SAY @284
IF ~~ THEN EXIT
END

IF ~~ THEN kiss_drow_01
SAY @285
IF ~~ THEN EXIT
END

IF ~~ THEN boots_drow_01
SAY @286
IF ~~ THEN EXIT
END

IF ~~ THEN punish_drow_01
SAY @287
IF ~~ THEN EXIT
END

IF ~~ THEN punish_drow_02
SAY @288
IF ~~ THEN EXIT
END

IF ~~ THEN punish_drow_03
SAY @289
IF ~~ THEN EXIT
END

IF ~~ THEN punish_drow_04
SAY @290
IF ~~ THEN EXIT
END

IF ~~ THEN drink_drow
SAY @291
IF ~~ THEN EXIT
END

IF ~~ THEN service_01
SAY @292
IF ~~ THEN EXIT
END

IF ~~ THEN service_02
SAY @293
IF ~~ THEN EXIT
END

IF ~~ THEN service_03
SAY @294
IF ~~ THEN EXIT
END

IF ~~ THEN reward_drow
SAY @295
+ ~RandomNum(3,1)~ + @264 + reward_drow_01
+ ~RandomNum(3,2)~ + @264 + reward_drow_02
+ ~RandomNum(3,3)~ + @264 + reward_drow_03
+ ~RandomNum(3,1)~ + @265 + reward_drow_01
+ ~RandomNum(3,2)~ + @265 + reward_drow_02
+ ~RandomNum(3,3)~ + @265 + reward_drow_03
+ ~RandomNum(3,1)~ + @266 + reward_drow_01
+ ~RandomNum(3,2)~ + @266 + reward_drow_02
+ ~RandomNum(3,3)~ + @266 + reward_drow_03
END

IF ~~ THEN reward_drow_01
SAY @296
IF ~~ THEN EXIT
END

IF ~~ THEN reward_drow_02
SAY @297
IF ~~ THEN EXIT
END

IF ~~ THEN reward_drow_03
SAY @298
IF ~~ THEN EXIT
END

IF ~~ THEN look_PC_drow_01
SAY @299
IF ~~ THEN EXIT
END

IF ~~ THEN look_PC_drow_02
SAY @300
IF ~~ THEN EXIT
END

IF ~~ THEN look_PC_drow_03
SAY @301
IF ~~ THEN EXIT
END

IF ~~ THEN look_drow
SAY @302
IF ~RandomNum(3,1)~ THEN + look_drow_01
IF ~RandomNum(3,2)~ THEN + look_drow_02
IF ~RandomNum(3,3)~ THEN + look_drow_03
END

IF ~~ THEN look_drow_01
SAY @303
IF ~~ THEN EXIT
END

IF ~~ THEN look_drow_02
SAY @304
IF ~~ THEN EXIT
END

IF ~~ THEN look_drow_03
SAY @305
IF ~~ THEN EXIT
END

IF ~~ THEN look_nb_drow_02
SAY @989
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.17_drow
SAY @306
IF ~~ THEN EXIT
END

IF ~~ THEN eyecolor_drow
SAY @307
IF ~~ THEN EXIT
END

IF ~~ THEN drow_ablehung
SAY @308
IF ~~ THEN EXIT
END

IF ~~ THEN touch_drow
SAY @309
IF ~~ THEN EXIT
END

IF ~~ THEN ring_engaged_drow
SAY @310
IF ~~ THEN EXIT
END

IF ~~ THEN how_engaged_drow
SAY @311
IF ~~ THEN EXIT
END

IF ~~ THEN how_engaged_drow_belt
SAY @312
IF ~~ THEN EXIT
END

IF ~~ THEN no_dialogue_drow
SAY @313
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisPID1.23_drow
SAY @314
IF ~~ THEN EXIT
END

//PIDs in Hell, both engaged romance and NB romance for RA = 2

IF ~IsGabber(Player1)
!ActuallyInCombat()
Global("C#AjantisRomanceActive","GLOBAL",2) 
!Global("C#AjantisIsThinking","GLOBAL",1)
!Global("C#AjantisMusterRing","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",0)
OR(7)
AreaCheck("AR2900")
AreaCheck("AR2901")
AreaCheck("AR2902")
AreaCheck("AR2903")
AreaCheck("AR2904")
AreaCheck("AR2905")
AreaCheck("AR2906")~ THEN PID_rom_engaged_hell
SAY @315  
+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @255 + talk_engaged
+ ~!Global("C#AjantisEngaged","GLOBAL",1)~ + @255 + talk_nbRA2

++ @316 + C#AjantisPID_hell

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70_engaged
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~CheckStatGT("C#ajantis",6,FATIGUE) 
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_engaged_hell

+ ~HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + how_engaged_hell

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",1)~ + @257 + C#AjantisPID1.17
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
ReputationGT(Player1,11) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.18
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
ReputationGT(Player1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",5)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.18
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
OR(2) 
ReputationLT(Player1,12) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.19
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
OR(2) 
ReputationLT(Player1,16)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",4) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.19

+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @317 + reunition_hell

+ ~Global("C#AjantisEngaged","GLOBAL",1)~ + @318 + C#AjantisPID1.20_hell

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,1)~ + @258 + C#AjantisPID1.23
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,2)~ + @258 + C#AjantisPID1.24
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,3)~ + @258 + C#AjantisPID1.25
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,4)~ + @258 + C#AjantisPID1.26
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,5)~ + @258 + C#AjantisPID1.27
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,6)~ + @258 + C#AjantisPID1.28
+ ~GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",2)~ + @258 + C#AjantisPID1.29

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,1)~ + @319 + C#AjantisPID1.30
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,2)~ + @319 + C#AjantisPID1.31
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,3)~ + @319 + C#AjantisPID1.32
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,4)~ + @319 + C#AjantisPID1.33
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,5)~ + @319 + C#AjantisPID1.34
+ ~GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",2)~ + @319 EXTERN C#AJANJ C#AjantisPID1.35

+ ~RandomNum(3,1)~ + @259 + C#AjantisPID1.40_hell
+ ~RandomNum(3,2)~ + @259 + C#AjantisPID1.41_hell
+ ~RandomNum(3,3)~ + @259 + C#AjantisPID1.42_hell

+ ~RandomNum(4,1) Global("C#AjantisEngaged","GLOBAL",1)~ + @320 + C#AjantisPID1.45
+ ~RandomNum(4,2) Global("C#AjantisEngaged","GLOBAL",1)~ + @320 + C#AjantisPID1.46
+ ~RandomNum(4,3) Global("C#AjantisEngaged","GLOBAL",1)~ + @320 + C#AjantisPID1.47
+ ~RandomNum(4,4) Global("C#AjantisEngaged","GLOBAL",1)~ + @320 + C#AjantisPID1.48

+ ~RandomNum(6,1)~ + @321 EXTERN C#AJANJ C#AjantisPID1.49
+ ~RandomNum(6,2)~ + @321 EXTERN C#AJANJ C#AjantisPID1.50
+ ~RandomNum(6,3)~ + @321 EXTERN C#AJANJ C#AjantisPID1.51
+ ~RandomNum(6,4)~ + @321 EXTERN C#AJANJ C#AjantisPID1.52
+ ~RandomNum(6,5)~ + @321 EXTERN C#AJANJ C#AjantisPID1.53
+ ~RandomNum(6,6)~ + @321 EXTERN C#AJANJ C#AjantisPID1.54

++ @261 + touch_hell

++ @1126 + wortlos_engaged_hell

++ @263 + look

++ @267 + eyecolor_hell

++ @268 + dream_engaged_hell

+ ~RandomNum(3,1) 
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_01
+ ~RandomNum(3,2) 
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_02
+ ~RandomNum(3,3) 
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_03

+ ~RandomNum(4,1) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm1
+ ~RandomNum(4,2) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm2
+ ~RandomNum(4,3) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm3
+ ~RandomNum(4,4) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm4
+ ~OR(2)
Global("JoinHelm","GLOBAL",1)
Kit(Player1,GODHELM)
!Global("Stripped","GLOBAL",2)
!Global("Talonwar","GLOBAL",5)~ + @26 + C#TellMeAboutHelm5

+ ~RandomNum(3,1) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,2) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,3) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1

+ ~RandomNum(3,1)~ + @28 + Waterdeep1
+ ~RandomNum(3,2)~ + @28 + Waterdeep2
+ ~RandomNum(3,3)~ + @28 + Waterdeep3

++ @34 EXIT
++ @212 + stringfixer
END


IF ~~ THEN wortlos_engaged_hell
SAY @1127
+ ~RandomNum(4,1)~ + @974 + smile_engaged_hell_01
+ ~RandomNum(4,2)~ + @974 + smile_engaged_hell_02
+ ~RandomNum(4,3)~ + @974 + smile_engaged_01
+ ~RandomNum(4,4)~ + @974 + smile_engaged_02

+ ~RandomNum(4,1)~ + @264 + C#AjantisPID1.1
+ ~RandomNum(4,2)~ + @264 + C#AjantisPID1.2_hell
+ ~RandomNum(4,3)~ + @264 + C#AjantisPID1.3
+ ~RandomNum(4,4)~ + @264 + C#AjantisPID1.4

+ ~RandomNum(4,1)~ + @265 + C#AjantisPID1.5_hell
+ ~RandomNum(4,2)~ + @265 + C#AjantisPID1.6
+ ~RandomNum(4,3)~ + @265 + C#AjantisPID1.7
+ ~RandomNum(4,4)~ + @265 + C#AjantisPID1.5_hell

+ ~RandomNum(2,1)~ + @266 + C#AjantisPID1.9_hell
+ ~RandomNum(2,2)~ + @266 + C#AjantisPID1.10_hell
++ @34 EXIT
END

IF ~~ THEN smile_engaged_hell_01
SAY @1004
IF ~~ THEN EXIT
END

IF ~~ THEN smile_engaged_hell_02
SAY @1005
IF ~~ THEN EXIT
END

IF ~~ THEN smile_engaged_01
SAY @1006
IF ~~ THEN EXIT
END

IF ~~ THEN smile_engaged_02
SAY @1007
IF ~~ THEN EXIT
END

IF ~~ THEN smile_engaged_03
SAY @1008
IF ~~ THEN EXIT
END

IF ~~ THEN talk_nbRA2
SAY @510
+ ~Global("C#AjantisNBRingPID","GLOBAL",0) PartyHasItem("C#AJNBRI")~ + @937 DO ~SetGlobal("C#AjantisNBRingPID","GLOBAL",1)~ + nb_ring_01
+ ~Global("C#AjantisNBRingPID","GLOBAL",0) PartyHasItem("C#AJNBRI")~ + @938 DO ~SetGlobal("C#AjantisNBRingPID","GLOBAL",1)~ + nb_ring_02
+ ~Global("C#AjantisNBCTPID","GLOBAL",0)~ + @943 DO ~SetGlobal("C#AjantisNBCTPID","GLOBAL",1)~ + nb_confession_in_hell
++ @210 + PID_rom_end_01
++ @42 EXIT
END

IF ~~ THEN nb_ring_01
SAY @939
IF ~~ THEN + nb_ring_03
END

IF ~~ THEN nb_ring_02
SAY @940
IF ~~ THEN + nb_ring_03
END

IF ~~ THEN nb_ring_03
SAY @941
= @942
IF ~~ THEN EXIT
END

IF ~~ THEN nb_confession_in_hell
SAY @944
= @945
= @946
IF ~~ THEN EXIT
END

IF ~~ THEN dream_engaged_hell
SAY @322
IF ~~ THEN EXIT
END

IF ~~ THEN eyecolor_hell
SAY @323
IF ~~ THEN EXIT
END

IF ~~ THEN touch_hell
SAY @324
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisPID1.20_hell
SAY @325
IF ~~ THEN EXIT
END

IF ~~ THEN reunition_hell
SAY @326
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.40_hell
SAY @327
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.41_hell
SAY @328
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.42_hell
SAY @329
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.2_hell
SAY @330
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.5_hell
SAY @331
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.9_hell
SAY @332
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisPID1.10_hell
SAY @333
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN C#AjantisPID_hell
SAY @334
+ ~RandomNum(3,1)~ + @335 + C#AjantisPID_hell_kiss_01
+ ~RandomNum(3,2)~ + @335 + hug_engaged_hell_01
+ ~RandomNum(3,3)~ + @335 + C#AjantisPID_hell_kiss_02

+ ~RandomNum(3,1)~ + @336 + hug_engaged_hell_01
+ ~RandomNum(3,2)~ + @336 + hug_engaged_hell_02
+ ~RandomNum(3,3)~ + @336 + hug_engaged_hell_03

+ ~InParty("edwin") Global("C#AjantisWatchEdwin","LOCALS",0)~ + @337 DO ~SetGlobal("C#AjantisWatchEdwin","LOCALS",1)~ + C#AjantisPID1.44b

++ @338 + C#AjantisPID1.44c_hell

+ ~Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",0) 
Global("C#AjantisEngaged","GLOBAL",1)~ + @339 DO ~SetGlobal("C#AjantisWarmingFlirt","GLOBAL",1)~ + warming_hell_01
+ ~Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)~ + @339 + warming_hell_02

+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + @1128 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + ritterschlag_PID_nr_05
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0) 
GlobalGT("C#AjantisBeschuetzer","GLOBAL",0)~ + @1129 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + ritterschlag_PID_nr_05

++ @340 + C#AjantisPID1.44e
END

IF ~~ THEN C#AjantisPID_hell_kiss_01
SAY @341
IF ~~ THEN EXIT
END 

IF ~~ THEN BEGIN C#AjantisPID_hell_kiss_02
SAY @342
IF ~~ THEN EXIT
END

IF ~~ THEN C#AjantisPID1.44c_hell
SAY @343
IF ~~ THEN EXIT
END

IF ~~ THEN warming_hell_01
SAY @344
= @345
= @346
IF ~~ THEN EXIT
END

IF ~~ THEN warming_hell_02
SAY @347
IF ~~ THEN EXIT
END

IF ~~ THEN hug_engaged_hell_01
SAY @348
IF ~~ THEN EXIT
END

IF ~~ THEN hug_engaged_hell_02
SAY @349
IF ~~ THEN EXIT
END

IF ~~ THEN hug_engaged_hell_03
SAY @350
IF ~~ THEN EXIT
END

IF ~~ THEN tired_engaged_hell
SAY @351
IF ~~ THEN EXIT
END

IF ~~ THEN how_engaged_hell
SAY @352
IF ~~ THEN EXIT
END




//normal engaged PIDs

IF ~IsGabber(Player1)
!ActuallyInCombat()
!Global("C#AjantisRomanceActive","GLOBAL",3) 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisIsThinking","GLOBAL",1)
!Global("C#AjantisMusterRing","GLOBAL",1)
Global("PlayerLooksLikeDrow","GLOBAL",0)
!AreaCheck("AR2900")
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ THEN PID_rom_engaged
SAY @315 

++ @255 + talk_engaged
++ @316 + C#AjantisPID1.44

+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",70) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_70_engaged
+ ~!StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50

+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentGT("C#ajantis",49)~ + @18 + wounded_poisoned
+ ~StateCheck("C#ajantis",STATE_POISONED) 
HPPercentLT("C#ajantis",50)~ + @18 + wounded_50_poisoned

+ ~HPPercentGT("C#ajantis",69)
OR(3) 
StateCheck("C#ajantis",STATE_DISEASED)  
StateCheck("C#ajantis",STATE_SLOWED)  
StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)~ + @18 + state_spell

+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_01_engaged
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Day)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_02_engaged
+ ~RandomNum(2,1) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_03_engaged
+ ~RandomNum(2,2) CheckStatGT("C#ajantis",6,FATIGUE) 
TimeOfDay(Night)
HPPercentGT("C#ajantis",69) 
!StateCheck("C#ajantis",STATE_POISONED) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)~ + @18 + tired_04_engaged

+ ~RandomNum(4,1)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
!HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_01_engaged
+ ~RandomNum(4,2)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
!HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_02_engaged
+ ~RandomNum(4,3)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
!HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_03_engaged
+ ~RandomNum(4,4)
HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
!HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_04

+ ~HPPercentGT("C#ajantis",69)
CheckStatLT("C#ajantis",7,FATIGUE) 
!StateCheck("C#ajantis",STATE_DISEASED)  
!StateCheck("C#ajantis",STATE_SLOWED)  
!StateCheck("C#ajantis",STATE_BLIND)
!StateCheck("C#ajantis",STATE_POISONED)
HasItem("C#AJCHBE","C#Ajantis")~ + @18 + how_engaged_belt



/*randomflirts nach dem Seelenklau */
+ ~RandomNum(5,1) Global("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + @1120 + engaged_random_staerke_01
+ ~RandomNum(5,2) Global("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + @1120 + engaged_random_staerke_02
+ ~RandomNum(5,3) Global("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + @1120 + engaged_random_staerke_03
+ ~RandomNum(5,4) Global("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + @1120 + engaged_random_staerke_04
+ ~RandomNum(5,5) Global("C#AjanSlayerChangeAR1514","GLOBAL",2)~ + @1120 + engaged_random_staerke_05


+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",1)~ + @257 + C#AjantisPID1.17
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
ReputationGT(Player1,11) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.18
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
ReputationGT(Player1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",5)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.18
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
OR(2) 
ReputationLT(Player1,12) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.19
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
OR(2) 
ReputationLT(Player1,16)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",4) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @257 + C#AjantisPID1.19

+ ~RandomNum(3,1)~ + @317 + reunition_01
+ ~RandomNum(3,2)~ + @317 + reunition_02
+ ~RandomNum(3,3)~ + @317 + reunition_03

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",1)~ + @318 + C#AjantisPID1.20
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
ReputationGT(Player1,11) GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",4)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @318 + C#AjantisPID1.21
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
ReputationGT(Player1,15)
GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",5)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @318 + C#AjantisPID1.21
+ ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_6%) 
OR(2) 
ReputationLT(Player1,12) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",3)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @318 + C#AjantisPID1.22
+ ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_5%) 
OR(2) 
ReputationLT(Player1,16)
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",4) 
GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",0)~ + @318 + C#AjantisPID1.22

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,1)~ + @258 + C#AjantisPID1.23
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,2)~ + @258 + C#AjantisPID1.24
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,3)~ + @258 + C#AjantisPID1.25
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,4)~ + @258 + C#AjantisPID1.26
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,5)~ + @258 + C#AjantisPID1.27
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(6,6)~ + @258 + C#AjantisPID1.28
+ ~GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",2)~ + @258 + C#AjantisPID1.29

+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,1)~ + @319 + C#AjantisPID1.30
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,2)~ + @319 + C#AjantisPID1.31
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,3)~ + @319 + C#AjantisPID1.32
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,4)~ + @319 + C#AjantisPID1.33
+ ~GlobalLT("C#AjantisWarUnzufrieden","GLOBAL",3) RandomNum(5,5)~ + @319 + C#AjantisPID1.34
+ ~GlobalGT("C#AjantisWarUnzufrieden","GLOBAL",2)~ + @319 EXTERN C#AJANJ C#AjantisPID1.35

+ ~RandomNum(4,1)~ + @259 + C#AjantisPID1.40
+ ~RandomNum(4,2)~ + @259 + C#AjantisPID1.41
+ ~RandomNum(4,3)~ + @259 + C#AjantisPID1.42
+ ~RandomNum(4,4)~ + @259 + C#AjantisPID1.43

+ ~RandomNum(4,1)~ + @320 + C#AjantisPID1.45
+ ~RandomNum(4,2)~ + @320 + C#AjantisPID1.46
+ ~RandomNum(4,3)~ + @320 + C#AjantisPID1.47
+ ~RandomNum(4,4)~ + @320 + C#AjantisPID1.48

+ ~RandomNum(6,1)~ + @321 EXTERN C#AJANJ C#AjantisPID1.49
+ ~RandomNum(6,2)~ + @321 EXTERN C#AJANJ C#AjantisPID1.50
+ ~RandomNum(6,3)~ + @321 EXTERN C#AJANJ C#AjantisPID1.51
+ ~RandomNum(6,4)~ + @321 EXTERN C#AJANJ C#AjantisPID1.52
+ ~RandomNum(6,5)~ + @321 EXTERN C#AJANJ C#AjantisPID1.53
+ ~RandomNum(6,6)~ + @321 EXTERN C#AJANJ C#AjantisPID1.54

+ ~RandomNum(3,1)~ + @353 + C#AjantisPID1.44f_01
+ ~RandomNum(3,2)~ + @353 + C#AjantisPID1.44f_02
+ ~RandomNum(3,3)~ + @353 + C#AjantisPID1.44f_03

+ ~RandomNum(4,1) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @261 + touch_01
+ ~RandomNum(4,2) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @261 + touch_02
+ ~RandomNum(4,3) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @261 + touch_03
+ ~RandomNum(4,4) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @261 + touch_04

+ ~Global("C#AjantisNoIntimacy","GLOBAL",0) HasItem("C#AJCHBE","C#Ajantis")~ + @261 + touch_belt

+ ~RandomNum(4,1) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @354 + wet_towel_01
+ ~RandomNum(4,2) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @354 + wet_towel_02
+ ~RandomNum(4,3) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @354 + wet_towel_03
+ ~RandomNum(4,4) Global("C#AjantisNoIntimacy","GLOBAL",0) !HasItem("C#AJCHBE","C#Ajantis")~ + @354 + wet_towel_04

+ ~Global("C#AjantisNoIntimacy","GLOBAL",0) HasItem("C#AJCHBE","C#Ajantis")~ + @354 + wet_towel_belt

+ ~RandomNum(3,1) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @355 + dusting_off_01
+ ~RandomNum(3,2) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @355 + dusting_off_02
+ ~RandomNum(3,3) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @355 + dusting_off_03

+ ~RandomNum(3,1) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @356 + padding_01
+ ~RandomNum(3,2) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @356 + padding_02
+ ~RandomNum(3,3) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @356 + padding_03

++ @1126 + wortlos_engaged

++ @263 + look

+ ~RandomNum(3,1)~ + @267 + eyecolor_01
+ ~RandomNum(3,2)~ + @267 + eyecolor_02
+ ~RandomNum(3,3)~ + @267 + eyecolor_03

+ ~RandomNum(3,1)~ + @268 + dream_engaged_01
+ ~RandomNum(3,2)~ + @268 + dream_engaged_02
+ ~RandomNum(3,3)~ + @268 + dream_engaged_03

+ ~RandomNum(3,1) 
OR(2)
Global("C#AjantisDisinhRing","GLOBAL",1)
Global("C#AjantisDisinhDialog","GLOBAL",0)
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_01
+ ~RandomNum(3,2) 
OR(2)
Global("C#AjantisDisinhRing","GLOBAL",1)
Global("C#AjantisDisinhDialog","GLOBAL",0)
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_02
+ ~RandomNum(3,3) 
OR(2)
Global("C#AjantisDisinhRing","GLOBAL",1)
Global("C#AjantisDisinhDialog","GLOBAL",0)
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 + ring_engaged_03
+ ~GlobalGT("C#AjantisDisinhDialog","GLOBAL",0)
Global("C#AjantisDisinhRing","GLOBAL",0)
OR(12)
HasItem("C#AJ021A",Player1)
HasItem("C#AJ21AA",Player1)
HasItem("C#AJ21BA",Player1)
HasItem("C#AJ21CA",Player1)
HasItem("C#AJ21DA",Player1)
HasItem("C#AJ21AC",Player1)
HasItem("C#AJ021B",Player1)
HasItem("C#AJ21AB",Player1)
HasItem("C#AJ21BB",Player1)
HasItem("C#AJ21CB",Player1)
HasItem("C#AJ21DB",Player1)
HasItem("C#AJ21BC",Player1)~ + @269 DO ~SetGlobal("C#AjantisDisinhRing","GLOBAL",1)~ + ring_engaged_disinh

++ @357 + teasing_engaged

+ ~RandomNum(4,1) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm1
+ ~RandomNum(4,2) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm2
+ ~RandomNum(4,3) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm3
+ ~RandomNum(4,4) !Global("JoinHelm","GLOBAL",1)~ + @25 + C#TellMeAboutHelm4
+ ~OR(2)
Global("JoinHelm","GLOBAL",1)
Kit(Player1,GODHELM)
!Global("Stripped","GLOBAL",2)
!Global("Talonwar","GLOBAL",5)~ + @26 + C#TellMeAboutHelm5

+ ~RandomNum(3,1) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,2) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1
+ ~RandomNum(3,3) Global("PaladinOrder","GLOBAL",0)~ + @27 + C#RadiantHeart1

+ ~RandomNum(3,1)~ + @28 + Waterdeep1
+ ~RandomNum(3,2)~ + @28 + Waterdeep2
+ ~RandomNum(3,3)~ + @28 + Waterdeep3

+ ~Global("C#AjantisIniFlirts","GLOBAL",1)~ + @919 DO ~SetGlobal("C#AjantisIniFlirts","GLOBAL",3)~ + flirt_stop

+ ~Global("C#AjantisIniFlirts","GLOBAL",3)~ + @1094 DO ~SetGlobal("C#AjantisIniFlirts","GLOBAL",1) RealSetGlobalTimer("C#AjantisIniFlirtsTimer","GLOBAL",10)~ + flirt_stop

++ @34 EXIT
++ @212 + stringfixer
END


//romance PIDs -------------////

IF ~~ THEN wortlos_engaged
SAY @1127
+ ~RandomNum(3,1)~ + @974 + smile_engaged_01
+ ~RandomNum(3,2)~ + @974 + smile_engaged_02
+ ~RandomNum(3,3)~ + @974 + smile_engaged_03
+ ~RandomNum(4,1)~ + @264 + C#AjantisPID1.1
+ ~RandomNum(4,2)~ + @264 + C#AjantisPID1.2
+ ~RandomNum(4,3)~ + @264 + C#AjantisPID1.3
+ ~RandomNum(4,4)~ + @264 + C#AjantisPID1.4

+ ~RandomNum(4,1)~ + @265 + C#AjantisPID1.5
+ ~RandomNum(4,2)~ + @265 + C#AjantisPID1.6
+ ~RandomNum(4,3)~ + @265 + C#AjantisPID1.7
+ ~RandomNum(4,4)~ + @265 + C#AjantisPID1.8

+ ~RandomNum(8,1)~ + @266 + C#AjantisPID1.9
+ ~RandomNum(8,2)~ + @266 + C#AjantisPID1.10
+ ~RandomNum(8,3)~ + @266 + C#AjantisPID1.11
+ ~RandomNum(8,4)~ + @266 + C#AjantisPID1.12
+ ~RandomNum(8,5)~ + @266 + C#AjantisPID1.13
+ ~RandomNum(8,6)~ + @266 + C#AjantisPID1.14
+ ~RandomNum(8,7)~ + @266 + C#AjantisPID1.15
+ ~RandomNum(8,8)~ + @266 + C#AjantisPID1.16
++ @34 EXIT
END

IF ~~ THEN teasing_engaged
SAY @66
+ ~RandomNum(3,1)~ + @67 + hips_engaged_01
+ ~RandomNum(3,2)~ + @67 + hips_engaged_02
+ ~RandomNum(3,3)~ + @67 + hips_flirt_03
+ ~RandomNum(3,1)~ + @68 + hair_flirt_01
+ ~RandomNum(3,2)~ + @68 + hair_engaged_01
+ ~RandomNum(3,3)~ + @68 + hair_engaged_02
+ ~Global("C#AjantisDropItem","GLOBAL",0)~ + @358 DO ~SetGlobal("C#AjantisDropItem","GLOBAL",1)~ + letting_fall_01
+ ~Global("C#AjantisDropItem","GLOBAL",1)~ + @358 DO ~SetGlobal("C#AjantisDropItem","GLOBAL",2)~ + letting_fall_03
+ ~RandomNum(2,1) GlobalGT("C#AjantisDropItem","GLOBAL",1)~ + @358 DO ~SetGlobal("C#AjantisDropItem","GLOBAL",1)~ + letting_fall_02
+ ~RandomNum(2,2) GlobalGT("C#AjantisDropItem","GLOBAL",1)~ + @358 DO ~SetGlobal("C#AjantisDropItem","GLOBAL",1)~ + letting_fall_03
+ ~RandomNum(3,1) GlobalLT("C#AjantisLingerPID","GLOBAL",6)~ + @69 DO ~IncrementGlobal("C#AjantisLingerPID","GLOBAL",1)~ + linger_flirt_01
+ ~RandomNum(3,2) GlobalLT("C#AjantisLingerPID","GLOBAL",6)~ + @69 DO ~IncrementGlobal("C#AjantisLingerPID","GLOBAL",1)~ + linger_flirt_02
+ ~RandomNum(3,3) GlobalLT("C#AjantisLingerPID","GLOBAL",6)~ + @69 DO ~IncrementGlobal("C#AjantisLingerPID","GLOBAL",1)~ + linger_engaged_01
+ ~Global("C#AjantisLingerPID","GLOBAL",6)~ + @69 DO ~IncrementGlobal("C#AjantisLingerPID","GLOBAL",1)~ + linger_engaged_02
+ ~RandomNum(2,1) GlobalGT("C#AjantisLingerPID","GLOBAL",6)~ + @69 DO ~IncrementGlobal("C#AjantisLingerPID","GLOBAL",1)~ + linger_engaged_01
+ ~RandomNum(2,2) GlobalGT("C#AjantisLingerPID","GLOBAL",6)~ + @69 DO ~IncrementGlobal("C#AjantisLingerPID","GLOBAL",1)~ + linger_engaged_02
+ ~RandomNum(3,1)~ + @70 + halt_engaged_01
+ ~RandomNum(3,2)~ + @70 + halt_engaged_02
+ ~RandomNum(3,3)~ + @70 + halt_engaged_03
+ ~RandomNum(2,1) Global("C#AjanFallingKiss","GLOBAL",0)~ + @71 + falling_engaged_01
+ ~RandomNum(2,2) Global("C#AjanFallingKiss","GLOBAL",0)~ + @71 + falling_engaged_02
+ ~Global("C#AjanFallingKiss","GLOBAL",1)~ + @71 + falling_engaged_03
+ ~RandomNum(3,1) Global("C#AjanFallingKiss","GLOBAL",2)~ + @71 + falling_engaged_04
+ ~RandomNum(3,2) Global("C#AjanFallingKiss","GLOBAL",2)~ + @71 + falling_engaged_05
+ ~RandomNum(3,3) Global("C#AjanFallingKiss","GLOBAL",2)~ + @71 + falling_engaged_06
END

IF ~~ THEN letting_fall_01
SAY @359
IF ~~ THEN EXIT
END

IF ~~ THEN letting_fall_02
SAY @360
IF ~~ THEN EXIT
END

IF ~~ THEN letting_fall_03
SAY @361
IF ~~ THEN EXIT
END

IF ~~ THEN hips_engaged_01
SAY @362
IF ~~ THEN EXIT
END

IF ~~ THEN hips_engaged_02
SAY @363
IF ~~ THEN EXIT
END

IF ~~ THEN hair_engaged_01
SAY @364
IF ~~ THEN EXIT
END

IF ~~ THEN hair_engaged_02
SAY @365
IF ~~ THEN EXIT
END

IF ~~ THEN linger_engaged_01
SAY @366
IF ~~ THEN EXIT
END

IF ~~ THEN linger_engaged_02
SAY @367
IF ~~ THEN EXIT
END

IF ~~ THEN halt_engaged_01
SAY @368
IF ~~ THEN EXIT
END

IF ~~ THEN halt_engaged_02
SAY @369
++ @370 + falling_engaged_kiss
++ @371 EXIT 
END

IF ~~ THEN halt_engaged_03
SAY @372
IF ~~ THEN EXIT
END

IF ~~ THEN falling_engaged_01
SAY @373
++ @374 DO ~SetGlobal("C#AjanFallingKiss","GLOBAL",1)~ + falling_engaged_kiss
++ @371 EXIT 
END

IF ~~ THEN falling_engaged_02
SAY @375
++ @374 DO ~SetGlobal("C#AjanFallingKiss","GLOBAL",1)~ + falling_engaged_kiss
++ @371 EXIT 
END

IF ~~ THEN falling_engaged_kiss
SAY @376
IF ~~ THEN EXIT
END

IF ~~ THEN falling_engaged_03
SAY @373
= @377
= @378
IF ~~ THEN DO ~SetGlobal("C#AjanFallingKiss","GLOBAL",2)~ EXIT
END

IF ~~ THEN falling_engaged_04
SAY @379
IF ~~ THEN EXIT
END

IF ~~ THEN falling_engaged_05
SAY @380
IF ~~ THEN EXIT
END

IF ~~ THEN falling_engaged_06
SAY @381
IF ~~ THEN EXIT
END

IF ~~ THEN touch_01
SAY @382
IF ~~ THEN EXIT
END

IF ~~ THEN touch_02
SAY @383
IF ~~ THEN EXIT
END

IF ~~ THEN touch_03
SAY @384
IF ~~ THEN EXIT
END

IF ~~ THEN touch_04
SAY @385
IF ~~ THEN EXIT
END

IF ~~ THEN touch_belt
SAY @386
IF ~~ THEN EXIT
END

IF ~~ THEN ring_engaged_01
SAY @387
IF ~~ THEN EXIT
END

IF ~~ THEN ring_engaged_02
SAY @388
IF ~~ THEN EXIT
END

IF ~~ THEN ring_engaged_03
SAY @389
IF ~~ THEN EXIT
END

IF ~~ THEN ring_engaged_disinh
SAY @390
= @391
IF ~~ THEN EXIT
END

IF ~~ THEN eyecolor_01
SAY @392
IF ~~ THEN EXIT
END

IF ~~ THEN eyecolor_02
SAY @393
IF ~~ THEN EXIT
END

IF ~~ THEN eyecolor_03
SAY @394
IF ~~ THEN EXIT
END

IF ~~ THEN dream_engaged_01
SAY @395
IF ~~ THEN EXIT
END

IF ~~ THEN dream_engaged_02
SAY @396
IF ~~ THEN EXIT
END

IF ~~ THEN dream_engaged_03
SAY @397
IF ~~ THEN EXIT
END

IF ~~ THEN engaged_random_staerke_01
SAY @1121
IF ~~ THEN EXIT
END

IF ~~ THEN engaged_random_staerke_02
SAY @1122
IF ~~ THEN EXIT
END

IF ~~ THEN engaged_random_staerke_03
SAY @1123
IF ~~ THEN EXIT
END

IF ~~ THEN engaged_random_staerke_04
SAY @1124
IF ~~ THEN EXIT
END

IF ~~ THEN engaged_random_staerke_05
SAY @1125
IF ~~ THEN EXIT
END


IF ~~ THEN BEGIN C#AjantisPID1.1
SAY @398
= @399
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.2
SAY @400
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.3
SAY @401
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.4
SAY @402
= @403
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.5
SAY @404
= @405
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.6
SAY @406
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.7
SAY @407
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.8
SAY @408
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.9
SAY @409
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.10
SAY @410
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.11
SAY @411
= @412
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.12
SAY @413
= @414
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.13
SAY @415
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.14
SAY @416
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.15
SAY @417
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.16
SAY @418
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.17
SAY @419
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.18
SAY @420
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.19
SAY @421
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.20
SAY @422
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.21
SAY @423
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.22
SAY @424
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.23
SAY @425
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.24
SAY @426
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.25
SAY @427
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.26
SAY @428
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.27
SAY @429
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.28
SAY @430
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.29
SAY @431
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.30
SAY @432
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.31
SAY @433
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.32
SAY @434
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.33
SAY @435
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.34
SAY @436
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.35
SAY @437
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.40
SAY @438
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.41
SAY @439
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.42
SAY @440
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.43
SAY @441
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44
SAY @334
+ ~RandomNum(3,1)~ + @335 + C#AjantisPID1.44a_01
+ ~RandomNum(3,2)~ + @335 + C#AjantisPID1.44a_02
+ ~RandomNum(3,3)~ + @335 + C#AjantisPID1.44a_03

+ ~RandomNum(3,1)~ + @336 + hug_engaged_01
+ ~RandomNum(3,2)~ + @336 + hug_engaged_02
+ ~RandomNum(3,3)~ + @336 + C#AjantisPID1.44a_01

+ ~InParty("edwin") Global("C#AjantisWatchEdwin","LOCALS",0)~ + @337 DO ~SetGlobal("C#AjantisWatchEdwin","LOCALS",1)~ + C#AjantisPID1.44b

++ @338 + C#AjantisPID1.44c

+ ~Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",0)~ + @339 DO ~SetGlobal("C#AjantisWarmingFlirt","GLOBAL",1)~ + warming_01
+ ~RandomNum(3,1) Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",1) !HasItem("C#AJCHBE","C#Ajantis")~ + @339 + wet_towel_03
+ ~RandomNum(3,2) Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",1) !HasItem("C#AJCHBE","C#Ajantis")~ + @339 + C#AjantisPID1.44d
+ ~RandomNum(3,3) Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",1) !HasItem("C#AJCHBE","C#Ajantis")~ + @339 + C#AjantisPID1.44a_01

+ ~Global("C#AjantisNoIntimacy","GLOBAL",0) Global("C#AjantisWarmingFlirt","GLOBAL",1) HasItem("C#AJCHBE","C#Ajantis")~ + @339 + wet_towel_belt

+ ~OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
OR(3)
Detect([ENEMY])
Detect([EVILBUTBLUE])
Range([0.0.0.0.0.0.MASK_EVIL],15)
!HasItem("C#AJCHBE","C#Ajantis")
~ + @442 + dance_engaged_no
+ ~!AreaCheck("AR0704")
!AreaCheck("AR0709")
!AreaCheck("AR0406")
!AreaCheck("AR0513")
!AreaCheck("AR0509")
!AreaCheck("AR0021")
!AreaCheck("AR0313")
!AreaCheck("AR1105")
!AreaCheck("AR2010")
!AreaCheck("AR1602")
!HasItem("C#AJCHBE","C#Ajantis")~ + @442 + dance_engaged_elsewhere
+ ~Global("C#AjantisDancingEngaged","GLOBAL",0)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Detect([ENEMY])
!Detect([EVILBUTBLUE])
!Range([0.0.0.0.0.0.MASK_EVIL],15)
!HasItem("C#AJCHBE","C#Ajantis")
~ + @442 DO ~SetGlobal("C#AjantisDancingEngaged","GLOBAL",1)~ + dance_engaged_01
+ ~RandomNum(3,1)
Global("C#AjantisDancingEngaged","GLOBAL",1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Detect([ENEMY])
!Detect([EVILBUTBLUE])
!Range([0.0.0.0.0.0.MASK_EVIL],15)
!HasItem("C#AJCHBE","C#Ajantis")
~ + @442 + dance_engaged_04
+ ~RandomNum(3,2)
Global("C#AjantisDancingEngaged","GLOBAL",1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Detect([ENEMY])
!Detect([EVILBUTBLUE])
!Range([0.0.0.0.0.0.MASK_EVIL],15)
!HasItem("C#AJCHBE","C#Ajantis")
~ + @442 + dance_engaged_05
+ ~RandomNum(3,3)
Global("C#AjantisDancingEngaged","GLOBAL",1)
OR(10)
AreaCheck("AR0704")
AreaCheck("AR0709")
AreaCheck("AR0406")
AreaCheck("AR0513")
AreaCheck("AR0509")
AreaCheck("AR0021")
AreaCheck("AR0313")
AreaCheck("AR1105")
AreaCheck("AR2010")
AreaCheck("AR1602")
!Detect([ENEMY])
!Detect([EVILBUTBLUE])
!Range([0.0.0.0.0.0.MASK_EVIL],15)
!HasItem("C#AJCHBE","C#Ajantis")
~ + @442 + dance_engaged_06

+ ~HasItem("C#AJCHBE","C#Ajantis")~ + @442 + dance_engaged_belt

+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + @1128 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",0)~ + ritterschlag_PID_nr_05
+ ~Global("C#AjantisNichtBeschuetzen","GLOBAL",0) 
GlobalGT("C#AjantisBeschuetzer","GLOBAL",0)~ + @1129 DO ~SetGlobal("C#AjantisNichtBeschuetzen","GLOBAL",1)~ + ritterschlag_PID_nr_05

++ @340 + C#AjantisPID1.44e
END

IF ~~ THEN warming_01
SAY @344
= @345
= @443
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_01
SAY @444
++ @445 + dance_engaged_02
++ @446 + dance_engaged_02
++ @447 + PID_rom_engaged
END

IF ~~ THEN dance_engaged_02
SAY @448
++ @449 DO ~SetGlobal("C#AjantisDancingEngaged","GLOBAL",1)~ + dance_engaged_03
++ @450 DO ~SetGlobal("C#AjantisDancingEngaged","GLOBAL",1)~ + dance_engaged_03
++ @447 + PID_rom_engaged
END

IF ~~ THEN dance_engaged_03
SAY @451
= @452
= @453
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_04
SAY @454
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_05
SAY @455
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_06
SAY @456
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_no
SAY @457
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_elsewhere
SAY @458
IF ~~ THEN EXIT
END

IF ~~ THEN dance_engaged_belt
SAY @459
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44a_01
SAY @460
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44a_02
SAY @461
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44a_03
SAY @462
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug_engaged_01
SAY @463
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN hug_engaged_02
SAY @464
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44b
SAY @465
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44c
SAY @466
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44d
SAY @467
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44e
SAY @468
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44f_01
SAY @469
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44f_02
SAY @470
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.44f_03
SAY @471
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.45
SAY @472
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.46
SAY @473
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.47
SAY @474
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.48
SAY @475
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.49
SAY @476
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.50
SAY @477
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.51
SAY @478
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.52
SAY @479 /* Keep in mind that at this point, he has no idea what's going to happen with his family */
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.53
SAY @480
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN C#AjantisPID1.54
SAY @481
IF ~~ THEN EXIT
END


IF ~~ THEN look
SAY @110
++ @111 + look_face_flirt
++ @112 + look_arms_flirt
++ @113 + look_hands_flirt
++ @114 + look_appearance_flirt
++ @115 EXIT
END

IF ~~ THEN look_face
SAY @482
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_arms
SAY @483
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_hands
SAY @118
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_appearance
SAY @484
IF ~RandomNum(3,1)~ THEN + look_11
IF ~RandomNum(3,2)~ THEN + look_12
IF ~RandomNum(3,3)~ THEN + look_flirt_13
END

IF ~~ THEN look_11
SAY @485
IF ~~ THEN EXIT
END

IF ~~ THEN look_12
SAY @486
IF ~~ THEN EXIT
END


IF ~~ THEN wounded_70_engaged
SAY @487 
IF ~~ THEN EXIT
END

//day
IF ~~ THEN tired_01_engaged
SAY @488
IF ~~ THEN EXIT
END

IF ~~ THEN tired_02_engaged
SAY @489
IF ~~ THEN EXIT
END

//night
IF ~~ THEN tired_03_engaged
SAY @490
IF ~~ THEN EXIT
END

IF ~~ THEN tired_04_engaged
SAY @491
IF ~~ THEN EXIT
END

IF ~~ THEN how_01_engaged
SAY @492
IF ~~ THEN EXIT
END

IF ~~ THEN how_02_engaged
SAY @493
IF ~~ THEN EXIT
END

IF ~~ THEN how_03_engaged
SAY @494
IF ~~ THEN EXIT
END

IF ~~ THEN how_engaged_belt
SAY @495
IF ~~ THEN EXIT
END


IF ~~ THEN dusting_off_01
SAY @496
IF ~~ THEN EXIT
END

IF ~~ THEN dusting_off_02
SAY @497
IF ~~ THEN EXIT
END

IF ~~ THEN dusting_off_03
SAY @498
IF ~~ THEN EXIT
END

IF ~~ THEN padding_01
SAY @499
IF ~~ THEN EXIT
END

IF ~~ THEN padding_02
SAY @500
IF ~~ THEN EXIT
END

IF ~~ THEN padding_03
SAY @501
IF ~~ THEN EXIT
END

IF ~~ THEN reunition_01
SAY @502
IF ~~ THEN EXIT
END

IF ~~ THEN reunition_02
SAY @503
IF ~~ THEN EXIT
END

IF ~~ THEN reunition_03
SAY @504
IF ~~ THEN EXIT
END

IF ~~ THEN wet_towel_01
SAY @505
IF ~~ THEN EXIT
END 

IF ~~ THEN wet_towel_02
SAY @506
IF ~~ THEN EXIT
END 

IF ~~ THEN wet_towel_03
SAY @507
IF ~~ THEN EXIT
END 

IF ~~ THEN wet_towel_04
SAY @508
IF ~~ THEN EXIT
END 

IF ~~ THEN wet_towel_belt
SAY @509
IF ~~ THEN EXIT
END


IF ~~ THEN talk_engaged
SAY @510

/*PID nach LT seelenklau:*/
+ ~Global("C#AjantisHCSeele","GLOBAL",2) 
!Global("C#AjanSlayerChangeAR1514","GLOBAL",2)
Global("C#AjantisVerlobVerlieren","LOCALS",0)~ + @1095 DO ~SetGlobal("C#AjantisVerlobVerlieren","LOCALS",1)~ + verlieren_engaged

/*PIDs nach Schlächterverwandlung:*/
+ ~Global("C#AjanSlayerChangeAR1514","GLOBAL",2) Global("C#AjantisVerlobAngst","LOCALS",0)~ + @1096 DO ~SetGlobal("C#AjantisVerlobAngst","LOCALS",1)~ + slayer_angst_engaged

+ ~Global("C#AjantisPCNachAvatar2","GLOBAL",2) Global("C#AjantisSlayerFightMe","LOCALS",0)~ + @1097 DO ~SetGlobal("C#AjantisSlayerFightMe","LOCALS",1)~ + fight_slayer_engaged

+ ~Global("C#AjantisSlayerCycle","GLOBAL",2) Global("C#AjanVerlWegschicken","LOCALS",0)~ + @1098 DO ~SetGlobal("C#AjanVerlWegschicken","LOCALS",1)~ + slayer_wegschicken_engaged


+ ~Global("C#AjantisPCMarriage","GLOBAL",1) Global("C#AjantisNachHochzeitPID","GLOBAL",0)~ + @511 DO ~SetGlobal("C#AjantisNachHochzeitPID","GLOBAL",1)~ + nach_hochzeit_PID_01

+ ~Global("C#AjantisSchildrueckgabe","GLOBAL",1)~ + @512 DO ~SetGlobal("C#AjantisSchildrueckgabe","GLOBAL",2)~ + schildrueckgabe
+ ~Global("C#AjantisSchildrueckgabe","GLOBAL",1)~ + @513 DO ~SetGlobal("C#AjantisSchildrueckgabe","GLOBAL",2)~ + schildrueckgabe

+ ~Global("C#AjantisHochzeitsPlanen","GLOBAL",1)~ + @514 DO ~SetGlobal("C#AjantisHochzeitsPlanen","GLOBAL",2) SetGlobal("C#AjantisGoldsmithLT","GLOBAL",1)
SetGlobal("C#AjantisLoveTalk","GLOBAL",29)~ + wedding_preparations_PID_00

+ ~!Global("C#AjantisHochzeitsPlanen","GLOBAL",2) Global("C#AjantisPCSAWWeddingRings","GLOBAL",1) Global("C#AjantisWeddingRingsPID","GLOBAL",0)~ + @515 DO ~SetGlobal("C#AjantisWeddingRingsPID","GLOBAL",1)~ + ehring_auswahl

+ ~!Global("C#AjantisHochzeitsPlanen","GLOBAL",2) Global("C#AjantisPCSAWWeddingRings","GLOBAL",1) Global("C#AjantisWeddingRingsPID","GLOBAL",0)~ + @516 DO ~SetGlobal("C#AjantisWeddingRingsPID","GLOBAL",1)~ + ehring_auswahl_04

+ ~Global("C#AjantisWeddingRingsPID","GLOBAL",1) Global("C#AjantisPCChoseRing","GLOBAL",0)~ + @517 + ehring_auswahl_01

+ ~OR(3)
	Global("C#AjantisDream1PID","GLOBAL",1)
	Global("C#AjantisDream2PID","GLOBAL",1)
	Global("C#AjantisDream3PID","GLOBAL",1)
Global("C#AjantisDreamPID","GLOBAL",0)~ + @518 DO ~SetGlobal("C#AjantisDreamPID","GLOBAL",1)~ + traum_PID

+ ~Global("C#AjanEllesimeDream1PID","GLOBAL",1)~ + @519 DO ~SetGlobal("C#AjanEllesimeDream1PID","GLOBAL",2)~ + ellisime_dream_PID_01

+ ~Global("C#AjantisMusterZurueck","GLOBAL",1)~ + @520 DO ~SetGlobal("C#AjantisMusterZurueck","GLOBAL",0)~ + musterbeutel_zurueck
+ ~Global("C#AjantisMusterZurueck","GLOBAL",2)~ + @520 DO ~SetGlobal("C#AjantisMusterZurueck","GLOBAL",0)~ + musterbeutel_zurueck_01

+ ~Global("C#AjantisMusterbeutel","GLOBAL",1)~ + @521 + musterbeutel_03

+ ~Global("C#AjantisMusterbeutel","GLOBAL",2)~ + @522 + musterbeutel_01
+ ~Global("C#AjantisMusterbeutel","GLOBAL",3)~ + @522 + musterbeutel_02

+ ~PartyHasItem("C#MISC5W") Global("C#AjantisJahaboamPID","GLOBAL",0)~ + @523 DO ~SetGlobal("C#AjantisJahaboamPID","GLOBAL",1)~ + jahaboam_PID_01
+ ~PartyHasItem("C#MISC5W") Global("C#AjantisJahaboamNo","GLOBAL",1) Global("C#AjantisJahaboamPID","GLOBAL",0)~ + @524 DO ~SetGlobal("C#AjantisJahaboamPID","GLOBAL",1)~ + jahaboam_PID_02

+ ~PartyHasItem("C#AJBA01") Global("C#AjantisSchmuckbeutelPID","GLOBAL",0)~ + @525 DO ~SetGlobal("C#AjantisSchmuckbeutelPID","GLOBAL",1)~ + schmuckbeutel_PID_01
+ ~PartyHasItem("C#AJBA01") Global("C#AjantisSchmuckbeutelPID","GLOBAL",2)~ + @526 DO ~SetGlobal("C#AjantisSchmuckbeutelPID","GLOBAL",3)~ + schmuckbeutel_PID_01
+ ~PartyHasItem("C#AJBA01") !Global("C#AjantisSchmuckbeutelPID","GLOBAL",1)~ + @527 DO ~SetGlobal("C#AjantisSchmuckbeutelPID","GLOBAL",1)~ + schmuckbeutel_PID_02

+ ~PartyHasItem("C#AJ0008") Global("C#AjantisRingPID","GLOBAL",0)~ + @528 DO ~SetGlobal("C#AjantisRingPID","GLOBAL",1)~ + ring_PID_01
+ ~!PartyHasItem("C#AJ0008") Global("C#AjantisRomPCFindsRing","GLOBAL",0) Global("C#AjantisRingPID","GLOBAL",0)~ + @529 DO ~SetGlobal("C#AjantisRingPID","GLOBAL",1)~ + ring_PID_02
+ ~!PartyHasItem("C#AJ0008") Global("C#AjantisRomPCFindsRing","GLOBAL",2) Global("C#AjantisRingPID","GLOBAL",0)~ + @530 DO ~SetGlobal("C#AjantisRingPID","GLOBAL",1)~ + ring_PID_05

+ ~PartyHasItem("C#AJ0008") Global("C#AjantisWartetRing","GLOBAL",1)~ + @531 + ring_schmieden_PID_01
+ ~PartyHasItem("C#AJ0008") Global("C#AjantisNeuerRing","GLOBAL",1)~ + @532 + ring_schmieden_PID_02
+ ~Global("C#AjantisWartetRing","GLOBAL",1)~ + @533 + ring_schmieden_PID_03

+ ~Global("C#AjantisRingFarbe","GLOBAL",1)~ + @534 DO ~SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_01

+ ~GlobalGT("C#AjantisDisinheritage","GLOBAL",0) Global("C#AjantisDisinheritagePID","GLOBAL",0)~ + @535 DO ~SetGlobal("C#AjantisDisinheritagePID","GLOBAL",1)~ + verstossung

+ ~Global("C#AjantisSchildZurueck","GLOBAL",1)~ + @536 DO ~SetGlobal("C#AjantisSchildZurueck","GLOBAL",2)~ + schildzurueck

+ ~Global("C#AjantisAlreadyKnighted","GLOBAL",0)~ + @37 DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ritterschlag_PID_01

+ ~PartyHasItem("C#AJ0007") Global("C#AjantisWhatHappened","GLOBAL",0)~ + @38 DO ~SetGlobal("C#AjantisWhatHappened","GLOBAL",1)~ + ajantis_PID_01
+ ~!PartyHasItem("C#AJ0007") Global("C#AjantisWhatHappened","GLOBAL",0)~ + @38 DO ~SetGlobal("C#AjantisWhatHappened","GLOBAL",1)~ + ajantis_PID_10

+ ~Global("C#AjantisEleianaPID","GLOBAL",0)~ + @39 DO ~SetGlobal("C#AjantisEleianaPID","GLOBAL",1)~ + eleiana_PID

+ ~Global("C#AjantisFirkraagKidnapPID","GLOBAL",0)~ + @40 DO ~SetGlobal("C#AjantisFirkraagKidnapPID","GLOBAL",1)~ + firkraag_kidnap_PID_01

+ ~Global("C#AjantisWindspearBody","GLOBAL",0) Global("C#AjantisPCMarriage","GLOBAL",0)~ + @537 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + windspeerkampf_PID_06

+ ~Global("C#AjantisWindspearBody","GLOBAL",0) Global("C#AjantisPCMarriage","GLOBAL",1)~ + @538 DO ~SetGlobal("C#AjantisWindspearBody","GLOBAL",1)~ + windspeerkampf_PID_06

+ ~Global("C#AjantisRitterinnenPID","GLOBAL",0)  Global("C#AjantisRitterinnenAjan","GLOBAL",0)~ + @539 DO ~SetGlobal("C#AjantisRitterinnenPID","GLOBAL",1)~ + ritterinnen_PID_01
+ ~Global("C#AjantisRitterinnenPID","GLOBAL",0)  Global("C#AjantisRitterinnenAjan","GLOBAL",1)~ + @539 DO ~SetGlobal("C#AjantisRitterinnenPID","GLOBAL",1)~ + ritterinnen_PID_02

+ ~Global("C#AjantisHisSearchPID","GLOBAL",1)~ + @540 DO ~SetGlobal("C#AjantisHisSearchPID","GLOBAL",2)~ + suche_PID_01

+ ~Global("C#AjantisIlvastarrWedding","GLOBAL",0)~ + @541 DO ~SetGlobal("C#AjantisIlvastarrWedding","GLOBAL",1)~ + wedding_PID_17
+ ~GlobalGT("C#AjantisIlvastarrWedding","GLOBAL",0) Global("C#AjantisDouglasTalk1","GLOBAL",0)~ + @542 + wedding_PID_01

+ ~Global("C#AjantisWeitergehenPID","GLOBAL",1)~ + @543 + weitergehen_PID_01

+ ~GlobalGT("C#AjantisWeitergehenPID","GLOBAL",0) Global("C#AjantisQuestErschaffen","GLOBAL",1) Class(Player1, PALADIN) Global("C#AjantisOrderPID","GLOBAL",0)~ + @544 DO ~SetGlobal("C#AjantisOrderPID","GLOBAL",1)~ + order_01
+ ~GlobalGT("C#AjantisWeitergehenPID","GLOBAL",0) Global("C#AjantisQuestErschaffen","GLOBAL",1) !Class(Player1, PALADIN) Global("C#AjantisOrderPID","GLOBAL",0)~ + @545 DO ~SetGlobal("C#AjantisOrderPID","GLOBAL",1)~ + order_01

+ ~Global("C#AjantisNoIntimacy","GLOBAL",1) Global("C#AjantisNoIntim","GLOBAL",0)~ + @546 DO ~SetGlobal("C#AjantisNoIntim","GLOBAL",1)~ + int_PID_01

+ ~Global("C#AjantisNoIntimacy","GLOBAL",1) !HasItem("C#AJCHBE","C#Ajantis")~ + @547 DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",0)~ + int_PID_02 

+ ~Global("C#AjantisNoIntimacy","GLOBAL",1) HasItem("C#AJCHBE","C#Ajantis")~ + @548 DO ~SetGlobal("C#AjantisNoIntimacy","GLOBAL",0) SetGlobal("C#AjantisBeltIntimacy","GLOBAL",1)~ + int_PID_02_belt

++ @210 + PID_rom_end_01

++ @42 EXIT
END

IF ~~ THEN verlieren_engaged
SAY @1099
IF ~~ THEN EXIT
END

IF ~~ THEN slayer_angst_engaged
SAY @1100
++ @1101 + slayer_angst_engaged_04
++ @1102 + slayer_angst_engaged_03
++ @1103 + slayer_angst_engaged_02
++ @1104 + slayer_angst_engaged_01
++ @1105 + slayer_angst_engaged_01
END

IF ~~ THEN slayer_angst_engaged_01
SAY @1106
IF ~~ THEN EXIT
END

IF ~~ THEN slayer_angst_engaged_02
SAY @1107
++ @1102 + slayer_angst_engaged_03
++ @1104 + slayer_angst_engaged_01
++ @1105 + slayer_angst_engaged_01
END

IF ~~ THEN slayer_angst_engaged_03
SAY @1108
++ @1104 + slayer_angst_engaged_01
++ @1105 + slayer_angst_engaged_01
END

IF ~~ THEN slayer_angst_engaged_04
SAY @1109 
++ @1102 + slayer_angst_engaged_03
++ @1104 + slayer_angst_engaged_01
++ @1105 + slayer_angst_engaged_01
END

IF ~~ THEN fight_slayer_engaged
SAY @1110
IF ~~ THEN EXIT
END

IF ~~ THEN slayer_wegschicken_engaged
SAY @1111
++ @1112 + slayer_wegschicken_engaged_01
++ @1113 + slayer_wegschicken_engaged_02
++ @1114 + slayer_wegschicken_engaged_01
END

IF ~~ THEN slayer_wegschicken_engaged_01
SAY @1115
IF ~~ THEN EXIT
END

IF ~~ THEN slayer_wegschicken_engaged_02
SAY @1116
++ @1112 + slayer_wegschicken_engaged_01
++ @1117 + slayer_wegschicken_engaged_03
++ @1114 + slayer_wegschicken_engaged_01
END

IF ~~ THEN slayer_wegschicken_engaged_03
SAY @1118
= @1119
IF ~~ THEN EXIT
END


IF ~~ THEN verstossung
SAY @549
++ @550 + verstossung_02
++ @551 + verstossung_03
++ @552 + verstossung_01
++ @553 + verstossung_04
END

IF ~~ THEN verstossung_01
SAY @554
IF ~~ THEN + verstossung_02
END

IF ~~ THEN verstossung_02
SAY @555
= @556
IF ~~ THEN EXIT
END

IF ~~ THEN verstossung_03
SAY @557
++ @558 + verstossung_02
++ @559 + verstossung_01
++ @560 + verstossung_04
END

IF ~~ THEN verstossung_04
SAY @561
IF ~~ THEN + verstossung_02
END

IF ~~ THEN ellisime_dream_PID_01
SAY @562
++ @563 + ellisime_dream_PID_02
++ @564 + ellisime_dream_PID_02
++ @565 + ellisime_dream_PID_03
END

IF ~~ THEN ellisime_dream_PID_02
SAY @566
IF ~~ THEN + ellisime_dream_PID_03
END

IF ~~ THEN ellisime_dream_PID_03
SAY @567
IF ~~ THEN EXIT
END

IF ~~ THEN traum_PID
SAY @568
++ @569 + traum_PID_01
++ @570 + traum_PID_02
++ @571 + traum_PID_03
END

IF ~~ THEN traum_PID_01
SAY @572
IF ~~ THEN EXIT
END

IF ~~ THEN traum_PID_02
SAY @573
IF ~~ THEN EXIT
END

IF ~~ THEN traum_PID_03
SAY @574
IF ~~ THEN EXIT
END


IF ~~ THEN nach_hochzeit_PID_01
SAY @575
++ @576 DO ~SetGlobal("C#AjantisNachHochzeitPID","GLOBAL",1)~ + nach_hochzeit_03
++ @577 DO ~SetGlobal("C#AjantisNachHochzeitPID","GLOBAL",1)~ + nach_hochzeit_04
++ @578 DO ~SetGlobal("C#AjantisNachHochzeitPID","GLOBAL",1)~ + nach_hochzeit_01
END

IF ~~ THEN nach_hochzeit_01
SAY @579
= @580
IF ~~ THEN + nach_hochzeit_02
END

END //APPEND

CHAIN
IF ~~ THEN C#AjanJ nach_hochzeit_02
@581  
== BKELDOR IF ~InParty("KELDORN") InMyArea("KELDORN") !StateCheck("KELDORN",CD_STATE_NOTVALID)~ THEN @582
== BANOMEN IF ~InParty("anomen") InMyArea("anomen") !StateCheck("anomen",CD_STATE_NOTVALID) Global("AnomenIsNotknight","GLOBAL",0)~ THEN @583
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) HasItem("MISC84","MINSC")~ THEN @584
== BMINSC IF ~InParty("MINSC") InMyArea("MINSC") !StateCheck("MINSC",CD_STATE_NOTVALID) !HasItem("MISC84","MINSC")~ THEN @585
== BAERIE IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @586
== BJAHEIR IF ~InParty("JAHEIRA") InMyArea("JAHEIRA") !StateCheck("JAHEIRA",CD_STATE_NOTVALID)~ THEN @587
== BKORGAN IF ~InParty("KORGAN") InMyArea("KORGAN") !StateCheck("KORGAN",CD_STATE_NOTVALID)~ THEN @588
== BEDWIN IF ~InParty("EDWIN") InMyArea("EDWIN") !StateCheck("EDWIN",CD_STATE_NOTVALID)~ THEN @589
== BHAERDA IF ~InParty("HAERDALIS") InMyArea("HAERDALIS") !StateCheck("HAERDALIS",CD_STATE_NOTVALID)~ THEN @590
== BNALIA IF ~InParty("nalia") InMyArea("nalia") !StateCheck("nalia",CD_STATE_NOTVALID)~ THEN @591
== BVALYGA IF ~InParty("valygar") InMyArea("valygar") !StateCheck("valygar",CD_STATE_NOTVALID)~ THEN @592
== BVICONI IF ~InParty("viconia") InMyArea("viconia") !StateCheck("viconia",CD_STATE_NOTVALID)~ THEN @593
== BYOSHIM IF ~InParty("yoshimo") InMyArea("yoshimo") !StateCheck("yoshimo",CD_STATE_NOTVALID)~ THEN @594
== BMAZZY IF ~InParty("mazzy") InMyArea("mazzy") !StateCheck("mazzy",CD_STATE_NOTVALID)~ THEN @595
== BCERND IF ~InParty("cernd") InMyArea("cernd") !StateCheck("cernd",CD_STATE_NOTVALID)~ THEN @596
== BJAN IF ~InParty("jan") InMyArea("jan") !StateCheck("jan",CD_STATE_NOTVALID)~ THEN @597
== BIMOEN2 IF ~InParty("imoen2") InMyArea("imoen2") !StateCheck("imoen2",CD_STATE_NOTVALID)~ THEN @598
END
++ @599 + nach_hochzeit_06
++ @600 + nach_hochzeit_06
++ @601 + nach_hochzeit_05

APPEND C#AjanJ

IF ~~ THEN nach_hochzeit_03
SAY @602
IF ~~ THEN + nach_hochzeit_02
END

IF ~~ THEN nach_hochzeit_04
SAY @603
IF ~~ THEN + nach_hochzeit_02
END

IF ~~ THEN nach_hochzeit_05
SAY @604
IF ~~ THEN EXIT
END

IF ~~ THEN nach_hochzeit_06
SAY @191
IF ~~ THEN EXIT
END


IF ~~ THEN schmuckbeutel_PID_01
SAY @605
IF ~~ THEN EXIT
END

IF ~~ THEN schmuckbeutel_PID_02
SAY @606
IF ~~ THEN EXIT
END

IF ~~ THEN musterbeutel_zurueck
SAY @607
IF ~~ THEN EXIT
END

IF ~~ THEN musterbeutel_zurueck_01
SAY @608
IF ~~ THEN EXIT
END

IF ~~ THEN ehring_auswahl
SAY @609
++ @610 + ehring_auswahl_01
++ @611 + ehring_auswahl_03
END

IF ~~ THEN ehring_auswahl_01
SAY @612
++ @613 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",1)~ + ehring_auswahl_02
++ @614 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",2)~ + ehring_auswahl_02
++ @615 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",3)~ + ehring_auswahl_02
++ @616 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",4)~ + ehring_auswahl_02
++ @617 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",5)~ + ehring_auswahl_02
++ @618 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",6)~ + ehring_auswahl_02
++ @619 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",7)~ + ehring_auswahl_02
++ @620 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",8)~ + ehring_auswahl_02
++ @621 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",9)~ + ehring_auswahl_02
++ @622 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",10)~ + ehring_auswahl_02
++ @623 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",11)~ + ehring_auswahl_02
++ @624 DO ~SetGlobal("C#AjantisEheRing","GLOBAL",12)~ + ehring_auswahl_02
++ @625 + ehring_auswahl_03
END

IF ~~ THEN ehring_auswahl_02
SAY @626
IF ~~ THEN DO ~SetGlobal("C#AjantisPCChoseRing","GLOBAL",1)~ EXIT
END

IF ~~ THEN ehring_auswahl_03
SAY @627
IF ~~ THEN EXIT
END

IF ~~ THEN ehring_auswahl_04
SAY @628
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_preparations_PID_00
SAY @629
= @630
++ @631 + wedding_preparations_PID_01
++ @632 + wedding_preparations_PID_02
++ @633 + wedding_preparations_PID_03
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
!Global("Stripped","GLOBAL",3)~ + @634 + wedding_preparations_PID_03b
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
Global("Stripped","GLOBAL",3)~ + @635 + wedding_preparations_PID_04
END

IF ~~ THEN wedding_preparations_PID_01
SAY @636
IF ~~ THEN + wedding_preparations_PID_05
END

IF ~~ THEN wedding_preparations_PID_02
SAY @637
IF ~~ THEN + wedding_preparations_PID_05
END

IF ~~ THEN wedding_preparations_PID_03
SAY @638
++ @639 + wedding_preparations_PID_01
++ @632 + wedding_preparations_PID_02
++ @640 + wedding_preparations_PID_04
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
!Global("Stripped","GLOBAL",3)~ + @634 + wedding_preparations_PID_03b
+ ~OR(2)
Global("JoinLathander","GLOBAL",1)
Kit(Player1,GODLATHANDER)
Global("Stripped","GLOBAL",3)~ + @635 + wedding_preparations_PID_04
END

IF ~~ THEN wedding_preparations_PID_03b
SAY @641
++ @642 + wedding_preparations_PID_01
++ @632 + wedding_preparations_PID_02
++ @640 + wedding_preparations_PID_04
END

IF ~~ THEN wedding_preparations_PID_04
SAY @643
IF ~~ THEN + wedding_preparations_PID_05
END


IF ~~ THEN wedding_preparations_PID_05
SAY @644
IF ~Global("C#AjantisPCChoseRing","GLOBAL",0)
OR(2)
Global("C#AjantisC#RINGSM","GLOBAL",2)
Global("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ THEN + wedding_preparations_PID_06
IF ~Global("C#AjantisPCChoseRing","GLOBAL",0)
!Global("C#AjantisC#RINGSM","GLOBAL",2)
!Global("C#AjantisTalkedAboutSurianko","GLOBAL",1)~ THEN + wedding_preparations_PID_07
IF ~Global("C#AjantisPCChoseRing","GLOBAL",1)~ THEN + wedding_preparations_PID_09
END

IF ~~ THEN wedding_preparations_PID_06
SAY @645
= @646
++ @647 + wedding_preparations_PID_11
++ @648 + wedding_preparations_PID_14
END

IF ~~ THEN wedding_preparations_PID_07
SAY @649
= @650
++ @651 + wedding_preparations_PID_12
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @652 + wedding_preparations_PID_08
++ @653 + wedding_preparations_PID_11
END

IF ~~ THEN wedding_preparations_PID_08
SAY @654
++ @653 + wedding_preparations_PID_11
++ @648 + wedding_preparations_PID_14
END

IF ~~ THEN wedding_preparations_PID_09
SAY @655
++ @656 + wedding_preparations_PID_10
++ @657 + wedding_preparations_PID_11
++ @658 + wedding_preparations_PID_14
END

IF ~~ THEN wedding_preparations_PID_10
SAY @659
IF ~~ THEN DO ~SetGlobal("C#AjantisPCChoseRing","GLOBAL",2) SetGlobal("C#AjantisBestelltEhering","GLOBAL",1) SetGlobal("C#AjantisMusterbeutel","GLOBAL",6)~ + wedding_preparations_PID_17
END

IF ~~ THEN wedding_preparations_PID_11
SAY @660
+ ~!AreaCheck("AR0704")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @661 + wedding_preparations_PID_13
+ ~!AreaCheck("AR0704")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @662 + wedding_preparations_PID_18
+ ~!AreaCheck("AR0704")
OR(51)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @663 + wedding_preparations_PID_13
+ ~!AreaCheck("AR0704")
OR(51)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @664 + wedding_preparations_PID_18
+ ~AreaCheck("AR0704")~ + @665 + wedding_preparations_PID_13
++ @648 + wedding_preparations_PID_14
END

IF ~~ THEN wedding_preparations_PID_12
SAY @666
+ ~Global("C#AjantisTalkedToSurianko","GLOBAL",1)~ + @667 + wedding_preparations_PID_08
++ @653 + wedding_preparations_PID_11
++ @668 + wedding_preparations_PID_14
END

IF ~~ THEN wedding_preparations_PID_13
SAY @669
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterbeutel","GLOBAL",1)~ + wedding_preparations_PID_17
END

IF ~~ THEN wedding_preparations_PID_14
SAY @670
++ @671 + wedding_preparations_PID_16
++ @672 + wedding_preparations_PID_16
++ @673 + wedding_preparations_PID_15
END

IF ~~ THEN wedding_preparations_PID_15
SAY @674
++ @671 + wedding_preparations_PID_16
++ @675 + wedding_preparations_PID_16
END

IF ~~ THEN wedding_preparations_PID_16
SAY @676
+ ~Global("C#AjantisPCChoseRing","GLOBAL",1)~ + @677 + wedding_preparations_PID_10
+ ~!AreaCheck("AR0704")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @661 + wedding_preparations_PID_13
+ ~!AreaCheck("AR0704")
!AreaCheck("AR0410")
!AreaCheck("AR0411")
!AreaCheck("AR0412")
!AreaCheck("AR0413")
!AreaCheck("AR0414")
!AreaCheck("AR0420")
!AreaCheck("AR0516")
!AreaCheck("AR0517")
!AreaCheck("AR0518")
!AreaCheck("AR0519")
!AreaCheck("AR0520")
!AreaCheck("AR0521")
!AreaCheck("AR0600")
!AreaCheck("AR0604")
!AreaCheck("AR0605")
!AreaCheck("AR0606")
!AreaCheck("AR1401")
!AreaCheck("AR1501")
!AreaCheck("AR1502")
!AreaCheck("AR1503")
!AreaCheck("AR1504")
!AreaCheck("AR1505")
!AreaCheck("AR1506")
!AreaCheck("AR1507")
!AreaCheck("AR1508")
!AreaCheck("AR1509")
!AreaCheck("AR1510")
!AreaCheck("AR1511")
!AreaCheck("AR1512")
!AreaCheck("AR1513")
!AreaCheck("AR1514")
!AreaCheck("AR1515")
!AreaCheck("AR1516")
!AreaCheck("AR2100")
!AreaCheck("AR2101")
!AreaCheck("AR2102")
!AreaCheck("AR2200")
!AreaCheck("AR2201")
!AreaCheck("AR2202")
!AreaCheck("AR2203")
!AreaCheck("AR2204")
!AreaCheck("AR2205")
!AreaCheck("AR2206")
!AreaCheck("AR2207")
!AreaCheck("AR2208")
!AreaCheck("AR2209")
!AreaCheck("AR2210")
!AreaCheck("AR2300")
!AreaCheck("AR2400")
!AreaCheck("AR2401")
!AreaCheck("AR2402")

!AreaCheck("AR2900") //Abyss
!AreaCheck("AR2901")
!AreaCheck("AR2902")
!AreaCheck("AR2903")
!AreaCheck("AR2904")
!AreaCheck("AR2905")
!AreaCheck("AR2906")~ + @662 + wedding_preparations_PID_18
+ ~!AreaCheck("AR0704")
OR(51)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @663 + wedding_preparations_PID_13
+ ~!AreaCheck("AR0704")
OR(51)
AreaCheck("AR0410")
AreaCheck("AR0411")
AreaCheck("AR0412")
AreaCheck("AR0413")
AreaCheck("AR0414")
AreaCheck("AR0420")
AreaCheck("AR0516")
AreaCheck("AR0517")
AreaCheck("AR0518")
AreaCheck("AR0519")
AreaCheck("AR0520")
AreaCheck("AR0521")
AreaCheck("AR0600")
AreaCheck("AR0604")
AreaCheck("AR0605")
AreaCheck("AR0606")
AreaCheck("AR1401")
AreaCheck("AR1501")
AreaCheck("AR1502")
AreaCheck("AR1503")
AreaCheck("AR1504")
AreaCheck("AR1505")
AreaCheck("AR1506")
AreaCheck("AR1507")
AreaCheck("AR1508")
AreaCheck("AR1509")
AreaCheck("AR1510")
AreaCheck("AR1511")
AreaCheck("AR1512")
AreaCheck("AR1513")
AreaCheck("AR1514")
AreaCheck("AR1515")
AreaCheck("AR1516")
AreaCheck("AR2100")
AreaCheck("AR2101")
AreaCheck("AR2102")
AreaCheck("AR2200")
AreaCheck("AR2201")
AreaCheck("AR2202")
AreaCheck("AR2203")
AreaCheck("AR2204")
AreaCheck("AR2205")
AreaCheck("AR2206")
AreaCheck("AR2207")
AreaCheck("AR2208")
AreaCheck("AR2209")
AreaCheck("AR2210")
AreaCheck("AR2300")
AreaCheck("AR2400")
AreaCheck("AR2401")
AreaCheck("AR2402")~ + @664 + wedding_preparations_PID_18
+ ~AreaCheck("AR0704")~ + @665 + wedding_preparations_PID_13
END

IF ~~ THEN wedding_preparations_PID_17
SAY @678
++ @679 + wedding_preparations_PID_19
++ @680 + wedding_preparations_PID_19
++ @681 + wedding_preparations_PID_20
END

IF ~~ THEN wedding_preparations_PID_18
SAY @682
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterbeutel","GLOBAL",2)~ + wedding_preparations_PID_17
END

IF ~~ THEN wedding_preparations_PID_19
SAY @683
IF ~~ THEN + wedding_preparations_PID_21
END

IF ~~ THEN wedding_preparations_PID_20
SAY @684
IF ~~ THEN + wedding_preparations_PID_21
END

IF ~~ THEN wedding_preparations_PID_21
SAY @685
= @686
++ @687 + wedding_preparations_PID_24
++ @688 + wedding_preparations_PID_22
++ @689 + wedding_preparations_PID_23
END

IF ~~ THEN wedding_preparations_PID_22
SAY @690
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_preparations_PID_23
SAY @691
IF ~~ THEN + wedding_preparations_PID_22
END

IF ~~ THEN wedding_preparations_PID_24
SAY @692
= @693
IF ~~ THEN EXIT
END

IF ~~ THEN musterbeutel_01
SAY @694
IF ~~ THEN EXIT
END

IF ~~ THEN musterbeutel_02
SAY @695
IF ~~ THEN EXIT
END

IF ~~ THEN musterbeutel_03
SAY @696
++ @697 + musterbeutel_04
++ @698 EXIT
END

IF ~~ THEN musterbeutel_04
SAY @699
IF ~~ THEN DO ~SetGlobal("C#AjantisMusterbeutel","GLOBAL",2)~ EXIT
END


IF ~~ THEN eleiana_PID
SAY @700
IF ~~ THEN EXIT
END

IF ~~ THEN firkraag_kidnap_PID_01
SAY @701
++ @702 + firkraag_kidnap_PID_02
++ @703 + firkraag_kidnap_PID_03
END

IF ~~ THEN firkraag_kidnap_PID_02
SAY @704
= @705
IF ~~ THEN EXIT
END

IF ~~ THEN firkraag_kidnap_PID_03
SAY @706
IF ~~ THEN EXIT
END

IF ~~ THEN ritterinnen_PID_01
SAY @707
++ @194 + ritterinnen_PID_03
++ @708 + ritterinnen_PID_04
++ @709 + ritterinnen_PID_03
END

IF ~~ THEN ritterinnen_PID_02
SAY @710
++ @194 + ritterinnen_PID_03
++ @708 + ritterinnen_PID_04
++ @709 + ritterinnen_PID_03
END

IF ~~ THEN ritterinnen_PID_03
SAY @711
IF ~~ THEN EXIT
END

IF ~~ THEN ritterinnen_PID_04
SAY @712
++ @713 + ritterinnen_PID_05
++ @714 + ritterinnen_PID_05
++ @715 + ritterinnen_PID_05
++ @709 + ritterinnen_PID_05
END

IF ~~ THEN ritterinnen_PID_05
SAY @716
= @717
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN order_01
SAY @718
++ @719 + order_12
++ @720 + order_13
++ @721 + order_02
END

IF ~~ THEN BEGIN order_02
SAY @722
++ @723 + order_12
++ @724 + order_03
END

IF ~~ THEN order_03
SAY @725
++ @726 + order_04
++ @727 + order_04
END

IF ~~ THEN order_04
SAY @728
++ @729 + order_14
++ @730 + order_05
END

IF ~~ THEN order_05
SAY @731
++ @732 + order_14
++ @733 + order_06
END

IF ~~ THEN order_06
SAY @734
++ @735 + order_07
++ @736 + order_07
END

IF ~~ THEN order_07
SAY @737
= @738
++ @739 + order_14
++ @740 + order_08
END

IF ~~ THEN order_08
SAY @741
++ @739 + order_14
++ @742 + order_09
END

IF ~~ THEN order_09
SAY @743
++ @744 + order_11
++ @745 + order_10
END

IF ~~ THEN order_10
SAY @746
++ @747 + order_13
++ @739 + order_14
++ @748 + order_15
END

IF ~~ THEN order_11
SAY @749
IF ~~ THEN + order_15
END

IF ~~ THEN order_12
SAY @750
IF ~~ THEN EXIT
END

IF ~~ THEN order_13
SAY @751
IF ~~ THEN EXIT
END

IF ~~ THEN order_14
SAY @752
IF ~~ THEN EXIT
END

IF ~~ THEN order_15
SAY @753
IF ~~ THEN EXIT
END

IF ~~ THEN weitergehen_PID_01
SAY @754
++ @755 DO ~SetGlobal("C#AjantisWeitergehenPID","GLOBAL",2)~ + weitergehen_PID_02
++ @756 EXIT
++ @757 EXIT
END

IF ~~ THEN weitergehen_PID_02
SAY @758
++ @759 EXIT
++ @760 EXIT
END

//windspear dead bodys' illusion
IF ~~ THEN windspeerkampf_PID_06
SAY @761
++ @762 + windspeerkampf_PID_07
++ @763 + windspeerkampf_PID_07
+ ~Class(Player1,PALADIN)~ + @764 DO ~SetGlobal("C#AjantisWindspearBodyPal","GLOBAL",1)~ + windspeerkampf_PID_09
++ @765 + windspeerkampf_PID_08
END

IF ~~ THEN windspeerkampf_PID_07
SAY @766
IF ~~ THEN EXIT
END

IF ~~ THEN windspeerkampf_PID_08
SAY @767
IF ~~ THEN EXIT
END

IF ~~ THEN windspeerkampf_PID_09
SAY @768
IF ~~ THEN EXIT
END

//necklace
IF ~~ THEN jahaboam_PID_01
SAY @769
IF ~~ THEN EXIT
END

IF ~~ THEN jahaboam_PID_02
SAY @770
++ @771 + jahaboam_PID_01
++ @772 + jahaboam_PID_03
++ @773 + jahaboam_PID_04
END

IF ~~ THEN jahaboam_PID_03
SAY @774
++ @775 + jahaboam_PID_01
++ @773 + jahaboam_PID_04
END

IF ~~ THEN jahaboam_PID_04
SAY @776
IF ~~ THEN EXIT
END


//waiting for intimacies
IF ~~ THEN int_PID_01
SAY @777
= @778
IF ~~ THEN EXIT
END

IF ~~ THEN int_PID_02
SAY @779
IF ~~ THEN EXIT
END

IF ~~ THEN int_PID_02_belt
SAY @780
= @781
IF ~~ THEN EXIT
END



//more about the search
IF ~~ THEN suche_PID_01
SAY @782
= @783
++ @784 + suche_PID_04
++ @785 + suche_PID_04
++ @786 + suche_PID_03
END

IF ~~ THEN suche_PID_03
SAY @192
IF ~~ THEN EXIT
END

IF ~~ THEN suche_PID_04
SAY @787
++ @788 + suche_PID_03
++ @789 + suche_PID_05
END

IF ~~ THEN suche_PID_05
SAY @790
++ @791 + suche_PID_07
++ @792 + suche_PID_06
END

IF ~~ THEN suche_PID_06
SAY @793
IF ~~ THEN EXIT
END

IF ~~ THEN suche_PID_07
SAY @794
IF ~~ THEN EXIT
END



//what happened to Ajantis
IF ~~ THEN ajantis_PID_01
SAY @795
++ @796 + ajantis_PID_02
++ @797 DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ajantis_PID_03
END

IF ~~ THEN ajantis_PID_02
SAY @798
IF ~Global("C#AjantisAlreadyKnighted","GLOBAL",0)~ THEN DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ajantis_PID_04
IF ~Global("C#AjantisAlreadyKnighted","GLOBAL",1)~ THEN + ajantis_PID_05
END

IF ~~ THEN ajantis_PID_03
SAY @799
++ @800 + ritterschlag_PID_02
++ @801 + ritterschlag_PID_03
++ @802 + ajantis_PID_09 
END

IF ~~ THEN ajantis_PID_04
SAY @803
++ @800 + ritterschlag_PID_02
++ @801 + ritterschlag_PID_03
++ @802 + ajantis_PID_09
END

IF ~~ THEN ajantis_PID_05
SAY @804
IF ~~ THEN + ajantis_PID_06
END

IF ~~ THEN ajantis_PID_06
SAY @805
++ @806 + ajantis_PID_08
++ @807 + ajantis_PID_07
++ @808 + ajantis_PID_07
END

IF ~~ THEN ajantis_PID_07
SAY @809
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_PID_08
SAY @810
IF ~~ THEN EXIT
END

IF ~~ THEN ajantis_PID_09
SAY @811
++ @806 + ajantis_PID_08
++ @807 + ajantis_PID_07
++ @808 + ajantis_PID_07
END

IF ~~ THEN ajantis_PID_10
SAY @812
++ @796 + ajantis_PID_02
+ ~Global("C#AjantisAlreadyKnighted","GLOBAL",0)~ + @813 DO ~SetGlobal("C#AjantisAlreadyKnighted","GLOBAL",1)~ + ajantis_PID_11
+ ~Global("C#AjantisAlreadyKnighted","GLOBAL",1)~ + @814 + ajantis_PID_11a
END

IF ~~ THEN ajantis_PID_11
SAY @815
++ @800 + ritterschlag_PID_02
++ @801 + ritterschlag_PID_03
++ @802 + ajantis_PID_09
END

IF ~~ THEN ajantis_PID_11a
SAY @816
IF ~~ THEN + ajantis_PID_06
END

//already knighted
IF ~~ THEN ritterschlag_PID_01
SAY @817
++ @800 + ritterschlag_PID_02
++ @801 + ritterschlag_PID_03
END

IF ~~ THEN ritterschlag_PID_02
SAY @818
++ @819 EXIT
++ @820 EXIT
++ @821 EXIT
END

IF ~~ THEN ritterschlag_PID_03
SAY @822
= @823
++ @819 EXIT
++ @824 + ritterschlag_PID_04
++ @821 + ritterschlag_PID_04
END

IF ~~ THEN ritterschlag_PID_04
SAY @825
IF ~~ THEN EXIT
END

//Ilvastarr's reaction to wedding plans
IF ~~ THEN wedding_PID_01
SAY @826
IF ~~ THEN EXIT
END

IF ~~ THEN wedding_PID_17
SAY @827
++ @828 DO ~SetGlobal("C#WeddingPID","LOCALS",1)~ + wedding_PID_18
++ @829 + wedding_PID_19
++ @830 + wedding_PID_20
++ @831 + wedding_PID_21
END

IF ~~ THEN wedding_PID_18
SAY @832
++ @829 + wedding_PID_19
++ @830 + wedding_PID_20
++ @831 + wedding_PID_21
END

IF ~~ THEN wedding_PID_19
SAY @833
+ ~Global("C#WeddingPID","LOCALS",0)~ + @828 + wedding_PID_22
++ @834 EXIT
END

IF ~~ THEN wedding_PID_20
SAY @835
+ ~Global("C#WeddingPID","LOCALS",0)~ + @828 + wedding_PID_22
++ @834 EXIT
END

IF ~~ THEN wedding_PID_21
SAY @836
+ ~Global("C#WeddingPID","LOCALS",0)~ + @828 + wedding_PID_22
++ @834 EXIT
END

IF ~~ THEN wedding_PID_22
SAY @832
IF ~~ THEN EXIT
END


//ring-talk, same as in the "Romance.d"
IF ~~ THEN ring_PID_01
SAY @837
++ @838 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_PID_03
++ @839 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_PID_03
++ @840 + ring_PID_04
END

IF ~~ THEN ring_PID_02
SAY @841
IF ~~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1)~ + ring_PID_07b
END

IF ~~ THEN ring_PID_03
SAY @842
IF ~~ THEN + ring_PID_07a
END

IF ~~ THEN ring_PID_04
SAY @843
++ @844 + ring_PID_06
++ @845 + ring_PID_10
+ ~PartyHasItem("C#AJ0008")~ + @846 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_PID_03
+ ~!PartyHasItem("C#AJ0008")~ + @847 + ring_PID_09
END

IF ~~ THEN ring_PID_05
SAY @848
++ @849 + ring_PID_09
++ @850 + ring_PID_06
++ @840 + ring_PID_04
END

IF ~~ THEN ring_PID_06
SAY @851
IF ~~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1)~ + ring_PID_07b
END

IF ~~ THEN ring_PID_07a
SAY @852
++ @853 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_PID_07c
++ @854 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_PID_07c 
++ @855 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_PID_07c 
++ @856 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_PID_07c 
++ @857 + ring_PID_08
++ @858 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_PID_07c
++ @859 + ring_PID_07d
END

IF ~~ THEN ring_PID_07b
SAY @860
++ @861 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_PID_07c
++ @862 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_PID_07c 
++ @855 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_PID_07c 
++ @856 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_PID_07c 
++ @857 + ring_PID_08
++ @863 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_PID_07c
++ @859 + ring_PID_07d
END

IF ~~ THEN ring_PID_07c
SAY @864
IF ~~ THEN EXIT
END

IF ~~ THEN ring_PID_07d
SAY @865 
IF ~~ THEN DO ~SetGlobal("C#AjantisRingFarbe","GLOBAL",1)~ UNSOLVED_JOURNAL @10003 EXIT
END

IF ~~ THEN ring_PID_08
SAY @866
++ @867 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_PID_07c
++ @868 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_PID_07c 
++ @869 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_PID_07c 
++ @870 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_PID_07c 
++ @871 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_PID_07c
++ @872 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1)~ + ring_PID_07c
END

IF ~~ THEN ring_PID_09
SAY @873
IF ~~ THEN DO ~SetGlobal("C#AjantisWartetRing","GLOBAL",1)~ UNSOLVED_JOURNAL @10004 + ring_PID_07a
END

IF ~~ THEN ring_PID_10
SAY @874
++ @875 + PID_rom_end_02
++ @876 + ring_PID_11
END

IF ~~ THEN ring_PID_11
SAY @877
++ @878 + ring_PID_06
+ ~PartyHasItem("C#AJ0008")~ + @879 DO ~TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_PID_03
+ ~!PartyHasItem("C#AJ0008")~ + @880 + ring_PID_09
END

IF ~~ THEN ring_schmieden_PID_01
SAY @881
IF ~!Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisWartetRing","GLOBAL",2) TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1) EraseJournalEntry(@10004)~ EXIT
IF ~Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisWartetRing","GLOBAL",2) TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1) EraseJournalEntry(@10004)~ + ring_schmieden_PID_04
END

IF ~~ THEN ring_schmieden_PID_02
SAY @882
IF ~!Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",2) TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ EXIT
IF ~Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",2) TakePartyItem("C#AJ0008") DestroyItem("C#AJ0008") SetGlobal("C#AjantisSchmiedetRing","GLOBAL",1)~ + ring_schmieden_PID_04
END

IF ~~ THEN ring_schmieden_PID_03
SAY @883
IF ~!Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1) SetGlobal("C#AjantisWartetRing","GLOBAL",2) EraseJournalEntry(@10004)~ EXIT
IF ~Global("C#AjantisRingFarbe","GLOBAL",1)~ THEN DO ~SetGlobal("C#AjantisNeuerRing","GLOBAL",1) SetGlobal("C#AjantisWartetRing","GLOBAL",2) EraseJournalEntry(@10004)~ + ring_schmieden_PID_04
END

IF ~~ THEN ring_schmieden_PID_04
SAY @884
++ @885 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_02
++ @886 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_02 
++ @855 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_02 
++ @856 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_02 
+ ~Global("C#AjantisRingFarblos","GLOBAL",0)~ + @857 DO ~SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_03
+ ~Global("C#AjantisRingFarblos","GLOBAL",1)~ + @887 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)
SetGlobal("C#AjantisRingFarblos","GLOBAL",0)~ + ring_farbe_PID_02
++ @863 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1) SetGlobal("C#AjantisRingFarbe","GLOBAL",2)~ + ring_farbe_PID_02
++ @859 + ring_PID_07d
END

//engagement ring colour
IF ~~ THEN ring_farbe_PID_01
SAY @888
++ @885 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_farbe_PID_02
++ @886 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_farbe_PID_02 
++ @855 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_farbe_PID_02 
++ @856 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_farbe_PID_02 
+ ~Global("C#AjantisRingFarblos","GLOBAL",0)~ + @857 + ring_farbe_PID_03
+ ~Global("C#AjantisRingFarblos","GLOBAL",1)~ + @887 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1)
SetGlobal("C#AjantisRingFarblos","GLOBAL",0)~ + ring_farbe_PID_02
++ @863 DO ~SetGlobal("C#AjantisRing11G","GLOBAL",1)~ + ring_farbe_PID_02
END

IF ~~ THEN ring_farbe_PID_02
SAY @889
IF ~~ THEN DO ~EraseJournalEntry(@10003)~ EXIT
END

IF ~~ THEN ring_farbe_PID_03
SAY @866
++ @867 DO ~SetGlobal("C#AjantisRing011","GLOBAL",1)~ + ring_farbe_PID_02
++ @868 DO ~SetGlobal("C#AjantisRing11A","GLOBAL",1)~ + ring_farbe_PID_02 
++ @869 DO ~SetGlobal("C#AjantisRing11C","GLOBAL",1)~ + ring_farbe_PID_02 
++ @870 DO ~SetGlobal("C#AjantisRing11D","GLOBAL",1)~ + ring_farbe_PID_02 
++ @872 DO ~SetGlobal("C#AjantisRing11B","GLOBAL",1)~ + ring_farbe_PID_02
END


IF ~~ THEN schildzurueck
SAY @890
IF ~~ THEN EXIT
END

IF ~~ THEN schildrueckgabe
SAY @891
= @892
IF ~~ THEN EXIT
END

IF ~~ THEN BEGIN PID_rom_end_01
SAY @893
+ ~Global("C#AjantisPCMarriage","GLOBAL",0)~ + @894 + PID_rom_end_02
+ ~Global("C#AjantisPCMarriage","GLOBAL",1)~ + @895 + PID_rom_end_03
++ @876 EXIT
END

IF ~~ THEN PID_rom_end_02
SAY @896
++ @897 + PID_rom_end_02b
++ @898 + PID_rom_end_02b
++ @899 + PID_rom_end_02b
++ @900 EXIT
END

IF ~~ THEN PID_rom_end_02b
SAY @901
= @902
IF ~~ THEN DO ~SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
EraseJournalEntry(@10003)
EraseJournalEntry(@10004)
EraseJournalEntry(@10005)
EraseJournalEntry(@10006)
EraseJournalEntry(@10007)
EraseJournalEntry(@10008)
EraseJournalEntry(@10009)
EraseJournalEntry(@10010)~  SOLVED_JOURNAL @10029 EXIT
END

IF ~~ THEN PID_rom_end_03 //(Scheidung) Trennung
SAY @903
++ @897 + PID_rom_end_03b
++ @898 + PID_rom_end_03b
++ @904 + PID_rom_end_03b
++ @905 EXIT
END

IF ~~ THEN PID_rom_end_03b //(Scheidung) Trennung
SAY @906
= @907
IF ~~ THEN DO ~LeaveParty() SetGlobal("C#AjantisRomanceActive","GLOBAL",3) SetGlobal("C#AjantisPCBrokeRomance","GLOBAL",1)
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
EscapeArea()~  SOLVED_JOURNAL @10030 EXIT
END


END