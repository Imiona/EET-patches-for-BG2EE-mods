BEGIN 1xSkieJ

////1

IF ~Global("SkieIsTalking","GLOBAL",0) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~ THEN BEGIN SkieFirstTalk
SAY @0 /* Ojej, jak to mi�o, �e mam okazj� z wami w�drowa�... W grupie tak ra�niej! No i si� nie zgubi�! No to co teraz? Hmm? */
IF~~THEN REPLY@1 /* Mam nadziej�, �e *ty* nie zgubisz *nas*... */ GOTO Skie01x01
IF~~THEN REPLY@2 /* Pewnie b�dziemy pr�bowali gdzie� zarobi�. */ GOTO Skie01x02
IF~~THEN REPLY@3 /* Nie wiem. Zobaczymy gdzie nas gwiazdy doprowadz�. */ GOTO Skie01x03
END

IF~~THEN BEGIN Skie01x01
SAY@4 /* Ojej, ja te� mam tak� nadziej�. Powiedz mi, �adnie dzi� wygl�dam? */
IF~~THEN REPLY @5 /* Tak! Jak zawsze! */ GOTO Skie01x04
IF~~THEN REPLY @6 /* Czy ja wiem... */ GOTO Skie01x05
IF~~THEN REPLY @7 /* Nie. */ GOTO Skie01x06
END

IF~~THEN BEGIN Skie01x04
SAY@8 /* To by�o mi�e! Dzi�kuj�. Jak tylko znajdziemy dobr� perfumeri�, kupi� ci jakie� wspania�e pachnid�o! */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x05
SAY@9 /* Nie podoba ci si�...? To na pewno przez t� fryzur�! */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x02
SAY@10 /* Och, mo�e si� przydam! Jak tylko napotkamy jakie� kuferki, ch�tnie je otworz�! Mam tylko nadziej�, �e nie po�amie przy tym paznokci. */
IF~~THEN REPLY @11 /* Te� mam tak� nadziej�. */ GOTO Skie01x07
IF~~THEN REPLY @12 /* Dzi�kuje, �e chcesz nam pomaga�. */ GOTO Skie01x08
END

IF~~THEN BEGIN Skie01x07
SAY@13 /* Szkoda by ich by�o... */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x08
SAY@14 /* Nie ma za co! Ch�tnie pomagam mi�ym osobom. */
IF~~THEN GOTO Skie01x09
END

IF~~THEN BEGIN Skie01x09
SAY @15 /* Wiesz, nie zawsze by�am taka uzdolniona! To lata ci�kiego treningu. Wiele razy gubi�am wszelkiego rodzaju kluczyki - od szuflad, od kosmetyczek, od mojej ulubionej pozytywki. Ile to ja si� nie nam�czy�am co by je otworzy�! */
IF~~THEN REPLY @16 /* To wyja�nia twoje niezwyk�e zdolno�ci. */ GOTO Skie01x10
IF~~THEN REPLY @17 /* I wtedy siedzia�a� i pr�bowa�a� otwiera� je wytrychami? */ GOTO Skie01x11
IF~~THEN REPLY @18 /* Skie, nie mamy czasu na tego typu bzdury. Ruszamy. */ GOTO Skie01x06
END

IF~~THEN BEGIN Skie01x10
SAY @19 /* No wi�c w�a�nie! Wiele razy prosi�am o pomoc kamerdynera, albo kuchark�, ale nigdy mi nie potrafili pom�c. */
IF~~THEN GOTO Skie01x12
END

IF~~THEN BEGIN Skie01x11
SAY @20 /* Oczywi�cie, �e nie! */
=
@21 /* Otwiera�am je pilnikiem do paznokci, a to o wiele trudniejsze! Gdy to mi si� nie udawa�o, stara�am si� u�ywa� wsuwek albo spinek. */
IF~~THEN GOTO Skie01x12
END

IF~~THEN BEGIN Skie01x12
SAY @22 /* Tata zawsze mi powtarza�, �e jestem roztrzepana jak nikt inny kogo spotka�. */
IF~~THEN REPLY @23 /* Ale ma to te� sw�j urok! */ GOTO Skie01x13
IF~~THEN REPLY @24 /* Nie mog� wytrzyma� tego biadolenia. B�agam, cisza! */ GOTO Skie01x06
IF~~THEN REPLY @25 /* Mog�o by� gorzej... */ GOTO Skie01x13
END

IF~~THEN BEGIN Skie01x13
SAY @26 /* No w�a�nie! */
=
@27 /* Teraz chyba jednak powinni�my rusza�. No to naprz�d! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN Skie01x03
SAY@28 /* Miejmy nadziej�, �e do jaki� dobrych sklep�w i do niez�ych przecen! */
IF~~THEN DO ~ SetGlobal("SkieIsTalking","GLOBAL",1) ~ EXIT
END

IF~~THEN BEGIN Skie01x06
SAY@29 /* Ej! Mo�na by� milszym dla kogo� takiego jak ja... */
IF~~THEN DO ~ SetGlobal("SkieIsTalking","GLOBAL",1) ~ EXIT
END

////2

IF~Global("SkieIsTalking","GLOBAL",2) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie02x00
SAY @30 /* Och, tyle w�drujemy... Au�! Chyba mam odciski... Jejku, jak ja dawno si� nie k�pa�am... Wiesz co posiada�am w domu? Co� o czym na pewno nigdy ci si� nie �ni�o... */
=
@31 /* Myd�o do k�pieli... o zapachu r�! Ach, t�skni� troch� za tymi wspania�o�ciami w moim domu... Zjad�abym sobie eklerk�, poczyta�a sobie o dalszych losach "Mirandy i Orlando"... */
=
@32 /* Ciekawe czy w ko�cu j� zdradzi�... */
IF~~THEN REPLY @33 /* Tak. Zdradzi� j� z Jolant�. Zdarzy�o mi si� si�gn�� po t� ksi��k�. */ GOTO Skie02x01
IF~~THEN REPLY @34 /* Zamknij si� albo poodrywam ci twoje zadbane paznokietki... */ GOTO Skie02x02
IF~~THEN REPLY @35 /* Skoro tak t�sknisz to po co w og�le pozostawi�a� Wrota Baldura za sob�? */ GOTO Skie02x03
END

IF~~THEN BEGIN Skie02x01
SAY @36 /* Och nie! Co za �otr... Przypomina mi Eldotha... Ale nie chc� o nim teraz rozmawia�... Post�pi� jak pod�y bydlak! Ja... Mam nadziej�, �e go nie spotkamy... */
IF~~THEN GOTO Skie02x04
END

IF~~THEN BEGIN Skie02x02
SAY @37 /* Nie! Nie pozwalam ci! To by by�o okropne! Zajmowa�am si� nimi ca�y poranek! */
=
@38 /* Zostaw mnie i moje paznokietki! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie02x03
SAY @39 /* To... Jako� tak wysz�o... Tata umar�... Nie chcia�am zosta� w posiad�o�ci Srebrnych Tarcz sama... To raczej nie dla mnie... Poza tym wyruszy�am te� maj�c nadziej�, �e poznam jakie� nowe materia�y i style... */
=
@40 /* Zawsz� o tym marzy�am... */
IF~~THEN GOTO Skie02x04
END

IF~~THEN BEGIN Skie02x04
SAY @41 /* Ja t�skni�am za w�drowaniem z tob�. To m�cz�ce, ale... musz� powiedzie�... No. ojejku! Po prostu ciekawe! */
=
@42 /* Te przygody... */
IF~~THEN REPLY @43 /* Tak, to co� za czym mo�na t�skni�. */ GOTO Skie02x05
IF~~THEN REPLY @44 /* Twoje zachowanie jest ca�kowicie dla mnie jasne. */ GOTO Skie02x05
IF~~THEN REPLY @45 /* (Nie m�w nic, jedynie kiwnij g�ow�.) */ GOTO Skie02x05
END

IF~~THEN BEGIN Skie02x05
SAY @46 /* Ojej! To mi�o, �e si� ze mn� zgadzasz! */
=
@47 /* A teraz ruszmy si� st�d. Och, przez ciebie si� u�miecham... B�d� mia�a zmarszczki mimiczne! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",3)~ EXIT
END

////3

IF~Global("SkieIsTalking","GLOBAL",4) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie03x00
SAY @48 /* Sko�czy� mi si� krem na zmarszczki... */
=
@49 /* Nie masz mo�e troch�, <CHARNAME>? */
=
@50 /* Powiedz, �e masz... */
IF~~THEN REPLY @51 /* Czy ty jeste� normalna?! */ GOTO Skie03x01
IF~~THEN REPLY @52 /* W�a�ciwie to mam... */ GOTO Skie03x01
IF~~THEN REPLY @53 /* Niestety... */ GOTO Skie03x01
END

IF~~THEN BEGIN Skie03x01
SAY @54 /* Och! Wiesz, nie chc� mie� pomarszczonej twarzy. Takiej jak na przyk�ad... na przyk�ad... */
=
@55 /* Quayle! */
IF~~THEN REPLY @56 /* Faktycznie, ten to by� do�� pomarszczony. */ GOTO Skie03x02
IF~~THEN REPLY @57 /* Wiesz, taki urok jego wieku. Ale za to by� taki *bystry*. */ GOTO Skie03x03
IF~~THEN REPLY @58 /* Nie mamy czasu na tego typu rozmowy. Powinni�my rusza� dalej. */ GOTO Skie03x04
END

IF~~THEN BEGIN Skie03x02
SAY @59 /* Widzisz, tak to jest jak cz�owiek...lub gnom, oczywi�cie...no jak nie umiej� o siebie zadba�. */
IF~~THEN GOTO Skie03x05
END

IF~~THEN BEGIN Skie03x03
SAY @60 /* Haha, faktycznie! To jego ci�g�e gadanie o bystro�ci. Wiesz, tak s�dz�, �e wcale nie jestem g�upsza ni� on. */
IF~~THEN GOTO Skie03x05
END

IF~~THEN BEGIN Skie03x05
SAY @61 /* Czasami si� zastanawiam co si� sta�o z tymi wszystkimi, z kt�rymi zdarzy�o nam si� w�drowa�. Jakby na to nie patrze�, to wiele razem prze�yli�my. No nie raz bola�a mnie przez nich g�owa, ale jednak zdarza�o si�, �e mi pomogli. */
=
@62 /* Mo�e trudno w to uwierzy�, ale nawet Jaheira mi pomog�a, gdy p�k�o mi wi�zanie przy jednej z bluzek. Ja te� jej pomog�am i zaproponowa�am jej maseczk� z b�ota - s�dzi�am, �e taki pomys� jej si� spodoba. W ko�cu zawsze kocha�a przyrod�, ale ta si� tylko na mnie dziwnie spojrza�a... */
=
@63 /* Mo�e nikt jej nigdy nie powiedzia�, �e jej si� zaczynaj� robi� zmarszczki. No nie wiem. */
IF~~THEN REPLY @64 /* To musia� by� widok! */ GOTO Skie03x06
IF~~THEN REPLY @65 /* Ty chyba sobie ze mnie �artujesz. Czy ty na prawd� opowiadasz mi o zmarszczkach...? Ju� lepiej ruszajmy. */ GOTO Skie03x07
IF~~THEN REPLY @66 /* Jaheir� nie ma co si� przejmowa�. Zawsze mia�a ci�ki charakter, a ju� na pewno nie docenia�a pot�gi makija�u. */ GOTO Skie03x08
END

IF~~THEN BEGIN Skie03x06
SAY @67 /* Czy ja wiem...to smutne jak kobieta o siebie nie dba. Na szcz�cie u niej jeszcze nie by�o tak tego wida�. Nawet mimo jej podesz�ego wieku! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN Skie03x07
SAY @68 /* No dobra, dobra. Ty to lubisz pogania�... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN Skie03x08
SAY @69 /* Mo�e masz racj�. Na szcz�cie u niej jeszcze nie by�o tak tego wida�, �e niezbyt wie jak si� za siebie wzi��. Nawet mimo jej podesz�ego wieku! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

IF~~THEN BEGIN Skie03x04
SAY @70 /* No dobrze... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",5)~ EXIT
END

////4

IF~Global("SkieIsTalking","GLOBAL",6) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie04x00
SAY @71 /* <CHARNAME>... Ja musz� ci co� wyzna�... Jednak... Wiesz to jest bardzo wa�na sprawa... To co� bardzo wa�nego, zar�wno dla mnie jak i dla ludzi... Czuj� jednak, �e jeste� osob� kt�rej mog� o tym powiedzie�... */
=
@72 /* Wiem, �e jest to w pewnym sensie... no... niszczenie kanonu pi�kna... ale to tak�e oszukiwanie ludzi! Musz� w ko�cu komu� o tym powiedzie�... */
=
@73 /* Jejku, jak ja si� boj�... Nikomu jeszcze o tym nie m�wi�am... Nie k�ami�! */
=
@74 /* Jednak zanim ci to powiem... B�agam ci�, na Wisiory Waukeen, obiecaj mi, �e nikomu o tym nie powiesz! To le�y mi na sercu, ale jak z kto� o tym nie us�yszy to chyba w ko�cu wybuchn�... */
IF~~THEN REPLY @75 /* Dobrze, bobrze! Obiecuj�! */ GOTO Skie04x01
IF~~THEN REPLY @76 /* Obiecuj�. M�w. */ GOTO Skie04x01
IF~~THEN REPLY @77 /* Niestety, nie mog� tego obieca�. */ GOTO Skie04x02
IF~~THEN REPLY @78 /* Skoro to takie wa�ne, to nie chce tego wiedzie�. Mo�liwe, i� to by mog�o wszystko zmieni�... */ GOTO Skie04x02
END


IF~~THEN BEGIN Skie04x01
SAY @79 /* Dzi�kuj�... */
=
@80 /* Ja jestem... */
=
@81 /* Blondynk�... */
=
@82 /* B�agam, nie patrz tak na mnie! Ja... Ej... Nie u�miechaj si� tak szyderczo! My... mo�e po prostu ju� ruszajmy... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",7)~ EXIT
END

IF~~THEN BEGIN Skie04x02
SAY @83 /* Ja... mimo wszystko musz� ci o tym powiedzie�... */
=
@80 /* Ja jestem... */
=
@81 /* Blondynk�... */
=
@84 /* B�agam, nie patrz tak na mnie! Ja... Ej... Nie u�miechaj si� tak szyderczo! Ja... mog�am o tym nie m�wi�... My... mo�e po prostu ju� ruszajmy... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",7)~ EXIT
END

///5

IF~Global("SkieIsTalking","GLOBAL",8) RealGlobalTimerExpired("SkiePCTalk","GLOBAL")~THEN BEGIN Skie05x00
SAY @85 /* O nie! Wszystko tylko nie to! */
=
@86 /* Czemu w�a�nie teraz...?! Czemu mnie spotykaj� takie rzeczy w najgorszych mo�liwych momentach?! Innym si� to przytrafia jak s� w domu, gdy maj� dost�p do czego� co mo�e pom�c, ale mnie to musi m�czy� w�a�nie teraz! Kurcze, ale ja jestem... w�ciek�a! */
=
@87 /* Wrr... */
IF~~THEN REPLY @88 /* Co si� sta�o? Zachowujesz si� jak nie ty... */ GOTO Skie05x01
IF~~THEN REPLY @89 /* Co� nie tak? */ GOTO Skie05x01
IF~~THEN REPLY @90 /* Daj nam wszystkim spok�j! */ GOTO Skie05x02
END


IF~~THEN BEGIN Skie05x01
SAY @91 /* (Skie podchodzi energicznie i szepcze ci na ucho.) */
=
@92 /* Dosta�am okres... */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",14)~ EXIT
END

IF~~THEN BEGIN Skie05x02
SAY @93 /* Wrr! Zmiata� ode mnie bo wam wszystkim natapiruje w nocy w�osy! */
IF~~THEN DO ~SetGlobal("SkieIsTalking","GLOBAL",14)~ EXIT
END

//////////////////////////////////////////////6

IF~Global("SkieRomanceTalk","GLOBAL",1) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie06x00
SAY @94 /* Hej, <CHARNAME>! Powiedz mi - no ale szczerze! Jak to si� dzieje, �e, no wiesz, pozwalasz mi dalej z tob� w�drowa�? Zazwyczaj ludzie ze mn� nie wytrzymuj� i ka�� sobie i��. Najgorsze, �e to zazwyczaj nie trwa za d�ugo. */
=
@95 /* Na oko po jaki� tak mniej wi�cej... */
=
@96 /* ...dw�ch godzinach. */
=
@97 /* No ale ja nie wiem o co im chodzi! Przecie ja jestem przydatna! No, ale pono� za du�o gadam, jestem irytuj�ca, a m�j g�os jest zbyt piskliwy... Czemu oni gadaj� takie rzeczy, <CHARNAME>? Przecie to nie prawda! Ja si� na prawd� staram. */
IF~~THEN REPLY @98 /* Wiesz, mo�e to... prawda? */ GOTO Skie06x01
IF~~THEN REPLY @99 /* A nie s�uchaj ich! Nie wiem o czemu m�wi� takie rzeczy. Jeste� raczej mi�� osob�. Prawd� m�wi�c, m�g�bym z tob� rozmawia� i rozmawia�! */ GOTO Skie06x02
IF~~THEN REPLY @100 /* Gadaj� g�upoty. Mi zawsze potrafisz poprawi� humor. Zdawa�o mi si�, �e to widzisz. */ GOTO Skie06x02
IF~~THEN REPLY @101 /* A w�a�nie, �e prawda! Ja... Ja nie wiem jak mog�em wytrzyma� z kim� takim jak ty przez tak d�ugi czas! Zmiataj i nie wracaj! */ GOTO Skie06x03
END

IF~~THEN BEGIN Skie06x01
SAY @102 /* Ty... Ty te� tak uwa�asz? Och, tylko nie znowu! B�agam, nie chce w�drowa� sama! Wtedy jest okropnie nudno i nie ma kto mi powiedzie�, jak si� rozczochram... */
IF~~THEN REPLY @103 /* Przykro mi, ale nie znios� wi�cej tego twojego pytlowania... wi�c... Spadaj! */ GOTO Skie06x03
IF~~THEN REPLY @104 /* Nie zrozum mnie �le. Mo�esz z nami w�drowa�, tylko b�d� troch� mniej rozgadana. */ GOTO Skie06x04
IF~~THEN REPLY @105 /* Ja przecie� �artuj�! Zawsze wiesz jak mi poprawi� humor. Chc� by� dalej z nami w�drowa�a. */ GOTO Skie06x05
END

IF~~THEN BEGIN Skie06x04
SAY @106 /* Ja... no chyba... Rozumiem. Och, przynajmniej dobrze, �e nie musz� odchodzi�. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",3) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie06x03
SAY @107 /* Wy... wy nie jeste�cie lepsi od tego drania Eldotha! Jak mo�ecie mi robi� co� takiego... Ja nawet nie wiem gdzie jest najbli�szy fryzjer! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",2) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Skie06x02
SAY @108 /* Och, ty nie �artujesz?! */
IF~~THEN REPLY @109 /* Nie...? */ GOTO Skie06x05
IF~~THEN REPLY @110 /* Hehe, oczywi�cie, �e nie, Skie. */ GOTO Skie06x05
IF~~THEN REPLY @111 /* Prawd� m�wi�c to... �artuje! Ha! Zmiataj st�d ma�a idiotko! Nie potknij si� o sw�j m�zg bo chyba go gdzie� zgubi�a�! */ GOTO Skie06x03
END

IF~~THEN BEGIN Skie06x05
SAY @112 /* Chyba nie spotka�o mnie nic milszego w calusim moim �yciu! To jest takie... Och, nawet nie wiem jak to wyrazi�! Czuje si� jak wtedy, gdy pierwszy raz by�am na pokazie mody z moim tat�! Nie do wiary! */
=
@113 /* Obiecuj� ci, �e od teraz mo�esz ze mn� rozmawia� o wszystkim! Zawsze ci� wys�ucham! Zawsze...! */
=
@114 /* ...zawsze... */
=
@115 /* Po prostu... */
=
@116 /* Zawsze! Ot tak! No nie wiem co innego mog� ci powiedzie�. Nie spodziewa�am si�, �e tak dobrze mi b�dzie z tob� w�drowa�. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",2)~ EXIT
END


///////////////////////////////////////////////7

IF~Global("SkieRomanceTalk","GLOBAL",3) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie07x00
SAY @117 /* Nie boisz si�, �e czasami przez to w�drowanie z�apiesz jakie�... wszy, albo inne paskudztwo? (Skie wzdryga si�.) Albo takie jakie� ma�e, skacz�ce i k�saj�ce pch�y! To by by�o co� strasznego! Och, jak ja si� ciesz�, �e nie z�apa�am nigdy czego� takiego! */
IF~~THEN REPLY @118 /* (Za�artuj) W�a�ciwie to chyba chodzi ci po ramieniu jedna z tych skacz�cych, ma�ych poczwar. */ GOTO Skie07x01
IF~~THEN REPLY @119 /* Nie, jako� si� tego nie boj�... */ GOTO Skie07x02
IF~~THEN REPLY @120 /* Stanowczo si� tego nie boj�. Mimo wszystko jednak zachowuje jak�� higien�! */ GOTO Skie07x02
END

IF~~THEN BEGIN Skie07x02
SAY @121 /* O rety! Ale ty jeste� odwa�ny! Ja tak sobie my�l�... Odwiedzamy, �mierdz�ce slumsy, brudne cmentarze... No i jakie� stare tawerny! Nie �ebym nie docenia�a tego, �e fundujesz nam noclegi, ale... Oj, wiesz co mam na my�li! */
=
@122 /* Pewnie w�a�cicieli tych tawern nie sta� na dobre odrobaczanie przynajmniej co tydzie�... */
IF~~THEN GOTO Skie07x03
END

IF~~THEN BEGIN Skie07x01
SAY @123 /* Aaaaaaaaaaaa! */
=
@124 /* Zdejmij to ze mnie! Zdejmij to ze mnie! Ratunkuuuuu! Na pomoooooc! Zdejmij to ze mnie, b�agam! */
=
@125 /* Ej ale... tutaj nic nie ma! Oj, chcia�e� mnie wystraszy�! No to ci si� uda�o! No to ju� widzisz, jak ja si� boje czego� takiego... Te wszystkie ma�e odn�a! */
IF~~THEN GOTO Skie07x03
END

IF~~THEN BEGIN Skie07x03
SAY @126 /* Ale tak czy siak, u robak�w najbardziej nie lubi� tych ich ma�ych gryz�cych z�bk�w... */
IF~~THEN REPLY @127 /* Tak w�a�ciwie to robaki nie maj� �adnych z�b�w. */ GOTO Skie07x04
IF~~THEN REPLY @128 /* Dobra, dobra rozumiem. Czas jednak by�my ruszali. */ GOTO Skie07x05
IF~~THEN REPLY @129 /* Robaki znane s� ze swoich ss�cych, k�uj�cych, pluj�cych i innych aparat�w g�bowych. Nie maj� �adnych z�b�w! */ GOTO Skie07x04
END

IF~~THEN BEGIN Skie07x04
SAY @130 /* Naprawd�? Ciekawe. To jak one gryz�? Gryzie si� z�bami? No w ostateczno�ci jakimi� protezami czy jak tam si� nazywaj� te ostatnie wynalazki... Ale jednak to dalej jakby nie patrze� z�by... */
=
@131 /* Po prostu tylko bardziej... sztuczne! */
=
@132 /* W ka�dym razie ruszajmy! No to hop ku przygodzie! A��! Moja noga... chyba zwichn�am kostk�... */
IF~~THEN REPLY @133 /* Pozw�l, �e na ni� spojrz�. */ GOTO Skie07x06
IF~~THEN REPLY @134 /* Musisz uwa�a�, Skie. Jeszcze zrobisz sobie krzywd�. */ GOTO Skie07x07
IF~~THEN REPLY @135 /* Idiotka. Po prostu brak mi s��w... */ GOTO Skie07x08
END

IF~~THEN BEGIN Skie07x05
SAY @136 /* Och, no dobrze! No to hop siup ku przygodzie! A��! Moja noga... chyba zwichn�am kostk�... */
=
@137 /* Nienawidz� tego... to boli. Nie poniesiesz mnie, prawda...? Ech... */
IF~~THEN REPLY @138 /* Pozw�l, �e na ni� spojrz�. Na nog�, to znaczy. */ GOTO Skie07x06
IF~~THEN REPLY @134 /* Musisz uwa�a�, Skie. Jeszcze zrobisz sobie krzywd�. */ GOTO Skie07x07
IF~~THEN REPLY @139 /* Wskakuj! */ GOTO Skie07x09
IF~~THEN REPLY @135 /* Idiotka. Po prostu brak mi s��w... */ GOTO Skie07x08
END


IF~~THEN BEGIN Skie07x06
SAY @140 /* Dobrze. Ja...dzi�kuj�. */
IF~~THEN REPLY @141 /* Wszystko wygl�da dobrze. Po prostu musisz uwa�a�, Skie. */ GOTO Skie07x07
IF~~THEN REPLY @142 /* Ale ty masz wielkie stopy! */ GOTO Skie07x08
END

IF~~THEN BEGIN Skie07x07
SAY @143 /* B�d� uwa�a�a. A teraz... ju� mo�e ruszajmy. Troch� mi g�upio, �e znowu ci� spowalniam. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",4)~ EXIT
END

IF~~THEN BEGIN Skie07x08
SAY @144 /* Przesta� si� ze mnie naigrywa�! Zostaw mnie! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",4) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie07x09
SAY @145 /* Ojej, dzi�kuj�! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",4)~ EXIT
END

//////////////////////////////////////////////8


IF~Global("SkieRomanceTalk","GLOBAL",5) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie08x00
SAY @146 /* Och, zjad�abym sobie troch� waty cukrowej... */
IF~~THEN REPLY @147 /* S�ucham...? */ GOTO Skie08x01
IF~~THEN REPLY @148 /* Waty cukrowej? */ GOTO Skie08x01
IF~~THEN REPLY @149 /* Czy ty na pewno jeste� normalna? */ GOTO Skie08x01
END

IF~~THEN BEGIN Skie08x01
SAY @150 /* No waty cukrowej. To takie dziwne? */
=
@151 /* Ach, rozumiem! Pewnie nie wiesz co to jest wata cukrowa! Widzisz to takie co� co jest takie no... jak wata! Tylko troch� bardziej si� lepi, jest s�odkie i mo�na to zjada�! W smaku jest po prostu jak cukier. To jest takie pyszniutkie! */
=
@152 /* Tylko trzeba uwa�a�! To bardzo zdradliwe! Mo�na od niej bardzo przyty� mimo, �e jest taka leciutka! */
=
@153 /* No, ale od czasu do czasu mo�na przecie� sobie troch� tego zje��! */
IF~~THEN REPLY @154 /* Nigdy nie przestaniesz mnie zadziwia�. */ GOTO Skie08x02
IF~~THEN REPLY @155 /* Tak to ju� jest ze wszelakiego rodzaju s�odko�ciami. */ GOTO Skie08x03
IF~~THEN REPLY @156 /* Przesta� ju� tyle gada�. */ GOTO Skie08x04
END

IF~~THEN BEGIN Skie08x02
SAY @157 /* Dzi�kuj�! Chyba... */
IF~~THEN GOTO Skie08x05
END

IF~~THEN BEGIN Skie08x03
SAY @158 /* Fakt! */
IF~~THEN GOTO Skie08x05
END

IF~~THEN BEGIN Skie08x05
SAY @159 /* Wiesz, tak mi przysz�a ochota na wat� cukrow�, bo zawsze gdy uda�o mi si� przekona� tat�, bym mog�a z nim wyjecha� w delegacj� to kupowa� mi wszelakie smako�yki. Zawsze m�wi�, �e warto bym pr�bowa�a nowych rzeczy skoro mam do tego okazj�. */
=
@160 /* Pami�tam jak zabra� mnie kiedy� na jarmark. Wiesz, nigdy nie by�am zbytnio zainteresowana jakimi� nie wiadomo jakimi atrakcjami. Po prostu lubi�am sp�dza� czas z moim tat�. Zawsze zdawa� si� by� surowy, zawsze krzycza� "znowu omin�a� zaj�cia", ale na wyjazdach by�o wida� kim na prawd� by�. */
=
@161 /* A by� moim tat�. */
IF~~THEN REPLY @162 /* To mi�o, �e tak go wspominasz. */ GOTO Skie08x06
IF~~THEN REPLY @163 /* Wiele miejsc razem odwiedzili�cie? */ GOTO Skie08x07
IF~~THEN REPLY @164 /* Czy oboje m�wimy o Entarze? */ GOTO Skie08x08
IF~~THEN REPLY @165 /* Nie mam ochoty wys�uchiwa� twoich rodzinnych historii. */ GOTO Skie08x09
END

IF~~THEN BEGIN Skie08x06
SAY @166 /* Chyba nie zosta�o mi nic innego. */
IF~~THEN GOTO Skie08x10
END

IF~~THEN BEGIN Skie08x07
SAY @167 /* Sembi�, Waterdeep, Dekapolis i Neverwinter. */
=
@168 /* Mo�e to nie jest wiele miejsce, ale to cztery wspania�e wyjazdy. */
IF~~THEN GOTO Skie08x10
END

IF~~THEN BEGIN Skie08x08
SAY @169 /* Tak. M�wi�am, �e jedynie zdawa� si� by� taki stanowczy. To znaczy, stanowczy to on mo�e by�, ale te� umia� by� fajnym pap�. */
IF~~THEN GOTO Skie08x10
END

IF~~THEN BEGIN Skie08x10
SAY @170 /* A ty jak wspominasz Goriona? */
IF~~THEN REPLY @171 /* Podobnie. By� wymagaj�cy, ale bez niego dawno by�bym ju� martwy. */ GOTO Skie08x11
IF~~THEN REPLY @172 /* To jedynie nudny, stary, a obecnie to ju� w�a�ciwie martwy m�czyzna. To przesz�o��, a ja nie lubi� wspomina� przesz�o�ci. */ GOTO Skie08x09
END

IF~~THEN BEGIN Skie08x11
SAY @173 /* To dobrze. */
=
@174 /* Ale wiesz co, teraz chyba powinni�my rusza�. Nie chcia�abym by� by� smutny czy co�. No to w drog�! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",6)~ EXIT
END

IF~~THEN BEGIN Skie08x09
SAY @175 /* Wiesz, to by�o troch� niemi�e. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",6) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie08x04
SAY @176 /* Ja nie wiedzia�am, �e ci� denerwuj�... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",6) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END
 

//////////////////////////////////////////////9



IF~Global("SkieRomanceTalk","GLOBAL",7) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie09x00
SAY @177 /* A wiesz, �e by�by� o wiele przystojniejszy gdyby� odrobin� zmieni� fryzur�? Patrz gdyby tutaj troszeczk� tak rozczochra�, tutaj uczesa� bardziej na t� stron�... No i widzisz? Troch� nie�adu i od razu wygl�dasz lepiej! (Skie wyjmuje lusterko i pokazuje ci jak wygl�dasz.) */
IF~~THEN REPLY @178 /* Nie, no tego ju� za wiele! Jednak nie powinni�my tyle rozmawia�. To mnie wyka�cza psychicznie! */ GOTO Skie09x01
IF~~THEN REPLY @179 /* Najgorzej to to nie wygl�da... */ GOTO Skie09x02
IF~~THEN REPLY @180 /* To mi si� podoba. Znasz si� na rzeczy, Skie. Dzi�kuj�. */ GOTO Skie09x02
IF~~THEN REPLY @181 /* Jest �adnie, ale chyba lepiej si� czuj� w swojej fryzurze, jednak nie chce by� wzi�a to jako� do siebie. */ GOTO Skie09x03
END

IF~~THEN BEGIN Skie09x02
SAY @182 /* Jejku, podoba ci si�? Jak ja si� ciesz�! Wiesz, wida�, �e masz bardzo silne i zdrowe w�osy. Nie wiem czy to ta twoja boska esencja czy co, ale zabi�abym by te� nie mie� tak silne cebulki w�os�w! Pewnie nigdy nie b�dziesz �ysie�! */
IF~~THEN GOTO Skie09x04
END

IF~~THEN BEGIN Skie09x03
SAY @183 /* Och... rozumiem. Nie martw si� mn�! Nawet tak wygl�dasz do�� schludnie i przyjemnie! Po prostu bardziej, jakby to nazwa�... Klasycznie! Nie oznacza to jednak, �e �le! Nie musisz pod��a� za trendami! Mo�esz przecie mie� sw�j styl! A poza tym m�wi si�, �e to co klasyczne nigdy nie wychodzi z mody, wi�c... */
IF~~THEN GOTO Skie09x04
END

IF~~THEN BEGIN Skie09x04
SAY @184 /* Czasami t�skni� za wieczorami u siebie w domu. Przychodzi�y do mnie Penelopa, Barbara i Papryczka. Ale tak na prawd�, to najbardziej t�skni�, za moj� mam�. */
IF~~THEN REPLY @185 /* Kim w�a�ciwie by�a twoja matka, Skie? */ GOTO Skie09x05
IF~~THEN REPLY @186 /* Ee... Twoja matka...? */ GOTO Skie09x05
IF~~THEN REPLY @187 /* Rozmawiali�my o twoim ojcu, ale nigdy o twojej matce. Opowiedz mi o niej, Skie. */ GOTO Skie09x05
IF~~THEN REPLY @188 /* Nie mam ochoty wys�uchiwa� o twoich problemach rodzinnych. */ GOTO Skie09x01
END

IF~~THEN BEGIN Skie09x05
SAY @189 /* By�a jedn� z lepszych tancerek we Wrotach Baldura i ca�ej okolicy. By�a bardzo pi�kna i wyrozumia�a. Na imi� jej by�o Eliss. Niestety jednak mia�a wypadek podczas jednego ze swoich wyst�p�w. */
=
@190 /* Kontuzja by�a bardzo powa�na... Zmar�a dwa dni p�niej... Jej organizm tego nie wytrzyma�. Jej uk�ad nerwowy... no i infekcja... Lekarze byli bezradni. */
IF~~THEN REPLY @191 /* Nie wiedzia�em, �e jeste� sierot�, Skie. Przykro mi. */ GOTO Skie09x06
IF~~THEN REPLY @192 /* Przepraszam, nie wiedzia�em. */ GOTO Skie09x06
IF~~THEN REPLY @193 /* Och, ach - co za tragedia, ale mo�emy ju� rusza�? */ GOTO Skie09x07
END

IF~~THEN BEGIN Skie09x06
SAY @194 /* Nic nie szkodzi. */
=
@195 /* Przepraszam, ale powinni�my jednak ju� rusza�. Nie rozmawiajmy teraz o tym... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",8)~ EXIT
END

IF~~THEN BEGIN Skie09x07
SAY @196 /* Jeste� besti� gorsz� nawet od Eldotha! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",8) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie09x01
SAY @197 /* Ale nie krzycz tak! Dobrze ju�... Dobrze... Jak chcesz. Przykro mi... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",8) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////////////////////////////10

IF~Global("SkieRomanceTalk","GLOBAL",9) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie10x00
SAY @198 /* Wiesz, chcia�am ci� tylko przeprosi� za swoje bablanie. Czasami mi trzeba przypomnie�, bym si� opanowa�a. Nie ka�dy ma ochot� gada� o moim �yciu, wi�c po prostu o tym zapomnijmy, dobrze? */
IF~~THEN REPLY @199 /* Ale ja nie mam nic przeciwko! */ GOTO Skie10x01
IF~~THEN REPLY @200 /* Dobrze, �e to m�wisz. Nie chcia�em ci o tym m�wi�, ale faktycznie za du�o gadasz. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x01
SAY @201 /* O, a tego to si� nie spodziewa�am! */
=
@202 /* Dzi�kuj�. Wiesz jak kiedy� b�dziesz chcia� o czym� porozmawia�, to zawsze mo�esz na mnie liczy�. Nawet jak to b�dzie co� bardzo kr�puj�cego! Nawet jak b�dzie to dotyczy�o �uszcz�cej si� sk�ry! Nawet jak b�dzie to dotyczy�o...szkorbutu! */
IF~~THEN REPLY @203 /* Och, na szcz�cie nie mam szkorbutu i si� na to nie zanosi. Jem du�o owoc�w. */ GOTO Skie10x03
IF~~THEN REPLY @204 /* Zapami�tam to sobie. Mo�emy te� rozmawia� o liszajach? */ GOTO Skie10x04
IF~~THEN REPLY @205 /* Nie jestem zainteresowany zwierzaniem si� komu� takiemu jak ty. */ GOTO Skie10x02
END 

IF~~THEN BEGIN Skie10x03
SAY @206 /* O to dobrze! Nie musimy si� obawia�, �e przytyjesz, albo �e zapadniesz na jakie� dziwne choroby, kt�rych nazw nawet nie wym�wi�. */
IF~~THEN GOTO Skie10x05
END

IF~~THEN BEGIN Skie10x04
SAY @207 /* Och... */
=
@208 /* Je�eli b�dziesz mia� tak� potrzeb�, ale wtedy chyba lepiej rozmawia� ze specjalist�. */
IF~~THEN GOTO Skie10x05
END

IF~~THEN BEGIN Skie10x05
SAY @209 /* Wiesz, chyba jeszcze z nikim nie rozmawia�am o mojej matce - nawet z Papryk�, a to zazwyczaj z ni� najwi�cej zdarza�o mi si� rozmawia�. */
IF~~THEN REPLY @210 /* To dla mnie wiele znaczy. */ GOTO Skie10x06
IF~~THEN REPLY @211 /* Jestem zawsze do us�ug. */ GOTO Skie10x06
IF~~THEN REPLY @212 /* Nie we�miesz mnie na takie sentymentalne bzdury. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x06
SAY @213 /* Dzi�kuj�. Rany, to takie... dziwne, ale jako� mi l�ej. */
IF~~THEN REPLY @214 /* To przez to, �e razem rozmawiamy. Chyba. */ GOTO Skie10x07
IF~~THEN REPLY @215 /* To pewnie dlatego, �e dawno nie jedli�my. */ GOTO Skie10x08
IF~~THEN REPLY @216 /* B�d� ju� cicho. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x07
SAY @217 /* Na prawd�? Tak mo�na czu� si� dzi�ki rozmowie...rany, nawet diety nie daj� takiego efektu! */
IF~~THEN GOTO Skie10x09
END

IF~~THEN BEGIN Skie10x08
SAY @218 /* Faktycznie, nawet nie zauwa�y�am. Ale przecie� nie jeste�my na diecie. */
IF~~THEN GOTO Skie10x09
END

IF~~THEN BEGIN Skie10x09
SAY @219 /* Nagle nabra�am ochoty na co� s�odkiego. Chyba nic si� nam nie stanie jak zjemy sobie po kawa�ku czekolady, prawda? Oj, to jeszcze nikogo nie zabi�o, wi�c chyba nie ma co si� martwi�. Zamknij oczy, otw�rz buzi�! */
IF~~THEN REPLY @220 /* No dobrze, dobrze. */ GOTO Skie10x10
IF~~THEN REPLY @221 /* Ju� si� robi. (k�amstwo) */ GOTO Skie10x11
IF~~THEN REPLY @222 /* Daruj to sobie. Powinni�my rusza�. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x10
SAY @223 /* (Skie wk�ada ci do buzi kawa�ek s�odkiej czekolady) */
IF~~THEN GOTO Skie10x12
END

IF~~THEN BEGIN Skie10x11
SAY @224 /* Oszukujesz! No ale niech ci b�dzie... i tak dostaniesz. (Skie daje ci kawa�ek czekolady) */
IF~~THEN GOTO Skie10x12
END

IF~~THEN BEGIN Skie10x12
SAY @225 /* Trzyma�am j� na wypadek z�ego humoru, ale taka okazja jest chyba r�wnie dobra. Tylko sobie nie my�l, �e si� ob�eram s�odyczami, gdy nikt nie patrzy! Nie mam ju� wi�cej! */
IF~~THEN REPLY @226 /* Dobra, dobra. Przecie� ci� znam. */ GOTO Skie10x13
IF~~THEN REPLY @227 /* Nigdy bym nie powiedzia�, �e si� opychasz czekolad�. Jeste� za szczup�a. */ GOTO Skie10x14
IF~~THEN REPLY @228 /* Nudzisz mnie. Ruszajmy. */ GOTO Skie10x02
END

IF~~THEN BEGIN Skie10x13
SAY @229 /* Ale ja m�wi� prawd�! Ech, ty to jeste�... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",10)~ EXIT
END

IF~~THEN BEGIN Skie10x14
SAY @230 /* Pewnie m�wisz to ka�dej! No a teraz ruszajmy. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",10)~ EXIT
END

IF~~THEN BEGIN Skie10x02
SAY @231 /* Nienawidze, gdy tak m�wisz. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",10) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END



//////////////////////////////////////////////11

IF~Global("SkieRomanceTalk","GLOBAL",11) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie11x00
SAY @232 /* <CHARNAME>, czy mog� pomalowa� ci paznokcie? */
IF~~THEN REPLY @233 /* A czy wygl�dam na kogo� kto lubi przebiera� si� za kobiet�? */ GOTO Skie11x01
IF~~THEN REPLY @234 /* A w sumie... czemu nie! */ GOTO Skie11x02
IF~~THEN REPLY @235 /* Nie no to ju� jest szczyt... Czy ty jeste� kompletn� idiotk� ze swoj� ukochan� wat� cukrow� zamiast m�zgu? */ GOTO Skie11x03
END

IF~~THEN BEGIN Skie11x01
SAY @236 /* No... chyba nie... Ojejku no, chcia�am zapyta�! */
=
@237 /* Poka� mi przynajmniej swoje d�onie. (Skie natychmiast chwyta jedn� z twoich r�k i zaczyna j� ogl�da�.) */
IF~~THEN GOTO Skie11x04
END

IF~~THEN BEGIN Skie11x02
SAY @238 /* Och, dzi�kuj�! (Skie bierze jedn� z twoich r�k, wyjmuje wszelkiego rodzaju przyrz�dy do piel�gnacji d�oni. Zaczyna u�ywa� jakiego� rodzaju farby z malutkich flakonik�w, aby zmieni� barwy twoich paznokci.) */
=
@239 /* (Efektem jest d�o� o ka�dym paznokciu innego koloru.) Hmm... Nie wiem, kt�ry do ciebie najbardziej pasuje... */
IF~~THEN GOTO Skie11x04
END

IF~~THEN BEGIN Skie11x04
SAY @240 /* Jakie ty masz pi�kne d�onie! Jest w nich co� magicznego... Delikatne, ale silne. Zadbana sk�ra, jednak z kilkoma bliznami. Uwielbiam ogl�da� d�onie r�nych ludzi... Dzi�ki temu mo�na odgadn�� ich charakter... ich osobowo��... mo�e nawet ich dusz�! */
=
@241 /* Ale pewnie ci� jedynie zanudzam... przepraszam. */
IF~~THEN REPLY @242 /* Nie, w�a�ciwie to co powiedzia�a� by�o takie inne. Chyba jednak nie jeste� tak� osob� na jak� wygl�dasz na pierwszy rzut oka. */ GOTO Skie11x05
IF~~THEN REPLY @243 /* Jakby na to nie patrze�, troch� przynudzasz... W�a�ciwie to nie tyle przynudzasz to jeste� irytuj�c� idiotk�... No ale na to chyba nie ma lekarstwa... */ GOTO Skie11x03
END

IF~~THEN BEGIN Skie11x05
SAY @244 /* Dzi�kuj�, <CHARNAME>. Wiem jak ludzie zazwyczaj mnie widz�! Jednak mog� chyba mie� kilka oblicz i wszystko zale�y od sytuacji... */
=
@245 /* (M�wi�c to Skie potyka si�.) */
=
@246 /* A�a! Teraz znowu b�dzie bole� mnie stopa... Ruszajmy... Au�... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",12)~ EXIT
END

IF~~THEN BEGIN Skie11x03
SAY @247 /* Nie jeste� mi�y... Zostaw mnie, brutalu... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",12) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////////////////////////////12


IF~Global("SkieRomanceTalk","GLOBAL",13) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie12x00
SAY @248 /* Och, straszliwie mnie bol� stopy... <CHARNAME>, czemu nosimy takie ci�kie torby. */
IF~~THEN REPLY @249 /* Uznaj to za trening przed wielkimi zakupami. */ GOTO Skie12x01
IF~~THEN REPLY @250 /* Musimy zbiera� r�ne przedmioty i je p�niej sprzeda� na Promenadzie lub gdzie indziej. Potrzebujemy pieni�dzy. */ GOTO Skie12x02
IF~~THEN REPLY @251 /* �eby g�upi mia� zagadk�. */ GOTO Skie12x03
END

IF~~THEN BEGIN Skie12x01
SAY @252 /* No, mo�e ci� to zdziwi, ale ja nie tylko chodz� na zakupy. */
IF~~THEN GOTO Skie12x04
END

IF~~THEN BEGIN Skie12x02
SAY @253 /* Tak, tak - wiem. Chodzi o to, �e to na prawd� ci�kie. */
IF~~THEN GOTO Skie12x04
END

IF~~THEN BEGIN Skie12x04
SAY @254 /* W domu takie rzeczy nosili za mnie r�ni ludzie taty, ja zajmowa�am si� troch� innymi rzeczami. Zawsze chcieli bym robi�a nie wiadomo jakie rzeczy, bym zna�a wiele j�zyk�w. */
IF~~THEN REPLY @255 /* Ale to nie brzmi zbyt ci�ko... */ GOTO Skie12x05
IF~~THEN REPLY @256 /* Rodzice tak maj� - zmuszaj� dzieci do wielu zaj��, ale to dlatego, �e chc� dla nich jak najlepiej. */ GOTO Skie12x06
IF~~THEN REPLY @257 /* Oj, uwa�aj bo jeszcze si� spocisz... */ GOTO Skie12x03
END

IF~~THEN BEGIN Skie12x05
SAY @258 /* Mo�e nie brzmi, ale to by�o ci�kie. Chodzi�am na treningi baletu, kt�re mog�y trwa� nawet pi�� godzin. */
IF~~THEN GOTO Skie12x07
END

IF~~THEN BEGIN Skie12x06
SAY @259 /* No tak, ale nie mia�am nawet czasu by sobie spokojnie wyj�� z dziewczynami na targ czy do ligi kupieckiej. */
IF~~THEN GOTO Skie12x07
END

IF~~THEN BEGIN Skie12x07
SAY @260 /* No, ale je�eli kiedy� b�dziemy musieli wtopi� si� w t�um w jakim� pa�acu, czy na balu, to przynajmniej wtedy b�d� mog�a si� na co� przyda�. */
=
@261 /* Ale takie rzeczy chyba niezbyt cz�sto si� zdarzaj�...no c�. */
IF~~THEN REPLY @262 /* Nie martw si�, nie musisz mi udowadnia�, �e jeste� przydatna. */ GOTO Skie12x08
IF~~THEN REPLY @263 /* Nie. Nie potrzebuj� pomocy kogo� takiego jak ty, dobrze sobie radz� nawet gdy ci� nie ma w pobli�u. */ GOTO Skie12x03
END

IF~~THEN BEGIN Skie12x08
SAY @264 /* Dzi�kuj�...(ca�uje ci� w policzek) */
IF~~THEN REPLY @265 /* A...to by�o...niespodziewane. */ GOTO Skie12x09
IF~~THEN REPLY @266 /* Nigdy wi�cej tego nie r�b! Chyba si� troch� zagalopowa�a�. */ GOTO Skie12x03
IF~~THEN REPLY @267 /* Ca�a przyjemno�� po mojej stronie, pani. */ GOTO Skie12x09
END

IF~~THEN BEGIN Skie12x09
SAY @268 /* Chyba si� zarumieni�. Nie patrz na mnie, pewnie jestem ca�a czerwona! */
=
@269 /* Ale...wiesz, z ch�ci� z tob� zn�w porozmawiam...pewnie nied�ugo. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",14)~ EXIT
END

IF~~THEN BEGIN Skie12x03
SAY @270 /* Nie wiedzia�am, �e jeste�...taki. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",14) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////////13

IF~Global("SkieRomanceTalk","GLOBAL",15) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie13x00
SAY @271 /* Jestem ciekawa co si� sta�o z Eldothem... */
IF~~THEN REPLY @272 /* Jak to si� w�a�ciwie sta�o, �e ju� razem nie w�drujecie? */ GOTO Skie13x01
IF~~THEN REPLY @273 /* Przymkniesz si� w ko�cu? */ GOTO Skie13x02
END

IF~~THEN BEGIN Skie13x01
SAY @274 /* Och, to by�o co� strasznego. Pami�tasz jak po��czyli�my si�y we Wrotach Baldura? Tyle czasu wtedy w�drowali�my razem, ale... jemu zale�a�o na niewielu rzeczach... tylko na alkoholu, kurtyzanach i na czym� co mo�na od czasu do czasu wy�mia�. */
=
@275 /* ...czyli na mnie. Ja... Ja nie wiem czemu mu ufa�am! On tylko bawi� si� moj� naiwno�ci�! W ko�cu przesadzi�. Jednej nocy on... On mnie uderzy� bo nie chcia�am go pie�ci�. Nie wiedzia�am co robi�! Ja... uciek�am w nocy... */
=
@276 /* Wiem tylko, �e teraz rozpowiada o mnie pewnie jakie� okropne rzeczy... No ale na to nic nie poradz�. */
IF~~THEN REPLY @277 /* Dobrze zrobi�a�. Przykro mi, �e co� takiego ci� spotka�o. */ GOTO Skie13x03
IF~~THEN REPLY @278 /* I dobrze ci tak. */ GOTO Skie13x02
IF~~THEN REPLY @279 /* �ajdak! Nie martw si�, Skie. Tak jest lepiej! */ GOTO Skie13x03
END

IF~~THEN BEGIN Skie13x03
SAY @280 /* Dzi�kuj�, �e tego wys�ucha�e�, <CHARNAME>... Mi�o jest wiedzie�, �e nie wszyscy maj� mnie za idiotk�. */
=
@281 /* Powinni�my rusza�. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",16)~ EXIT
END

IF~~THEN BEGIN Skie13x02
SAY @282 /* Jeste� dla mnie bardzo niesprawiedliwy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",16) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

//////////////////////////////////////////////14

IF~Global("SkieRomanceTalk","GLOBAL",17) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie14x00
SAY @283 /* Powiedz mi, <CHARNAME>, o czym marzysz? Och, na pewno masz jakie� swoje marzenie. */
IF~~THEN REPLY @284 /* Zawsze chcia�em przesta� w�drowa�, wybudowa� dom w �rodku lasu... no i sp�odzi� dziecko oczywi�cie! */ GOTO Skie14x01
IF~~THEN REPLY @285 /* Zawsze chcia�em prowadzi� swoj� karczm�. To by by�o co�! */ GOTO Skie14x01
IF~~THEN REPLY @286 /* Chcia�bym mie� wi�cej czasu na przygl�danie si� niebu, gwiazdom i chmurom... */ GOTO Skie14x01
IF~~THEN REPLY @287 /* Chcia�bym wr�ci� do Candlekeep. */ GOTO Skie14x01
IF~~THEN REPLY @288 /* S�dz�, �e chcia�bym w ko�cu odszuka� swoj� prawdziw� mi�o��... */ GOTO Skie14x01
IF~~THEN REPLY @289 /* C� zawsze marzy�em �eby� si� zamkn�a. */ GOTO Skie14x02
END

IF~~THEN BEGIN Skie14x02
SAY @290 /* My�la�am, �e... �e b�dziesz inny ni� Eldoth! Jeste�... jeste� takim samym �otrem! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",19) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie14x01
SAY @291 /* To...pi�kne! Chcia�abym by uda�o ci si� je spe�ni�. Marzenia potrafi� podtrzyma� cz�owieka na duchu. Potrafi� nawet zmieni� �ycie! Cz�owiek bez marzenia jest jak kobieta bez ani jednych szpilek... dobrze, �e Jaheira tego nie s�yszy. W ka�dym razie bez marze� cz�owiek jest jaki� taki...mniej ludzki. */
=
@292 /* Ja kiedy� marzy�am o tym by zosta� projektantk� sukni balowych no i oczywi�cie innych stroj�w te�! My�la�am kiedy� by spyta� si� pewnego projektanta czy przypadkiem nie mog�abym z nim troch� popracowa�, ale obawiam si�, �e to by by�o trudne... */
=
@293 /* Ale przecie go pozna�e�! To ten od zbroi! No wiesz... W slumsach z nim rozmawiali�my! Mam pro�b�... Wpadnijmy do niego! Jestem ciekawa co porabia. Znajdziemy go w Dzielnicy Rz�dowej. Zawsze lubi� tam siedzie� przy fontannie i projektowa�. */
IF~~THEN REPLY @294 /* Dobrze. Zobaczmy co robi ten tw�j projektant. */ GOTO Skie14x03
IF~~THEN REPLY @295 /* Nie b�d� lata� bo dzielnicach Athkatli bo idiotka chce si� zobaczy� ze swoim znajomkiem! */ GOTO Skie14x02
END

IF~~THEN BEGIN Skie14x03
SAY @296 /* Och, dzi�kuj� ci, <CHARNAME>! To wspaniale! Ruszajmy! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",18)~ EXIT
END

///Party Has Gems

IF~PartyHasItem("MISC42") PartyHasItem("MISC36") PartyHasItem("MISC45") Global("SkieAdditionalQTalk","LOCALS",0)~THEN BEGIN SKIEPHG
SAY @297 /* Doskonale! Mamy je! Ruszajmy teraz do naszego przyjaciela. Bez tych kamieni jego pokaz si� nie uda! */
IF~~THEN DO ~SetGlobal("SkieAdditionalQTalk","LOCALS",1)~ EXIT
END


////////////////////////////////////////////////15

IF~Global("SkieRomanceActive","GLOBAL",1) Global("SkieRomanceTalk","GLOBAL",18) Global("SkieRomanceQuest","GLOBAL",5) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie15x00
SAY @298 /* Ciesz� si�, �e mog�am pom�c mojemu przyjacielowi w pokazie mody, ale... chyba si� te� czego� nauczy�am... Czego� o sobie. */
IF~~THEN REPLY @299 /* Tak? Musz� przyzna�, �e jestem ciekaw. */ GOTO Skie15x01
IF~~THEN REPLY @300 /* (U�miechnij si�.) Ch�tnie o tym pos�ucham. */ GOTO Skie15x01
IF~~THEN REPLY @301 /* Wiesz, niezbyt mnie to interesuje. */ GOTO Skie15x02
END

IF~~THEN BEGIN Skie15x01
SAY @302 /* Widzisz, naprawd� lubi� projektowanie, ale... Podr�owanie z tob� jest takie... ekscytuj�ce! Widzisz to odkrywanie siebie, te przygody, no i... (Skie rumieni si�.) */
=
@303 /* Po prostu lubi� z tob� podr�owa�. Wiesz, jeste� o wiele lepszy ni� Eldoth. Jeste� wyrozumia�y, lubisz rozmawia�... */
=
@304 /* Przy tobie czuj� si� o wiele lepiej. Bezpieczniej. */
IF~~THEN REPLY @305 /* Nie my�l wi�cej o nim, Skie. Eldoth by� taki, a nie inny, ale teraz nie musisz si� nim przejmowa�. */ GOTO Skie15x03
IF~~THEN REPLY @306 /* I ja z tob� czuj� si� o wiele lepiej, Skie. */ GOTO Skie15x03
IF~~THEN REPLY @307 /* Skie, naprawd� to mnie nie obchodzi... */ GOTO Skie15x02
END

IF~~THEN BEGIN Skie15x03
SAY @308 /* Dzi�kuj�. Czasami �a�uj�, �e spotka�am Eldotha... Wola�abym pierw pozna� ciebie. Wtedy od razu wiedzia�abym kim on jest, jaki z niego cz�owiek. Z tob� wszystko jest takie... */
=
@309 /* Po prostu nie wiem jak to nazwa�! Pewnie masz ochot� si� ze mnie �mia�... */
IF~~THEN REPLY @310 /* Skie, dopiero teraz mam okazj� pozna� ci� z innej strony, zauwa�y� co� innego ni� rozpieszczon� smarkul�. */ GOTO Skie15x04
IF~~THEN REPLY @311 /* Nie, Skie. Nie mam ochoty si� �mia�. Czemu skoro mog� w ko�cu ci� pozna�? */ GOTO Skie15x04
IF~~THEN REPLY @312 /* Nie mog� uwierzy� jak� idiotk� jeste�. */ GOTO Skie15x02
END

IF~~THEN BEGIN Skie15x04
SAY @313 /* (Skie rumieni si�.) */
=
@314 /* My... powinni�my rusza�... Ale tu komar�w... nie pozw�lmy by... by nas pogryz�y! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",19)~ EXIT
END

IF~~THEN BEGIN Skie15x02
SAY @315 /* Ale... My... My nie powinni�my chyba wi�cej rozmawia�... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",19) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

////////////////////////////////////////////////16

IF~Global("SkieRomanceTalk","GLOBAL",20) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie16x00
SAY @316 /* (Skie zdaje si� ostatnio bardziej zamy�lona i przy tym niezwykle roztargniona. Czasami zerka w twoj� stron�, ale szybko odwraca wzrok kiedy wasze spojrzenia spotykaj� si�.) */
=
@317 /* (Nagle wasze spojrzenia spotykaj� si� ponownie. Skie zdaje si� zak�opotana. Przez swoje zagapienie Skie nagle uderza g�ow� w konar drzewa i l�duje na ziemi.) */
=
@318 /* (Patrzy z ziemi na ciebie, jej twarz zaczerwieni�a si�. Szybko wstaje, u�miecha si� i szybko rusza dalej.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",21)~ EXIT
END

///////////////////////////////////////////////17

IF~Global("SkieRomanceTalk","GLOBAL",22) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie17x00
SAY @319 /* Czy znasz jakie� orientalne, albo ma�o znane j�zyki? */
IF~~THEN REPLY @320 /* Jako <pro_race> znam j�zyk swojej rasy. No ale jakie jeszcze... Troch� te z kt�rymi mog�em si� spotka� podczas podr�y. */ GOTO Skie17x01
IF~~THEN REPLY @321 /* Jedynie wsp�lny. */ GOTO Skie17x01
IF~~THEN REPLY @322 /* Nigdy nie b�d� m�wi� twoim j�zykiem, debilko, je�eli o to pytasz. */ GOTO Skie17x02
END

IF~~THEN BEGIN Skie17x01
SAY @323 /* Ja uczy�am si� kilku j�zyk�w jeszcze w czasach gdy mieszka�am w posiad�o�ci Srebrnych Tarcz. Uczy�am si� przyk�adowo... */
=
@324 /* O wiem! Kara-turia�skiego! Jeszcze podstawy j�zyka staro�ytnych, ale szczerze... nic z tego ju� nie pami�tam. To by�o tak dawno temu, a i nie by�y to fascynuj�ce lekcje. O wiele bardziej lubi�am chocia�by histori� sztuki. No i nawet nie wspomn� o historii mody! */
=
@325 /* Te czasy kiedy mieszka�am w posiad�o�ci... Lubi�am obserwowa� jak s�o�ce zachodzi, a jego ostatnie promyki odbijaj� si� od mur�w i �cian Wr�t Baldura. Zupe�nie jak z pejza�y impresjonist�w... */
=
@326 /* Pewnie brzmi� jak g�upia romantyczka. C�, mo�e po cz�ci ni� jestem. Ojej, pewnie chcesz ju� rusza� dalej... */
IF~~THEN REPLY @327 /* Prawd� m�wi�c... Mo�e to dziwne, ale chcia�bym ci� przytuli�. Mog�? */ GOTO Skie17x03
IF~~THEN REPLY @328 /* (U�miechnij si�) Ruszajmy. */ GOTO Skie17x04
IF~~THEN REPLY @329 /* Romantyczna - nie, g�upia - tak. Ruszamy. Znowu marnujemy czas. */ GOTO Skie17x02
END

IF~~THEN BEGIN Skie17x03
SAY @330 /* (Skie u�miecha si� i przytula ci�. S�odki zapach jej sk�ry przypomina ci wasze pierwsze spotkanie w siedzibie Srebrnych Tarcz.) */
=
@331 /* (Skie szepce.) Dzi�kuj�. �e tu jeste�. To dla mnie wiele znaczy. Od czas�w �mierci mojego ojca... Ja... W ko�cu mog� spokojnie odetchn��. Nie by�am nigdy tak odwa�na jak ty... Ja... */
=
@332 /* (Skie rozlu�nia u�cisk.) My powinni�my rusza�... Tak... W�a�nie... Ruszajmy mo�e co� kupi�... albo co� takiego... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",23) SetGlobalTimer("SkieRomanceRestTime","GLOBAL",1200)~ EXIT
END

IF~~THEN BEGIN Skie17x04
SAY @333 /* (Skie nie�mia�o si� u�miecha.) Dobrze, tylko jeszcze chcia�am powiedzie�... */
=
@334 /* Dzi�kuj�. �e tu jeste�. To dla mnie wiele znaczy. Od czas�w �mierci mojego ojca... Ja... W ko�cu mog� spokojnie odetchn��. Nie by�am nigdy tak odwa�na jak ty... Ja... */
=
@335 /* Ale m�wi�e�, �e chcesz ju� rusza�... My ruszajmy... To dobry pomys�... Tak... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",23) SetGlobalTimer("SkieRomanceRestTime","GLOBAL",1200)~ EXIT
END

IF~~THEN BEGIN Skie17x02
SAY @336 /* My�la�am, �e co� nas ��czy, ale ty... (Oczy Skie wype�niaj� si� �zami.) Ruszajmy... Zostaw mnie, prosz�... Zostaw... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",23) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////////////18

IF~Global("SkieRomanceActive","GLOBAL",1) Global("SkieRomanceTalk","GLOBAL",23) GlobalTimerExpired("SkieRomanceRestTime","GLOBAL")~THEN BEGIN Skie18x00
SAY @337 /* (Skie zdaje si� mie� koszmary. Jej ruchy s� nerwowe a jej oddech przyspieszony.) Nie... Prosz�, ja nic nie mog�am zrobi�... Tato... Nie...! Ja nie mog�am... */
IF~~THEN REPLY @338 /* Skie, to tylko sen! (Szturchnij j� lekko.) */ GOTO Skie18x01
IF~~THEN REPLY @339 /* (Nie bud� Skie. Po�� si� obok niej i przytul do siebie.) */ GOTO Skie18x02
IF~~THEN REPLY @340 /* (Zignoruj j�.) */ GOTO Skie18x03
END

IF~~THEN BEGIN Skie18x03
SAY @341 /* (Skie przez kilka chwil szamocze si�. Nagle budzi si� z st�umionym krzyku a jej oczy wype�nione s� �zami.) */
=
@342 /* (Skie rozgl�da si� zdenerwowana. Wida�, �e stara si� ukry� przed innymi swoje zdenerwowanie wywo�ane nocnymi marami. Szybko zbiera swoje rzeczy i powraca do reszty dru�yny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie18x02
SAY @343 /* (Skie przez chwile odpycha si� od ciebie, lecz po chwili poddaje si�. �za sp�ywa po jej policzku i spada na twoj� d�o�.) */
=
@344 /* (Teraz dziewczyna zdaje si� spokojna, wtula si� w twoj� klatk� piersiow�. Twoje ramiona tworz� pier�cie� chroni�cy kruch� dziewczyn�.) */
=
@345 /* (Zasypiacie razem na kolejnych kilka godzin.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) RestParty()~ EXIT
END

IF~~THEN BEGIN Skie18x01
SAY @346 /* (Skie pr�dko otwiera swoje oczy.) */
=
@347 /* Ja... Ojcze, co si� sta�o... Ojcze... */
IF~~THEN REPLY @348 /* Skie, to by� jedynie z�y sen. Jeste� bezpieczna... */ GOTO Skie18x04
IF~~THEN REPLY @349 /* Na bog�w, co ci si� �ni�o, dziewczyno? To wygl�da�o jak atak epileptyczny! */ GOTO Skie18x04
END

IF~~THEN BEGIN Skie18x04
SAY @350 /* To by� m�j ojciec... Ten sen... to by�o takie realistyczne... takie straszne... */
=
@351 /* Jedli�my razem kolacj� - ja, ojciec, moja matka i s�u�ka Serianna... Nagle m�j ojciec zacz�� si� zmienia� w jedn� z tych koszmarnych istot - sobowt�rniaka... Jego sk�ra p�ka�a jak przypalana piecze�... Zabi� moj� matk�... Oderwa� jej g�ow� po czym wgryz� si� w szyj� Serianny... */
=
@352 /* Potem on zacz�� z ni�... Nie mog� tego opowiada�... to za wiele... to... */
IF~~THEN REPLY @353 /* Wszystko ju� dobrze... To pewnie przez wydarzenia z Wr�t... (Przytul j�.) */ GOTO Skie18x05
IF~~THEN REPLY @354 /* Co za g�upota! Pozbieraj si� do kupy dziewczyno! */ GOTO Skie18x06
IF~~THEN REPLY @355 /* (Przytul Skie.) */ GOTO Skie18x05
END

IF~~THEN BEGIN Skie18x05
SAY @356 /* Prosz�, czy mo�emy odpocz�� kilka kolejnych godzin... I... czy mo�esz ze mn� zosta�...? Boje si� znowu zamkn�� oczy... */
IF~~THEN REPLY @357 /* Dobrze. Odpoczniemy jeszcze troch�. */ GOTO Skie18x07
IF~~THEN REPLY @358 /* Zbierz si� do kupy, a nie j�kasz si� i marudzisz! Musimy rusza�! */ GOTO Skie18x06
END

IF~~THEN BEGIN Skie18x07
SAY @359 /* Dzi�kuj�. (Skie z odrobin� niepewno�ci zamyka oczy.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) RestParty()~ EXIT
END

IF~~THEN BEGIN Skie18x06
SAY @360 /* Dobrze... Ruszajmy... (Skie - dalej roztrz�siona - wstaje i zbiera swoje rzeczy.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",24) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////19

IF~Global("SkieRomanceTalk","GLOBAL",25) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie19x00
SAY @361 /* Ja chcia�am ci podzi�kowa�, �e ze mn� wtedy by�e�... �e mog�am jeszcze odpocz��, �e czuwa�e� przy mnie... Sny... sny o moim zmar�ym ojcu czasami wracaj�... Ja... (Skie wygl�da na zak�opotan�.) */
IF~~THEN REPLY @362 /* Prosz�, pozw�l... (Zbli� si� by poca�owa� Skie.) */ GOTO Skie19x01
IF~~THEN REPLY @363 /* Nie musisz nic m�wi�. Po prostu chod� tu, ma�a. (Zbli� si� by poca�owa� Skie.) */ GOTO Skie19x01
IF~~THEN REPLY @364 /* Przez ciebie nie mog�em spa�. Staraj si� to pokona�, bo b�dziemy musieli si� rozsta�. */ GOTO Skie19x02
END

IF~~THEN BEGIN Skie19x02
SAY @365 /* Przepraszam... Postaram si� nie przeszkadza� ci wi�cej... Teraz... Teraz ruszajmy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",26) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN Skie19x01
SAY @366 /* (Skie pozwala by twoje usta zetkn�y si� z jej ustami. Czujesz, �e pocz�tkowo obawia�a si� tej chwili, ale nagle tw�j poca�unek zostaje odwzajemniony przez kolejny tym razem zainicjowany przez dziewczyn�.) */
=
@367 /* (Po chwili oddala swoj� twarz na kilka centymetr�w.) Ciesz� si�, �e do tego dosz�o, <CHARNAME>... */
IF~~THEN REPLY @368 /* (U�miechnij si�.) Gdzie si� podzia�a wystraszona Skie? */ GOTO Skie19x03
IF~~THEN REPLY @369 /* Skie... To chyba nie by� najlepszy pomys�... Ta sytuacja mi przeszkadza... */ GOTO Skie19x02
END

IF~~THEN BEGIN Skie19x03
SAY @370 /* (Skie odwzajemnia u�miech.) Chyba posz�a na zakupy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",26) SetGlobalTimer("SkieRomanceRestTime","GLOBAL",1200)~ EXIT
END


//////////////////////////////////////////20

IF~Global("SkieRomanceActive","GLOBAL",1) Global("SkieRomanceTalk","GLOBAL",26) GlobalTimerExpired("SkieRomanceRestTime","GLOBAL")~THEN BEGIN Skie20x00
SAY @371 /* (Budzi ci� Skie kt�ra chwil� przed obudzeniem si� reszty dru�yny cicho przybiega do twojego pos�ania, k�adzie si� obok ciebie i delikatnie ca�uje w policzek.) */
IF~~THEN REPLY @372 /* Skie, chcia�bym to teraz z tob� zrobi�. Pozw�l mi, prosz�. (Pog�ad� dziewczyn� po policzku.) */ GOTO Skie20x01 
IF~~THEN REPLY @373 /* Ja chc� spa� idiotko... Daj mi teraz spok�j... Id� malowa� paznokcie albo co... */ GOTO Skie20x02
END

IF~~THEN BEGIN Skie20x01 
SAY @374 /* (Skie nic nie m�wi, jedynie kiwa kiwa g�ow� po czym ca�uje delikatnie twoje usta. Jest to bardziej mu�ni�cie wargami, ni� nami�tny poca�unek, ale wiesz, �e nie�mia�o�� dziewczyny nie pozwala jej na nic wi�cej. Dalej w ciszy u�miecha si� zezwalaj�c tym samym na twoje kolejne ruchy...) */
=
@375 /* (Delikatnie rozpinasz ubranie dziewczyny i po chwili zatapiacie si� w sobie niczym ksi�yc zatapia si� w morzu gwiazd.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",27) RestParty()~ EXIT
END

IF~~THEN BEGIN Skie20x02
SAY @376 /* (Oczy Skie wype�niaj� si� �zami i bez wypowiadania jakiegokolwiek s�owa ucieka do swojego pos�ania.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",27) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END


//////////////////////////////////////////21

IF~Global("SkieRomanceTalk","GLOBAL",27) Global("SkieRomanceActive","GLOBAL",1)~THEN BEGIN Skie21x00
SAY @377 /* <CHARNAME>, mo�e to g�upie, �e ci to m�wi�, ale... to by� m�j pierwszy raz... Ojej, pewnie teraz sobie my�lisz, �e jestem dzieciakiem, kt�ry b�dzie to prze�ywa� i nie wiadomo co... ale... ale... no to chyba b�dzie troch� jednak prawd�... */
IF~~THEN REPLY @378 /* Skie, to po prostu by�o co� wa�nego. Co ca�kiem naturalne. */ GOTO Skie21x01
IF~~THEN REPLY @379 /* I tak pewnie lepiej pami�tasz swoj� pierwsz� sk�rzan� torebk�... */ GOTO Skie21x02
IF~~THEN REPLY @380 /* To by�a jaka� wielka pomy�ka... Jakbym by� pijany! Zapomnij o tym co robili�my. */ GOTO Skie21x03
END

IF~~THEN BEGIN Skie21x02
SAY @381 /* Hej, nie �artuj sobie! Tak pami�tam j�, ale to co� zupe�nie innego! Co� zupe�nie... (Skie spuszcza swoj� g�ow� zawstydzona.) */
IF~~THEN REPLY @382 /* Skie, przecie� sobie �artuj�! To naturalne, �e tak si� czujesz! */ GOTO Skie21x01
IF~~THEN REPLY @383 /* Bo widzisz, to by�a jaka� wielka pomy�ka... Prosz�, zapomnij o tym co robili�my. */ GOTO Skie21x03
END

IF~~THEN BEGIN Skie21x03
SAY @384 /* To jaki� koszmar... Ja... To... Ja musz� odej��... To jaki� koszmar... (Skie podnosi swoje rzeczy i ucieka szybko.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",28) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Skie21x01
SAY @385 /* Dzi�kuj�... Pewnie masz racj�... */
=
@386 /* Ja nigdy nie pozwoli�am Eldothowi na to by... No wiesz, co mam na my�li... Ja czu�am, �e to nie jest dobre... Ba�am si� chyba, �e to wszystko jest po to... �e on chcia� tylko... */
IF~~THEN REPLY @387 /* Rozumiem. Nie musisz te� tego wspomina�. To stare czasy. */ GOTO Skie21x04
IF~~THEN REPLY @388 /* Ju� nic nie m�w. To przesz�o�� kt�r� zakopali�my oboje. */ GOTO Skie21x04
IF~~THEN REPLY @389 /* Oj ju� si� zamknij! Stara�em si� wytrzyma� to biadolenie, ale to jednak niewykonalne! */ GOTO Skie21x03
END

IF~~THEN BEGIN Skie21x04
SAY @390 /* (Skie u�miecha si�, zbli�a twoj� twarz do twojej...) */
=
@391 /* (...nagle podchodz�c potyka si� i przypadkowo wymierza ci kolanem cios w krocz�. Odruchowo pochylasz si� z b�lu trzymaj�c si� za swoj� m�sko��.) */
=
@392 /* Ja... Ja przepraszam! Nie chcia�am...! To... to... musi bole�... My... ruszajmy po prostu... Tak chyba b�dzie najbezpieczniej... */
IF~~THEN REPLY @393 /* Nic... Nic si� nie... sta�o... Po prostu ruszajmy... */ GOTO Skie21x05
IF~~THEN REPLY @394 /* (Kiwnij jedynie g�ow� i staraj si� i�� ignoruj�c b�l.) */ GOTO Skie21x05
END

IF~~THEN BEGIN Skie21x05
SAY @395 /* (Zarumieniona Skie do��cza do dru�yny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",28)~ EXIT
END

///////////////////////////////////////22

IF~Global("SkieRomanceTalk","GLOBAL",29) Global("SkieRomanceActive","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimer","GLOBAL")~THEN BEGIN Skie22x00
SAY @396 /* Chcia�abym ci co� da�, ukochany... Widzisz, to s� r�kawice mojego ojca... Zabra�am je z Wr�t Baldura... On si� bez nich nie rusza�... Chcia�abym by� teraz ty je nosi�... To mo�e niewiele, ale... Po prostu chcia�abym by� je mia�... */
IF~~THEN REPLY @397 /* Dzi�kuj�. To wiele dla mnie znaczy. To b�dzie dla mnie zaszczyt nosi� r�kawice Entara. */ GOTO Skie22x01
IF~~THEN REPLY @398 /* Nie zbieram �mieci. */ GOTO Skie22x02
END

IF~~THEN BEGIN Skie22x01
SAY @399 /* To mi�o, �e tak m�wisz. To jedyne co mi po nim zosta�o. Prosz�, dbaj o nie. */
=
@400 /* Ruszajmy, ukochany... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",30) SetGlobal("SkieRomanceActive","GLOBAL",2) GiveItemCreate("SKIER",Player1,0,0,0)~ EXIT
END

IF~~THEN BEGIN Skie22x02
SAY @401 /* Nie wierz�, �e tak m�wisz po tym wszystkim... to powiedzia�o mi co� nowego o tobie... Prosz�, nie odzywaj si� do mnie... Nigdy... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalk","GLOBAL",30) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

/////////////////////////////////////////TotDG

IF~AreaCheck("ARLDV2") Global("SkieTotDGStan","GLOBAL",0)~THEN BEGIN SkieTotDG000
SAY @402 /* Ojej. Od tych wszystkich kolor�w zaczyna mi si� kr�ci� w g�owie. Z jednej strony jako� tu �adnie, ale z drugiej... */
IF~~THEN REPLY @403 /* Wiem co masz na my�li. Troch� si� tu czuj� jak w klatce na myszy. */ GOTO SkieTotDG001
IF~~THEN REPLY @404 /* Przynajmniej mamy okazj� pozna� ciekawe miejsce. */ GOTO SkieTotDG002
IF~~THEN REPLY @405 /* Nie mamy czasu na czcze gadanie, Skie. Ruszajmy. */ GOTO SkieTotDG003
END

IF~~THEN BEGIN SkieTotDG001
SAY @406 /* Tutaj nawet nie ma porz�dnego sklepu, nie ma nieba... dziwne to wszystko. */
IF~~THEN GOTO SkieTotDG004
END

IF~~THEN BEGIN SkieTotDG002
SAY @407 /* No tak, ciekawe. Troch� przyt�aczaj�ce, ale ciekawe. */
IF~~THEN GOTO SkieTotDG004
END

IF~~THEN BEGIN SkieTotDG004
SAY @408 /* Wszystko si� tu zmienia jak w kalejdoskopie. Tak si� m�wi, prawda? Tylko nie jestem do ko�ca pewna co to jest kalejdoskop. */
IF~~THEN REPLY @409 /* Wygl�da jak luneta, ale w �rodku zamiast zwyczajnych szkie� s� r�nokolorowe szkie�ka, kt�re uk�adaj� si� w r�ne kszta�ty. */ GOTO SkieTotDG005
IF~~THEN REPLY @410 /* Prawd� m�wi�c to te� nie wiem co to jest, ale chyba nie ma si� czym przejmowa�. */ GOTO SkieTotDG006
IF~~THEN REPLY @411 /* Nie b�dziemy marnowa� czasu na rozmowy o zabawkach. */ GOTO SkieTotDG003
END

IF~~THEN BEGIN SkieTotDG005
SAY @412 /* A to musz� ci powiedzie�, �e nawet dobrze my�la�am, ale nie chcia�am paln�� czego� g�upiego. */
IF~~THEN GOTO SkieTotDG007
END

IF~~THEN BEGIN SkieTotDG006
SAY @413 /* Tak na prawd� to mi si� chyba zdaje, �e wiem, ale nie jestem pewna... to chyba takie d�ugie co� z r�nymi kolorowymi...chyba szkie�kami. Ale g�owy nie dam! */
IF~~THEN GOTO SkieTotDG007
END

IF~~THEN BEGIN SkieTotDG007
SAY @414 /* Wiesz ju� jak st�d uciekniemy? */
IF~~THEN REPLY @415 /* A mo�e tu zostaniemy? (mrugnij) */ GOTO SkieTotDG008
IF~~THEN REPLY @416 /* Co� na pewno wymy�limy. Dziecka Bhaala i modnej towarzyszki nic nie zatrzyma. */ GOTO SkieTotDG009
IF~~THEN REPLY @417 /* Nie wiem, a to nie pora na gadanie. */ GOTO SkieTotDG003
IF~~THEN REPLY @418 /* Co� si� wymy�li. */ GOTO SkieTotDG009
END

IF~~THEN BEGIN SkieTotDG008
SAY @419 /* Tylko nie to... ju� czuj�, �e mnie zaczyna bole� g�owa... */
IF~~THEN DO ~SetGlobal("SkieTotDGStan","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieTotDG009
SAY @420 /* Zrobimy wszystko, aby si� st�d wydosta�...! */
=
@421 /* ...ale chyba dzi� nie zasn�... */
IF~~THEN DO ~SetGlobal("SkieTotDGStan","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieTotDG003
SAY @422 /* Nie krzycz! I tak ju� boli mnie g�owa... */
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
SAY @423 /* Jakie� dziwne tu maj� zwyczaje. Nie jestem pewna czego oni od ciebie chc�, <CHARNAME>. Uwa�aj, dobrze? */
IF~~THEN REPLY @424 /* Jasne. Nie martw si�, Skie. Mo�e dowiem si� od nich jak uciec. */ GOTO SkieTouchDG001
IF~~THEN REPLY @425 /* O mnie si� nie martw, to ty tutaj zawsze wpadasz w k�opoty, wi�c mnie nie pouczaj. */ GOTO SkieTouchDG002
END

IF~~THEN BEGIN SkieTouchDG001
SAY @426 /* Mo�e masz racj�. Przepraszam, nie powinnam ci m�wi� kiedy masz uwa�a� i na co... Po prostu to miejsce przyprawia mnie o migren� i chc� ju� by� w domu. To znaczy nie we Wrotach, tylko w normalnym �wiecie! */
=
@427 /* Ale ty wiesz o co mi chodzi. Po prostu ruszajmy. Musi by� st�d wyj�cie. */
IF~~THEN REPLY @428 /* Nie martw si�, zrobi� co w mojej mocy. A tymi lud�mi si� nie przejmuj. */ GOTO SkieTouchDG003
IF~~THEN REPLY @429 /* Dotyk - bo tak ma na imi� - mo�e co� o tym wszystkim wiedzie�. Co� na pewno si� od nich dowiem i uda nam si� uciec. */ GOTO SkieTouchDG003
IF~~THEN REPLY @216 /* B�d� ju� cicho. */ GOTO SkieTouchDG002
END

IF~~THEN BEGIN SkieTouchDG003
SAY @430 /* Obiecujesz? */
IF~~THEN REPLY @431 /* Hehe, oczywi�cie, Skie. Zaufaj mi. */ GOTO SkieTouchDG004
IF~~THEN REPLY @432 /* Nic ci nie b�d� obiecywa�. Nie naciskaj. */ GOTO SkieTouchDG002
IF~~THEN REPLY @433 /* (Kiwnij g�ow�) */ GOTO SkieTouchDG004
END

IF~~THEN BEGIN SkieTouchDG004
SAY @434 /* Dzi�kuj�. */
IF~~THEN DO ~SetGlobal("SkieTotDGRom","GLOBAL",1)~ EXIT
END 

IF~~THEN BEGIN SkieTouchDG002
SAY @435 /* Ale m�g�by� by� milszy. */
IF~~THEN DO ~SetGlobal("SkieTotDGRom","GLOBAL",1)~ EXIT
END 

/////////////////////////////////////////DRAGON

IF~Dead("FIRKRA02") AreaCheck("AR1203") Global("SkieDragon","GLOBAL",0)~THEN BEGIN SkieFir000
SAY @436 /* Co to by�o?! Co... co?! Jak?! Moja g�owa... */
IF~~THEN REPLY @437 /* No c�, m�wi�c j�zykiem w miar� prostym, mo�na by to nazwa� cholernie silnym czerwonym smokiem o nieprzyzwoicie gor�cym oddechu. */ GOTO SkieFir001
IF~~THEN REPLY @438 /* I mnie chyba zaczyna bole� g�owa. Od bardzo dawna nie nie do�wiadczyli�my tego typu walki. */ GOTO SkieFir002
IF~~THEN REPLY @439 /* Nie mam ochoty teraz dyskutowa�. Mamy lepsze rzeczy do roboty - chocia�by zaj�cie si� naszymi poparzeniami. */ GOTO SkieFir003
END

IF~~THEN BEGIN SkieFir001
SAY @440 /* Ty chyba sobie ze mnie �artujesz! To by�o wielkie! A ty jeszcze... rany... */
IF~~THEN GOTO SkieFir004
END

IF~~THEN BEGIN SkieFir002
SAY @441 /* I mam nadziej�, �e ju� nigdy nie b�dziemy walczy� z czym� takim... */
IF~~THEN GOTO SkieFir004
END

IF~~THEN BEGIN SkieFir004
SAY @442 /* Ale my ju� chyba nigdy nie napotkamy na co� takiego, prawda? Powiedz, �e ju� nigdy. */
IF~~THEN REPLY @443 /* Wiesz, smok tu, lisz tam, a i jeden z demonicznych ksi�ciuni�w si� pewnie trafi. */ GOTO SkieFir005
IF~~THEN REPLY @444 /* Z pewno�ci� b�dziemy omija� tego typu gady. Tego typu bestiom m�wimy kategoryczne 'nie'! */ GOTO SkieFir006
IF~~THEN REPLY @445 /* Ruszajmy dalej. */ GOTO SkieFir003
END

IF~~THEN BEGIN SkieFir005
SAY @446 /* ... */
=
@447 /* Nie, ty �artujesz. Oczywi�cie. My nigdy nie b�dziemy walczy� z takimi istotami, to...to pewne. Tak, to pewne. */
IF~~THEN GOTO SkieFir007
END

IF~~THEN BEGIN SkieFir006
SAY @448 /* Och, jak to mi�o s�ysze� takie s�owa. Od razu mi si� l�ej zrobi�o... */
IF~~THEN GOTO SkieFir007
END

IF~~THEN BEGIN SkieFir007
SAY @449 /* Mo�e przynajmniej znajdziemy przy nim co� ciekawego, a pieni�dze wydamy na jakie� przyjemno�ci. Najlepiej perfumy. */
=
@450 /* Ale teraz...mo�e ju� sobie st�d p�jdziemy? Chyba nie chc� ju� d�u�ej patrze� na to miejsce. */
IF~~THEN REPLY @451 /* Doskonale wiem co masz na my�li. */ GOTO SkieFir008
IF~~THEN REPLY @452 /* Tylko pierw si� rozejrzymy. */ GOTO SkieFir009
END

IF~~THEN BEGIN SkieFir008
SAY @453 /* No ju� id�my...b�agam... */
IF~~THEN DO ~SetGlobal("SkieDragon","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieFir009
SAY @454 /* Ale szybko...Ja ju� chc� sobie i��... */
IF~~THEN DO ~SetGlobal("SkieDragon","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieFir003
SAY @455 /* Po prostu st�d id�my... */
IF~~THEN DO ~SetGlobal("SkieDragon","GLOBAL",1)~ EXIT
END

/////////////////////////////////////////MaeVar

IF~Dead("MAEVAR") AreaCheck("AR0301") Global("SkieMVTalk","GLOBAL",0)~THEN BEGIN SkieMaex00
SAY @456 /* Wiesz, jak na naszego wroga, to by� zadziwiaj�co dobrze ubrany. Dobrze mu by�o w tej czerni. */
IF~~THEN REPLY @457 /* Tylko to by�aby� zdolna do pochwa�y stylu m�czyzny, kt�ry mia� zamiar nas zamordowa�. */ GOTO SkieMaex01
IF~~THEN REPLY @458 /* No, a teraz jest jedynie kup� wybebeszonych...bebech�w. */ GOTO SkieMaex02
IF~~THEN REPLY @459 /* Nie mamy na to czasu. */ GOTO SkieMaex03
END

IF~~THEN BEGIN SkieMaex01
SAY @460 /* Ale to �le? Jakby nie patrze�, to potrafi� si� ubra�. Mo�e nie by� jako� doskonale zbudowany, ale ta jego zbroja dobrze podkre�la�a kszta�t jego klatki piersiowej. */
IF~~THEN GOTO SkieMaex04
END

IF~~THEN BEGIN SkieMaex02
SAY @461 /* Fuj, co za paskudne por�wnanie. To by�o jakie� takie...niesmaczne. */
IF~~THEN GOTO SkieMaex04
END

IF~~THEN BEGIN SkieMaex04
SAY @462 /* Wiesz, on przypomina� mi troch� jednego z tych ludzi Sarevoka... pami�tasz? Taki co trzeba by�o go szuka� pod Sp�onion� Syren�. */
IF~~THEN REPLY @463 /* A tak. Chyba si� nazywa� Slythe, albo co� w tym stylu. */ GOTO SkieMaex05
IF~~THEN REPLY @464 /* By� kto� taki, ale nie pami�tam jego imienia. */ GOTO SkieMaex06
IF~~THEN REPLY @465 /* Nie pami�tam nikogo takiego, a ponadto to do�� ma�o istotne. */ GOTO SkieMaex07
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
SAY @468 /* On mi przypomina� tego ca�ego Mae'Vara. Troch� szkoda, �e tak samo sko�czyli. */
=
@469 /* Wiesz, czasami mi szkoda tych wszystkich ludzi, kt�rych zabijamy, ale chyba nie mamy innego wyboru, prawda? */
IF~~THEN REPLY @470 /* Albo oni, albo my, Skie. */ GOTO SkieMaex09
IF~~THEN REPLY @471 /* Chcia�bym by by�o inaczej, ale niestety inaczej nie mo�na. */ GOTO SkieMaex10
IF~~THEN REPLY @472 /* To ich wina, �e pchaj� si� nam na ostrza. */ GOTO SkieMaex10
END

IF~~THEN BEGIN SkieMaex09
SAY @473 /* Och... to mo�e jednak lepiej, �e to oni tak padaj�... */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieMaex10
SAY @474 /* Skoro tak m�wisz... Pewnie masz racj�. */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieMaex07
SAY @475 /* Och, no dobrze... to... a, mo�e po prostu ruszajmy. Ju� sama nie pami�tam o co mi chodzi�o. */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieMaex03
SAY @476 /* No dobra, ju� dobra... */
IF~~THEN DO ~SetGlobal("SkieMVTalk","GLOBAL",1)~ EXIT
END

////////////////////////////////////////COPPER

IF~AreaCheck("AR0406") Global("SkieCopTalk","GLOBAL",0)~THEN BEGIN CopSkiex00
SAY @477 /* Ale tu �mierdzi. To miejsce raczej dla Eldotha, ni� ludzi jak my, wi�c mo�e p�jdziemy? Jestem pewna, �e s� inne tawerny, a... mo�e i nie b�dzie tam pche� ani wszy. Prosz�...? */
IF~~THEN REPLY @478 /* Mamy tutaj do za�atwienia spraw�, a mo�e nawet dwie, wi�c musisz to jako� prze�y�. */ GOTO CopSkiex01
IF~~THEN REPLY @479 /* Czy istnieje co� takiego jak Faeru�ski dzie� bez marudzenia? Bo jak tak, to nie mog� si� go doczeka�. */ GOTO CopSkiex02
IF~~THEN REPLY @480 /* Zr�bmy co musimy i si� wynosimy. Idziemy. */ GOTO CopSkiex03
END

IF~~THEN BEGIN CopSkiex01
SAY @481 /* Ale w�a�nie si� obawiam, �e tego nie prze�yj�. Te wszystkie pch�y mnie zjedz� na miejscu. */
IF~~THEN GOTO CopSkiex04
END

IF~~THEN BEGIN CopSkiex02
SAY @482 /* Jak mam nie marudzi�, jak jestem pewna, �e pch�y zjedz� nas �ywcem?! */
IF~~THEN GOTO CopSkiex04
END

IF~~THEN BEGIN CopSkiex04
SAY @483 /* Ale tak na prawd�, to wiesz...s�ysza�am o takim przypadku! To w�a�nie Eldoth mi o tym powiedzia�. Pono� po�o�y� si� w ��ku, kiedy us�ysza� przera�liwy krzyk na �o�u obok! Powiedzia�, �e zosta�y po nim tylko gatki... */
=
@484 /* Wiesz, on chyba m�wi�, �e to by�o w...Miedzianym Diademie. A mo�e Miedziowym Tandemie? */
IF~~THEN REPLY @485 /* Wiesz, powinna� mie� nadziej�, �e to by�o o Miedzowym Tandemie, bo w Miedzianym Diademie w�a�nie si� znajdujemy. */ GOTO CopSkiex05
IF~~THEN REPLY @486 /* Ju� si� tak nie martw. Wszystko b�dzie dobrze. Ja...nie wiem jak nazywa si� to miejsce, ale to na pewno by�o gdzie indziej. Ruszajmy. */ GOTO CopSkiex06
END

IF~~THEN BEGIN CopSkiex05
SAY @487 /* Co...? */
=
@488 /* No to jestem zgubiona... */
IF~~THEN DO ~SetGlobal("SkieCopTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN CopSkiex06
SAY @489 /* Dobrze, ale pr�dko. Ju� mam wra�enie, �e wszystkie wszy z tych wszystkich ludzi si� na mnie patrz�... */
IF~~THEN DO ~SetGlobal("SkieCopTalk","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN CopSkiex03
SAY @70 /* No dobrze... */
IF~~THEN DO ~SetGlobal("SkieCopTalk","GLOBAL",1)~ EXIT
END

/////////////////////////////////////////ZAMIANA

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceSlayer","GLOBAL",0)~THEN BEGIN SkieZBx00
SAY @490 /* <CHARNAME>, prosz�, ja... ja si� ciebie boj�... B�agam uspok�j si�... B�agam... Spr�buj to zrobi� dla mnie... Prosz�... */
IF~~THEN REPLY @491 /* (Spr�buj zapanowa� nad ��dz� mordu i ogniem w twych �y�ach.) */ GOTO SkieZBx01
IF~~THEN REPLY @492 /* (Zignoruj Skie.) */ GOTO SkieZBx02
END

IF~~THEN BEGIN SkieZBx02
SAY @493 /* (Gniew zaczyna g�rowa� nad twoj� natur�. Po chwili ponownie tracisz �wiadomo��.) */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SkieZBx01
SAY @494 /* (Nie jeste� w stanie wr�ci� do swojej formy. Twoja walcz�ce dwie natury sprawiaj� jednak, �e nie poddajesz si� fizycznej walce, jedynie tej kt�ra odbywa si� w g��bi ciebie.) */
IF~~THEN REPLY @495 /* (Poddaj si� gniewnej naturze.) */ GOTO SkieZBx02
IF~~THEN REPLY @496 /* (Prowad� dalej wewn�trzn� walk�.) */ GOTO SkieZBx03
END

IF~~THEN BEGIN SkieZBx03
SAY @497 /* (B�l nasila si�. Ogie� ��dzy zaczyna rozlewa� si� po twoich wn�trzno�ciach, jednak udaje ci si� opanowa� mord. W formie mordercy anga�ujesz si� w wewn�trzn� walk� ignoruj�c �wiat zewn�trzny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",1) ApplySpellRES("SKIEST",Player1)~ EXIT
END


/////////////////////////////PO ZAMIANIE

IF~Global("SkieRomanceSlayer","GLOBAL",1) GlobalTimerExpired("SkieRomChange","GLOBAL") Global("SkieRomanceActive","GLOBAL",2)~THEN BEGIN SkiePZx00
SAY @498 /* Min�� dzie� od zamiany... To... To by�o straszne... Powiedz... Czy to ju� min�o...? Czy ty... */
IF~~THEN REPLY @499 /* Skie, ju� lepiej. Przepraszam za to co si� sta�o. */ GOTO SkiePZx01
IF~~THEN REPLY @500 /* Tak, ju� dobrze. */ GOTO SkiePZx01
IF~~THEN REPLY @501 /* (Za�artuj.) Wrrr, zaraz zjem twoj� dusz�! Wrrr! */ GOTO SkiePZx02
IF~~THEN REPLY @502 /* Zostaw mnie, Skie! Po prostu mnie zostaw! */ GOTO SkiePZx03
END

IF~~THEN BEGIN SkiePZx01
SAY @503 /* Prosz�, nie r�b tego wi�cej... (Skie przytula si� do ciebie.) Ja wiem, �e pewnie trudno ci to opanowa�, ale postaraj si�... To mnie przera�a... To jest takie... ja... nie wiem jak to opisa�... */
IF~~THEN REPLY @504 /* Postaram si�... Sam si� obawiam tej formy... Trudno j� opanowa�... Jest taka dzika. */ GOTO SkiePZx04
IF~~THEN REPLY @502 /* Zostaw mnie, Skie! Po prostu mnie zostaw! */ GOTO SkiePZx03
END

IF~~THEN BEGIN SkiePZx02
SAY @505 /* Nie �artuj tak nawet... Nie chce tego widzie�... To by�o jak m�j koszmar... Jak sen o moim ojcu... morduj�cym... Wygl�daj�cym jak sobowt�rniak... Prosz�, opanuj t� besti�... */
IF~~THEN REPLY @504 /* Postaram si�... Sam si� obawiam tej formy... Trudno j� opanowa�... Jest taka dzika. */ GOTO SkiePZx04
IF~~THEN REPLY @502 /* Zostaw mnie, Skie! Po prostu mnie zostaw! */ GOTO SkiePZx03
END

IF~~THEN BEGIN SkiePZx04
SAY @506 /* Tak... To demon... To... (Skie nie doka�cza zdania. Po prostu przyciska twarz do twojej klatki piersiowej. Czujesz �e dalej jest roztrz�siona.) */
=
@507 /* (Trwacie tak przez chwil�. Po czym Skie oddala si� na chwil�.) */
=
@508 /* Prosz�... Postaraj si�... */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN SkiePZx03
SAY @509 /* Dobrze... Pewnie... pewnie chcesz teraz by� sam. Ale prosz�, pami�taj, �e jestem. Staraj si� opanowa� besti�. */
IF~~THEN DO ~SetGlobal("SkieRomanceSlayer","GLOBAL",2)~ EXIT
END

///////////////////////////////////////////UNDER

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieUnderLov","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceUnder","GLOBAL")~THEN BEGIN UndSkiex00
SAY @510 /* To miejsce jest takie ciemne. Boj� si�, ale...dam sobie rad�. Przy tobie wiele si� nauczy�am, wiesz? Teraz wiem wi�cej, ni� jak dobra� pantofle do sukni i kolczyk�w. */
IF~~THEN REPLY @511 /* S�dze, �e od pocz�tku wiele umia�a�, ale nie zdawa�a� sobie z tego sprawy. */ GOTO UndSkiex01
IF~~THEN REPLY @512 /* To wiele dla mnie znaczy. Ciesze si�, �e mo�emy uczy� si� prze�y� wsp�lnie. */ GOTO UndSkiex02
IF~~THEN REPLY @513 /* To jaka� pomy�ka, Skie. Z tego nic nie b�dzie. */ GOTO UndSkiex03
END

IF~~THEN BEGIN UndSkiex01
SAY @514 /* Na prawd� tak s�dzisz? Nie by�abym tego taka pewna. Kiedy� by�am tylko rozpuszczon� dziewczyn�, a teraz...mo�e nie jestem mistrzyni� walki, ale chyba umiem wi�cej ni� kiedy�. */
IF~~THEN GOTO UndSkiex04
END

IF~~THEN BEGIN UndSkiex02
SAY @515 /* Ja chyba musz� si� nauczy� wi�cej, ni� ty. Od kiedy tylko pami�tam potrafi�e� sobie poradzi�. Ju� wtedy we Wrotach Baldura, a p�niej jeszcze pokona�e� Sarevoka. */
IF~~THEN GOTO UndSkiex04
END

IF~~THEN BEGIN UndSkiex04
SAY @516 /* Dzi�kuj� ci za wszystko. S�dz�, �e dzi�ki tobie m�j papa by�by ze mnie dumny i to nie tylko dlatego, �e nie ubieram granatowej sp�dnicy do pomara�czowej koszuli. */
IF~~THEN REPLY @517 /* S�dz�, �e zawsze widzia� w tobie poszukiwaczk� przyg�d. */ GOTO UndSkiex05
IF~~THEN REPLY @518 /* To pomara�czu nie nosi si� z granatem? */ GOTO UndSkiex06
IF~~THEN REPLY @519 /* To idiotyzm. Nic z tego nie b�dzie, Skie. */ GOTO UndSkiex03
END

IF~~THEN BEGIN UndSkiex05
SAY @520 /* Jak to? */
IF~~THEN REPLY @521 /* Nie s�dzisz, �e wiele razy mia� szans� nas zatrzyma�? Mo�e on chcia� by� sz�a za tym co ci m�wi serce. */ GOTO UndSkiex07
IF~~THEN REPLY @522 /* Nie wiem, takie jakie� przeczucie. */ GOTO UndSkiex08
END

IF~~THEN BEGIN UndSkiex06
SAY @523 /* Yyy...chyba jednak masz si� czego uczy�. */
IF~~THEN GOTO UndSkiex09
END

IF~~THEN BEGIN UndSkiex07
SAY @524 /* Ja...nigdy o tym tak nie my�la�am. */
IF~~THEN GOTO UndSkiex09
END

IF~~THEN BEGIN UndSkiex08
SAY @525 /* Mhm... */
IF~~THEN GOTO UndSkiex09
END

IF~~THEN BEGIN UndSkiex09
SAY @526 /* Ale przepraszam, �e tyle o sobie m�wi�. Powiedz mi, jak si� czujesz? Po tym wszystkim co ci zrobi� Irenicus. To musi by� straszne uczucie. */
IF~~THEN REPLY @527 /* Mog�oby by� lepiej. */ GOTO UndSkiex10
IF~~THEN REPLY @528 /* Nie martw si�, wszystko ze mn� dobrze. Oczywi�cie mog�oby by� lepiej, ale nie narzekam. */ GOTO UndSkiex11
IF~~THEN REPLY @529 /* To nie jest wa�ne. To i tak nie wyjdzie, Skie. Wybacz, ale nie pasujemy do siebie. */ GOTO UndSkiex03
END

IF~~THEN BEGIN UndSkiex10
SAY @530 /* Ja... rozumiem. (Ca�uje tw�j policzek) */
=
@531 /* Przepraszam, ale na razie nic wi�cej nie mog� poradzi�... */
IF~~THEN DO ~SetGlobal("SkieUnderLov","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN UndSkiex11
SAY @532 /* To... to dobrze. */
=
@533 /* Nie martw si�. Zrobi� wszystko by ci pom�c. */
IF~~THEN DO ~SetGlobal("SkieUnderLov","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN UndSkiex03
SAY @534 /* Jeste�...jeste� potworem. Zostaw mnie! Nie chc� na ciebie patrze�. */
IF~~THEN DO ~SetGlobal("SkieUnderLov","GLOBAL",2) SetGlobal("SkieRomanceActive","GLOBAL",3)~ EXIT
END

///////////////////////////////////////23

IF~Global("CHAPTER","GLOBAL",%bg2_chapter_6%) Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceC6","GLOBAL",1) RealGlobalTimerExpired("SkieTimerC6","GLOBAL")~THEN BEGIN Skie23x00
SAY @535 /* Czy nie zdaje ci si�, �e ostatnio przyty�am, <CHARNAME>? Ale ja nie jad�am jako� du�o... Dziwne... A w og�le to mam ochot� na szparagi... Nie wiesz czy nie mog� gdzie� niedaleko kupi� kilka...? */
IF~~THEN REPLY @536 /* Skie, czy ty... ostatnio nie czu�a� si� niedobrze z rana...? */ GOTO Skie23x01
IF~~THEN REPLY @537 /* Nawet tak nie �artuj... Czy ty... Czy ty chcesz powiedzie�, �e... */ GOTO Skie23x01
END

IF~~THEN BEGIN Skie23x01
SAY @538 /* Co...? O czym ty w�a�ciwie m�wisz... */
=
@539 /* (Skie robi si� nagle blada, jej oczy otwieraj� si� szeroko, a jej usta pozostaj� odrobin� otwarte. Przez chwil� panuje niezr�czna cisza...) */
IF~~THEN REPLY @540 /* Skie, ty jeste� w ci��y... */ GOTO Skie23x02
END

IF~~THEN BEGIN Skie23x02
SAY @541 /* Ale... ale jak?! Przecie... przecie... Tak od razu! Wiem sk�d si� bior� dzieci, ale nie wiedzia�am, �e tak od razu... �e ty potrafisz tak szybko... �e ty tak... no potrafisz! Tak od razu! Przecie to nie mo�liwe! Raptem raz to zrobili�my i... */
=
@542 /* Duszno mi... ja chyba zemdlej�... */
IF~~THEN REPLY @543 /* Skie, ty nie chcesz tego dziecka...? */ GOTO Skie23x03
IF~~THEN REPLY @544 /* Nie cieszysz si�? */ GOTO Skie23x03
END

IF~~THEN BEGIN Skie23x03
SAY @545 /* Po prostu nie spodziewa�am si� tego... Ja... chyba si� ciesz�, ale to dla mnie do�� nowa sytuacja... */
IF~~THEN REPLY @546 /* No, tego si� domy�li�em... */ GOTO Skie23x04
IF~~THEN REPLY @547 /* Rozumiem. */ GOTO Skie23x04
IF~~THEN REPLY @548 /* Ja chyba... yyy.... jakby ci to powiedzie�... Wiesz, id� gdzie�, musisz uwa�a� na siebie... Ja... yyy... kiedy� *na pewno* ci� znajd�... */ GOTO Skie23x05
END

IF~~THEN BEGIN Skie23x05
SAY @549 /* B�d� czeka�a w posiad�o�ci Srebrnych Tarcz, ukochany! (Skie odchodzi nie�wiadoma tego, �e w�a�nie zostawi�e� j� z dzieckiem.) */
IF~~THEN DO ~SetGlobal("SkieRomanceC6","GLOBAL",2) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN Skie23x04
SAY @550 /* (Skie rzuca ci si� na szj�.) */
=
@551 /* B�dziemy wspanialymi rodzicami! Jestem tego pewna. */
IF~~THEN DO ~SetGlobal("SkieRomanceC6","GLOBAL",2)~ EXIT
END


////////////////////////////////////////24

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceC6","GLOBAL",3) RealGlobalTimerExpired("SkieTimerC6","GLOBAL")~THEN BEGIN Skie24x00
SAY @552 /* (Skie zdaje si� cieszy� z dziecka, kt�re pocz��e�. Nuci weso�� melodi� i g�adzi sw�j brzuch.) */
=
@553 /* (Po chwili wyjmuje szparagi, kt�re nawet nie wiesz sk�d si� wzi�y, kiedy zosta�y przyrz�dzone i w jaki spos�b.) */
=
@554 /* (Jak wida�, dla ci�arnej kobiety nie ma nic trudnego.) */
IF~~THEN DO ~SetGlobal("SkieRomanceC6","GLOBAL",4)~ EXIT
END


////////////INTER

INTERJECT_COPY_TRANS AERIE 27 skieatthecircus
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@555 /* To miejsce mnie przyt�acza... */
== AERIE
@556 /* Ja... nie dziwie ci si�. */
END

INTERJECT_COPY_TRANS ARAN 0 skiearan
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@557 /* Ojej! To jest ten s�awny Aran! No, ca�kiem �adnie ubrany. */
== ARAN
@558 /* Dzi�kuj�, Skie. S�ysza�em o tobie. Mo�e brakuje ci zdolno�ci, ale wiem o ka�dym z�odzieju w tym mie�cie. Poza tym w ko�cu jeste� z rodziny Srebrnych Tarcz. */
END

INTERJECT_COPY_TRANS BODHI 1 skiebodhi1
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@559 /* A� mi si� zimno robi jak widz� t� kobiet�... */
== BODHI
@560 /* Milcz, niewiasto. */
END

INTERJECT_COPY_TRANS CSGAAL 1 skieigaal
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@561 /* Mam wra�enie, �e zaraz wpadniemy w jakie� k�opoty... */
== CSGAAL
@562 /* Milczenie, tak jak �lepota jest cnot�, dziecko. Zamilcz, a je�eli nie jeste� pewna tego co robisz, odejd�. */
END

INTERJECT_COPY_TRANS EDWIN 0 skieieddie
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@563 /* Czy my go nie znamy? */
== EDWIN
@564 /* (Och nie, b�agam. To musi by� jaki� koszmar. Ma�pa przywlok�a ze sob� ma�piatk�.) */
END

INTERJECT_COPY_TRANS FIRKRA01 5 skieilordj
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@565 /* Tyle pieni�dzy to pe�no pi�knych i nowych rzeczy! Nie dyskutujmy. Zrobimy to! */
== FIRKRA01
@566 /* M�drze my�lisz, panno. */
END

INTERJECT_COPY_TRANS FIRKRA02 0 skieifirkr
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@567 /* Aaa! To smok! Ja chce do domu... */
== FIRKRA02
@568 /* �a�osna... */
END

INTERJECT_COPY_TRANS JARLAXLE 0 skieijarla
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@569 /* Od tego miasta i tych stworze� zaczyna mnie bole� g�owa... */
== JARLAXLE
@570 /* Lepiej nie przyznawaj si� do takich rzeczy w miejscu jak Ust Natha, bo mo�esz j� straci�, panienko. */
END

INTERJECT_COPY_TRANS LAVOK 0 skieilavok
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@571 /* Czy nasze problemy kiedy� si� sko�cz�... te ci�g�e walki... */
== LAVOK
@572 /* Marudz�cy �mie�. Twoja obecno�� zanieczyszcza moj� Kul�. */
END

INTERJECT_COPY_TRANS HELLJON 0 skieijonhell
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@573 /* Kolejny raz ten mag... <CHARNAME>, musimy si� go ju� pozby�. Je�eli my tego nie zrobimy, to on pozb�dzie si� nas. Teraz ju� nie mamy gdzie uciec wi�c...wi�c... nie mo�emy si� podda�. */
== HELLJON
@574 /* I po co sz�a� za kim� takim jak <CHARNAME>? Powinna� by�a siedzie� w swoim domu, z dala od tych wszystkich ruin, z dala od Dzieci Bhaala. G�upie dziecko, nie wiesz na co si� zgodzi�a�, prawda? */
== 1xSkieJ 
@575 /* Ja... */
== HELLJON
@576 /* Tak w�a�nie s�dzi�em. */
== HELLJON
@577 /* Nie chc� marnowa� mojej mocy na kogo� tak �a�osnego jak ty. Masz okazj�, zostaw <CHARNAME>, a mo�e uda ci si� st�d wydosta�. To nie twoja walka, zostaw to tym, kt�rzy j� rozpocz�li. */
== 1xSkieJ 
@578 /* Mo�e powinnam... */
== 1xSkieJ 
@579 /* ...ale nie mog�. Wiele zawdzi�czam tej dru�ynie. Nigdy nie pasowa�am na �wietnego poszukiwacza przyg�d...ale...ale potrafi� sobie radzi�! */
== HELLJON
@580 /* G�upie dziecko. Zmarnowa�a� swoj� szanse. */
END

INTERJECT_COPY_TRANS SAMIA 0 skieisamia
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@581 /* W ko�cu kto� inny... kto� bardziej... no, ona jest cz�owiekiem... mam nadziej�... */
== SAMIA
@582 /* Faktem jest, i� jestem cz�owiekiem. */
END

INTERJECT_COPY_TRANS RENAL 0 skieirenal
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@583 /* Imponuj�cy cz�owiek. */
== RENAL
@584 /* Dzi�kuj�, panienko. */
END

INTERJECT_COPY_TRANS UDSILVER 0 skieiadalon
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@585 /* Ona jest pi�kna! Ojej, te� bym chcia�a robi� takie wra�enie jak gdzie� si� pojawiam. */
==UDSILVER
@586 /* Teraz ja m�wi�, dziewcze. */
END

INTERJECT_COPY_TRANS UDSOLA01 0 skieisolau
== 1xSkieJ IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@587 /* (Skie z przera�eniem przygl�da si� temu drowowi.) */
== UDSOLA01
@588 /* Bu! */
==1xSkieJ
@589 /* Aaa! */
== UDSOLA01
@590 /* Iblith... */
END

INTERJECT_COPY_TRANS CARBOS 1 skiecarbos
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@591 /* Ale ona nawet nie umie si� �adnie ubra�... */
END

INTERJECT_COPY_TRANS UDDEMON 0 Skieuddem
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@592 /* To mi si� nie podoba. */
== UDDEMON
@593 /* Ju� za p�no na odwr�t, pierwszaku. */
END

INTERJECT_COPY_TRANS SHADEL 0 Skieshadel
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@594 /* To mi si� nie podoba... <CHARNAME>, mo�e lepiej uciekajmy! */
==SHADEL
@595 /* Za p�no, by ucieka�. Niepotrzebnie wchodzili�cie na m�j teren, niepotrzebnie zadzierali�cie z Panem Cieni. I na co to wam by�o? */
END

INTERJECT_COPY_TRANS CEFALDOR 6 Skiefald
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@596 /* Ja ju� j� chyba gdzie� widzia�am, <CHARNAME>... To znaczy... Czy my jej kiedy� nie spotkali�my? */
==CEFALDOR
@597 /* Sied� cicho, g�upia idiotko. */
END

INTERJECT_COPY_TRANS RAELIS 71 Skieraelis
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@598 /* Ciesz� si�, �e mogli�my pom�c i pozna� komu� o tak...nietypowej urodzie. Ojej, mam nadziej�, �e tego nie us�ysza�a. */
==RAELIS
@599 /* Us�ysza�a i do�� mi to schlebia. Dzi�kuj�. */
END

CHAIN
IF WEIGHT #-1
~!InPartySlot(LastTalkedToBy,0)
IsGabber("SkieDV")
Global("SKIESALVANAS","LOCALS",0)~ THEN SALVANAS skiesalvanas
@600 /* Ach, co za pi�kna dama postanowi�a odwiedzi� Salvanasa... Jeste� pi�kna, moja pani... Wida�, i� jeste� wysoko urodzona! */ DO ~SetGlobal("SKIESALVANAS","LOCALS",1)~
== 1xSKIEJ @601 /* Dzi�kuj� ci Salvanasie! Mi�o... mi�o ci� pozna�! */
== SALVANAS @602 /* To mi mi�o, pani. Czy ta pi�kna niewiasta podaruje u�miech i ca�usa temu elfowi? */
== 1xSKIEJ @603 /* Ja... Ja sama nie wiem... */
== SALVANAS @604 /* Moja pani? (U�miecha si�.) */
== 1xSKIEJ @605 /* Na pewno jeste� milszy od Eldotha... */ 
== SALVANAS @606 /* Eldotha...? */
== SALVANAS @607 /* Ja... eee... S�ysza�em od niego, �e masz... wszy �onowe... Mo�e... eee... Ja musz� teraz... eee... Policzy�... klient�w Diademu! Tak! W�a�nie! Ober�ysta mnie o to poprosi�. */
EXIT

//Zadanie romansowe

INTERJECT_COPY_TRANS 1XSPR 0 SkieZadanieR
== 1xSkieJ IF ~InParty("SkieDV")~ THEN
@608 /* To tylko ja - Skie! Co si� sta�o? Wygl�dasz jakby co� zagra�a�o twojemu �yciu. */
== 1XSPR @609 /* Ach, Skie! To jaki� koszmar! */
== 1XSPR @610 /* Przygotowuje pewien pokaz... Wszystko sz�o doskonale! Wszystkie stroje, fryzury, stworzony ca�y klimat, a gdy przeszli�my do detali... Okaza�o si�, �e zgin�y klejnoty naszych modelek! Prawdopodobnie zosta�y skradzione przez pewnego �obuza. Bez tego ca�y pokaz legnie w gruzach... */
== 1xSkieJ @611 /* To straszne! Jestem pewien, �e wraz z <CHARNAME> odnajdziemy tego �otra, a jak nie jego, to przyniesiemy ci takie same klejnoty. Powiedz mi dok�adnie co potrzebujesz. */
== 1XSPR @612 /* Per��, diament i kamie� �otrzyk�w. To mo�e by� trudne do odszukania, ale b�agam... Jak to nie wyjdzie to moja kariera i �ycie b�d� sko�czone! Ju� widz�, jak te demonice wbijaj� we mnie swoje sztuczne paznokcie i jak wieszaj� mnie na tych swoich przed�u�anych kud�ach! One s� maniakalne! One potrafi� wezwa� zaklinacza, by "pi�knie mryga�y im si� w�osy na scenie"! Tak, one na prawd� tak m�wi�! */
== 1xSkieJ @613 /* Poszukamy ich! To znaczy klejnot�w, nie zaklinaczy. Wiem, �e ca�a ta sytuacja musi by� dla was frustruj�ca! To straszne gdy gin� ulubione klejnoty! */
== 1XSPR @614 /* Troch� pyta�em o tego �otra. M�wi�, �e przedstawia� si� jako "Bawidamek". By� niziutki, zdawa� si� szarmancki. Pono� chwali� si�, �e nied�ugo ma zamiar wyjecha�, �e musi si� ju� zbiera�, bo czekaj� na niego w... no i tu dziewcz�ta ju� nie zapami�ta�y nazwy. */
== 1XSPR @615 /* Nie wiem no... to nie by�o znowu tak dawno temu, wiec mo�e dopiero ma wyjecha�? Na pewno nie b�dzie korzysta� z drogi morskiej, wi�c mo�e... no nie wiem... po prostu go znajd�cie! */
== 1XSPR @616 /* B�d� tutaj na was czeka�. */
END

///////////schody

INTERJECT_COPY_TRANS PLAYER1 2 skieatplay01
== 1xSkieJ IF ~InParty("SkieDV") Global("SkieRomanceActive","GLOBAL",2)~ THEN
@617 /* <CHARNAME>! Co si� dzieje? (Podbiega) */
== 1xSkieJ
@618 /* Ja...ja nie wiem jak mog� ci pom�c, ale prosz�, trzymaj si�. Wszystko b�dzie dobrze! Musimy si� st�d wydosta�...musimy... */
== 1xSkieJ
@619 /* Nie widz� �adnych...okien, ani drzwi na zewn�trz, ale st�d musi by� wyj�cie. Nie wierz�, �e to m�g�by by� koniec. Nie strac� ci� tak, jak straci�am pap�. */
END

//Drzewo

INTERJECT PLAYER1 33 SkieTreeOfLife
== PLAYER1 IF ~IsValidForPartyDialog("SKIEDV")~ THEN 
@620 /* (Widzisz stoj�c� przed tob� Skie. Ta rozpieszczona c�rka Entara Srebrnej Tarczy pomaga�a ci ju� we Wrotach Baldura. Jej zdolno�ci przyda�y ci si� nie raz.) */
END
IF~~THEN REPLY @621 /* Skie, nie musisz ze mn� i��. */ EXTERN 1xSKIEJ SKIETREE1
IF~~THEN REPLY @622 /* Czy pomo�esz mi w walce z Irenicusem? */ EXTERN 1xSKIEJ SKIETREE1
IF~Global("SkieRomanceActive","GLOBAL",2)~THEN REPLY @623 /* Skie, kocham ci�. Wiele razem przeszli�my. Czy pomo�esz mi jeszcze raz? */ EXTERN 1xSKIEJ SKIETREE2

APPEND 1xSkieJ

IF ~~ THEN BEGIN SKIETREE1
SAY @624 /* Ja... Boj� si�, ale wiem... Wiem, �e powinnam... nie wiem sama... ale... Tak. Postaram ci si� pom�c... Zejdziemy tam razem... Mam tylko nadziej�, �e nie zgin�... */
COPY_TRANS PLAYER1 33
END

IF ~~ THEN BEGIN SKIETREE2
SAY @625 /* Tak! Pomog�! S�ucha�e� mnie, wiele razy pomog�e�... Nie zostawi� ci� teraz. To wszystko by�o dla mnie bardzo wa�ne. B�dziemy mieli dziecko. To chyba oczywiste, �e ci� teraz nie zostawi�. */
COPY_TRANS PLAYER1 33
END
END