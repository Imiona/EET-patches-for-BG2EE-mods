BEGIN 1xSki25J

IF ~Global("ToBSkieTalk","GLOBAL",1) !Global("SkieRomanceActive","GLOBAL",2)~ THEN BEGIN SkieFirstTalkTB
SAY @0 /* Tak w sumie jak si� z tob� w�druje to tak �atwiej od razu. I mo�na spotka� tyle ciekawych ludzi! */
IF~~THEN REPLY@1 /* Ciesz� si�, �e jeste� tutaj z nami */ GOTO Skie01z01
IF~~THEN REPLY@2 /* I mo�na zobaczy� tyle nowych ciuch�w co nie? (Mrugnij.) */ GOTO Skie01z02
IF~~THEN REPLY@3 /* Skie, nie teraz. Zaj�ty jestem. */ GOTO Skie01z03
END

IF~~THEN BEGIN Skie01z01
SAY@4 /* Mi�o, �e jeste� dla mnie taki... �yczliwy! */
IF~~THEN REPLY @5 /* Taki ju� m�j charakter. */ GOTO Skie01z04
IF~~THEN REPLY @6 /* G�owa do g�ry! Idziemy! */ GOTO Skie01z05
IF~~THEN REPLY @7 /* Idziemy. Mo�e znajdziemy ci jakie� �adne perfumy. */ GOTO Skie01z06
END

IF~~THEN BEGIN Skie01z04
SAY@8 /* Ojej no, jednak to jest mimo wszystko mi�e! */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z05
SAY@9 /* Idziemy na zakupy? */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z06
SAY@10 /* Ojej! */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z02
SAY@11 /* No w�a�nie! Od nich... no a� mnie g�owa rozbola�a! */
IF~~THEN REPLY @12 /* Hehe, jak zwykle. */ GOTO Skie01z07
IF~~THEN REPLY @13 /* Dobra, do�� pogaduszek. */ GOTO Skie01z08
END

IF~~THEN BEGIN Skie01z07
SAY@14 /* Ojej no... */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z08
SAY@15 /* Dobra, dobra... Na czym my to sko�...Aaa! Z�ama�am paznokie�! Znowu... */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z03
SAY@16 /* Tylko by� wrzeszcza�... a� mnie g�owa znowu boli... */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

////////////////////ROMANCE
//BabyTalk

IF~PartyHasItem("SKIEBA") Global("SkieRomanceBaby","GLOBAL",1) Global("SkieRomanceActive","GLOBAL",2)~THEN BEGIN SkieBaby000
SAY @17 /* Nie spodziewa�am si�, �e czas nam zleci tak szybko. Patrz na nasz� c�rk�. Czy ona nie jest urocza? Ciesz� si�, �e nie by�o �adnych komplikacji. */
IF~~THEN REPLY @18 /* I ja si� ciesz�. */ GOTO SkieBaby001
IF~~THEN REPLY @19 /* Mam ciebie dosy� - tak samo tego bachora. */ GOTO SkieBaby002
END

IF~~THEN BEGIN SkieBaby001
SAY @20 /* Jeszcze jaki� czas temu w og�le nie przysz�oby mi do g�owy, �e mog� by� matk�, a teraz...wszystko po prostu odwr�ci�o si� do g�ry nogami. Nie ma Eldotha, jeste� ty. Nie ma s�u��cych, jest droga. Nie ma ciszy, jest nasze dziecko. */
IF~~THEN REPLY @21 /* Z tob� nigdy nie by�o ciszy. Oczywi�cie m�wi� to z jak najlepsz� intencj�. Z tob� nie mo�na si� nudzi�. */ GOTO SkieBaby003
IF~~THEN REPLY @22 /* I mnie ciesz� te zmiany. Wida�, �e Faerun si� zmienia, a my razem z nim. To kwestia czasu. */ GOTO SkieBaby003
IF~~THEN REPLY @23 /* Ach, ju� si� boj� kto z niej wyro�nie. Jakby nie patrze�, to w jednej czwartej dziecko Bhaala! */ GOTO SkieBaby004
IF~~THEN REPLY @24 /* Nie mam czasu na twoje rozmy�lania. Irytujesz mnie. Odejd� razem z tym bachorem. */ GOTO SkieBaby002
END

IF~~THEN BEGIN SkieBaby003
SAY @25 /* (U�miecha si�.) */
IF~~THEN GOTO SkieBaby005
END

IF~~THEN BEGIN SkieBaby004
SAY @26 /* Jako� nigdy w ten spos�b o niej nie my�la�am...ale to nie jest istotne. Jest nasz� c�rk� i to si� liczy. */
IF~~THEN GOTO SkieBaby005
END

IF~~THEN BEGIN SkieBaby005
SAY @27 /* Z tob� nie ma czego �a�owa�. */
=
@28 /* Jest tylko jedna sprawa... Widzisz, obawiam si�, �e nie mog� ci� teraz zostawi�, ale droga...ona nie jest odpowiednia dla dziecka. Nie wiadomo co si� mo�e sta�. My�la�am nad tym i...mo�e lepiej by by�o, gdybym zostawi�a j� pod opiek� w posiad�o�ci Srebrnych Tarcz? */
IF~~THEN REPLY @29 /* To chyba by�by dobry pomys�. Problem jakby si� tam dosta�. Obecnie to chyba dwa dekadni drogi. Niebezpiecznej drogi. */ GOTO SkieBaby006
IF~~THEN REPLY @30 /* Nie ufam ludziom z twojej posiad�o�ci. Wyrusz tam sama i zosta� z ni�. Gdy sko�cz� swoje sprawy w tych stronach, do��cz� do was. */ GOTO SkieBaby007
IF~~THEN REPLY @31 /* Nie b�d� was nia�czy�. Mam dosy� ciebie i tego dzieciaka. */ GOTO SkieBaby002
END

IF~~THEN BEGIN SkieBaby006
SAY @32 /* Wiem. Pierw sprawd�my, czy dowiesz si� czego� w tym gaju. P�niej pomy�limy jak zapewni� jej bezpiecze�stwo. */
=
@33 /* Na chwil� obecn� ma nas, a my b�dziemy pilnowa�, by nic jej si� nie sta�o. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN SkieBaby007
SAY @34 /* To...do�� niebezpieczne, ale dobrze. Niech b�dzie jak chcesz, ukochany. Wr�� do mnie, gdy to wszystko si� sko�czy. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",20) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN SkieBaby002
SAY @35 /* Jeste� potworem! */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",30) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

//Baby In Saradush

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceBaby","GLOBAL",2) AreaCheck("AR5000")~THEN BEGIN SkieBaby200
SAY @36 /* To miasto zdaje si� by� ju� troch� podniszczone, ale...mo�e jest tutaj jaki� sklep z zakl�ciami. Wiesz, mam na my�li nasze dziecko. Mo�e b�d� mieli zakl�cie, kt�re przeniesie mnie do posiad�o�ci. Tam mog�abym pozostawi� dziecko w dobrych r�kach. */
IF~~THEN REPLY @37 /* Doskona�y pomys�. */ GOTO SkieBaby201
IF~~THEN REPLY @38 /* To idiotyczne. Wiesz co - sama ucieknij z dzieckiem i tam na mnie czekaj. Powinno uda� ci si� pokona� ca�a drog�. */ GOTO SkieBaby202
END

IF~~THEN BEGIN SkieBaby201
SAY @39 /* Oj, rzadko m�wisz mi tego typu komplementy. */
=
@40 /* A wi�c ruszajmy. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN SkieBaby202
SAY @41 /* No...dobrze. */
=
@42 /* Pami�taj - b�d� na ciebie czeka� w naszym domu. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",20) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

////////////////////////////T1

IF~Global("SkieRomanceTalkTB","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR01x00
SAY @43 /* Patrz, nasza c�reczka do ciebie macha r�si�! Jaka ona jest s�odziutka! Ojejku, nie mog� si� na ni� napatrze�! */
IF~~THEN REPLY @44 /* Faktycznie. Zdajesz si� zamy�lona. Co� si� sta�o? */ GOTO SkieR01x01
IF~~THEN REPLY @45 /* Co� si� sta�o...? */ GOTO SkieR01x01
IF~~THEN REPLY @46 /* Kochanie, nie mamy teraz czasu na takie rozmowy. */ GOTO SkieR01x02
END

IF~~THEN BEGIN SkieR01x02
SAY @47 /* No dobrze, dobrze... Kurcz�, ale znajd� czasem ten czas dla mnie i dla dziecka... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",2) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR01x01
SAY @48 /* Nie, nic takiego... Szczerze m�wi�c, po prostu rozmy�lam sobie o tym co powinnam kupi� dla mnie i dla dziecka... Teraz to bym dopiero posz�a na wielkie zakupy! */
=
@49 /* Mog�abym kupi� �liniaczek... nowe pieluszki... jakie� spodenki... albo nie! Sp�dniczk�! Tak! Tak� w kwiatki! Jednak to trzeba by by�o na zam�wienie jednak... */
IF~~THEN REPLY @50 /* (Za�miej si�.) Niekt�re rzeczy jednak si� po prostu nie zmieniaj�! */ GOTO SkieR01x03
IF~~THEN REPLY @51 /* Ha! Na takie zakupy p�jdziemy razem! Z tob� zakupy s� jak walka o dusz�! */ GOTO SkieR01x03
IF~~THEN REPLY @52 /* Nie mamy jednak teraz czasu na takie rozmowy. */ GOTO SkieR01x02
END

IF~~THEN BEGIN SkieR01x03
SAY @53 /* Ojej no, �miejesz si� ze mnie! */
=
@54 /* Pomo�esz mi wybra� wszystko co potrzebujemy dla naszego cukiereczka! Nie wa�ne czy chcesz czy nie! Zobaczysz jaka to mo�e by� zabawa! */
=
@55 /* No a teraz musimy si� zaj�� innego rodzaju sprawami! Musimy zdoby� zakupy na wielk� wypraw� zakupow�! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",2) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

////////////////////////////T2

IF~Global("SkieRomanceTalkTB","GLOBAL",2) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR02x00
SAY @56 /* (Skie spogl�da w nocne niebo. Jej twarz jest o�wietlona przez jego blask. Zdaje si� rozmy�la�, nie jeste� jednak w stanie powiedzie� o czym... i czy na pewno.) */
IF~~THEN REPLY @57 /* (Podejd�.) Co robisz? */ GOTO SkieR02x01
IF~~THEN REPLY @58 /* (Zostaw Skie samej sobie.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x02
SAY @59 /* (Skie przez kilka kolejnych chwil wpatruje si� w gwiazdy i ksi�yc. Zdaje si� nie zauwa�a� niczego innego.) */
=
@60 /* (Cisz� przerywa gaworzenie dziecka. Skie natychmiast bierze je na r�ce i do��cza do reszty dru�yny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",3) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR02x01
SAY @61 /* Ojej, wystraszy�e� mnie! */
=
@62 /* Tak sobie siedz� i obserwuje gwiazdy... Wiesz, chcia�abym m�wi� ich j�zykiem... Mog�abym czasem prowadzi� dysputy z ksi�ycem, �piewa� gdy mia�abym dobry humor, a one mog�yby mnie s�ucha�... To by�oby co� wyj�tkowego... */
IF~~THEN REPLY @63 /* Dysputy? Przegl�da�a� jakie� ksi�gi i nauczy�a� si� nowego s�owa, czy co? */ GOTO SkieR02x03
IF~~THEN REPLY @64 /* Skie, kochanie, ale przecie gwiazdy nie m�wi�... */ GOTO SkieR02x04
IF~~THEN REPLY @65 /* Rozumiem. Zostawi� ci� twoim rozmy�laniom. (Zostaw Skie sam�.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x04
SAY @66 /* <CHARNAME>, czy to, �e ich nie s�yszymy oznacza, �e nie rozmawiaj�? Ja s�dz�, �e maj� wiele temat�w do rozm�w, znaj� wiele opowie�ci... */
=
@67 /* Dla nas ujadanie psa, jest jedynie, ujadaniem, a dla ps�w to mo�e by� po prostu rozmowa. Po prostu jej nie rozumiemy... */
IF~~THEN REPLY @68 /* To do�� ciekawy punkt widzenia... */ GOTO SkieR02x05
IF~~THEN REPLY @58 /* (Zostaw Skie samej sobie.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x03
SAY @69 /* W domu tata zawsze dba� o moj� edukacj�... Ale przesta� si� ze mnie nabija�... */
IF~~THEN REPLY @70 /* Skie, g�upiutka, ale przecie gwiazdy nie m�wi�... */ GOTO SkieR02x04
IF~~THEN REPLY @71 /* Dobra, dobra... Zostawi� ci� twoim rozmy�laniom. (Zostaw Skie sam�.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x05
SAY @72 /* Pewnie znowu zachowuje si� jak idiotka, ale �wiat bajek, kt�re opowiada� mi m�j ojciec jest dla mnie dalej taki... �ywy... */
=
@73 /* No, ale ju� ruszajmy. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",3) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

//////////////////////////////T3

IF~Global("SkieRomanceTalkTB","GLOBAL",3) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR03x00
SAY @74 /* Co zrobimy gdy to wszystko si� sko�czy, <CHARNAME>? Jak za�atwimy ju� wszystkie sprawy na po�udniu... */
IF~~THEN REPLY @75 /* Mo�e wr�cimy na Wybrze�e Mieczy, Wrota Baldura... */ GOTO SkieR03x01
IF~~THEN REPLY @76 /* Poszukamy kolejnych przyg�d! */ GOTO SkieR03x02
IF~~THEN REPLY @77 /* Mo�e odwiedzimy jakie� nowe krainy... Rashemen albo Calimshan... */ GOTO SkieR03x03
IF~~THEN REPLY @78 /* Wybacz, ale nie mamy czasu na takie rozmowy. */ GOTO SkieR03x04
END

IF~~THEN BEGIN SkieR03x04
SAY @79 /* Nie lubi�, gdy tak m�wisz... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",4) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR03x03
SAY @80 /* To do�� ciekawy pomys�! Ale... nie wiem czy to dobry pomys�... Co� si� mo�e kiedy� przytrafi� naszemu dziecku... Ale z drugiej strony mogliby�my pokaza� mu tyle miejsc... */
IF~~THEN GOTO SkieR03x05
END

IF~~THEN BEGIN SkieR03x02
SAY @81 /* Ale... Nie wiem czy to jest dobry pomys�... Nie mo�emy wpl�tywa� dziecka w nasze walki, targa� po lochach, czy ci�gle na niego uwa�a� przy walce z demonami i innymi poczwarami... */
IF~~THEN GOTO SkieR03x05
END

IF~~THEN BEGIN SkieR03x01
SAY @82 /* Mi�o by by�o zobaczy� kilka starych twarzy, m�j dom, s�u��cych, odwiedzi� moje ukochane sklepy we Wrotach Baldura... Ale z drugiej strony, to mog�oby by� nudne... */
IF~~THEN GOTO SkieR03x05
END

IF~~THEN BEGIN SkieR03x05
SAY @83 /* To wszystko jednak zale�y od naszego dziecka... Trudno pogodzi� bycie rodzicem z poszukiwaniem przyg�d... Nie chcia�abym rezygnowa� z ani jednego, ani drugiego. Przywyk�am troch� do trud�w na szlaku... */
=
@84 /* Nie wierze, �e sama to m�wi�! */
IF~~THEN REPLY @85 /* Wszystko si� jeszcze oka�e, Skie. Nie martw si�, na nud� co� zawsze poradzimy! */ GOTO SkieR03x06
IF~~THEN REPLY @86 /* Oj, nie marud�! Powinna� mniej my�le�! */ GOTO SkieR03x07
IF~~THEN REPLY @87 /* E, tam. Po prostu ruszajmy. */ GOTO SkieR03x07
END

IF~~THEN BEGIN SkieR03x07
SAY @88 /* Chyba masz racj�... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",4) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR03x06
SAY @89 /* (Skie u�miecha si�.) Wiesz jak poprawi� mi humor... A mo�e zgodzisz si� na pomalowanie ci paznokci...? To by mi jeszcze bardziej poprawi�o humor... */
=
@90 /* Ej, gdzie idziesz? No dobra, dobra... ale zaczekaj na mnie! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",4) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END


/////////////////////////////////T4

IF~Global("SkieRomanceTalkTB","GLOBAL",4) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR04x00
SAY @91 /* Kiedy mieszka�am w posiad�o�ci Srebrnych Tarcz uwielbia�am wieczory z moj� matk�. Ledwo to pami�tam, ale jest co� co zapami�ta�am doskonale - mama uwielbia�a gra� dla mnie na pianinie. Zasypia�am przy jego muzyce, lecz pierw pi�am gor�ce kakao. */
IF~~THEN REPLY @92 /* T�sknisz za tymi czasami, prawda? */ GOTO SkieR04x01
IF~~THEN REPLY @93 /* Czemu w�a�ciwie mi o tym opowiadasz, Skie? */ GOTO SkieR04x02
IF~~THEN REPLY @94 /* Skie, porozmawiamy p�niej. Mamy teraz wiele do roboty. */ GOTO SkieR04x03
END

IF~~THEN BEGIN SkieR04x03
SAY @95 /* (Skie jedynie kiwn�a g�ow�. Przez chwile patrzy si� po prostu w przestrze�. Nie jeste� w stanie powiedzie� czy si� czemu� przygl�da, czy jej my�li skupione s� na wspomnieniach.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",5) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR04x02
SAY @96 /* W�a�ciwie nie wiem czemu. Po prostu ten obraz przyszed� mi do g�owy. Obraz mamy, pianina, kakao i rozbrzmiewaj�cej muzyki. Zza okna wpada�y jedynie �wiat�a latarni Wr�t Baldura, a z kuchni dobiega� czasami �miech s�u��cych... */
IF~~THEN GOTO SkieR04x04
END

IF~~THEN BEGIN SkieR04x01
SAY @97 /* Czasami. To pewnie dlatego ten obraz przyszed� mi do g�owy. Obraz mamy, pianina, kakao i rozbrzmiewaj�cej muzyki. Zza okna wpada�y jedynie �wiat�a latarni Wr�t Baldura, a z kuchni dobiega� czasami �miech s�u��cych... */
IF~~THEN GOTO SkieR04x04
END

IF~~THEN BEGIN SkieR04x04
SAY @98 /* Chcia�abym by nasza c�rka te� mog�a wspomina� takie chwile ze mn�... <CHARNAME>, czy b�d� dobr� matk�? */
IF~~THEN REPLY @99 /* Skie, ju� ni� jeste�. */ GOTO SkieR04x05
IF~~THEN REPLY @100 /* Skie, b�dzie dobrze, ale ruszajmy ju�. */ GOTO SkieR04x03
IF~~THEN REPLY @101 /* To si� oka�e. */ GOTO SkieR04x06
END

IF~~THEN BEGIN SkieR04x06
SAY @102 /* Zrobi� wszystko by tak by�o. */
=
@103 /* Powinni�my rusza�... (Skie jeszcze chwil� idzie zamy�lona.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",5) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR04x05
SAY @104 /* Dzi�kuj�. (Skie podchodzi i ca�uje tw�j policzek.) */
=
@105 /* Ruszajmy. (Skie chwyta twoj� d�o� i ci�gnie ci� w kierunku do kt�rego zmierzali�cie.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",5) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

/////////////////////////////////T5

IF~Global("SkieRomanceTalkTB","GLOBAL",5) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR05x00
SAY @106 /* (Skie nagle podbiega do ciebie i ca�uje tw�j policzek.) */
IF~~THEN REPLY @107 /* A to za co? */ GOTO SkieR05x01
IF~~THEN REPLY @108 /* (Poca�uj policzek Skie.) */ GOTO SkieR05x01
IF~~THEN REPLY @109 /* (Poca�uj Skie w usta.) */ GOTO SkieR05x01
IF~~THEN REPLY @110 /* Co to ma znaczy�? */ GOTO SkieR05x01
END

IF~~THEN BEGIN SkieR05x01
SAY @111 /* Za to, �e jeste�. */
=
@112 /* (Skie ca�uje tw�j policzek jeszcze raz i ucieka z powrotem na szlak.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",6)~ EXIT
END

/////////////////////////////////SENDAI

IF~Global("SkieSendaiArea","GLOBAL",0) Global("SkieRomanceActive","GLOBAL",2) AreaCheck("AR6100")~THEN BEGIN SendaiWood000
SAY @113 /* Ten las jest taki g�sty... Strasznie tu troch�. */
IF~~THEN REPLY @114 /* Nie martw si�. Jak co� si� b�dzie dzia�o - masz mnie. */ GOTO SendaiWood001
IF~~THEN REPLY @115 /* Nie mamy teraz czasu na te twoje gadki. */ GOTO SendaiWood002
END

IF~~THEN BEGIN SendaiWood001
SAY @116 /* Dzi�kuj�. */
=
@117 /* Wiesz, jeste�my ju� razem tak d�ugo, mamy tyle za sob�. S�dzisz, �e kiedy� jeszcze zobaczymy Candlekeep? Troch� g�upio to m�wi�, ale chcia�abym zobaczy� miejsce, w kt�rym sp�dzi�e� dzieci�stwo. Tak wiesz, nie martwi�c si�, �e jeste�my �cigani, albo �e mam krew jakiego� potwora na sukience. */
IF~~THEN REPLY @118 /* Och, wiem co masz na my�li. I mi si� to zdarza! Nie wiem jakim cudem, ale ostatnio mia�em krew na mojej bieli�nie. Oczywi�cie zak�adaj�c, �e nie dosta�em okresu... */ GOTO SendaiWood003
IF~~THEN REPLY @119 /* Jestem pewien, �e odwiedzimy Candlekeep, ale nie tylko. Jest wiele miejsc, gdzie mo�emy zaw�drowa�. Candlekeep to jedna twierdza, ale pomy�l - kiedy� mo�emy zobaczy� na przyk�ad Wielki Lodowiec. */ GOTO SendaiWood004
IF~~THEN REPLY @120 /* Nie mamy czasu na tego typu gdybanie. Ruszajmy. */ GOTO SendaiWood002
END

IF~~THEN BEGIN SendaiWood003
SAY @121 /* (�mieje si�) Ty to zawsze potrafisz mnie roz�mieszy�! */
IF~~THEN GOTO SendaiWood005
END

IF~~THEN BEGIN SendaiWood004
SAY @122 /* Mo�e masz racj�... No, ja raczej zobaczy�abym co� ciekawszego, ni� bry�a lodu, ale mo�e...Calimshan. */
IF~~THEN GOTO SendaiWood005
END

IF~~THEN BEGIN SendaiWood005
SAY @123 /* Wiesz...nie spodziewa�am si�, �e b�d� mia�a okazj� przy tobie dorosn��. */
IF~~THEN REPLY @124 /* Ale przecie� my dalej jeste�my jak dzieci! Kto jak nie my upijamy si� winem w ka�dej tawernie! */ GOTO SendaiWood006
IF~~THEN REPLY @125 /* Ty podobnie zadzia�a�a� na mnie! Ale nie zmienia to faktu...mam dzi� wieczorem ochot� na co� w�a�nie dla doros�ych, hmm? */ GOTO SendaiWood007
IF~~THEN REPLY @126 /* Kocham ci�. */ GOTO SendaiWood008
IF~~THEN REPLY @127 /* Wybacz, ale musimy rusza�. */ GOTO SendaiWood002
END

IF~~THEN BEGIN SendaiWood006
SAY @128 /* No, zdarza si�...i wiesz, o dziwo jak z tob� pij�, to p�niej nie boli mnie g�owa. */
IF~~THEN DO ~SetGlobal("SkieSendaiArea","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SendaiWood007
SAY @129 /* Och...w sumie... hihi. */
IF~~THEN DO ~SetGlobal("SkieSendaiArea","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SendaiWood008
SAY @130 /* I ja ciebie. */
IF~~THEN DO ~SetGlobal("SkieSendaiArea","GLOBAL",1)~ EXIT
END

IF~~THEN BEGIN SendaiWood002
SAY @131 /* Szkoda... */
IF~~THEN DO ~SetGlobal("SkieSendaiArea","GLOBAL",1)~ EXIT
END






INTERJECT_COPY_TRANS ABAZIGAL 0 skieattheabazi
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@133 /* Ten... on jest jaki�... straszny... */
END

INTERJECT_COPY_TRANS BALTH 0 skieatthebalth
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@134 /* Czemu ten cz�owiek nas zna... */
END

INTERJECT_COPY_TRANS GROMNIR 7 skieatthegromnir
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@135 /* Jak jemu cuchnie z ust... */
==GROMNIR
@136 /* Zginiecie! */
END

INTERJECT_COPY_TRANS SENDAI 15 skieatthesendai
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@137 /* Ju� mam dosy� tej walki... */
==SENDAI
@138 /* Iblith! */
END

INTERJECT_COPY_TRANS ILLASERA 0 skieattheilla
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@139 /* Ta kobieta... boje si� jej... */
END

INTERJECT_COPY_TRANS SOLAR 0 skieatthesolar
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@140 /* Co to za dziwna istota? */
==SOLAR
@141 /* Milcz, nie rozmawiam z tob�. */
END

INTERJECT_COPY_TRANS YAGA01 2 skieattheyaga
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@142 /* On jest wielki! Ja... nie chce z nim walczy�... */
END

////////////////EPILOG

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("SKIEDV") InMyArea("SKIEDV") Global("SkieRomanceActive","GLOBAL",2) Global("SkieSolarChoice","GLOBAL",0)~ DO ~SetGlobal("SkieSolarChoice","GLOBAL",1)~ EXTERN 1xSki25J SkieSolarChoice
END

CHAIN 1xSki25J SkieSolarChoice
@143 /* To... teraz zapewne odejdziesz... Ja... Powinnam si� by�a tego spodziewa�... powinnam by�a wiedzie�, �e to nie b�dzie trwa�o wiecznie... To chyba... chyba czas by�my si� po�egnali... P�jd� gdzie�... ale wiesz... nie mam ochoty na zakupy czy cokolwiek innego... */
END
IF~~THEN REPLY @144 /* Skie, nie s�dzisz chyba, �e tak ci� zostawi� po prostu? Jeste� niem�dra... */ DO ~SetGlobal("SkieSolarChoice","GLOBAL",10)~ + SKIECHARNAMEZOSTAJE
IF~~THEN REPLY @145 /* Wybacz mi, ale powinienem po prostu przej�� to wszystko. Z t� moc� b�d� m�g� wiele. Wybacz. */ DO ~SetGlobal("SkieSolarChoice","GLOBAL",5)~ + SKIECHARNAMENIE


CHAIN 1xSki25J SKIECHARNAMEZOSTAJE
@146 /* Ja... Ja tak ci� kocham... Nie �ni�am, �e porzucisz to wszystko dla mnie... */
END
COPY_TRANS FINSOL01 27

CHAIN 1xSki25J SKIECHARNAMENIE
@147 /* Ja... Rozumiem... b�d� si� opiekowa�a naszym dzieckiem... (Skie ma �zy w oczach.) */
END
COPY_TRANS FINSOL01 27

////////////////VOLO

EXTEND_BOTTOM SARVOLO 9 #4
+ ~InParty("SKIEDV") InMyArea("SKIEDV") Global("SkieRomanceActive","GLOBAL",2)~ + @148 /* Co napisa�e� o mojej ukochanej Skie? */ + SkieRBio
+ ~InParty("SKIEDV") InMyArea("SKIEDV") !Global("SkieRomanceActive","GLOBAL",2)~ + @148 /* Co napisa�e� o mojej ukochanej Skie? */ + SkieBio
END

CHAIN SARVOLO SkieRBio
@149 /* Skie - pani zakup�w i serca naszego <CHARNAME>! C�rka Entara Srebrnej Tarczy z Wr�t Baldura. Niekiedy marudz�ca, lecz tak�e o wielkim sercu i drugiej, ukrytej naturze, kt�r� najlepiej zna <CHARNAME>. */
== 1xSki25J @150 /* Dzi�kuj�, Volo! To bardzo mi�e! */ 
== SARVOLO @151 /* Winna� mi za to informacj� o twoim projektancie, Skie! */
EXTERN SARVOLO 9

CHAIN SARVOLO SkieBio
@152 /* Skie - pani zakup�w! Niegdy� w�drowa�a razem z Eldothem Kronem - bardem, kt�ry nawet mi winny jest kilka butelek wina i beczk� rumu! (A to �ajdak tak swoj� drog�!) Jako c�rka Entara Srebrnej Tarczy posiada doskona�e maniery i obeznanie w sztuc�! */
== 1xSki25J @150 /* Dzi�kuj�, Volo! To bardzo mi�e! */ 
== SARVOLO @151 /* Winna� mi za to informacj� o twoim projektancie, Skie! */
EXTERN SARVOLO 9

/////////////////GORION

INTERJECT_COPY_TRANS HGWRA01 4 skiegorion
== 1xSki25J IF ~InParty("SKIEDV") Global("SkieRelationsActive","GLOBAL",2)~ THEN
@153 /* Zostaw go Gorionie! Nie mo�esz tak m�wi� o <CHARNAME>! Po prostu... nie mo�esz! */
==HGWRA01
@154 /* Znasz go lepiej, Skie? Czy to nie on przyprowadzi� Eldotha do twojego mieszkania wprost z Knieii Otulisko? Czy to nie przez niego wszystko si� tak potoczy�o? */
==HGWRA01
@155 /* A tw�j ojciec? <CHARNAME> nie uratowa� go... A przez kogo zgina�? Przez brata twojego "ukochanego". */
==HGWRA01
@156 /* Przejrzyj na oczy dziecko. */
==1xSki25J
@157 /* Ale... */
==HGWRA01
@158 /* W�tpisz w to co m�wi�? Pr�bujesz oszuka� sam� siebie! To <CHARNAME> jest powodem tego co ci� tak bola�o! To przez niego te koszmary, bolesne wspomnienia i �mier� bliskich! */
==1xSki25J
@159 /* To k�amstwa! Zostaw mnie! Zostaw! Nie masz prawa tak m�wi�! B�agam! Zostaw mnie...! */
==HGWRA01
@160 /* Boli prawda...? */
END