//RA = 2: Global("C#AjantisInfo","GLOBAL",1) und //GlobalGT("DomainPaladinBattle","GLOBAL",0) ergänzen

EXTEND_BOTTOM KAYL2 5
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @0 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_5
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @1 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_5_2

+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_5_afterbodhi
END 

INTERJECT KAYL2 5 C#AjantisImOrdenGefragtKayl
== KAYL2 IF ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)
!Global("C#AjantisVampire","GLOBAL",6)~ THEN 
@2
END
++ @3 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_5_3
++ @4 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_5_3b
++ @5 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_5_3c

INTERJECT KAYL2 5 C#AjantisImOrdenGefragtKayl
== KAYL2 IF ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",1)
!Global("C#AjantisVampire","GLOBAL",6)~ THEN 
@6
END
++ @7 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_5_4
++ @5 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_5_4b


EXTEND_BOTTOM KAYL2 15
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @8 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_15
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @9 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_15_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @10 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_15_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_15_afterbodhi
END


EXTEND_BOTTOM KAYL2 17
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @8 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_17
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @9 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_17_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @10 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_17_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_17_afterbodhi
END


EXTEND_BOTTOM KAYL2 19
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @8 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_19
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @11 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_19_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @12 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_19_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_19_afterbodhi
END

ADD_TRANS_TRIGGER ~KAYL2~ 31 ~False()~ DO 0


EXTEND_BOTTOM KAYL2 31
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @0 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_31
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @1 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_31_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @23 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_31_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_31_afterbodhi
  IF ~GlobalGT("chapter","GLOBAL",%bg2_chapter_3%)~ THEN REPLY #45842 EXIT
END

ADD_TRANS_TRIGGER ~KAYL2~ 33 ~False()~

EXTEND_BOTTOM KAYL2 33
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @0 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_33
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @1 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_33_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @23 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_33_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_33_afterbodhi
++ @24 + KAYL2_report_33_1
END

ADD_TRANS_TRIGGER ~KAYL2~ 34 ~False()~

EXTEND_BOTTOM KAYL2 34
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @0 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_34
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @1 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_34_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @23 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_34_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_34_afterbodhi
++ @25 + KAYL2_report_34_1
END

ADD_TRANS_TRIGGER ~KAYL2~ 35 ~False()~

EXTEND_BOTTOM KAYL2 35
+ ~Dead("FIRKRA02") Global("C#FirkraagTotKayl","GLOBAL",0) Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @0 DO ~SetGlobal("C#FirkraagTotKayl","GLOBAL",1)~ + KAYL2_report_35
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @1 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_35_2
+ ~Global("C#AjantisImOrdenGefragtKayl","GLOBAL",0) !Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @23 DO ~SetGlobal("C#AjantisImOrdenGefragtKayl","GLOBAL",1)~ + KAYL2_report_35_3
+ ~Global("C#AjantisVampire","GLOBAL",6)
!InParty("C#Ajantis") 
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
!Global("C#AjantisRomanceActive","GLOBAL",3)
Global("C#AjantisAskedWhereOrden","GLOBAL",0)~ + @108 DO ~SetGlobal("C#AjantisAskedWhereOrden","GLOBAL",1)~ + KAYL2_report_35_afterbodhi
++ @25 + KAYL2_report_35_1
END


APPEND KAYL2 


IF ~~ THEN KAYL2_report_5
SAY @26
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_2
SAY @27
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_3
SAY @28
= @29
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_3b
SAY @30
= @29
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_3c
SAY @31
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_4
SAY @29
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_4b
SAY @32
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_5_afterbodhi
SAY @109
COPY_TRANS KAYL2 5
END

IF ~~ THEN KAYL2_report_15
SAY @33
COPY_TRANS KAYL2 15
END

IF ~~ THEN KAYL2_report_15_2
SAY @27
= @34
COPY_TRANS KAYL2 15
END

IF ~~ THEN KAYL2_report_15_3
SAY @28
= @35
= @34
COPY_TRANS KAYL2 15
END

IF ~~ THEN KAYL2_report_15_afterbodhi
SAY @109
COPY_TRANS KAYL2 15
END


IF ~~ THEN KAYL2_report_17
SAY @33
COPY_TRANS KAYL2 17
END

IF ~~ THEN KAYL2_report_17_2
SAY @27
= @34
COPY_TRANS KAYL2 17
END

IF ~~ THEN KAYL2_report_17_3
SAY @28
= @35
= @34
COPY_TRANS KAYL2 17
END

IF ~~ THEN KAYL2_report_17_afterbodhi
SAY @109
= @34
COPY_TRANS KAYL2 17
END

IF ~~ THEN KAYL2_report_19
SAY @33
COPY_TRANS KAYL2 19
END

IF ~~ THEN KAYL2_report_19_2
SAY @27
= @34
COPY_TRANS KAYL2 19
END

IF ~~ THEN KAYL2_report_19_3
SAY @28
= @35
= @34
COPY_TRANS KAYL2 19
END

IF ~~ THEN KAYL2_report_19_afterbodhi
SAY @109
= @34
COPY_TRANS KAYL2 19
END

IF ~~ THEN KAYL2_report_31
SAY @47
COPY_TRANS KAYL2 31
END

IF ~~ THEN KAYL2_report_31_2
SAY @27
COPY_TRANS KAYL2 31
END

IF ~~ THEN KAYL2_report_31_3
SAY @28
= @35
COPY_TRANS KAYL2 31
END

IF ~~ THEN KAYL2_report_31_afterbodhi
SAY @109
COPY_TRANS KAYL2 31
END

IF ~~ THEN KAYL2_report_34
SAY @47
COPY_TRANS KAYL2 34
END

IF ~~ THEN KAYL2_report_34_1
SAY @48
COPY_TRANS KAYL2 34
END 

IF ~~ THEN KAYL2_report_34_2
SAY @27
COPY_TRANS KAYL2 34
END

IF ~~ THEN KAYL2_report_34_3
SAY @28
= @35
COPY_TRANS KAYL2 34
END

IF ~~ THEN KAYL2_report_34_afterbodhi
SAY @109
COPY_TRANS KAYL2 34
END

IF ~~ THEN KAYL2_report_33
SAY @47
COPY_TRANS KAYL2 33
END

IF ~~ THEN KAYL2_report_33_1
SAY @49
COPY_TRANS KAYL2 33
END

IF ~~ THEN KAYL2_report_33_2
SAY @27
COPY_TRANS KAYL2 33
END

IF ~~ THEN KAYL2_report_33_3
SAY @28
= @35
COPY_TRANS KAYL2 33
END

IF ~~ THEN KAYL2_report_33_afterbodhi
SAY @109
COPY_TRANS KAYL2 33
END

IF ~~ THEN KAYL2_report_35
SAY @47
COPY_TRANS KAYL2 35
END

IF ~~ THEN KAYL2_report_35_1
SAY @48
COPY_TRANS KAYL2 35
END

IF ~~ THEN KAYL2_report_35_2
SAY @27
COPY_TRANS KAYL2 35
END

IF ~~ THEN KAYL2_report_35_3
SAY @28
COPY_TRANS KAYL2 35
END

IF ~~ THEN KAYL2_report_35_afterbodhi
SAY @109
COPY_TRANS KAYL2 35
END

END //APPEND KAYL2 



//Prälat Wessalen

EXTEND_BOTTOM HPRELATE 24
+ ~OR(2)
!Dead("FIRKRA02")
Global("C#ReportFirkraagsTod","GLOBAL",1)
OR(2)
GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0)
Global("C#AjantisQuestErschaffen","GLOBAL",1)
Global("C#AjantisQuestBelohnung","GLOBAL",0)~ + @50 + HPRELATE_quest_geloest
+ ~Dead("FIRKRA02") Global("C#ReportFirkraagsTod","GLOBAL",0)
OR(2)
GlobalGT("C#AjantisDirektErschaffen","GLOBAL",0)
Global("C#AjantisQuestErschaffen","GLOBAL",1)
Global("C#AjantisQuestBelohnung","GLOBAL",0)~ + @51 + HPRELATE_quest_geloest
+ ~Global("C#AjantisDirektErschaffen","GLOBAL",0)
Global("C#AjantisQuestErschaffen","GLOBAL",0)
Dead("FIRKRA02") Global("C#ReportFirkraagsTod","GLOBAL",0)~ + @0 DO ~SetGlobal("C#ReportFirkraagsTod","GLOBAL",1)~ + HPRELATE_report_01
+ ~OR(3)
Global("C#AjantisPCBrokeRomance","GLOBAL",1)
!Global("C#AjantisEngagedMatch","GLOBAL",1)
!Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @52 DO ~SetGlobal("C#AjantisInfo","GLOBAL",1)~ + HPRELATE_ajantisinfo
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
Global("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @53 DO ~SetGlobal("C#AjantisInfo","GLOBAL",1)~ + HPRELATE_ajantisinforom_01
+ ~!Global("C#AjantisPCBrokeRomance","GLOBAL",1)
Global("C#AjantisEngagedMatch","GLOBAL",1)
Global("C#AjantisEngaged","GLOBAL",1)
Global("C#AjantisExistiert","GLOBAL",0)
GlobalGT("DomainPaladinBattle","GLOBAL",0)
Global("C#AjantisInfo","GLOBAL",0)~ + @54 DO ~SetGlobal("C#AjantisInfo","GLOBAL",1)~ + HPRELATE_ajantisinforom_09
END

CHAIN
IF ~~ THEN HPRELATE HPRELATE_quest_geloest
@55
== HPRELATE IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") Global("C#AjanDirektInDenOrden","GLOBAL",0)~ THEN @56
== C#AjanJ IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjanDirektInDenOrden","GLOBAL",0)~ THEN @57
== HPRELATE IF ~InParty("C#Ajantis") InMyArea("C#Ajantis") !StateCheck("C#Ajantis",CD_STATE_NOTVALID) Global("C#AjanDirektInDenOrden","GLOBAL",0)~ THEN @58
END
IF ~OR(2)
!Dead("FIRKRA02")
Global("C#ReportFirkraagsTod","GLOBAL",1)
!Dead("C#KNIG02") !Dead("C#KNIG03") !Dead("C#KNIG04")~ THEN + HPRELATE_quest_geloest_01
IF ~OR(2)
!Dead("FIRKRA02")
Global("C#ReportFirkraagsTod","GLOBAL",1)
OR(3)
Dead("C#KNIG02") 
Dead("C#KNIG04") 
Dead("C#KNIG03")~ THEN + HPRELATE_quest_geloest_02

IF ~Dead("FIRKRA02")
Global("C#ReportFirkraagsTod","GLOBAL",0)
!Dead("C#KNIG02") !Dead("C#KNIG03") !Dead("C#KNIG04")~ THEN DO ~SetGlobal("C#ReportFirkraagsTod","GLOBAL",1)~ + HPRELATE_quest_firkraag_01

IF ~Dead("FIRKRA02")
Global("C#ReportFirkraagsTod","GLOBAL",0)
OR(3)
Dead("C#KNIG02") 
Dead("C#KNIG04") 
Dead("C#KNIG03")~ THEN DO ~SetGlobal("C#ReportFirkraagsTod","GLOBAL",1)~ + HPRELATE_quest_firkraag_02

APPEND HPRELATE

IF ~~ THEN HPRELATE_quest_geloest_01
SAY @59
IF ~~ THEN DO ~SetGlobal("C#AjantisQuestBelohnung","GLOBAL",1) ReputationInc(1)
GiveItemCreate("C#AJ0012",[PC],1,0,0) 
AddexperienceParty(10000)~ + HPRELATE_quest_geloest_03
END

IF ~~ THEN HPRELATE_quest_geloest_02
SAY @60
IF ~~ THEN DO ~SetGlobal("C#AjantisQuestBelohnung","GLOBAL",1) ReputationInc(1)
GiveItemCreate("C#AJ0012",[PC],1,0,0) 
AddexperienceParty(10000)~ + HPRELATE_quest_geloest_03
END

IF ~~ THEN HPRELATE_quest_geloest_03
SAY @61
COPY_TRANS HPRELATE 24
END

IF ~~ THEN HPRELATE_quest_firkraag_01
SAY @62 
IF ~Global("C#AjantisExistiert","GLOBAL",1) InParty("C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisQuestBelohnung","GLOBAL",1) ReputationInc(1)
GiveItemCreate("C#AJ0012",[PC],1,0,0) 
AddexperienceParty(10000)
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_quest_firkraag_03
IF ~Global("C#AjantisExistiert","GLOBAL",1) !InParty("C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisQuestBelohnung","GLOBAL",1) ReputationInc(1)
GiveItemCreate("C#AJ0012",[PC],1,0,0) 
AddexperienceParty(10000)
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) SetGlobal("C#ReportFirkrTodOhneAjantis","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_quest_firkraag_03
END

IF ~~ THEN HPRELATE_quest_firkraag_02
SAY @63 
IF ~Global("C#AjantisExistiert","GLOBAL",1) InParty("C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisQuestBelohnung","GLOBAL",1) ReputationInc(1)
GiveItemCreate("C#AJ0012",[PC],1,0,0) 
AddexperienceParty(10000)
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_quest_firkraag_03
IF ~Global("C#AjantisExistiert","GLOBAL",1) !InParty("C#Ajantis")~ THEN DO ~SetGlobal("C#AjantisQuestBelohnung","GLOBAL",1) ReputationInc(1)
GiveItemCreate("C#AJ0012",[PC],1,0,0) 
AddexperienceParty(10000)
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) SetGlobal("C#ReportFirkrTodOhneAjantis","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_quest_firkraag_03
END

IF ~~ THEN HPRELATE_quest_firkraag_03
SAY @64
 ++ @65 + HPRELATE_report_03
++ @66 + HPRELATE_report_03
++ @67 + HPRELATE_report_03
END

IF ~~ THEN BEGIN HPRELATE_ajantisinfo
SAY @68
= @69
++ @70 DO ~RevealAreaOnMap("AR1200")~ UNSOLVED_JOURNAL #11821 + HPRELATE_ajantisinfo_02
++ @71 DO ~RevealAreaOnMap("AR1200")~ UNSOLVED_JOURNAL #11821 + HPRELATE_ajantisinfo_01
++ @72 DO ~RevealAreaOnMap("AR1200")~ UNSOLVED_JOURNAL #11821 + HPRELATE_ajantisinfo_01
++ @73 DO ~RevealAreaOnMap("AR1200")~ UNSOLVED_JOURNAL #11821 + HPRELATE_ajantisinfo_03
END

IF ~~ THEN BEGIN HPRELATE_ajantisinfo_01
SAY @74
IF ~~ THEN + HPRELATE_ajantisinfo_02
END

IF ~~ THEN BEGIN HPRELATE_ajantisinfo_02
SAY @75
++ @76 + HPRELATE_ajantisinfo_04
++ @77 + HPRELATE_ajantisinfo_04
END

IF ~~ THEN BEGIN HPRELATE_ajantisinfo_03
SAY @78
++ @76 + HPRELATE_ajantisinfo_04
++ @77 + HPRELATE_ajantisinfo_04
END

IF ~~ THEN HPRELATE_ajantisinfo_04
SAY @79
COPY_TRANS HPRELATE 24
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_01
SAY @80
IF ~OR(2) ReputationLT(Player1,10) Global("PaladinOrder","GLOBAL",3)~ THEN + HPRELATE_ajantisinforom_02
IF ~ReputationGT(Player1,9) Global("PaladinOrder","GLOBAL",2)~ THEN + HPRELATE_ajantisinforom_03
IF ~ReputationGT(Player1,9) Global("PaladinOrder","GLOBAL",1)~ THEN + HPRELATE_ajantisinforom_04
IF ~ReputationGT(Player1,9) Global("PaladinOrder","GLOBAL",0)~ THEN + HPRELATE_ajantisinforom_05
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_02
SAY @81
IF ~~ THEN + HPRELATE_ajantisinforom_06
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_03
SAY @82
IF ~~ THEN + HPRELATE_ajantisinforom_06
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_04
SAY @83
IF ~~ THEN + HPRELATE_ajantisinforom_06
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_05
SAY @84
IF ~~ THEN + HPRELATE_ajantisinforom_06
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_06
SAY @85
= @86
= @87
= @69
++ @88 DO ~RevealAreaOnMap("AR1200")~ UNSOLVED_JOURNAL #11821 + HPRELATE_ajantisinforom_07
++ @89 DO ~RevealAreaOnMap("AR1200")~ UNSOLVED_JOURNAL #11821 + HPRELATE_ajantisinforom_08
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_07
SAY @90
++ @91 + HPRELATE_ajantisinforom_08
COPY_TRANS HPRELATE 24
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_08
SAY @92
= @90
COPY_TRANS HPRELATE 24
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_09
SAY @93
IF ~Global("C#AjantisRitterSuche","GLOBAL",0)~ THEN + HPRELATE_ajantisinforom_10
IF ~GlobalGT("C#AjantisRitterSuche","GLOBAL",0)~ THEN + HPRELATE_ajantisinforom_11
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_10
SAY @94
IF ~~ THEN + HPRELATE_ajantisinforom_11
END

IF ~~ THEN BEGIN HPRELATE_ajantisinforom_11
SAY @95
= @96
++ @24 + HPRELATE_ajantisinforom_07
++ @89 + HPRELATE_ajantisinforom_08
END


IF ~~ THEN BEGIN HPRELATE_report_01
SAY @97 
IF ~Global("C#AjantisExistiert","GLOBAL",1) InParty("C#Ajantis")~ THEN DO ~
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_report_02
IF ~Global("C#AjantisExistiert","GLOBAL",1) !InParty("C#Ajantis")~ THEN DO ~
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) SetGlobal("C#ReportFirkrTodOhneAjantis","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_report_02
IF ~!Global("C#AjantisExistiert","GLOBAL",1)~ THEN DO ~
SetGlobal("C#ReportFirkraagsTod","GLOBAL",1) SetGlobal("C#ReportFirkrTodOhneAjantis","GLOBAL",1) 
GiveGoldForce(500) 
AddexperienceParty(3000)~ + HPRELATE_report_04 
END

IF ~~ THEN BEGIN HPRELATE_report_02
SAY @98
++ @65 + HPRELATE_report_03
++ @66 + HPRELATE_report_03
++ @67 + HPRELATE_report_03
END

IF ~~ THEN HPRELATE_report_03
SAY @99
COPY_TRANS HPRELATE 24
END

IF ~~ THEN BEGIN HPRELATE_report_04
SAY @100
++ @65 + HPRELATE_report_05
++ @66 + HPRELATE_report_05
++ @67 + HPRELATE_report_05
END

IF ~~ THEN HPRELATE_report_05
SAY @101
+ ~Global("C#AjantisRitterSuche","GLOBAL",2)~ + @102 + HPRELATE_report_06
+ ~Global("C#AjantisRitterSuche","GLOBAL",1)~ + @103 + HPRELATE_report_07
+ ~Global("C#AjantisRitterSuche","GLOBAL",0)~ + @104 + HPRELATE_report_08
END

IF ~~ THEN HPRELATE_report_06
SAY @105
COPY_TRANS HPRELATE 24
END

IF ~~ THEN HPRELATE_report_07
SAY @106
COPY_TRANS HPRELATE 24
END

IF ~~ THEN HPRELATE_report_08
SAY @107
COPY_TRANS HPRELATE 24
END


END //APPEND
