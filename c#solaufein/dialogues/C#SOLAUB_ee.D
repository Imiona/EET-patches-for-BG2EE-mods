/* Solaufein - Dorn */

CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_DornBanter","GLOBAL",0)
InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB dorn_01
@1800 DO ~SetGlobal("C#Solaufein_DornBanter","GLOBAL",1)~
== BDORN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1801
== BDORN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1801
== C#SOLAUB @1802
EXIT




/* Solaufein - Hexxat (nach Vampirverwandlung) */

CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_HexxatBanter","GLOBAL",0)
InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN C#SOLAUB hexxat_01
@1803 DO ~SetGlobal("C#Solaufein_HexxatBanter","GLOBAL",1)~
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1804
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1804
== C#SOLAUB @1805
EXIT


/* Wilson */

CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_WilsonBanter","GLOBAL",0)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_01
@1829 DO ~SetGlobal("C#Solaufein_WilsonBanter","GLOBAL",1)~
== WilsonJ #79174 /* ~Growl?~ */
== C#SOLAUB @1830
EXIT



/* Solaufein - Dorn */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_DornBanter","GLOBAL",1)
InParty("Dorn") InMyArea("Dorn") !StateCheck("Dorn",CD_STATE_NOTVALID)~ THEN C#SOLAUB dorn_02
@1806 DO ~SetGlobal("C#Solaufein_DornBanter","GLOBAL",2)~
== BDORN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1807
== BDORN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1807
== C#SOLAUB @1808
== BDORN IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1809
== BDORN25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1809
== C#SOLAUB @1810
EXIT



/* Solaufein - Hexxat (nach Vampirverwandlung) */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_HexxatBanter","GLOBAL",1)
InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN C#SOLAUB hexxat_02
@1811 DO ~SetGlobal("C#Solaufein_HexxatBanter","GLOBAL",2)~
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1812
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1812
== C#SOLAUB @1813
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1814
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1814
== C#SOLAUB @1815
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1816
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1816
== C#SOLAUB @1817
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1818
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1818
== C#SOLAUB @1819
EXIT




/* Wilson */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_WilsonBanter","GLOBAL",1)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_02
@1831 DO ~SetGlobal("C#Solaufein_WilsonBanter","GLOBAL",2)~
== C#SOLAUB @1832
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1833
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1833
== WilsonJ IF ~InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN #79174 /* ~Growl?~ */
== BAERIE IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1834
== BAERIE25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("aerie") InMyArea("aerie") !StateCheck("aerie",CD_STATE_NOTVALID)~ THEN @1834
== C#SOLAUB @1835
== WilsonJ #87157 /* ~ROAR! Growl! Roar, roar.~ */
== C#SOLAUB @1836
== BCERND IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%) InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @1837
== BCERND25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%) InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @1837
== C#SOLAUB IF ~InParty("CERND") InMyArea("CERND") !StateCheck("CERND",CD_STATE_NOTVALID)~ THEN @1838
== C#SOLAUB @1839
== WilsonJ #79217 /* ~ROAR!~ */
== C#SOLAUB @1840
EXIT




/* Solaufein - Hexxat (nach Vampirverwandlung) */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_HexxatBanter","GLOBAL",2)
InParty("HEXXAT") InMyArea("HEXXAT") !StateCheck("HEXXAT",CD_STATE_NOTVALID)~ THEN C#SOLAUB hexxat_03
@1820 DO ~SetGlobal("C#Solaufein_HexxatBanter","GLOBAL",3)~
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1821
= @1822
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1821
= @1822
== C#SOLAUB @1823
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1824
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1824
== C#SOLAUB @1825
== BHEXXAT IF ~GlobalLT("Chapter","GLOBAL",%bg2_chapter_8%)~ THEN @1826
= @1827
== BHEXXA25 IF ~GlobalGT("Chapter","GLOBAL",%bg2_chapter_7%)~ THEN @1826
= @1827
== C#SOLAUB @1828
EXIT



/* Wilson */
CHAIN
IF 
~!StateCheck(Myself,CD_STATE_NOTVALID)
InParty(Myself)
CombatCounter(0)
!See([ENEMY])
Global("C#Solaufein_WilsonBanter","GLOBAL",2)
InParty("WILSON") InMyArea("WILSON") !StateCheck("WILSON",CD_STATE_NOTVALID)~ THEN C#SOLAUB wilson_03
@1841 DO ~SetGlobal("C#Solaufein_WilsonBanter","GLOBAL",3)~
== C#SOLAUB @1842
== WilsonJ #102276 /* ~Snort snrff roar!~ */
== C#SOLAUB @1843
EXIT