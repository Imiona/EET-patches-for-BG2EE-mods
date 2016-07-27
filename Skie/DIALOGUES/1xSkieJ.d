BEGIN 1xSkieJ

////1

IF ~Global("SkieIsTalking","GLOBAL",0) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~ THEN BEGIN SkieFirstTalk
SAY @0 /* Ojej, jak to mi³o, ¿e mam okazjê z wami wêdrowaæ... W grupie tak raŸniej! No i siê nie zgubiê! No to co teraz? Hmm? */
IF~~THEN REPLY@1 /* Mam nadziejê, ¿e *ty* nie zgubisz *nas*... */ GOTO Skie01x01
IF~~THEN REPLY@2 /* Pewnie bêdziemy próbowali gdzieœ zarobiæ. */ GOTO Skie01x02
IF~~THEN REPLY@3 /* Nie wiem. Zobaczymy gdzie nas gwiazdy doprowadz¹. */ GOTO Skie01x03
END

IF~~THEN BEGIN Skie01x01
SAY@4 /* Ojej, ja te¿ mam tak¹ nadziejê. Powiedz mi, ³adnie dziœ wygl¹dam? */
IF~~THEN REPLY @5 /* Tak! Jak zawsze! */ GOTO Skie01x04
IF~~THEN REPLY @6 /* Czy ja wiem... */ GOTO Skie01x05
IF~~THEN REPLY @7 /* Nie. */ GOTO Skie01x06
END

IF~~THEN BEGIN Skie01x04
SAY@8 /* To by³o mi³e! Dziêkujê. Jak tylko znajdziemy dobr¹ perfumeriê, kupiê ci jakieœ wspania³e pachnid³o! */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x05
SAY@9 /* Nie podoba ci siê...? To na pewno przez t¹ fryzurê! */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x02
SAY@10 /* Och, mo¿e siê przydam! Jak tylko napotkamy jakieœ kuferki, chêtnie je otworzê! Mam tylko nadziejê, ¿e nie po³amie przy tym paznokci. */
IF~~THEN REPLY @11 /* Te¿ mam tak¹ nadziejê. */ GOTO Skie01x07
IF~~THEN REPLY @12 /* Dziêkuje, ¿e chcesz nam pomagaæ. */ GOTO Skie01x08
END

IF~~THEN BEGIN Skie01x07
SAY@13 /* Szkoda by ich by³o... */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x08
SAY@14 /* Nie ma za co! Chêtnie pomagam mi³ym osobom. */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x09
SAY @15 /* Wiesz, nie zawsze by³am taka uzdolniona! To lata ciê¿kiego treningu. Wiele razy gubi³am wszelkiego rodzaju kluczyki - od szuflad, od kosmetyczek, od mojej ulubionej pozytywki. Ile to ja siê nie namêczy³am co by je otworzyæ! */
IF~~THEN REPLY @16 /* To wyjaœnia twoje niezwyk³e zdolnoœci. */ GOTO Skie01x10
IF~~THEN REPLY @17 /* I wtedy siedzia³aœ i próbowa³aœ otwieraæ je wytrychami? */ GOTO Skie01x11
IF~~THEN REPLY @18 /* Skie, nie mamy czasu na tego typu bzdury. Ruszamy. */ GOTO Skie01x06
END

IF~~THEN BEGIN Skie01x10
SAY @19 /* No wiêc w³aœnie! Wiele razy prosi³am o pomoc kamerdynera, albo kucharkê, ale nigdy mi nie potrafili pomóc. */
IF~~THEN GOTO Skie01x12
END

IF~~THEN BEGIN Skie01x11
SAY @20 /* Oczywiœcie, ¿e nie! */
=
@21 /* Otwiera³am je pilnikiem do paznokci, a to o wiele trudniejsze! Gdy to mi siê nie udawa³o, stara³am siê u¿ywaæ wsuwek albo spinek. */
IF~~THEN GOTO Skie01x12
END

IF~~THEN BEGIN Skie01x12
SAY @22 /* Tata zawsze mi powtarza³, ¿e jestem roztrzepana jak nikt inny kogo spotka³. */
IF~~THEN REPLY @23 /* Ale ma to te¿ swój urok! */ GOTO Skie01x13
IF~~THEN REPLY @24 /* Nie mogê wytrzymaæ tego biadolenia. B³agam, cisza! */ GOTO Skie01x06
IF~~THEN REPLY @25 /* Mog³o byæ gorzej... */ GOTO Skie01x13
END

IF~~THEN BEGIN Skie01x13
SAY @26 /* No w³aœnie! */
=
@27 /* Teraz chyba jednak powinniœmy ruszaæ. No to naprzód! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN Skie01x03
SAY@28 /* Miejmy nadziejê, ¿e do jakiœ dobrych sklepów i do niez³ych przecen! */
IF~~THEN DO ~ SetGlobal("SkieIsTalking","GLOBAL",1) ~ EXIT
END

IF~~THEN BEGIN Skie01x06
SAY@29 /* Ej! Mo¿na byæ milszym dla kogoœ takiego jak ja... */
IF~~THEN DO ~ SetGlobal("SkieIsTalking","GLOBAL",1) ~ EXIT
END

////2

IF~Global("SkieIsTalking","GLOBAL",2) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie02x00
SAY @30 /* Och, tyle wêdrujemy... Auæ! Chyba mam odciski... Jejku, jak ja dawno siê nie k¹pa³am... Wiesz co posiada³am w domu? Coœ o czym na pewno nigdy ci siê nie œni³o... */
=
@31 /* Myd³o do k¹pieli... o zapachu ró¿! Ach, têskniê trochê za tymi wspania³oœciami w moim domu... Zjad³abym sobie eklerkê, poczyta³a sobie o dalszych losach "Mirandy i Orlando"... */
=
@32 /* Ciekawe czy w koñcu j¹ zdradzi³... */
IF~~THEN REPLY @33 /* Tak. Zdradzi³ j¹ z Jolant¹. Zdarzy³o mi siê siêgn¹æ po t¹ ksi¹¿kê. */ GOTO Skie02x01
IF~~THEN REPLY @34 /* Zamknij siê albo poodrywam ci twoje zadbane paznokietki... */ GOTO Skie02x02
IF~~THEN REPLY @35 /* Skoro tak têsknisz to po co w ogóle pozostawi³aœ Wrota Baldura za sob¹? */ GOTO Skie02x03
END

IF~~THEN BEGIN Skie02x01
SAY @36 /* Och nie! Co za ³otr... Przypomina mi Eldotha... Ale nie chcê o nim teraz rozmawiaæ... Post¹pi³ jak pod³y bydlak! Ja... Mam nadziejê, ¿e go nie spotkamy... */
IF~~THEN GOTO Skie02x04
END

IF~~THEN BEGIN Skie02x02
SAY @37 /* Nie! Nie pozwalam ci! To by by³o okropne! Zajmowa³am siê nimi ca³y poranek! */
=
@38 /* Zostaw mnie i moje paznokietki! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie02x03
SAY @39 /* To... Jakoœ tak wysz³o... Tata umar³... Nie chcia³am zostaæ w posiad³oœci Srebrnych Tarcz sama... To raczej nie dla mnie... Poza tym wyruszy³am te¿ maj¹c nadziejê, ¿e poznam jakieœ nowe materia³y i style... */
=
@40 /* Zawszê o tym marzy³am... */
IF~~THEN GOTO Skie02x04
END

IF~~THEN BEGIN Skie02x04
SAY @41 /* Ja têskni³am za wêdrowaniem z tob¹. To mêcz¹ce, ale... muszê powiedzieæ... No. ojejku! Po prostu ciekawe! */
=
@42 /* Te przygody... */
IF~~THEN REPLY @43 /* Tak, to coœ za czym mo¿na têskniæ. */ GOTO Skie02x05
IF~~THEN REPLY @44 /* Twoje zachowanie jest ca³kowicie dla mnie jasne. */ GOTO Skie02x05
IF~~THEN REPLY @45 /* (Nie mów nic, jedynie kiwnij g³ow¹.) */ GOTO Skie02x05
END

IF~~THEN BEGIN Skie02x05
SAY @46 /* Ojej! To mi³o, ¿e siê ze mn¹ zgadzasz! */
=
@47 /* A teraz ruszmy siê st¹d. Och, przez ciebie siê uœmiecham... Bêdê mia³a zmarszczki mimiczne! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ EXIT
END

////3

IF~Global("SkieIsTalking","GLOBAL",4) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie03x00
SAY @48 /* Skoñczy³ mi siê krem na zmarszczki... */
=
@49 /* Nie masz mo¿e trochê, <CHARNAME>? */
=
@50 /* Powiedz, ¿e masz... */
IF~~THEN REPLY @51 /* Czy ty jesteœ normalna?! */ GOTO Skie03x01
IF~~THEN REPLY @52 /* W³aœciwie to mam... */ GOTO Skie03x01
IF~~THEN REPLY @53 /* Niestety... */ GOTO Skie03x01
END

IF~~THEN BEGIN Skie03x01
SAY @54 /* Och! Wiesz, nie chcê mieæ pomarszczonej twarzy. Takiej jak na przyk³ad... na przyk³ad... */
=
@55 /* Quayle! */
IF~~THEN REPLY @56 /* Faktycznie, ten to by³ doœæ pomarszczony. */ GOTO Skie03x02
IF~~THEN REPLY @57 /* Wiesz, taki urok jego wieku. Ale za to by³ taki *bystry*. */ GOTO Skie03x03
IF~~THEN REPLY @58 /* Nie mamy czasu na tego typu rozmowy. Powinniœmy ruszaæ dalej. */ GOTO Skie03x04
END

IF~~THEN BEGIN Skie03x02
SAY @59 /* Widzisz, tak to jest jak cz³owiek...lub gnom, oczywiœcie...no jak nie umiej¹ o siebie zadbaæ. */
IF~~THEN GOTO Skie03x05
END

IF~~THEN BEGIN Skie03x03
SAY @60 /* Haha, faktycznie! To jego ci¹g³e gadanie o bystroœci. Wiesz, tak s¹dzê, ¿e wcale nie jestem g³upsza ni¿ on. */
IF~~THEN GOTO Skie03x05
END

IF~~THEN BEGIN Skie03x05
SAY @61 /* Czasami siê zastanawiam co siê sta³o z tymi wszystkimi, z którymi zdarzy³o nam siê wêdrowaæ. Jakby na to nie patrzeæ, to wiele razem prze¿yliœmy. No nie raz bola³a mnie przez nich g³owa, ale jednak zdarza³o siê, ¿e mi pomogli. */
=
@62 /* Mo¿e trudno w to uwierzyæ, ale nawet Jaheira mi pomog³a, gdy pêk³o mi wi¹zanie przy jednej z bluzek. Ja te¿ jej pomog³am i zaproponowa³am jej maseczkê z b³ota - s¹dzi³am, ¿e taki pomys³ jej siê spodoba. W koñcu zawsze kocha³a przyrodê, ale ta siê tylko na mnie dziwnie spojrza³a... */
=
@63 /* Mo¿e nikt jej nigdy nie powiedzia³, ¿e jej siê zaczynaj¹ robiæ zmarszczki. No nie wiem. */
IF~~THEN REPLY @64 /* To musia³ byæ widok! */ GOTO Skie03x06
IF~~THEN REPLY @65 /* Ty chyba sobie ze mnie ¿artujesz. Czy ty na prawdê opowiadasz mi o zmarszczkach...? Ju¿ lepiej ruszajmy. */ GOTO Skie03x07
IF~~THEN REPLY @66 /* Jaheir¹ nie ma co siê przejmowaæ. Zawsze mia³a ciê¿ki charakter, a ju¿ na pewno nie docenia³a potêgi makija¿u. */ GOTO Skie03x08
END

IF~~THEN BEGIN Skie03x06
SAY @67 /* Czy ja wiem...to smutne jak kobieta o siebie nie dba. Na szczêœcie u niej jeszcze nie by³o tak tego widaæ. Nawet mimo jej podesz³ego wieku! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN Skie03x07
SAY @68 /* No dobra, dobra. Ty to lubisz poganiaæ... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN Skie03x08
SAY @69 /* Mo¿e masz racjê. Na szczêœcie u niej jeszcze nie by³o tak tego widaæ, ¿e niezbyt wie jak siê za siebie wzi¹æ. Nawet mimo jej podesz³ego wieku! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN Skie03x04
SAY @70 /* No dobrze... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

////4

IF~Global("SkieIsTalking","GLOBAL",6) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie04x00
SAY @71 /* <CHARNAME>... Ja muszê ci coœ wyznaæ... Jednak... Wiesz to jest bardzo wa¿na sprawa... To coœ bardzo wa¿nego, zarówno dla mnie jak i dla ludzi... Czujê jednak, ¿e jesteœ osob¹ której mogê o tym powiedzieæ... */
=
@72 /* Wiem, ¿e jest to w pewnym sensie... no... niszczenie kanonu piêkna... ale to tak¿e oszukiwanie ludzi! Muszê w koñcu komuœ o tym powiedzieæ... */
=
@73 /* Jejku, jak ja siê bojê... Nikomu jeszcze o tym nie mówi³am... Nie k³amiê! */
=
@74 /* Jednak zanim ci to powiem... B³agam ciê, na Wisiory Waukeen, obiecaj mi, ¿e nikomu o tym nie powiesz! To le¿y mi na sercu, ale jak z ktoœ o tym nie us³yszy to chyba w koñcu wybuchnê... */
IF~~THEN REPLY @75 /* Dobrze, bobrze! Obiecujê! */ GOTO Skie04x01
IF~~THEN REPLY @76 /* Obiecujê. Mów. */ GOTO Skie04x01
IF~~THEN REPLY @77 /* Niestety, nie mogê tego obiecaæ. */ GOTO Skie04x02
IF~~THEN REPLY @78 /* Skoro to takie wa¿ne, to nie chce tego wiedzieæ. Mo¿liwe, i¿ to by mog³o wszystko zmieniæ... */ GOTO Skie04x02
END


IF~~THEN BEGIN Skie04x01
SAY @79 /* Dziêkujê... */
=
@80 /* Ja jestem... */
=
@81 /* Blondynk¹... */
=
@82 /* B³agam, nie patrz tak na mnie! Ja... Ej... Nie uœmiechaj siê tak szyderczo! My... mo¿e po prostu ju¿ ruszajmy... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",7)~ EXIT
END

IF~~THEN BEGIN Skie04x02
SAY @83 /* Ja... mimo wszystko muszê ci o tym powiedzieæ... */
=
@80 /* Ja jestem... */
=
@81 /* Blondynk¹... */
=
@84 /* B³agam, nie patrz tak na mnie! Ja... Ej... Nie uœmiechaj siê tak szyderczo! Ja... mog³am o tym nie mówiæ... My... mo¿e po prostu ju¿ ruszajmy... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",7)~ EXIT
END

///5

IF~Global("SkieIsTalking","GLOBAL",8) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie05x00
SAY @85 /* O nie! Wszystko tylko nie to! */
=
@86 /* Czemu w³aœnie teraz...?! Czemu mnie spotykaj¹ takie rzeczy w najgorszych mo¿liwych momentach?! Innym siê to przytrafia jak s¹ w domu, gdy maj¹ dostêp do czegoœ co mo¿e pomóc, ale mnie to musi mêczyæ w³aœnie teraz! Kurcze, ale ja jestem... wœciek³a! */
=
@87 /* Wrr... */
IF~~THEN REPLY @88 /* Co siê sta³o? Zachowujesz siê jak nie ty... */ GOTO Skie05x01
IF~~THEN REPLY @89 /* Coœ nie tak? */ GOTO Skie05x01
IF~~THEN REPLY @90 /* Daj nam wszystkim spokój! */ GOTO Skie05x02
END


IF~~THEN BEGIN Skie05x01
SAY @91 /* (Skie podchodzi energicznie i szepcze ci na ucho.) */
=
@92 /* Dosta³am okres... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",14)~ EXIT
END

IF~~THEN BEGIN Skie05x02
SAY @93 /* Wrr! Zmiataæ ode mnie bo wam wszystkim natapiruje w nocy w³osy! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",14)~ EXIT
END

//////////////////////////////////////////////6

IF~Global("SkieRomanceTalk","GLOBAL",1) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie06x00
SAY @94 /* Hej, <CHARNAME>! Powiedz mi - no ale szczerze! Jak to siê dzieje, ¿e, no wiesz, pozwalasz mi dalej z tob¹ wêdrowaæ? Zazwyczaj ludzie ze mn¹ nie wytrzymuj¹ i ka¿¹ sobie iœæ. Najgorsze, ¿e to zazwyczaj nie trwa za d³ugo. */
=
@95 /* Na oko po jakiœ tak mniej wiêcej... */
=
@96 /* ...dwóch godzinach. */
=
@97 /* No ale ja nie wiem o co im chodzi! Przecie ja jestem przydatna! No, ale ponoæ za du¿o gadam, jestem irytuj¹ca, a mój g³os jest zbyt piskliwy... Czemu oni gadaj¹ takie rzeczy, <CHARNAME>? Przecie to nie prawda! Ja siê na prawdê staram. */
IF~~THEN REPLY @98 /* Wiesz, mo¿e to... prawda? */ GOTO Skie06x01
IF~~THEN REPLY @99 /* A nie s³uchaj ich! Nie wiem o czemu mówi¹ takie rzeczy. Jesteœ raczej mi³¹ osob¹. Prawdê mówi¹c, móg³bym z tob¹ rozmawiaæ i rozmawiaæ! */ GOTO Skie06x02
IF~~THEN REPLY @100 /* Gadaj¹ g³upoty. Mi zawsze potrafisz poprawiæ humor. Zdawa³o mi siê, ¿e to widzisz. */ GOTO Skie06x02
IF~~THEN REPLY @101 /* A w³aœnie, ¿e prawda! Ja... Ja nie wiem jak mog³em wytrzymaæ z kimœ takim jak ty przez tak d³ugi czas! Zmiataj i nie wracaj! */ GOTO Skie06x03
END

IF~~THEN BEGIN Skie06x01
SAY @102 /* Ty... Ty te¿ tak uwa¿asz? Och, tylko nie znowu! B³agam, nie chce wêdrowaæ sama! Wtedy jest okropnie nudno i nie ma kto mi powiedzieæ, jak siê rozczochram... */
IF~~THEN REPLY @103 /* Przykro mi, ale nie zniosê wiêcej tego twojego pytlowania... wiêc... Spadaj! */ GOTO Skie06x03
IF~~THEN REPLY @104 /* Nie zrozum mnie Ÿle. Mo¿esz z nami wêdrowaæ, tylko b¹dŸ trochê mniej rozgadana. */ GOTO Skie06x04
IF~~THEN REPLY @105 /* Ja przecie¿ ¿artujê! Zawsze wiesz jak mi poprawiæ humor. Chcê byœ dalej z nami wêdrowa³a. */ GOTO Skie06x05
END

IF~~THEN BEGIN Skie06x04
SAY @106 /* Ja... no chyba... Rozumiem. Och, przynajmniej dobrze, ¿e nie muszê odchodziæ. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",3) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie06x03
SAY @107 /* Wy... wy nie jesteœcie lepsi od tego drania Eldotha! Jak mo¿ecie mi robiæ coœ takiego... Ja nawet nie wiem gdzie jest najbli¿szy fryzjer! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",2) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Skie06x02
SAY @108 /* Och, ty nie ¿artujesz?! */
IF~~THEN REPLY @109 /* Nie...? */ GOTO Skie06x05
IF~~THEN REPLY @110 /* Hehe, oczywiœcie, ¿e nie, Skie. */ GOTO Skie06x05
IF~~THEN REPLY @111 /* Prawdê mówi¹c to... ¿artuje! Ha! Zmiataj st¹d ma³a idiotko! Nie potknij siê o swój mózg bo chyba go gdzieœ zgubi³aœ! */ GOTO Skie06x03
END

IF~~THEN BEGIN Skie06x05
SAY @112 /* Chyba nie spotka³o mnie nic milszego w calusim moim ¿yciu! To jest takie... Och, nawet nie wiem jak to wyraziæ! Czuje siê jak wtedy, gdy pierwszy raz by³am na pokazie mody z moim tat¹! Nie do wiary! */
=
@113 /* Obiecujê ci, ¿e od teraz mo¿esz ze mn¹ rozmawiaæ o wszystkim! Zawsze ciê wys³ucham! Zawsze...! */
=
@114 /* ...zawsze... */
=
@115 /* Po prostu... */
=
@116 /* Zawsze! Ot tak! No nie wiem co innego mogê ci powiedzieæ. Nie spodziewa³am siê, ¿e tak dobrze mi bêdzie z tob¹ wêdrowaæ. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",2)~ EXIT
END


///////////////////////////////////////////////7

IF~Global("SkieRomanceTalk","GLOBAL",3) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie07x00
SAY @117 /* Nie boisz siê, ¿e czasami przez to wêdrowanie z³apiesz jakieœ... wszy, albo inne paskudztwo? (Skie wzdryga siê.) Albo takie jakieœ ma³e, skacz¹ce i k¹saj¹ce pch³y! To by by³o coœ strasznego! Och, jak ja siê cieszê, ¿e nie z³apa³am nigdy czegoœ takiego! */
IF~~THEN REPLY @118 /* (Za¿artuj) W³aœciwie to chyba chodzi ci po ramieniu jedna z tych skacz¹cych, ma³ych poczwar. */ GOTO Skie07x01
IF~~THEN REPLY @119 /* Nie, jakoœ siê tego nie bojê... */ GOTO Skie07x02
IF~~THEN REPLY @120 /* Stanowczo siê tego nie bojê. Mimo wszystko jednak zachowuje jak¹œ higienê! */ GOTO Skie07x02
END

IF~~THEN BEGIN Skie07x02
SAY @121 /* O rety! Ale ty jesteœ odwa¿ny! Ja tak sobie myœlê... Odwiedzamy, œmierdz¹ce slumsy, brudne cmentarze... No i jakieœ stare tawerny! Nie ¿ebym nie docenia³a tego, ¿e fundujesz nam noclegi, ale... Oj, wiesz co mam na myœli! */
=
@122 /* Pewnie w³aœcicieli tych tawern nie staæ na dobre odrobaczanie przynajmniej co tydzieñ... */
IF~~THEN GOTO Skie07x03
END

IF~~THEN BEGIN Skie07x01
SAY @123 /* Aaaaaaaaaaaa! */
=
@124 /* Zdejmij to ze mnie! Zdejmij to ze mnie! Ratunkuuuuu! Na pomoooooc! Zdejmij to ze mnie, b³agam! */
=
@125 /* Ej ale... tutaj nic nie ma! Oj, chcia³eœ mnie wystraszyæ! No to ci siê uda³o! No to ju¿ widzisz, jak ja siê boje czegoœ takiego... Te wszystkie ma³e odnó¿a! */
IF~~THEN GOTO Skie07x03
END

IF~~THEN BEGIN Skie07x03
SAY @126 /* Ale tak czy siak, u robaków najbardziej nie lubiê tych ich ma³ych gryz¹cych z¹bków... */
IF~~THEN REPLY @127 /* Tak w³aœciwie to robaki nie maj¹ ¿adnych zêbów. */ GOTO Skie07x04
IF~~THEN REPLY @128 /* Dobra, dobra rozumiem. Czas jednak byœmy ruszali. */ GOTO Skie07x05
IF~~THEN REPLY @129 /* Robaki znane s¹ ze swoich ss¹cych, k³uj¹cych, pluj¹cych i innych aparatów gêbowych. Nie maj¹ ¿adnych zêbów! */ GOTO Skie07x04
END

IF~~THEN BEGIN Skie07x04
SAY @130 /* Naprawdê? Ciekawe. To jak one gryz¹? Gryzie siê zêbami? No w ostatecznoœci jakimiœ protezami czy jak tam siê nazywaj¹ te ostatnie wynalazki... Ale jednak to dalej jakby nie patrzeæ zêby... */
=
@131 /* Po prostu tylko bardziej... sztuczne! */
=
@132 /* W ka¿dym razie ruszajmy! No to hop ku przygodzie! A³æ! Moja noga... chyba zwichnê³am kostkê... */
IF~~THEN REPLY @133 /* Pozwól, ¿e na ni¹ spojrzê. */ GOTO Skie07x06
IF~~THEN REPLY @134 /* Musisz uwa¿aæ, Skie. Jeszcze zrobisz sobie krzywdê. */ GOTO Skie07x07
IF~~THEN REPLY @135 /* Idiotka. Po prostu brak mi s³ów... */ GOTO Skie07x08
END

IF~~THEN BEGIN Skie07x05
SAY @136 /* Och, no dobrze! No to hop siup ku przygodzie! A³æ! Moja noga... chyba zwichnê³am kostkê... */
=
@137 /* Nienawidzê tego... to boli. Nie poniesiesz mnie, prawda...? Ech... */
IF~~THEN REPLY @138 /* Pozwól, ¿e na ni¹ spojrzê. Na nogê, to znaczy. */ GOTO Skie07x06
IF~~THEN REPLY @134 /* Musisz uwa¿aæ, Skie. Jeszcze zrobisz sobie krzywdê. */ GOTO Skie07x07
IF~~THEN REPLY @139 /* Wskakuj! */ GOTO Skie07x09
IF~~THEN REPLY @135 /* Idiotka. Po prostu brak mi s³ów... */ GOTO Skie07x08
END


IF~~THEN BEGIN Skie07x06
SAY @140 /* Dobrze. Ja...dziêkujê. */
IF~~THEN REPLY @141 /* Wszystko wygl¹da dobrze. Po prostu musisz uwa¿aæ, Skie. */ GOTO Skie07x07
IF~~THEN REPLY @142 /* Ale ty masz wielkie stopy! */ GOTO Skie07x08
END

IF~~THEN BEGIN Skie07x07
SAY @143 /* Bêdê uwa¿a³a. A teraz... ju¿ mo¿e ruszajmy. Trochê mi g³upio, ¿e znowu ciê spowalniam. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",4)~ EXIT
END

IF~~THEN BEGIN Skie07x08
SAY @144 /* Przestañ siê ze mnie naigrywaæ! Zostaw mnie! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",4) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie07x09
SAY @145 /* Ojej, dziêkujê! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",4)~ EXIT
END

//////////////////////////////////////////////8


IF~Global("SkieRomanceTalk","GLOBAL",5) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie08x00
SAY @146 /* Och, zjad³abym sobie trochê waty cukrowej... */
IF~~THEN REPLY @147 /* S³ucham...? */ GOTO Skie08x01
IF~~THEN REPLY @148 /* Waty cukrowej? */ GOTO Skie08x01
IF~~THEN REPLY @149 /* Czy ty na pewno jesteœ normalna? */ GOTO Skie08x01
END

IF~~THEN BEGIN Skie08x01
SAY @150 /* No waty cukrowej. To takie dziwne? */
=
@151 /* Ach, rozumiem! Pewnie nie wiesz co to jest wata cukrowa! Widzisz to takie coœ co jest takie no... jak wata! Tylko trochê bardziej siê lepi, jest s³odkie i mo¿na to zjadaæ! W smaku jest po prostu jak cukier. To jest takie pyszniutkie! */
=
@152 /* Tylko trzeba uwa¿aæ! To bardzo zdradliwe! Mo¿na od niej bardzo przytyæ mimo, ¿e jest taka leciutka! */
=
@153 /* No, ale od czasu do czasu mo¿na przecie¿ sobie trochê tego zjeœæ! */
IF~~THEN REPLY @154 /* Nigdy nie przestaniesz mnie zadziwiaæ. */ GOTO Skie08x02
IF~~THEN REPLY @155 /* Tak to ju¿ jest ze wszelakiego rodzaju s³odkoœciami. */ GOTO Skie08x03
IF~~THEN REPLY @156 /* Przestañ ju¿ tyle gadaæ. */ GOTO Skie08x04
END

IF~~THEN BEGIN Skie08x02
SAY @157 /* Dziêkujê! Chyba... */
IF~~THEN GOTO Skie08x05
END

IF~~THEN BEGIN Skie08x03
SAY @158 /* Fakt! */
IF~~THEN GOTO Skie08x05
END

IF~~THEN BEGIN Skie08x05
SAY @159 /* Wiesz, tak mi przysz³a ochota na watê cukrow¹, bo zawsze gdy uda³o mi siê przekonaæ tatê, bym mog³a z nim wyjechaæ w delegacjê to kupowa³ mi wszelakie smako³yki. Zawsze mówi³, ¿e warto bym próbowa³a nowych rzeczy skoro mam do tego okazjê. */
=
@160 /* Pamiêtam jak zabra³ mnie kiedyœ na jarmark. Wiesz, nigdy nie by³am zbytnio zainteresowana jakimiœ nie wiadomo jakimi atrakcjami. Po prostu lubi³am spêdzaæ czas z moim tat¹. Zawsze zdawa³ siê byæ surowy, zawsze krzycza³ "znowu ominê³aœ zajêcia", ale na wyjazdach by³o widaæ kim na prawdê by³. */
=
@161 /* A by³ moim tat¹. */
IF~~THEN REPLY @162 /* To mi³o, ¿e tak go wspominasz. */ GOTO Skie08x06
IF~~THEN REPLY @163 /* Wiele miejsc razem odwiedziliœcie? */ GOTO Skie08x07
IF~~THEN REPLY @164 /* Czy oboje mówimy o Entarze? */ GOTO Skie08x08
IF~~THEN REPLY @165 /* Nie mam ochoty wys³uchiwaæ twoich rodzinnych historii. */ GOTO Skie08x09
END

IF~~THEN BEGIN Skie08x06
SAY @166 /* Chyba nie zosta³o mi nic innego. */
IF~~THEN GOTO Skie08x10
END

IF~~THEN BEGIN Skie08x07
SAY @167 /* Sembiê, Waterdeep, Dekapolis i Neverwinter. */
=
@168 /* Mo¿e to nie jest wiele miejsce, ale to cztery wspania³e wyjazdy. */
IF~~THEN GOTO Skie08x10
END

IF~~THEN BEGIN Skie08x08
SAY @169 /* Tak. Mówi³am, ¿e jedynie zdawa³ siê byæ taki stanowczy. To znaczy, stanowczy to on mo¿e by³, ale te¿ umia³ byæ fajnym pap¹. */
IF~~THEN GOTO Skie08x10
END

IF~~THEN BEGIN Skie08x10
SAY @170 /* A ty jak wspominasz Goriona? */
IF~~THEN REPLY @171 /* Podobnie. By³ wymagaj¹cy, ale bez niego dawno by³bym ju¿ martwy. */ GOTO Skie08x11
IF~~THEN REPLY @172 /* To jedynie nudny, stary, a obecnie to ju¿ w³aœciwie martwy mê¿czyzna. To przesz³oœæ, a ja nie lubiê wspominaæ przesz³oœci. */ GOTO Skie08x09
END

IF~~THEN BEGIN Skie08x11
SAY @173 /* To dobrze. */
=
@174 /* Ale wiesz co, teraz chyba powinniœmy ruszaæ. Nie chcia³abym byœ by³ smutny czy coœ. No to w drogê! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",6)~ EXIT
END

IF~~THEN BEGIN Skie08x09
SAY @175 /* Wiesz, to by³o trochê niemi³e. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",6) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie08x04
SAY @176 /* Ja nie wiedzia³am, ¿e ciê denerwujê... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",6) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END
 

//////////////////////////////////////////////9



IF~Global("SkieRomanceTalk","GLOBAL",7) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie09x00
SAY @177 /* A wiesz, ¿e by³byœ o wiele przystojniejszy gdybyœ odrobinê zmieni³ fryzurê? Patrz gdyby tutaj troszeczkê tak rozczochraæ, tutaj uczesaæ bardziej na t¹ stronê... No i widzisz? Trochê nie³adu i od razu wygl¹dasz lepiej! (Skie wyjmuje lusterko i pokazuje ci jak wygl¹dasz.) */
IF~~THEN REPLY @178 /* Nie, no tego ju¿ za wiele! Jednak nie powinniœmy tyle rozmawiaæ. To mnie wykañcza psychicznie! */ GOTO Skie09x01
IF~~THEN REPLY @179 /* Najgorzej to to nie wygl¹da... */ GOTO Skie09x02
IF~~THEN REPLY @180 /* To mi siê podoba. Znasz siê na rzeczy, Skie. Dziêkujê. */ GOTO Skie09x02
IF~~THEN REPLY @181 /* Jest ³adnie, ale chyba lepiej siê czujê w swojej fryzurze, jednak nie chce byœ wziê³a to jakoœ do siebie. */ GOTO Skie09x03
END

IF~~THEN BEGIN Skie09x02
SAY @182 /* Jejku, podoba ci siê? Jak ja siê cieszê! Wiesz, widaæ, ¿e masz bardzo silne i zdrowe w³osy. Nie wiem czy to ta twoja boska esencja czy co, ale zabi³abym by te¿ nie mieæ tak silne cebulki w³osów! Pewnie nigdy nie bêdziesz ³ysieæ! */
IF~~THEN GOTO Skie09x04
END

IF~~THEN BEGIN Skie09x03
SAY @183 /* Och... rozumiem. Nie martw siê mn¹! Nawet tak wygl¹dasz doœæ schludnie i przyjemnie! Po prostu bardziej, jakby to nazwaæ... Klasycznie! Nie oznacza to jednak, ¿e Ÿle! Nie musisz pod¹¿aæ za trendami! Mo¿esz przecie mieæ swój styl! A poza tym mówi siê, ¿e to co klasyczne nigdy nie wychodzi z mody, wiêc... */
IF~~THEN GOTO Skie09x04
END

IF~~THEN BEGIN Skie09x04
SAY @184 /* Czasami têskniê za wieczorami u siebie w domu. Przychodzi³y do mnie Penelopa, Barbara i Papryczka. Ale tak na prawdê, to najbardziej têskniê, za moj¹ mam¹. */
IF~~THEN REPLY @185 /* Kim w³aœciwie by³a twoja matka, Skie? */ GOTO Skie09x05
IF~~THEN REPLY @186 /* Ee... Twoja matka...? */ GOTO Skie09x05
IF~~THEN REPLY @187 /* Rozmawialiœmy o twoim ojcu, ale nigdy o twojej matce. Opowiedz mi o niej, Skie. */ GOTO Skie09x05
IF~~THEN REPLY @188 /* Nie mam ochoty wys³uchiwaæ o twoich problemach rodzinnych. */ GOTO Skie09x01
END

IF~~THEN BEGIN Skie09x05
SAY @189 /* By³a jedn¹ z lepszych tancerek we Wrotach Baldura i ca³ej okolicy. By³a bardzo piêkna i wyrozumia³a. Na imiê jej by³o Eliss. Niestety jednak mia³a wypadek podczas jednego ze swoich wystêpów. */
=
@190 /* Kontuzja by³a bardzo powa¿na... Zmar³a dwa dni póŸniej... Jej organizm tego nie wytrzyma³. Jej uk³ad nerwowy... no i infekcja... Lekarze byli bezradni. */
IF~~THEN REPLY @191 /* Nie wiedzia³em, ¿e jesteœ sierot¹, Skie. Przykro mi. */ GOTO Skie09x06
IF~~THEN REPLY @192 /* Przepraszam, nie wiedzia³em. */ GOTO Skie09x06
IF~~THEN REPLY @193 /* Och, ach - co za tragedia, ale mo¿emy ju¿ ruszaæ? */ GOTO Skie09x07
END

IF~~THEN BEGIN Skie09x06
SAY @194 /* Nic nie szkodzi. */
=
@195 /* Przepraszam, ale powinniœmy jednak ju¿ ruszaæ. Nie rozmawiajmy teraz o tym... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",8)~ EXIT
END

IF~~THEN BEGIN Skie09x07
SAY @196 /* Jesteœ besti¹ gorsz¹ nawet od Eldotha! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",8) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie09x01
SAY @197 /* Ale nie krzycz tak! Dobrze ju¿... Dobrze... Jak chcesz. Przykro mi... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",8) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////////////////////////////10

IF~Global("SkieRomanceTalk","GLOBAL",9) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie10x00
SAY @198 /* Wiesz, chcia³am ciê tylko przeprosiæ za swoje bablanie. Czasami mi trzeba przypomnieæ, bym siê opanowa³a. Nie ka¿dy ma ochotê gadaæ o moim ¿yciu, wiêc po prostu o tym zapomnijmy, dobrze? */
IF~~THEN REPLY @199 /* Ale ja nie mam nic przeciwko! */ GOTO Skie10x01
IF~~THEN REPLY @200 /* Dobrze, ¿e to mówisz. Nie chcia³em ci o tym mówiæ, ale faktycznie za du¿o gadasz. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x01
SAY @201 /* O, a tego to siê nie spodziewa³am! */
=
@202 /* Dziêkujê. Wiesz jak kiedyœ bêdziesz chcia³ o czymœ porozmawiaæ, to zawsze mo¿esz na mnie liczyæ. Nawet jak to bêdzie coœ bardzo krêpuj¹cego! Nawet jak bêdzie to dotyczy³o ³uszcz¹cej siê skóry! Nawet jak bêdzie to dotyczy³o...szkorbutu! */
IF~~THEN REPLY @203 /* Och, na szczêœcie nie mam szkorbutu i siê na to nie zanosi. Jem du¿o owoców. */ GOTO Skie10x03
IF~~THEN REPLY @204 /* Zapamiêtam to sobie. Mo¿emy te¿ rozmawiaæ o liszajach? */ GOTO Skie10x04
IF~~THEN REPLY @205 /* Nie jestem zainteresowany zwierzaniem siê komuœ takiemu jak ty. */ GOTO Skie10x02
END 

IF~~THEN BEGIN Skie10x03
SAY @206 /* O to dobrze! Nie musimy siê obawiaæ, ¿e przytyjesz, albo ¿e zapadniesz na jakieœ dziwne choroby, których nazw nawet nie wymówiê. */
IF~~THEN GOTO Skie10x05
END

IF~~THEN BEGIN Skie10x04
SAY @207 /* Och... */
=
@208 /* Je¿eli bêdziesz mia³ tak¹ potrzebê, ale wtedy chyba lepiej rozmawiaæ ze specjalist¹. */
IF~~THEN GOTO Skie10x05
END

IF~~THEN BEGIN Skie10x05
SAY @209 /* Wiesz, chyba jeszcze z nikim nie rozmawia³am o mojej matce - nawet z Papryk¹, a to zazwyczaj z ni¹ najwiêcej zdarza³o mi siê rozmawiaæ. */
IF~~THEN REPLY @210 /* To dla mnie wiele znaczy. */ GOTO Skie10x06
IF~~THEN REPLY @211 /* Jestem zawsze do us³ug. */ GOTO Skie10x06
IF~~THEN REPLY @212 /* Nie weŸmiesz mnie na takie sentymentalne bzdury. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x06
SAY @213 /* Dziêkujê. Rany, to takie... dziwne, ale jakoœ mi l¿ej. */
IF~~THEN REPLY @214 /* To przez to, ¿e razem rozmawiamy. Chyba. */ GOTO Skie10x07
IF~~THEN REPLY @215 /* To pewnie dlatego, ¿e dawno nie jedliœmy. */ GOTO Skie10x08
IF~~THEN REPLY @216 /* B¹dŸ ju¿ cicho. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x07
SAY @217 /* Na prawdê? Tak mo¿na czuæ siê dziêki rozmowie...rany, nawet diety nie daj¹ takiego efektu! */
IF~~THEN GOTO Skie10x09
END

IF~~THEN BEGIN Skie10x08
SAY @218 /* Faktycznie, nawet nie zauwa¿y³am. Ale przecie¿ nie jesteœmy na diecie. */
IF~~THEN GOTO Skie10x09
END

IF~~THEN BEGIN Skie10x09
SAY @219 /* Nagle nabra³am ochoty na coœ s³odkiego. Chyba nic siê nam nie stanie jak zjemy sobie po kawa³ku czekolady, prawda? Oj, to jeszcze nikogo nie zabi³o, wiêc chyba nie ma co siê martwiæ. Zamknij oczy, otwórz buziê! */
IF~~THEN REPLY @220 /* No dobrze, dobrze. */ GOTO Skie10x10
IF~~THEN REPLY @221 /* Ju¿ siê robi. (k³amstwo) */ GOTO Skie10x11
IF~~THEN REPLY @222 /* Daruj to sobie. Powinniœmy ruszaæ. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x10
SAY @223 /* (Skie wk³ada ci do buzi kawa³ek s³odkiej czekolady) */
IF~~THEN GOTO Skie10x12
END

IF~~THEN BEGIN Skie10x11
SAY @224 /* Oszukujesz! No ale niech ci bêdzie... i tak dostaniesz. (Skie daje ci kawa³ek czekolady) */
IF~~THEN GOTO Skie10x12
END

IF~~THEN BEGIN Skie10x12
SAY @225 /* Trzyma³am j¹ na wypadek z³ego humoru, ale taka okazja jest chyba równie dobra. Tylko sobie nie myœl, ¿e siê ob¿eram s³odyczami, gdy nikt nie patrzy! Nie mam ju¿ wiêcej! */
IF~~THEN REPLY @226 /* Dobra, dobra. Przecie¿ ciê znam. */ GOTO Skie10x13
IF~~THEN REPLY @227 /* Nigdy bym nie powiedzia³, ¿e siê opychasz czekolad¹. Jesteœ za szczup³a. */ GOTO Skie10x14
IF~~THEN REPLY @228 /* Nudzisz mnie. Ruszajmy. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x13
SAY @229 /* Ale ja mówiê prawdê! Ech, ty to jesteœ... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",10)~ EXIT
END

IF~~THEN BEGIN Skie10x14
SAY @230 /* Pewnie mówisz to ka¿dej! No a teraz ruszajmy. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",10)~ EXIT
END

IF~~THEN BEGIN Skie10x02
SAY @231 /* Nienawidze, gdy tak mówisz. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",10) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END



//////////////////////////////////////////////11

IF~Global("SkieRomanceTalk","GLOBAL",11) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie11x00
SAY @232 /* <CHARNAME>, czy mogê pomalowaæ ci paznokcie? */
IF~~THEN REPLY @233 /* A czy wygl¹dam na kogoœ kto lubi przebieraæ siê za kobietê? */ GOTO Skie11x01
IF~~THEN REPLY @234 /* A w sumie... czemu nie! */ GOTO Skie11x02
IF~~THEN REPLY @235 /* Nie no to ju¿ jest szczyt... Czy ty jesteœ kompletn¹ idiotk¹ ze swoj¹ ukochan¹ wat¹ cukrow¹ zamiast mózgu? */ GOTO Skie11x03
END

IF~~THEN BEGIN Skie11x01
SAY @236 /* No... chyba nie... Ojejku no, chcia³am zapytaæ! */
=
@237 /* Poka¿ mi przynajmniej swoje d³onie. (Skie natychmiast chwyta jedn¹ z twoich r¹k i zaczyna j¹ ogl¹daæ.) */
IF~~THEN GOTO Skie11x04
END

IF~~THEN BEGIN Skie11x02
SAY @238 /* Och, dziêkujê! (Skie bierze jedn¹ z twoich r¹k, wyjmuje wszelkiego rodzaju przyrz¹dy do pielêgnacji d³oni. Zaczyna u¿ywaæ jakiegoœ rodzaju farby z malutkich flakoników, aby zmieniæ barwy twoich paznokci.) */
=
@239 /* (Efektem jest d³oñ o ka¿dym paznokciu innego koloru.) Hmm... Nie wiem, który do ciebie najbardziej pasuje... */
IF~~THEN GOTO Skie11x04
END

IF~~THEN BEGIN Skie11x04
SAY @240 /* Jakie ty masz piêkne d³onie! Jest w nich coœ magicznego... Delikatne, ale silne. Zadbana skóra, jednak z kilkoma bliznami. Uwielbiam ogl¹daæ d³onie ró¿nych ludzi... Dziêki temu mo¿na odgadn¹æ ich charakter... ich osobowoœæ... mo¿e nawet ich duszê! */
=
@241 /* Ale pewnie ciê jedynie zanudzam... przepraszam. */
IF~~THEN REPLY @242 /* Nie, w³aœciwie to co powiedzia³aœ by³o takie inne. Chyba jednak nie jesteœ tak¹ osob¹ na jak¹ wygl¹dasz na pierwszy rzut oka. */ GOTO Skie11x05
IF~~THEN REPLY @243 /* Jakby na to nie patrzeæ, trochê przynudzasz... W³aœciwie to nie tyle przynudzasz to jesteœ irytuj¹c¹ idiotk¹... No ale na to chyba nie ma lekarstwa... */ GOTO Skie11x03
END

IF~~THEN BEGIN Skie11x05
SAY @244 /* Dziêkujê, <CHARNAME>. Wiem jak ludzie zazwyczaj mnie widz¹! Jednak mogê chyba mieæ kilka oblicz i wszystko zale¿y od sytuacji... */
=
@245 /* (Mówi¹c to Skie potyka siê.) */
=
@246 /* A³a! Teraz znowu bêdzie boleæ mnie stopa... Ruszajmy... Auæ... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",12)~ EXIT
END

IF~~THEN BEGIN Skie11x03
SAY @247 /* Nie jesteœ mi³y... Zostaw mnie, brutalu... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",12) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////////////////////////////12


IF~Global("SkieRomanceTalk","GLOBAL",13) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie12x00
SAY @248 /* Och, straszliwie mnie bol¹ stopy... <CHARNAME>, czemu nosimy takie ciê¿kie torby. */
IF~~THEN REPLY @249 /* Uznaj to za trening przed wielkimi zakupami. */ GOTO Skie12x01
IF~~THEN REPLY @250 /* Musimy zbieraæ ró¿ne przedmioty i je póŸniej sprzedaæ na Promenadzie lub gdzie indziej. Potrzebujemy pieniêdzy. */ GOTO Skie12x02
IF~~THEN REPLY @251 /* ¯eby g³upi mia³ zagadkê. */ GOTO Skie12x03
END

IF~~THEN BEGIN Skie12x01
SAY @252 /* No, mo¿e ciê to zdziwi, ale ja nie tylko chodzê na zakupy. */
IF~~THEN GOTO Skie12x04
END

IF~~THEN BEGIN Skie12x02
SAY @253 /* Tak, tak - wiem. Chodzi o to, ¿e to na prawdê ciê¿kie. */
IF~~THEN GOTO Skie12x04
END

IF~~THEN BEGIN Skie12x04
SAY @254 /* W domu takie rzeczy nosili za mnie ró¿ni ludzie taty, ja zajmowa³am siê trochê innymi rzeczami. Zawsze chcieli bym robi³a nie wiadomo jakie rzeczy, bym zna³a wiele jêzyków. */
IF~~THEN REPLY @255 /* Ale to nie brzmi zbyt ciê¿ko... */ GOTO Skie12x05
IF~~THEN REPLY @256 /* Rodzice tak maj¹ - zmuszaj¹ dzieci do wielu zajêæ, ale to dlatego, ¿e chc¹ dla nich jak najlepiej. */ GOTO Skie12x06
IF~~THEN REPLY @257 /* Oj, uwa¿aj bo jeszcze siê spocisz... */ GOTO Skie12x03
END

IF~~THEN BEGIN Skie12x05
SAY @258 /* Mo¿e nie brzmi, ale to by³o ciê¿kie. Chodzi³am na treningi baletu, które mog³y trwaæ nawet piêæ godzin. */
IF~~THEN GOTO Skie12x07
END

IF~~THEN BEGIN Skie12x06
SAY @259 /* No tak, ale nie mia³am nawet czasu by sobie spokojnie wyjœæ z dziewczynami na targ czy do ligi kupieckiej. */
IF~~THEN GOTO Skie12x07
END

IF~~THEN BEGIN Skie12x07
SAY @260 /* No, ale je¿eli kiedyœ bêdziemy musieli wtopiæ siê w t³um w jakimœ pa³acu, czy na balu, to przynajmniej wtedy bêdê mog³a siê na coœ przydaæ. */
=
@261 /* Ale takie rzeczy chyba niezbyt czêsto siê zdarzaj¹...no có¿. */
IF~~THEN REPLY @262 /* Nie martw siê, nie musisz mi udowadniaæ, ¿e jesteœ przydatna. */ GOTO Skie12x08
IF~~THEN REPLY @263 /* Nie. Nie potrzebujê pomocy kogoœ takiego jak ty, dobrze sobie radzê nawet gdy ciê nie ma w pobli¿u. */ GOTO Skie12x03
END

IF~~THEN BEGIN Skie12x08
SAY @264 /* Dziêkujê...(ca³uje ciê w policzek) */
IF~~THEN REPLY @265 /* A...to by³o...niespodziewane. */ GOTO Skie12x09
IF~~THEN REPLY @266 /* Nigdy wiêcej tego nie rób! Chyba siê trochê zagalopowa³aœ. */ GOTO Skie12x03
IF~~THEN REPLY @267 /* Ca³a przyjemnoœæ po mojej stronie, pani. */ GOTO Skie12x09
END

IF~~THEN BEGIN Skie12x09
SAY @268 /* Chyba siê zarumieniê. Nie patrz na mnie, pewnie jestem ca³a czerwona! */
=
@269 /* Ale...wiesz, z chêci¹ z tob¹ znów porozmawiam...pewnie nied³ugo. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",14)~ EXIT
END

IF~~THEN BEGIN Skie12x03
SAY @270 /* Nie wiedzia³am, ¿e jesteœ...taki. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",14) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////////13

IF~Global("SkieRomanceTalk","GLOBAL",15) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie13x00
SAY @271 /* Jestem ciekawa co siê sta³o z Eldothem... */
IF~~THEN REPLY @272 /* Jak to siê w³aœciwie sta³o, ¿e ju¿ razem nie wêdrujecie? */ GOTO Skie13x01
IF~~THEN REPLY @273 /* Przymkniesz siê w koñcu? */ GOTO Skie13x02
END

IF~~THEN BEGIN Skie13x01
SAY @274 /* Och, to by³o coœ strasznego. Pamiêtasz jak po³¹czyliœmy si³y we Wrotach Baldura? Tyle czasu wtedy wêdrowaliœmy razem, ale... jemu zale¿a³o na niewielu rzeczach... tylko na alkoholu, kurtyzanach i na czymœ co mo¿na od czasu do czasu wyœmiaæ. */
=
@275 /* ...czyli na mnie. Ja... Ja nie wiem czemu mu ufa³am! On tylko bawi³ siê moj¹ naiwnoœci¹! W koñcu przesadzi³. Jednej nocy on... On mnie uderzy³ bo nie chcia³am go pieœciæ. Nie wiedzia³am co robiæ! Ja... uciek³am w nocy... */
=
@276 /* Wiem tylko, ¿e teraz rozpowiada o mnie pewnie jakieœ okropne rzeczy... No ale na to nic nie poradzê. */
IF~~THEN REPLY @277 /* Dobrze zrobi³aœ. Przykro mi, ¿e coœ takiego ciê spotka³o. */ GOTO Skie13x03
IF~~THEN REPLY @278 /* I dobrze ci tak. */ GOTO Skie13x02
IF~~THEN REPLY @279 /* £ajdak! Nie martw siê, Skie. Tak jest lepiej! */ GOTO Skie13x03
END

IF~~THEN BEGIN Skie13x03
SAY @280 /* Dziêkujê, ¿e tego wys³ucha³eœ, <CHARNAME>... Mi³o jest wiedzieæ, ¿e nie wszyscy maj¹ mnie za idiotkê. */
=
@281 /* Powinniœmy ruszaæ. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",16)~ EXIT
END

IF~~THEN BEGIN Skie13x02
SAY @282 /* Jesteœ dla mnie bardzo niesprawiedliwy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",16) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////////////////////////////14

IF~Global("SkieRomanceTalk","GLOBAL",17) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie14x00
SAY @283 /* Powiedz mi, <CHARNAME>, o czym marzysz? Och, na pewno masz jakieœ swoje marzenie. */
IF~~THEN REPLY @284 /* Zawsze chcia³em przestaæ wêdrowaæ, wybudowaæ dom w œrodku lasu... no i sp³odziæ dziecko oczywiœcie! */ GOTO Skie14x01
IF~~THEN REPLY @285 /* Zawsze chcia³em prowadziæ swoj¹ karczmê. To by by³o coœ! */ GOTO Skie14x01
IF~~THEN REPLY @286 /* Chcia³bym mieœ wiêcej czasu na przygl¹danie siê niebu, gwiazdom i chmurom... */ GOTO Skie14x01
IF~~THEN REPLY @287 /* Chcia³bym wróciæ do Candlekeep. */ GOTO Skie14x01
IF~~THEN REPLY @288 /* S¹dzê, ¿e chcia³bym w koñcu odszukaæ swoj¹ prawdziw¹ mi³oœæ... */ GOTO Skie14x01
IF~~THEN REPLY @289 /* Có¿ zawsze marzy³em ¿ebyœ siê zamknê³a. */ GOTO Skie14x02
END

IF~~THEN BEGIN Skie14x02
SAY @290 /* Myœla³am, ¿e... ¿e bêdziesz inny ni¿ Eldoth! Jesteœ... jesteœ takim samym ³otrem! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",19) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie14x01
SAY @291 /* To...piêkne! Chcia³abym by uda³o ci siê je spe³niæ. Marzenia potrafi¹ podtrzymaæ cz³owieka na duchu. Potrafi¹ nawet zmieniæ ¿ycie! Cz³owiek bez marzenia jest jak kobieta bez ani jednych szpilek... dobrze, ¿e Jaheira tego nie s³yszy. W ka¿dym razie bez marzeñ cz³owiek jest jakiœ taki...mniej ludzki. */
=
@292 /* Ja kiedyœ marzy³am o tym by zostaæ projektantk¹ sukni balowych no i oczywiœcie innych strojów te¿! Myœla³am kiedyœ by spytaæ siê pewnego projektanta czy przypadkiem nie mog³abym z nim trochê popracowaæ, ale obawiam siê, ¿e to by by³o trudne... */
=
@293 /* Ale przecie go pozna³eœ! To ten od zbroi! No wiesz... W slumsach z nim rozmawialiœmy! Mam proœbê... Wpadnijmy do niego! Jestem ciekawa co porabia. Znajdziemy go w Dzielnicy Rz¹dowej. Zawsze lubi³ tam siedzieæ przy fontannie i projektowaæ. */
IF~~THEN REPLY @294 /* Dobrze. Zobaczmy co robi ten twój projektant. */ GOTO Skie14x03
IF~~THEN REPLY @295 /* Nie bêdê lata³ bo dzielnicach Athkatli bo idiotka chce siê zobaczyæ ze swoim znajomkiem! */ GOTO Skie14x02
END

IF~~THEN BEGIN Skie14x03
SAY @296 /* Och, dziêkujê ci, <CHARNAME>! To wspaniale! Ruszajmy! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",18)~ EXIT
END

///Party Has Gems

IF~PartyHasItem("MISC42") PartyHasItem("MISC36") PartyHasItem("MISC45") Global("SkieAdditionalQTalk","LOCALS",0)~THEN BEGIN SKIEPHG
SAY @297 /* Doskonale! Mamy je! Ruszajmy teraz do naszego przyjaciela. Bez tych kamieni jego pokaz siê nie uda! */
IF~~THEN DO ~SetGlobal("SkieAdditionalQTalk","LOCALS",1)~ EXIT
END


////////////////////////////////////////////////15

IF~Global("SkieRomanceActive","GLOBAL",1) Global("SkieRomanceTalk","GLOBAL",18) Global("SkieRomanceQuest","GLOBAL",5) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie15x00
SAY @298 /* Cieszê siê, ¿e mog³am pomóc mojemu przyjacielowi w pokazie mody, ale... chyba siê te¿ czegoœ nauczy³am... Czegoœ o sobie. */
IF~~THEN REPLY @299 /* Tak? Muszê przyznaæ, ¿e jestem ciekaw. */ GOTO Skie15x01
IF~~THEN REPLY @300 /* (Uœmiechnij siê.) Chêtnie o tym pos³ucham. */ GOTO Skie15x01
IF~~THEN REPLY @301 /* Wiesz, niezbyt mnie to interesuje. */ GOTO Skie15x02
END

IF~~THEN BEGIN Skie15x01
SAY @302 /* Widzisz, naprawdê lubiê projektowanie, ale... Podró¿owanie z tob¹ jest takie... ekscytuj¹ce! Widzisz to odkrywanie siebie, te przygody, no i... (Skie rumieni siê.) */
=
@303 /* Po prostu lubiê z tob¹ podró¿owaæ. Wiesz, jesteœ o wiele lepszy ni¿ Eldoth. Jesteœ wyrozumia³y, lubisz rozmawiaæ... */
=
@304 /* Przy tobie czujê siê o wiele lepiej. Bezpieczniej. */
IF~~THEN REPLY @305 /* Nie myœl wiêcej o nim, Skie. Eldoth by³ taki, a nie inny, ale teraz nie musisz siê nim przejmowaæ. */ GOTO Skie15x03
IF~~THEN REPLY @306 /* I ja z tob¹ czujê siê o wiele lepiej, Skie. */ GOTO Skie15x03
IF~~THEN REPLY @307 /* Skie, naprawdê to mnie nie obchodzi... */ GOTO Skie15x02
END

IF~~THEN BEGIN Skie15x03
SAY @308 /* Dziêkujê. Czasami ¿a³ujê, ¿e spotka³am Eldotha... Wola³abym pierw poznaæ ciebie. Wtedy od razu wiedzia³abym kim on jest, jaki z niego cz³owiek. Z tob¹ wszystko jest takie... */
=
@309 /* Po prostu nie wiem jak to nazwaæ! Pewnie masz ochotê siê ze mnie œmiaæ... */
IF~~THEN REPLY @310 /* Skie, dopiero teraz mam okazjê poznaæ ciê z innej strony, zauwa¿yæ coœ innego ni¿ rozpieszczon¹ smarkulê. */ GOTO Skie15x04
IF~~THEN REPLY @311 /* Nie, Skie. Nie mam ochoty siê œmiaæ. Czemu skoro mogê w koñcu ciê poznaæ? */ GOTO Skie15x04
IF~~THEN REPLY @312 /* Nie mogê uwierzyæ jak¹ idiotk¹ jesteœ. */ GOTO Skie15x02
END

IF~~THEN BEGIN Skie15x04
SAY @313 /* (Skie rumieni siê.) */
=
@314 /* My... powinniœmy ruszaæ... Ale tu komarów... nie pozwólmy by... by nas pogryz³y! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",19)~ EXIT
END

IF~~THEN BEGIN Skie15x02
SAY @315 /* Ale... My... My nie powinniœmy chyba wiêcej rozmawiaæ... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",19) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

////////////////////////////////////////////////16

IF~Global("SkieRomanceTalk","GLOBAL",20) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie16x00
SAY @316 /* (Skie zdaje siê ostatnio bardziej zamyœlona i przy tym niezwykle roztargniona. Czasami zerka w twoj¹ stronê, ale szybko odwraca wzrok kiedy wasze spojrzenia spotykaj¹ siê.) */
=
@317 /* (Nagle wasze spojrzenia spotykaj¹ siê ponownie. Skie zdaje siê zak³opotana. Przez swoje zagapienie Skie nagle uderza g³ow¹ w konar drzewa i l¹duje na ziemi.) */
=
@318 /* (Patrzy z ziemi na ciebie, jej twarz zaczerwieni³a siê. Szybko wstaje, uœmiecha siê i szybko rusza dalej.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",21)~ EXIT
END

///////////////////////////////////////////////17

IF~Global("SkieRomanceTalk","GLOBAL",22) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie17x00
SAY @319 /* Czy znasz jakieœ orientalne, albo ma³o znane jêzyki? */
IF~~THEN REPLY @320 /* Jako <pro_race> znam jêzyk swojej rasy. No ale jakie jeszcze... Trochê te z którymi mog³em siê spotkaæ podczas podró¿y. */ GOTO Skie17x01
IF~~THEN REPLY @321 /* Jedynie wspólny. */ GOTO Skie17x01
IF~~THEN REPLY @322 /* Nigdy nie bêdê mówi³ twoim jêzykiem, debilko, je¿eli o to pytasz. */ GOTO Skie17x02
END

IF~~THEN BEGIN Skie17x01
SAY @323 /* Ja uczy³am siê kilku jêzyków jeszcze w czasach gdy mieszka³am w posiad³oœci Srebrnych Tarcz. Uczy³am siê przyk³adowo... */
=
@324 /* O wiem! Kara-turiañskiego! Jeszcze podstawy jêzyka staro¿ytnych, ale szczerze... nic z tego ju¿ nie pamiêtam. To by³o tak dawno temu, a i nie by³y to fascynuj¹ce lekcje. O wiele bardziej lubi³am chocia¿by historiê sztuki. No i nawet nie wspomnê o historii mody! */
=
@325 /* Te czasy kiedy mieszka³am w posiad³oœci... Lubi³am obserwowaæ jak s³oñce zachodzi, a jego ostatnie promyki odbijaj¹ siê od murów i œcian Wrót Baldura. Zupe³nie jak z pejza¿y impresjonistów... */
=
@326 /* Pewnie brzmiê jak g³upia romantyczka. Có¿, mo¿e po czêœci ni¹ jestem. Ojej, pewnie chcesz ju¿ ruszaæ dalej... */
IF~~THEN REPLY @327 /* Prawdê mówi¹c... Mo¿e to dziwne, ale chcia³bym ciê przytuliæ. Mogê? */ GOTO Skie17x03
IF~~THEN REPLY @328 /* (Uœmiechnij siê) Ruszajmy. */ GOTO Skie17x04
IF~~THEN REPLY @329 /* Romantyczna - nie, g³upia - tak. Ruszamy. Znowu marnujemy czas. */ GOTO Skie17x02
END

IF~~THEN BEGIN Skie17x03
SAY @330 /* (Skie uœmiecha siê i przytula ciê. S³odki zapach jej skóry przypomina ci wasze pierwsze spotkanie w siedzibie Srebrnych Tarcz.) */
=
@331 /* (Skie szepce.) Dziêkujê. ¿e tu jesteœ. To dla mnie wiele znaczy. Od czasów œmierci mojego ojca... Ja... W koñcu mogê spokojnie odetchn¹æ. Nie by³am nigdy tak odwa¿na jak ty... Ja... */
=
@332 /* (Skie rozluŸnia uœcisk.) My powinniœmy ruszaæ... Tak... W³aœnie... Ruszajmy mo¿e coœ kupiæ... albo coœ takiego... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",23) SetGlobalTimer("SkieRomanceRestTime","GLOBAL",1200)~ EXIT
END

IF~~THEN BEGIN Skie17x04
SAY @333 /* (Skie nieœmia³o siê uœmiecha.) Dobrze, tylko jeszcze chcia³am powiedzieæ... */
=
@334 /* Dziêkujê. ¿e tu jesteœ. To dla mnie wiele znaczy. Od czasów œmierci mojego ojca... Ja... W koñcu mogê spokojnie odetchn¹æ. Nie by³am nigdy tak odwa¿na jak ty... Ja... */
=
@335 /* Ale mówi³eœ, ¿e chcesz ju¿ ruszaæ... My ruszajmy... To dobry pomys³... Tak... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",23) SetGlobalTimer("SkieRomanceRestTime","GLOBAL",1200)~ EXIT
END

IF~~THEN BEGIN Skie17x02
SAY @336 /* Myœla³am, ¿e coœ nas ³¹czy, ale ty... (Oczy Skie wype³niaj¹ siê ³zami.) Ruszajmy... Zostaw mnie, proszê... Zostaw... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",23) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////////////18

IF~Global("SkieRomanceActive","GLOBAL",1) Global("SkieRomanceTalk","GLOBAL",23) GlobalTimerExpired("SkieRomanceRestTime","GLOBAL")~THEN BEGIN Skie18x00
SAY @337 /* (Skie zdaje siê mieæ koszmary. Jej ruchy s¹ nerwowe a jej oddech przyspieszony.) Nie... Proszê, ja nic nie mog³am zrobiæ... Tato... Nie...! Ja nie mog³am... */
IF~~THEN REPLY @338 /* Skie, to tylko sen! (Szturchnij j¹ lekko.) */ GOTO Skie18x01
IF~~THEN REPLY @339 /* (Nie budŸ Skie. Po³ó¿ siê obok niej i przytul do siebie.) */ GOTO Skie18x02
IF~~THEN REPLY @340 /* (Zignoruj j¹.) */ GOTO Skie18x03
END

IF~~THEN BEGIN Skie18x03
SAY @341 /* (Skie przez kilka chwil szamocze siê. Nagle budzi siê z st³umionym krzyku a jej oczy wype³nione s¹ ³zami.) */
=
@342 /* (Skie rozgl¹da siê zdenerwowana. Widaæ, ¿e stara siê ukryæ przed innymi swoje zdenerwowanie wywo³ane nocnymi marami. Szybko zbiera swoje rzeczy i powraca do reszty dru¿yny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie18x02
SAY @343 /* (Skie przez chwile odpycha siê od ciebie, lecz po chwili poddaje siê. £za sp³ywa po jej policzku i spada na twoj¹ d³oñ.) */
=
@344 /* (Teraz dziewczyna zdaje siê spokojna, wtula siê w twoj¹ klatkê piersiow¹. Twoje ramiona tworz¹ pierœcieñ chroni¹cy kruch¹ dziewczynê.) */
=
@345 /* (Zasypiacie razem na kolejnych kilka godzin.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) RestParty()~ EXIT
END

IF~~THEN BEGIN Skie18x01
SAY @346 /* (Skie prêdko otwiera swoje oczy.) */
=
@347 /* Ja... Ojcze, co siê sta³o... Ojcze... */
IF~~THEN REPLY @348 /* Skie, to by³ jedynie z³y sen. Jesteœ bezpieczna... */ GOTO Skie18x04
IF~~THEN REPLY @349 /* Na bogów, co ci siê œni³o, dziewczyno? To wygl¹da³o jak atak epileptyczny! */ GOTO Skie18x04
END

IF~~THEN BEGIN Skie18x04
SAY @350 /* To by³ mój ojciec... Ten sen... to by³o takie realistyczne... takie straszne... */
=
@351 /* Jedliœmy razem kolacjê - ja, ojciec, moja matka i s³u¿ka Serianna... Nagle mój ojciec zacz¹³ siê zmieniaæ w jedn¹ z tych koszmarnych istot - sobowtórniaka... Jego skóra pêka³a jak przypalana pieczeñ... Zabi³ moj¹ matkê... Oderwa³ jej g³owê po czym wgryz³ siê w szyjê Serianny... */
=
@352 /* Potem on zacz¹³ z ni¹... Nie mogê tego opowiadaæ... to za wiele... to... */
IF~~THEN REPLY @353 /* Wszystko ju¿ dobrze... To pewnie przez wydarzenia z Wrót... (Przytul j¹.) */ GOTO Skie18x05
IF~~THEN REPLY @354 /* Co za g³upota! Pozbieraj siê do kupy dziewczyno! */ GOTO Skie18x06
IF~~THEN REPLY @355 /* (Przytul Skie.) */ GOTO Skie18x05
END

IF~~THEN BEGIN Skie18x05
SAY @356 /* Proszê, czy mo¿emy odpocz¹æ kilka kolejnych godzin... I... czy mo¿esz ze mn¹ zostaæ...? Boje siê znowu zamkn¹æ oczy... */
IF~~THEN REPLY @357 /* Dobrze. Odpoczniemy jeszcze trochê. */ GOTO Skie18x07
IF~~THEN REPLY @358 /* Zbierz siê do kupy, a nie j¹kasz siê i marudzisz! Musimy ruszaæ! */ GOTO Skie18x06
END

IF~~THEN BEGIN Skie18x07
SAY @359 /* Dziêkujê. (Skie z odrobin¹ niepewnoœci zamyka oczy.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) RestParty()~ EXIT
END

IF~~THEN BEGIN Skie18x06
SAY @360 /* Dobrze... Ruszajmy... (Skie - dalej roztrzêsiona - wstaje i zbiera swoje rzeczy.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////19

IF~Global("SkieRomanceTalk","GLOBAL",25) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie19x00
SAY @361 /* Ja chcia³am ci podziêkowaæ, ¿e ze mn¹ wtedy by³eœ... ¿e mog³am jeszcze odpocz¹æ, ¿e czuwa³eœ przy mnie... Sny... sny o moim zmar³ym ojcu czasami wracaj¹... Ja... (Skie wygl¹da na zak³opotan¹.) */
IF~~THEN REPLY @362 /* Proszê, pozwól... (Zbli¿ siê by poca³owaæ Skie.) */ GOTO Skie19x01
IF~~THEN REPLY @363 /* Nie musisz nic mówiæ. Po prostu chodŸ tu, ma³a. (Zbli¿ siê by poca³owaæ Skie.) */ GOTO Skie19x01
IF~~THEN REPLY @364 /* Przez ciebie nie mog³em spaæ. Staraj siê to pokonaæ, bo bêdziemy musieli siê rozstaæ. */ GOTO Skie19x02
END

IF~~THEN BEGIN Skie19x02
SAY @365 /* Przepraszam... Postaram siê nie przeszkadzaæ ci wiêcej... Teraz... Teraz ruszajmy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",26) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie19x01
SAY @366 /* (Skie pozwala by twoje usta zetknê³y siê z jej ustami. Czujesz, ¿e pocz¹tkowo obawia³a siê tej chwili, ale nagle twój poca³unek zostaje odwzajemniony przez kolejny tym razem zainicjowany przez dziewczynê.) */
=
@367 /* (Po chwili oddala swoj¹ twarz na kilka centymetrów.) Cieszê siê, ¿e do tego dosz³o, <CHARNAME>... */
IF~~THEN REPLY @368 /* (Uœmiechnij siê.) Gdzie siê podzia³a wystraszona Skie? */ GOTO Skie19x03
IF~~THEN REPLY @369 /* Skie... To chyba nie by³ najlepszy pomys³... Ta sytuacja mi przeszkadza... */ GOTO Skie19x02
END

IF~~THEN BEGIN Skie19x03
SAY @370 /* (Skie odwzajemnia uœmiech.) Chyba posz³a na zakupy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",26) SetGlobalTimer("SkieRomanceRestTime","GLOBAL",1200)~ EXIT
END


//////////////////////////////////////////20

IF~Global("SkieRomanceActive","GLOBAL",1) Global("SkieRomanceTalk","GLOBAL",26) GlobalTimerExpired("SkieRomanceRestTime","GLOBAL")~THEN BEGIN Skie20x00
SAY @371 /* (Budzi ciê Skie która chwilê przed obudzeniem siê reszty dru¿yny cicho przybiega do twojego pos³ania, k³adzie siê obok ciebie i delikatnie ca³uje w policzek.) */
IF~~THEN REPLY @372 /* Skie, chcia³bym to teraz z tob¹ zrobiæ. Pozwól mi, proszê. (Pog³adŸ dziewczynê po policzku.) */ GOTO Skie20x01 
IF~~THEN REPLY @373 /* Ja chcê spaæ idiotko... Daj mi teraz spokój... IdŸ malowaæ paznokcie albo co... */ GOTO Skie20x02
END

IF~~THEN BEGIN Skie20x01 
SAY @374 /* (Skie nic nie mówi, jedynie kiwa kiwa g³ow¹ po czym ca³uje delikatnie twoje usta. Jest to bardziej muœniêcie wargami, ni¿ namiêtny poca³unek, ale wiesz, ¿e nieœmia³oœæ dziewczyny nie pozwala jej na nic wiêcej. Dalej w ciszy uœmiecha siê zezwalaj¹c tym samym na twoje kolejne ruchy...) */
=
@375 /* (Delikatnie rozpinasz ubranie dziewczyny i po chwili zatapiacie siê w sobie niczym ksiê¿yc zatapia siê w morzu gwiazd.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",27) RestParty()~ EXIT
END

IF~~THEN BEGIN Skie20x02
SAY @376 /* (Oczy Skie wype³niaj¹ siê ³zami i bez wypowiadania jakiegokolwiek s³owa ucieka do swojego pos³ania.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",27) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END


//////////////////////////////////////////21

IF~Global("SkieRomanceTalk","GLOBAL",27) Global("SkieRomanceActive","GLOBAL",1)~THEN BEGIN Skie21x00
SAY @377 /* <CHARNAME>, mo¿e to g³upie, ¿e ci to mówiê, ale... to by³ mój pierwszy raz... Ojej, pewnie teraz sobie myœlisz, ¿e jestem dzieciakiem, który bêdzie to prze¿ywaæ i nie wiadomo co... ale... ale... no to chyba bêdzie trochê jednak prawd¹... */
IF~~THEN REPLY @378 /* Skie, to po prostu by³o coœ wa¿nego. Co ca³kiem naturalne. */ GOTO Skie21x01
IF~~THEN REPLY @379 /* I tak pewnie lepiej pamiêtasz swoj¹ pierwsz¹ skórzan¹ torebkê... */ GOTO Skie21x02
IF~~THEN REPLY @380 /* To by³a jakaœ wielka pomy³ka... Jakbym by³ pijany! Zapomnij o tym co robiliœmy. */ GOTO Skie21x03
END

IF~~THEN BEGIN Skie21x02
SAY @381 /* Hej, nie ¿artuj sobie! Tak pamiêtam j¹, ale to coœ zupe³nie innego! Coœ zupe³nie... (Skie spuszcza swoj¹ g³owê zawstydzona.) */
IF~~THEN REPLY @382 /* Skie, przecie¿ sobie ¿artujê! To naturalne, ¿e tak siê czujesz! */ GOTO Skie21x01
IF~~THEN REPLY @383 /* Bo widzisz, to by³a jakaœ wielka pomy³ka... Proszê, zapomnij o tym co robiliœmy. */ GOTO Skie21x03
END

IF~~THEN BEGIN Skie21x03
SAY @384 /* To jakiœ koszmar... Ja... To... Ja muszê odejœæ... To jakiœ koszmar... (Skie podnosi swoje rzeczy i ucieka szybko.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",28) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Skie21x01
SAY @385 /* Dziêkujê... Pewnie masz racjê... */
=
@386 /* Ja nigdy nie pozwoli³am Eldothowi na to by... No wiesz, co mam na myœli... Ja czu³am, ¿e to nie jest dobre... Ba³am siê chyba, ¿e to wszystko jest po to... ¿e on chcia³ tylko... */
IF~~THEN REPLY @387 /* Rozumiem. Nie musisz te¿ tego wspominaæ. To stare czasy. */ GOTO Skie21x04
IF~~THEN REPLY @388 /* Ju¿ nic nie mów. To przesz³oœæ któr¹ zakopaliœmy oboje. */ GOTO Skie21x04
IF~~THEN REPLY @389 /* Oj ju¿ siê zamknij! Stara³em siê wytrzymaæ to biadolenie, ale to jednak niewykonalne! */ GOTO Skie21x03
END

IF~~THEN BEGIN Skie21x04
SAY @390 /* (Skie uœmiecha siê, zbli¿a twoj¹ twarz do twojej...) */
=
@391 /* (...nagle podchodz¹c potyka siê i przypadkowo wymierza ci kolanem cios w kroczê. Odruchowo pochylasz siê z bólu trzymaj¹c siê za swoj¹ mêskoœæ.) */
=
@392 /* Ja... Ja przepraszam! Nie chcia³am...! To... to... musi boleæ... My... ruszajmy po prostu... Tak chyba bêdzie najbezpieczniej... */
IF~~THEN REPLY @393 /* Nic... Nic siê nie... sta³o... Po prostu ruszajmy... */ GOTO Skie21x05
IF~~THEN REPLY @394 /* (Kiwnij jedynie g³ow¹ i staraj siê iœæ ignoruj¹c ból.) */ GOTO Skie21x05
END

IF~~THEN BEGIN Skie21x05
SAY @395 /* (Zarumieniona Skie do³¹cza do dru¿yny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",28)~ EXIT
END

///////////////////////////////////////22

IF~Global("SkieRomanceTalk","GLOBAL",29) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie22x00
SAY @396 /* Chcia³abym ci coœ daæ, ukochany... Widzisz, to s¹ rêkawice mojego ojca... Zabra³am je z Wrót Baldura... On siê bez nich nie rusza³... Chcia³abym byœ teraz ty je nosi³... To mo¿e niewiele, ale... Po prostu chcia³abym byœ je mia³... */
IF~~THEN REPLY @397 /* Dziêkujê. To wiele dla mnie znaczy. To bêdzie dla mnie zaszczyt nosiæ rêkawice Entara. */ GOTO Skie22x01
IF~~THEN REPLY @398 /* Nie zbieram œmieci. */ GOTO Skie22x02
END

IF~~THEN BEGIN Skie22x01
SAY @399 /* To mi³o, ¿e tak mówisz. To jedyne co mi po nim zosta³o. Proszê, dbaj o nie. */
=
@400 /* Ruszajmy, ukochany... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",30) SetGlobal("SkieRomanceActive","GLOBAL",2) GiveItemCreate("SKIER",Player1,0,0,0)~ EXIT
END

IF~~THEN BEGIN Skie22x02
SAY @401 /* Nie wierzê, ¿e tak mówisz po tym wszystkim... to powiedzia³o mi coœ nowego o tobie... Proszê, nie odzywaj siê do mnie... Nigdy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",30) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////TotDG

IF~AreaCheck("ARLDV2") Global("SkieTotDGStan","GLOBAL",0)~THEN BEGIN SkieTotDG000
SAY @402 /* Ojej. Od tych wszystkich kolorów zaczyna mi siê krêciæ w g³owie. Z jednej strony jakoœ tu ³adnie, ale z drugiej... */
IF~~THEN REPLY @403 /* Wiem co masz na myœli. Trochê siê tu czujê jak w klatce na myszy. */ GOTO SkieTotDG001
IF~~THEN REPLY @404 /* Przynajmniej mamy okazjê poznaæ ciekawe miejsce. */ GOTO SkieTotDG002
IF~~THEN REPLY @405 /* Nie mamy czasu na czcze gadanie, Skie. Ruszajmy. */ GOTO SkieTotDG003
END

IF~~THEN BEGIN SkieTotDG001
SAY @406 /* Tutaj nawet nie ma porz¹dnego sklepu, nie ma nieba... dziwne to wszystko. */
IF~~THEN GOTO SkieTotDG004
END

IF~~THEN BEGIN SkieTotDG002
SAY @407 /* No tak, ciekawe. Trochê przyt³aczaj¹ce, ale ciekawe. */
IF~~THEN GOTO SkieTotDG004
END

IF~~THEN BEGIN SkieTotDG004
SAY @408 /* Wszystko siê tu zmienia jak w kalejdoskopie. Tak siê mówi, prawda? Tylko nie jestem do koñca pewna co to jest kalejdoskop. */
IF~~THEN REPLY @409 /* Wygl¹da jak luneta, ale w œrodku zamiast zwyczajnych szkie³ s¹ ró¿nokolorowe szkie³ka, które uk³adaj¹ siê w ró¿ne kszta³ty. */ GOTO SkieTotDG005
IF~~THEN REPLY @410 /* Prawdê mówi¹c to te¿ nie wiem co to jest, ale chyba nie ma siê czym przejmowaæ. */ GOTO SkieTotDG006
IF~~THEN REPLY @411 /* Nie bêdziemy marnowaæ czasu na rozmowy o zabawkach. */ GOTO SkieTotDG003
END

IF~~THEN BEGIN SkieTotDG005
SAY @412 /* A to muszê ci powiedzieæ, ¿e nawet dobrze myœla³am, ale nie chcia³am paln¹æ czegoœ g³upiego. */
IF~~THEN GOTO SkieTotDG007
END

IF~~THEN BEGIN SkieTotDG006
SAY @413 /* Tak na prawdê to mi siê chyba zdaje, ¿e wiem, ale nie jestem pewna... to chyba takie d³ugie coœ z ró¿nymi kolorowymi...chyba szkie³kami. Ale g³owy nie dam! */
IF~~THEN GOTO SkieTotDG007
END

IF~~THEN BEGIN SkieTotDG007
SAY @414 /* Wiesz ju¿ jak st¹d uciekniemy? */
IF~~THEN REPLY @415 /* A mo¿e tu zostaniemy? (mrugnij) */ GOTO SkieTotDG008
IF~~THEN REPLY @416 /* Coœ na pewno wymyœlimy. Dziecka Bhaala i modnej towarzyszki nic nie zatrzyma. */ GOTO SkieTotDG009
IF~~THEN REPLY @417 /* Nie wiem, a to nie pora na gadanie. */ GOTO SkieTotDG003
IF~~THEN REPLY @418 /* Coœ siê wymyœli. */ GOTO SkieTotDG009
END

IF~~THEN BEGIN SkieTotDG008
SAY @419 /* Tylko nie to... ju¿ czujê, ¿e mnie zaczyna boleæ g³owa... */
IF~~THEN DO ~SetGlobal("SkieTotDGStan","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieTotDG009
SAY @420 /* Zrobimy wszystko, aby siê st¹d wydostaæ...! */
=
@421 /* ...ale chyba dziœ nie zasnê... */
IF~~THEN DO ~SetGlobal("SkieTotDGStan","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieTotDG003
SAY @422 /* Nie krzycz! I tak ju¿ boli mnie g³owa... */
IF~~THEN DO ~SetGlobal("SkieTotDGStan","GLOBAL",1)~ EXIT
END

/////////////////////////////////////TotDG Rom

IF~AreaCheck("ARLDV1") Global("SkieTotDGRom","GLOBAL",0)
OR(2)
Global("SkieRomanceActive","GLOBAL",1)
Global("SkieRomanceActive","GLOBAL",2)
OR(2)
GlobalGT("DGGentleChoice","GLOBAL",2)
GlobalGT("DGTemperChoice","GLOBAL",2)~THEN BEGIN SkieTouchDG000
SAY @423 /* Jakieœ dziwne tu maj¹ zwyczaje. Nie jestem pewna czego oni od ciebie chc¹, <CHARNAME>. Uwa¿aj, dobrze? */
IF~~THEN REPLY @424 /* Jasne. Nie martw siê, Skie. Mo¿e dowiem siê od nich jak uciec. */ GOTO SkieTouchDG001
IF~~THEN REPLY @425 /* O mnie siê nie martw, to ty tutaj zawsze wpadasz w k³opoty, wiêc mnie nie pouczaj. */ GOTO SkieTouchDG002
END

IF~~THEN BEGIN SkieTouchDG001
SAY @426 /* Mo¿e masz racjê. Przepraszam, nie powinnam ci mówiæ kiedy masz uwa¿aæ i na co... Po prostu to miejsce przyprawia mnie o migrenê i chcê ju¿ byæ w domu. To znaczy nie we Wrotach, tylko w normalnym œwiecie! */
=
@427 /* Ale ty wiesz o co mi chodzi. Po prostu ruszajmy. Musi byæ st¹d wyjœcie. */
IF~~THEN REPLY @428 /* Nie martw siê, zrobiê co w mojej mocy. A tymi ludŸmi siê nie przejmuj. */ GOTO SkieTouchDG003
IF~~THEN REPLY @429 /* Dotyk - bo tak ma na imiê - mo¿e coœ o tym wszystkim wiedzieæ. Coœ na pewno siê od nich dowiem i uda nam siê uciec. */ GOTO SkieTouchDG003
IF~~THEN REPLY @216 /* B¹dŸ ju¿ cicho. */ GOTO SkieTouchDG002
END

IF~~THEN BEGIN SkieTouchDG003
SAY @430 /* Obiecujesz? */
IF~~THEN REPLY @431 /* Hehe, oczywiœcie, Skie. Zaufaj mi. */ GOTO SkieTouchDG004
IF~~THEN REPLY @432 /* Nic ci nie bêdê obiecywa³. Nie naciskaj. */ GOTO SkieTouchDG002
IF~~THEN REPLY @433 /* (Kiwnij g³ow¹) */ GOTO SkieTouchDG004
END

IF~~THEN BEGIN SkieTouchDG004
SAY @434 /* Dziêkujê. */
IF~~THEN DO ~SetGlobal("SkieTotDGRom","GLOBAL",1)~ EXIT
END 

IF~~THEN BEGIN SkieTouchDG002
SAY @435 /* Ale móg³byœ byæ milszy. */
IF~~THEN DO ~SetGlobal("SkieTotDGRom","GLOBAL",1)~ EXIT
END 

/////////////////////////////////////////DRAGON

IF~Dead("FIRKRA02") AreaCheck("AR1203") Global("SkieDragon","GLOBAL",0)~THEN BEGIN SkieFir000
SAY @436 /* Co to by³o?! Co... co?! Jak?! Moja g³owa... */
IF~~THEN REPLY @437 /* No có¿, mówi¹c jêzykiem w miarê prostym, mo¿na by to nazwaæ cholernie silnym czerwonym smokiem o nieprzyzwoicie gor¹cym oddechu. */ GOTO SkieFir001
IF~~THEN REPLY @438 /* I mnie chyba zaczyna boleæ g³owa. Od bardzo dawna nie nie doœwiadczyliœmy tego typu walki. */ GOTO SkieFir002
IF~~THEN REPLY @439 /* Nie mam ochoty teraz dyskutowaæ. Mamy lepsze rzeczy do roboty - chocia¿by zajêcie siê naszymi poparzeniami. */ GOTO SkieFir003
END

IF~~THEN BEGIN SkieFir001
SAY @440 /* Ty chyba sobie ze mnie ¿artujesz! To by³o wielkie! A ty jeszcze... rany... */
IF~~THEN GOTO SkieFir004
END

IF~~THEN BEGIN SkieFir002
SAY @441 /* I mam nadziejê, ¿e ju¿ nigdy nie bêdziemy walczyæ z czymœ takim... */
IF~~THEN GOTO SkieFir004
END

IF~~THEN BEGIN SkieFir004
SAY @442 /* Ale my ju¿ chyba nigdy nie napotkamy na coœ takiego, prawda? Powiedz, ¿e ju¿ nigdy. */
IF~~THEN REPLY @443 /* Wiesz, smok tu, lisz tam, a i jeden z demonicznych ksiêciuniów siê pewnie trafi. */ GOTO SkieFir005
IF~~THEN REPLY @444 /* Z pewnoœci¹ bêdziemy omijaæ tego typu gady. Tego typu bestiom mówimy kategoryczne 'nie'! */ GOTO SkieFir006
IF~~THEN REPLY @445 /* Ruszajmy dalej. */ GOTO SkieFir003
END

IF~~THEN BEGIN SkieFir005
SAY @446 /* ... */
=
@447 /* Nie, ty ¿artujesz. Oczywiœcie. My nigdy nie bêdziemy walczyæ z takimi istotami, to...to pewne. Tak, to pewne. */
IF~~THEN GOTO SkieFir007
END

IF~~THEN BEGIN SkieFir006
SAY @448 /* Och, jak to mi³o s³yszeæ takie s³owa. Od razu mi siê l¿ej zrobi³o... */
IF~~THEN GOTO SkieFir007
END

IF~~THEN BEGIN SkieFir007
SAY @449 /* Mo¿e przynajmniej znajdziemy przy nim coœ ciekawego, a pieni¹dze wydamy na jakieœ przyjemnoœci. Najlepiej perfumy. */
=
@450 /* Ale teraz...mo¿e ju¿ sobie st¹d pójdziemy? Chyba nie chcê ju¿ d³u¿ej patrzeæ na to miejsce. */
IF~~THEN REPLY @451 /* Doskonale wiem co masz na myœli. */ GOTO SkieFir008
IF~~THEN REPLY @452 /* Tylko pierw siê rozejrzymy. */ GOTO SkieFir009
END

IF~~THEN BEGIN SkieFir008
SAY @453 /* No ju¿ idŸmy...b³agam... */
IF~~THEN DO ~SetGlobal("SkieDragon","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieFir009
SAY @454 /* Ale szybko...Ja ju¿ chcê sobie iœæ... */
IF~~THEN DO ~SetGlobal("SkieDragon","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieFir003
SAY @455 /* Po prostu st¹d idŸmy... */
IF~~THEN DO ~SetGlobal("SkieDragon","GLOBAL",1)~ EXIT
END

/////////////////////////////////////////MaeVar

IF~Dead("MAEVAR") AreaCheck("AR0301") Global("SkieMVTalk","GLOBAL",0)~THEN BEGIN SkieMaex00
SAY @456 /* Wiesz, jak na naszego wroga, to by³ zadziwiaj¹co dobrze ubrany. Dobrze mu by³o w tej czerni. */
IF~~THEN REPLY @457 /* Tylko to by³abyœ zdolna do pochwa³y stylu mê¿czyzny, który mia³ zamiar nas zamordowaæ. */ GOTO SkieMaex01
IF~~THEN REPLY @458 /* No, a teraz jest jedynie kup¹ wybebeszonych...bebechów. */ GOTO SkieMaex02
IF~~THEN REPLY @459 /* Nie mamy na to czasu. */ GOTO SkieMaex03
END

IF~~THEN BEGIN SkieMaex01
SAY @460 /* Ale to Ÿle? Jakby nie patrzeæ, to potrafi³ siê ubraæ. Mo¿e nie by³ jakoœ doskonale zbudowany, ale ta jego zbroja dobrze podkreœla³a kszta³t jego klatki piersiowej. */
IF~~THEN GOTO SkieMaex04
END

IF~~THEN BEGIN SkieMaex02
SAY @461 /* Fuj, co za paskudne porównanie. To by³o jakieœ takie...niesmaczne. */
IF~~THEN GOTO SkieMaex04
END

IF~~THEN BEGIN SkieMaex04
SAY @462 /* Wiesz, on przypomina³ mi trochê jednego z tych ludzi Sarevoka... pamiêtasz? Taki co trzeba by³o go szukaæ pod Sp³onion¹ Syren¹. */
IF~~THEN REPLY @463 /* A tak. Chyba siê nazywa³ Slythe, albo coœ w tym stylu. */ GOTO SkieMaex05
IF~~THEN REPLY @464 /* By³ ktoœ taki, ale nie pamiêtam jego imienia. */ GOTO SkieMaex06
IF~~THEN REPLY @465 /* Nie pamiêtam nikogo takiego, a ponadto to doœæ ma³o istotne. */ GOTO SkieMaex07
END

IF~~THEN BEGIN SkieMaex05
SAY @466 /* A tak! Chyba... */
IF~~THEN GOTO SkieMaex08
END

IF~~THEN BEGIN SkieMaex06
SAY @467 /* No, ale przynajmniej wiesz o kogo mi chodzi. */
IF~~THEN GOTO SkieMaex08
END

IF~~THEN BEGIN SkieMaex08
SAY @468 /* On mi przypomina³ tego ca³ego Mae'Vara. Trochê szkoda, ¿e tak samo skoñczyli. */
=
@469 /* Wiesz, czasami mi szkoda tych wszystkich ludzi, których zabijamy, ale chyba nie mamy innego wyboru, prawda? */
IF~~THEN REPLY @470 /* Albo oni, albo my, Skie. */ GOTO SkieMaex09
IF~~THEN REPLY @471 /* Chcia³bym by by³o inaczej, ale niestety inaczej nie mo¿na. */ GOTO SkieMaex10
IF~~THEN REPLY @472 /* To ich wina, ¿e pchaj¹ siê nam na ostrza. */ GOTO SkieMaex10
END

IF~~THEN BEGIN SkieMaex09
SAY @473 /* Och... to mo¿e jednak lepiej, ¿e to oni tak padaj¹... */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieMaex10
SAY @474 /* Skoro tak mówisz... Pewnie masz racjê. */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieMaex07
SAY @475 /* Och, no dobrze... to... a, mo¿e po prostu ruszajmy. Ju¿ sama nie pamiêtam o co mi chodzi³o. */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieMaex03
SAY @476 /* No dobra, ju¿ dobra... */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

////////////////////////////////////////COPPER

IF~AreaCheck("AR0406") Global("SkieCopTalk","GLOBAL",0)~THEN BEGIN CopSkiex00
SAY @477 /* Ale tu œmierdzi. To miejsce raczej dla Eldotha, ni¿ ludzi jak my, wiêc mo¿e pójdziemy? Jestem pewna, ¿e s¹ inne tawerny, a... mo¿e i nie bêdzie tam pche³ ani wszy. Proszê...? */
IF~~THEN REPLY @478 /* Mamy tutaj do za³atwienia sprawê, a mo¿e nawet dwie, wiêc musisz to jakoœ prze¿yæ. */ GOTO CopSkiex01
IF~~THEN REPLY @479 /* Czy istnieje coœ takiego jak Faeruñski dzieñ bez marudzenia? Bo jak tak, to nie mogê siê go doczekaæ. */ GOTO CopSkiex02
IF~~THEN REPLY @480 /* Zróbmy co musimy i siê wynosimy. Idziemy. */ GOTO CopSkiex03
END

IF~~THEN BEGIN CopSkiex01
SAY @481 /* Ale w³aœnie siê obawiam, ¿e tego nie prze¿yjê. Te wszystkie pch³y mnie zjedz¹ na miejscu. */
IF~~THEN GOTO CopSkiex04
END

IF~~THEN BEGIN CopSkiex02
SAY @482 /* Jak mam nie marudziæ, jak jestem pewna, ¿e pch³y zjedz¹ nas ¿ywcem?! */
IF~~THEN GOTO CopSkiex04
END

IF~~THEN BEGIN CopSkiex04
SAY @483 /* Ale tak na prawdê, to wiesz...s³ysza³am o takim przypadku! To w³aœnie Eldoth mi o tym powiedzia³. Ponoæ po³o¿y³ siê w ³ó¿ku, kiedy us³ysza³ przeraŸliwy krzyk na ³o¿u obok! Powiedzia³, ¿e zosta³y po nim tylko gatki... */
=
@484 /* Wiesz, on chyba mówi³, ¿e to by³o w...Miedzianym Diademie. A mo¿e Miedziowym Tandemie? */
IF~~THEN REPLY @485 /* Wiesz, powinnaœ mieæ nadziejê, ¿e to by³o o Miedzowym Tandemie, bo w Miedzianym Diademie w³aœnie siê znajdujemy. */ GOTO CopSkiex05
IF~~THEN REPLY @486 /* Ju¿ siê tak nie martw. Wszystko bêdzie dobrze. Ja...nie wiem jak nazywa siê to miejsce, ale to na pewno by³o gdzie indziej. Ruszajmy. */ GOTO CopSkiex06
END

IF~~THEN BEGIN CopSkiex05
SAY @487 /* Co...? */
=
@488 /* No to jestem zgubiona... */
IF~~THEN DO ~SetGlobal("SkieCopTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN CopSkiex06
SAY @489 /* Dobrze, ale prêdko. Ju¿ mam wra¿enie, ¿e wszystkie wszy z tych wszystkich ludzi siê na mnie patrz¹... */
IF~~THEN DO ~SetGlobal("SkieCopTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN CopSkiex03
SAY @70 /* No dobrze... */
IF~~THEN DO ~SetGlobal("SkieCopTalk","GLOBAL",1)~ EXIT
END

/////////////////////////////////////////ZAMIANA

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceSlayer","GLOBAL",0)~THEN BEGIN SkieZBx00
SAY @490 /* <CHARNAME>, proszê, ja... ja siê ciebie bojê... B³agam uspokój siê... B³agam... Spróbuj to zrobiæ dla mnie... Proszê... */
IF~~THEN REPLY @491 /* (Spróbuj zapanowaæ nad ¿¹dz¹ mordu i ogniem w twych ¿y³ach.) */ GOTO SkieZBx01
IF~~THEN REPLY @492 /* (Zignoruj Skie.) */ GOTO SkieZBx02
END

IF~~THEN BEGIN SkieZBx02
SAY @493 /* (Gniew zaczyna górowaæ nad twoj¹ natur¹. Po chwili ponownie tracisz œwiadomoœæ.) */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieZBx01
SAY @494 /* (Nie jesteœ w stanie wróciæ do swojej formy. Twoja walcz¹ce dwie natury sprawiaj¹ jednak, ¿e nie poddajesz siê fizycznej walce, jedynie tej która odbywa siê w g³êbi ciebie.) */
IF~~THEN REPLY @495 /* (Poddaj siê gniewnej naturze.) */ GOTO SkieZBx02
IF~~THEN REPLY @496 /* (ProwadŸ dalej wewnêtrzn¹ walkê.) */ GOTO SkieZBx03
END

IF~~THEN BEGIN SkieZBx03
SAY @497 /* (Ból nasila siê. Ogieñ ¿¹dzy zaczyna rozlewaæ siê po twoich wnêtrznoœciach, jednak udaje ci siê opanowaæ mord. W formie mordercy anga¿ujesz siê w wewnêtrzn¹ walkê ignoruj¹c œwiat zewnêtrzny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",1) ApplySpellRES("SKIEST",Player1)~ EXIT
END


/////////////////////////////PO ZAMIANIE

IF~Global("SkieRomanceSlayer","GLOBAL",1) GlobalTimerExpired("SkieRomChange","GLOBAL") Global("SkieRomanceActive","GLOBAL",2)~THEN BEGIN SkiePZx00
SAY @498 /* Min¹³ dzieñ od zamiany... To... To by³o straszne... Powiedz... Czy to ju¿ minê³o...? Czy ty... */
IF~~THEN REPLY @499 /* Skie, ju¿ lepiej. Przepraszam za to co siê sta³o. */ GOTO SkiePZx01
IF~~THEN REPLY @500 /* Tak, ju¿ dobrze. */ GOTO SkiePZx01
IF~~THEN REPLY @501 /* (Za¿artuj.) Wrrr, zaraz zjem twoj¹ duszê! Wrrr! */ GOTO SkiePZx02
IF~~THEN REPLY @502 /* Zostaw mnie, Skie! Po prostu mnie zostaw! */ GOTO SkiePZx03
END

IF~~THEN BEGIN SkiePZx01
SAY @503 /* Proszê, nie rób tego wiêcej... (Skie przytula siê do ciebie.) Ja wiem, ¿e pewnie trudno ci to opanowaæ, ale postaraj siê... To mnie przera¿a... To jest takie... ja... nie wiem jak to opisaæ... */
IF~~THEN REPLY @504 /* Postaram siê... Sam siê obawiam tej formy... Trudno j¹ opanowaæ... Jest taka dzika. */ GOTO SkiePZx04
IF~~THEN REPLY @502 /* Zostaw mnie, Skie! Po prostu mnie zostaw! */ GOTO SkiePZx03
END

IF~~THEN BEGIN SkiePZx02
SAY @505 /* Nie ¿artuj tak nawet... Nie chce tego widzieæ... To by³o jak mój koszmar... Jak sen o moim ojcu... morduj¹cym... Wygl¹daj¹cym jak sobowtórniak... Proszê, opanuj t¹ bestiê... */
IF~~THEN REPLY @504 /* Postaram siê... Sam siê obawiam tej formy... Trudno j¹ opanowaæ... Jest taka dzika. */ GOTO SkiePZx04
IF~~THEN REPLY @502 /* Zostaw mnie, Skie! Po prostu mnie zostaw! */ GOTO SkiePZx03
END

IF~~THEN BEGIN SkiePZx04
SAY @506 /* Tak... To demon... To... (Skie nie dokañcza zdania. Po prostu przyciska twarz do twojej klatki piersiowej. Czujesz ¿e dalej jest roztrzêsiona.) */
=
@507 /* (Trwacie tak przez chwilê. Po czym Skie oddala siê na chwilê.) */
=
@508 /* Proszê... Postaraj siê... */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN SkiePZx03
SAY @509 /* Dobrze... Pewnie... pewnie chcesz teraz byæ sam. Ale proszê, pamiêtaj, ¿e jestem. Staraj siê opanowaæ bestiê. */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",2)~ EXIT
END

///////////////////////////////////////////UNDER

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieUnderLov","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceUnder","GLOBAL")~THEN BEGIN UndSkiex00
SAY @510 /* To miejsce jest takie ciemne. Bojê siê, ale...dam sobie radê. Przy tobie wiele siê nauczy³am, wiesz? Teraz wiem wiêcej, ni¿ jak dobraæ pantofle do sukni i kolczyków. */
IF~~THEN REPLY @511 /* S¹dze, ¿e od pocz¹tku wiele umia³aœ, ale nie zdawa³aœ sobie z tego sprawy. */ GOTO UndSkiex01
IF~~THEN REPLY @512 /* To wiele dla mnie znaczy. Ciesze siê, ¿e mo¿emy uczyæ siê prze¿yæ wspólnie. */ GOTO UndSkiex02
IF~~THEN REPLY @513 /* To jakaœ pomy³ka, Skie. Z tego nic nie bêdzie. */ GOTO UndSkiex03
END

IF~~THEN BEGIN UndSkiex01
SAY @514 /* Na prawdê tak s¹dzisz? Nie by³abym tego taka pewna. Kiedyœ by³am tylko rozpuszczon¹ dziewczyn¹, a teraz...mo¿e nie jestem mistrzyni¹ walki, ale chyba umiem wiêcej ni¿ kiedyœ. */
IF~~THEN GOTO UndSkiex04
END

IF~~THEN BEGIN UndSkiex02
SAY @515 /* Ja chyba muszê siê nauczyæ wiêcej, ni¿ ty. Od kiedy tylko pamiêtam potrafi³eœ sobie poradziæ. Ju¿ wtedy we Wrotach Baldura, a póŸniej jeszcze pokona³eœ Sarevoka. */
IF~~THEN GOTO UndSkiex04
END

IF~~THEN BEGIN UndSkiex04
SAY @516 /* Dziêkujê ci za wszystko. S¹dzê, ¿e dziêki tobie mój papa by³by ze mnie dumny i to nie tylko dlatego, ¿e nie ubieram granatowej spódnicy do pomarañczowej koszuli. */
IF~~THEN REPLY @517 /* S¹dzê, ¿e zawsze widzia³ w tobie poszukiwaczkê przygód. */ GOTO UndSkiex05
IF~~THEN REPLY @518 /* To pomarañczu nie nosi siê z granatem? */ GOTO UndSkiex06
IF~~THEN REPLY @519 /* To idiotyzm. Nic z tego nie bêdzie, Skie. */ GOTO UndSkiex03
END

IF~~THEN BEGIN UndSkiex05
SAY @520 /* Jak to? */
IF~~THEN REPLY @521 /* Nie s¹dzisz, ¿e wiele razy mia³ szansê nas zatrzymaæ? Mo¿e on chcia³ byœ sz³a za tym co ci mówi serce. */ GOTO UndSkiex07
IF~~THEN REPLY @522 /* Nie wiem, takie jakieœ przeczucie. */ GOTO UndSkiex08
END

IF~~THEN BEGIN UndSkiex06
SAY @523 /* Yyy...chyba jednak masz siê czego uczyæ. */
IF~~THEN GOTO UndSkiex09
END

IF~~THEN BEGIN UndSkiex07
SAY @524 /* Ja...nigdy o tym tak nie myœla³am. */
IF~~THEN GOTO UndSkiex09
END

IF~~THEN BEGIN UndSkiex08
SAY @525 /* Mhm... */
IF~~THEN GOTO UndSkiex09
END

IF~~THEN BEGIN UndSkiex09
SAY @526 /* Ale przepraszam, ¿e tyle o sobie mówiê. Powiedz mi, jak siê czujesz? Po tym wszystkim co ci zrobi³ Irenicus. To musi byæ straszne uczucie. */
IF~~THEN REPLY @527 /* Mog³oby byæ lepiej. */ GOTO UndSkiex10
IF~~THEN REPLY @528 /* Nie martw siê, wszystko ze mn¹ dobrze. Oczywiœcie mog³oby byæ lepiej, ale nie narzekam. */ GOTO UndSkiex11
IF~~THEN REPLY @529 /* To nie jest wa¿ne. To i tak nie wyjdzie, Skie. Wybacz, ale nie pasujemy do siebie. */ GOTO UndSkiex03
END

IF~~THEN BEGIN UndSkiex10
SAY @530 /* Ja... rozumiem. (Ca³uje twój policzek) */
=
@531 /* Przepraszam, ale na razie nic wiêcej nie mogê poradziæ... */
IF~~THEN DO ~SetGlobal("SkieUnderLov","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN UndSkiex11
SAY @532 /* To... to dobrze. */
=
@533 /* Nie martw siê. Zrobiê wszystko by ci pomóc. */
IF~~THEN DO ~SetGlobal("SkieUnderLov","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN UndSkiex03
SAY @534 /* Jesteœ...jesteœ potworem. Zostaw mnie! Nie chcê na ciebie patrzeæ. */
IF~~THEN DO ~SetGlobal("SkieUnderLov","GLOBAL",2) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

///////////////////////////////////////23

IF~Global("CHAPTER","GLOBAL",%bg2_chapter_6%) Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceC6","GLOBAL",1) RealGlobalTimerExpired("SkieTimerC6","GLOBAL")~THEN BEGIN Skie23x00
SAY @535 /* Czy nie zdaje ci siê, ¿e ostatnio przyty³am, <CHARNAME>? Ale ja nie jad³am jakoœ du¿o... Dziwne... A w ogóle to mam ochotê na szparagi... Nie wiesz czy nie mogê gdzieœ niedaleko kupiæ kilka...? */
IF~~THEN REPLY @536 /* Skie, czy ty... ostatnio nie czu³aœ siê niedobrze z rana...? */ GOTO Skie23x01
IF~~THEN REPLY @537 /* Nawet tak nie ¿artuj... Czy ty... Czy ty chcesz powiedzieæ, ¿e... */ GOTO Skie23x01
END

IF~~THEN BEGIN Skie23x01
SAY @538 /* Co...? O czym ty w³aœciwie mówisz... */
=
@539 /* (Skie robi siê nagle blada, jej oczy otwieraj¹ siê szeroko, a jej usta pozostaj¹ odrobinê otwarte. Przez chwilê panuje niezrêczna cisza...) */
IF~~THEN REPLY @540 /* Skie, ty jesteœ w ci¹¿y... */ GOTO Skie23x02
END

IF~~THEN BEGIN Skie23x02
SAY @541 /* Ale... ale jak?! Przecie... przecie... Tak od razu! Wiem sk¹d siê bior¹ dzieci, ale nie wiedzia³am, ¿e tak od razu... ¿e ty potrafisz tak szybko... ¿e ty tak... no potrafisz! Tak od razu! Przecie to nie mo¿liwe! Raptem raz to zrobiliœmy i... */
=
@542 /* Duszno mi... ja chyba zemdlejê... */
IF~~THEN REPLY @543 /* Skie, ty nie chcesz tego dziecka...? */ GOTO Skie23x03
IF~~THEN REPLY @544 /* Nie cieszysz siê? */ GOTO Skie23x03
END

IF~~THEN BEGIN Skie23x03
SAY @545 /* Po prostu nie spodziewa³am siê tego... Ja... chyba siê cieszê, ale to dla mnie doœæ nowa sytuacja... */
IF~~THEN REPLY @546 /* No, tego siê domyœli³em... */ GOTO Skie23x04
IF~~THEN REPLY @547 /* Rozumiem. */ GOTO Skie23x04
IF~~THEN REPLY @548 /* Ja chyba... yyy.... jakby ci to powiedzieæ... Wiesz, idŸ gdzieœ, musisz uwa¿aæ na siebie... Ja... yyy... kiedyœ *na pewno* ciê znajdê... */ GOTO Skie23x05
END

IF~~THEN BEGIN Skie23x05
SAY @549 /* Bêdê czeka³a w posiad³oœci Srebrnych Tarcz, ukochany! (Skie odchodzi nieœwiadoma tego, ¿e w³aœnie zostawi³eœ j¹ z dzieckiem.) */
IF~~THEN DO ~SetGlobal("SkieRomanceC6","GLOBAL",2) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Skie23x04
SAY @550 /* (Skie rzuca ci siê na szjê.) */
=
@551 /* Bêdziemy wspanialymi rodzicami! Jestem tego pewna. */
IF~~THEN DO ~SetGlobal("SkieRomanceC6","GLOBAL",2)~ EXIT
END


////////////////////////////////////////24

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceC6","GLOBAL",3) RealGlobalTimerExpired("SkieTimerC6","GLOBAL")~THEN BEGIN Skie24x00
SAY @552 /* (Skie zdaje siê cieszyæ z dziecka, które pocz¹³eœ. Nuci weso³¹ melodiê i g³adzi swój brzuch.) */
=
@553 /* (Po chwili wyjmuje szparagi, które nawet nie wiesz sk¹d siê wziê³y, kiedy zosta³y przyrz¹dzone i w jaki sposób.) */
=
@554 /* (Jak widaæ, dla ciê¿arnej kobiety nie ma nic trudnego.) */
IF~~THEN DO ~SetGlobal("SkieRomanceC6","GLOBAL",4)~ EXIT
END


////////////INTER

INTERJECT_COPY_TRANS AERIE 27 skieatthecircus
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@555 /* To miejsce mnie przyt³acza... */
== AERIE
@556 /* Ja... nie dziwie ci siê. */
END

INTERJECT_COPY_TRANS ARAN 0 skiearan
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@557 /* Ojej! To jest ten s³awny Aran! No, ca³kiem ³adnie ubrany. */
== ARAN
@558 /* Dziêkujê, Skie. S³ysza³em o tobie. Mo¿e brakuje ci zdolnoœci, ale wiem o ka¿dym z³odzieju w tym mieœcie. Poza tym w koñcu jesteœ z rodziny Srebrnych Tarcz. */
END

INTERJECT_COPY_TRANS BODHI 1 skiebodhi1
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@559 /* A¿ mi siê zimno robi jak widzê t¹ kobietê... */
== BODHI
@560 /* Milcz, niewiasto. */
END

INTERJECT_COPY_TRANS CSGAAL 1 skieigaal
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@561 /* Mam wra¿enie, ¿e zaraz wpadniemy w jakieœ k³opoty... */
== CSGAAL
@562 /* Milczenie, tak jak œlepota jest cnot¹, dziecko. Zamilcz, a je¿eli nie jesteœ pewna tego co robisz, odejdŸ. */
END

INTERJECT_COPY_TRANS EDWIN 0 skieieddie
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@563 /* Czy my go nie znamy? */
== EDWIN
@564 /* (Och nie, b³agam. To musi byæ jakiœ koszmar. Ma³pa przywlok³a ze sob¹ ma³piatkê.) */
END

INTERJECT_COPY_TRANS FIRKRA01 5 skieilordj
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@565 /* Tyle pieniêdzy to pe³no piêknych i nowych rzeczy! Nie dyskutujmy. Zrobimy to! */
== FIRKRA01
@566 /* M¹drze myœlisz, panno. */
END

INTERJECT_COPY_TRANS FIRKRA02 0 skieifirkr
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@567 /* Aaa! To smok! Ja chce do domu... */
== FIRKRA02
@568 /* ¯a³osna... */
END

INTERJECT_COPY_TRANS JARLAXLE 0 skieijarla
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@569 /* Od tego miasta i tych stworzeñ zaczyna mnie boleæ g³owa... */
== JARLAXLE
@570 /* Lepiej nie przyznawaj siê do takich rzeczy w miejscu jak Ust Natha, bo mo¿esz j¹ straciæ, panienko. */
END

INTERJECT_COPY_TRANS LAVOK 0 skieilavok
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@571 /* Czy nasze problemy kiedyœ siê skoñcz¹... te ci¹g³e walki... */
== LAVOK
@572 /* Marudz¹cy œmieæ. Twoja obecnoœæ zanieczyszcza moj¹ Kulê. */
END

INTERJECT_COPY_TRANS HELLJON 0 skieijonhell
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@573 /* Kolejny raz ten mag... <CHARNAME>, musimy siê go ju¿ pozbyæ. Je¿eli my tego nie zrobimy, to on pozbêdzie siê nas. Teraz ju¿ nie mamy gdzie uciec wiêc...wiêc... nie mo¿emy siê poddaæ. */
== HELLJON
@574 /* I po co sz³aœ za kimœ takim jak <CHARNAME>? Powinnaœ by³a siedzieæ w swoim domu, z dala od tych wszystkich ruin, z dala od Dzieci Bhaala. G³upie dziecko, nie wiesz na co siê zgodzi³aœ, prawda? */
== 1xSkieJ 
@575 /* Ja... */
== HELLJON
@576 /* Tak w³aœnie s¹dzi³em. */
== HELLJON
@577 /* Nie chcê marnowaæ mojej mocy na kogoœ tak ¿a³osnego jak ty. Masz okazjê, zostaw <CHARNAME>, a mo¿e uda ci siê st¹d wydostaæ. To nie twoja walka, zostaw to tym, którzy j¹ rozpoczêli. */
== 1xSkieJ 
@578 /* Mo¿e powinnam... */
== 1xSkieJ 
@579 /* ...ale nie mogê. Wiele zawdziêczam tej dru¿ynie. Nigdy nie pasowa³am na œwietnego poszukiwacza przygód...ale...ale potrafiê sobie radziæ! */
== HELLJON
@580 /* G³upie dziecko. Zmarnowa³aœ swoj¹ szanse. */
END

INTERJECT_COPY_TRANS SAMIA 0 skieisamia
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@581 /* W koñcu ktoœ inny... ktoœ bardziej... no, ona jest cz³owiekiem... mam nadziejê... */
== SAMIA
@582 /* Faktem jest, i¿ jestem cz³owiekiem. */
END

INTERJECT_COPY_TRANS RENAL 0 skieirenal
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@583 /* Imponuj¹cy cz³owiek. */
== RENAL
@584 /* Dziêkujê, panienko. */
END

INTERJECT_COPY_TRANS UDSILVER 0 skieiadalon
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@585 /* Ona jest piêkna! Ojej, te¿ bym chcia³a robiæ takie wra¿enie jak gdzieœ siê pojawiam. */
==UDSILVER
@586 /* Teraz ja mówiê, dziewcze. */
END

INTERJECT_COPY_TRANS UDSOLA01 0 skieisolau
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@587 /* (Skie z przera¿eniem przygl¹da siê temu drowowi.) */
== UDSOLA01
@588 /* Bu! */
==1xSkieJ
@589 /* Aaa! */
== UDSOLA01
@590 /* Iblith... */
END

INTERJECT_COPY_TRANS CARBOS 1 skiecarbos
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@591 /* Ale ona nawet nie umie siê ³adnie ubraæ... */
END

INTERJECT_COPY_TRANS UDDEMON 0 Skieuddem
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@592 /* To mi siê nie podoba. */
== UDDEMON
@593 /* Ju¿ za póŸno na odwrót, pierwszaku. */
END

INTERJECT_COPY_TRANS SHADEL 0 Skieshadel
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@594 /* To mi siê nie podoba... <CHARNAME>, mo¿e lepiej uciekajmy! */
==SHADEL
@595 /* Za póŸno, by uciekaæ. Niepotrzebnie wchodziliœcie na mój teren, niepotrzebnie zadzieraliœcie z Panem Cieni. I na co to wam by³o? */
END

INTERJECT_COPY_TRANS CEFALDOR 6 Skiefald
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@596 /* Ja ju¿ j¹ chyba gdzieœ widzia³am, <CHARNAME>... To znaczy... Czy my jej kiedyœ nie spotkaliœmy? */
==CEFALDOR
@597 /* SiedŸ cicho, g³upia idiotko. */
END

INTERJECT_COPY_TRANS RAELIS 71 Skieraelis
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@598 /* Cieszê siê, ¿e mogliœmy pomóc i poznaæ komuœ o tak...nietypowej urodzie. Ojej, mam nadziejê, ¿e tego nie us³ysza³a. */
==RAELIS
@599 /* Us³ysza³a i doœæ mi to schlebia. Dziêkujê. */
END

CHAIN
IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
IsGabber("SkieDV")
Global("SKIESALVANAS","LOCALS",0)~ THEN SALVANAS skiesalvanas
@600 /* Ach, co za piêkna dama postanowi³a odwiedziæ Salvanasa... Jesteœ piêkna, moja pani... Widaæ, i¿ jesteœ wysoko urodzona! */ DO ~SetGlobal("SKIESALVANAS","LOCALS",1)~
== 1xSKIEJ @601 /* Dziêkujê ci Salvanasie! Mi³o... mi³o ciê poznaæ! */
== SALVANAS @602 /* To mi mi³o, pani. Czy ta piêkna niewiasta podaruje uœmiech i ca³usa temu elfowi? */
== 1xSKIEJ @603 /* Ja... Ja sama nie wiem... */
== SALVANAS @604 /* Moja pani? (Uœmiecha siê.) */
== 1xSKIEJ @605 /* Na pewno jesteœ milszy od Eldotha... */ 
== SALVANAS @606 /* Eldotha...? */
== SALVANAS @607 /* Ja... eee... S³ysza³em od niego, ¿e masz... wszy ³onowe... Mo¿e... eee... Ja muszê teraz... eee... Policzyæ... klientów Diademu! Tak! W³aœnie! Ober¿ysta mnie o to poprosi³. */
EXIT

//Zadanie romansowe

INTERJECT_COPY_TRANS 1XSPR 0 SkieZadanieR
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@608 /* To tylko ja - Skie! Co siê sta³o? Wygl¹dasz jakby coœ zagra¿a³o twojemu ¿yciu. */
== 1XSPR @609 /* Ach, Skie! To jakiœ koszmar! */
== 1XSPR @610 /* Przygotowuje pewien pokaz... Wszystko sz³o doskonale! Wszystkie stroje, fryzury, stworzony ca³y klimat, a gdy przeszliœmy do detali... Okaza³o siê, ¿e zginê³y klejnoty naszych modelek! Prawdopodobnie zosta³y skradzione przez pewnego ³obuza. Bez tego ca³y pokaz legnie w gruzach... */
== 1xSkieJ @611 /* To straszne! Jestem pewien, ¿e wraz z <CHARNAME> odnajdziemy tego ³otra, a jak nie jego, to przyniesiemy ci takie same klejnoty. Powiedz mi dok³adnie co potrzebujesz. */
== 1XSPR @612 /* Per³ê, diament i kamieñ ³otrzyków. To mo¿e byæ trudne do odszukania, ale b³agam... Jak to nie wyjdzie to moja kariera i ¿ycie bêd¹ skoñczone! Ju¿ widzê, jak te demonice wbijaj¹ we mnie swoje sztuczne paznokcie i jak wieszaj¹ mnie na tych swoich przed³u¿anych kud³ach! One s¹ maniakalne! One potrafi¹ wezwaæ zaklinacza, by "piêknie mryga³y im siê w³osy na scenie"! Tak, one na prawdê tak mówi¹! */
== 1xSkieJ @613 /* Poszukamy ich! To znaczy klejnotów, nie zaklinaczy. Wiem, ¿e ca³a ta sytuacja musi byæ dla was frustruj¹ca! To straszne gdy gin¹ ulubione klejnoty! */
== 1XSPR @614 /* Trochê pyta³em o tego ³otra. Mówi¹, ¿e przedstawia³ siê jako "Bawidamek". By³ niziutki, zdawa³ siê szarmancki. Ponoæ chwali³ siê, ¿e nied³ugo ma zamiar wyjechaæ, ¿e musi siê ju¿ zbieraæ, bo czekaj¹ na niego w... no i tu dziewczêta ju¿ nie zapamiêta³y nazwy. */
== 1XSPR @615 /* Nie wiem no... to nie by³o znowu tak dawno temu, wiec mo¿e dopiero ma wyjechaæ? Na pewno nie bêdzie korzysta³ z drogi morskiej, wiêc mo¿e... no nie wiem... po prostu go znajdŸcie! */
== 1XSPR @616 /* Bêdê tutaj na was czeka³. */
END

///////////schody

INTERJECT_COPY_TRANS PLAYER1 2 skieatplay01
== 1xSkieJ IF ~InParty("SkieDV") Global("SkieRomanceActive","GLOBAL",2)~ THEN
@617 /* <CHARNAME>! Co siê dzieje? (Podbiega) */
== 1xSkieJ
@618 /* Ja...ja nie wiem jak mogê ci pomóc, ale proszê, trzymaj siê. Wszystko bêdzie dobrze! Musimy siê st¹d wydostaæ...musimy... */
== 1xSkieJ
@619 /* Nie widzê ¿adnych...okien, ani drzwi na zewn¹trz, ale st¹d musi byæ wyjœcie. Nie wierzê, ¿e to móg³by byæ koniec. Nie stracê ciê tak, jak straci³am papê. */
END

//Drzewo

INTERJECT PLAYER1 33 SkieTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("SKIEDV")~ THEN 
@620 /* (Widzisz stoj¹c¹ przed tob¹ Skie. Ta rozpieszczona córka Entara Srebrnej Tarczy pomaga³a ci ju¿ we Wrotach Baldura. Jej zdolnoœci przyda³y ci siê nie raz.) */
END
IF~~THEN REPLY @621 /* Skie, nie musisz ze mn¹ iœæ. */ EXTERN 1xSKIEJ SKIETREE1
IF~~THEN REPLY @622 /* Czy pomo¿esz mi w walce z Irenicusem? */ EXTERN 1xSKIEJ SKIETREE1
IF~Global("SkieRomanceActive","GLOBAL",2)~THEN REPLY @623 /* Skie, kocham ciê. Wiele razem przeszliœmy. Czy pomo¿esz mi jeszcze raz? */ EXTERN 1xSKIEJ SKIETREE2

APPEND 1xSkieJ

IF ~~ THEN BEGIN SKIETREE1
SAY @624 /* Ja... Bojê siê, ale wiem... Wiem, ¿e powinnam... nie wiem sama... ale... Tak. Postaram ci siê pomóc... Zejdziemy tam razem... Mam tylko nadziejê, ¿e nie zginê... */
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN SKIETREE2
SAY @625 /* Tak! Pomogê! S³ucha³eœ mnie, wiele razy pomog³eœ... Nie zostawiê ciê teraz. To wszystko by³o dla mnie bardzo wa¿ne. Bêdziemy mieli dziecko. To chyba oczywiste, ¿e ciê teraz nie zostawiê. */
COPY_TRANS PLAYER1 33
END
END