BEGIN 1xSki25J

IF ~Global("ToBSkieTalk","GLOBAL",1) !Global("SkieRomanceActive","GLOBAL",2)~ THEN BEGIN SkieFirstTalkTB
SAY @0 /* Tak w sumie jak siê z tob¹ wêdruje to tak ³atwiej od razu. I mo¿na spotkaæ tyle ciekawych ludzi! */
IF~~THEN REPLY@1 /* Cieszê siê, ¿e jesteœ tutaj z nami */ GOTO Skie01z01
IF~~THEN REPLY@2 /* I mo¿na zobaczyæ tyle nowych ciuchów co nie? (Mrugnij.) */ GOTO Skie01z02
IF~~THEN REPLY@3 /* Skie, nie teraz. Zajêty jestem. */ GOTO Skie01z03
END

IF~~THEN BEGIN Skie01z01
SAY@4 /* Mi³o, ¿e jesteœ dla mnie taki... ¿yczliwy! */
IF~~THEN REPLY @5 /* Taki ju¿ mój charakter. */ GOTO Skie01z04
IF~~THEN REPLY @6 /* G³owa do góry! Idziemy! */ GOTO Skie01z05
IF~~THEN REPLY @7 /* Idziemy. Mo¿e znajdziemy ci jakieœ ³adne perfumy. */ GOTO Skie01z06
END

IF~~THEN BEGIN Skie01z04
SAY@8 /* Ojej no, jednak to jest mimo wszystko mi³e! */
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
SAY@11 /* No w³aœnie! Od nich... no a¿ mnie g³owa rozbola³a! */
IF~~THEN REPLY @12 /* Hehe, jak zwykle. */ GOTO Skie01z07
IF~~THEN REPLY @13 /* Dobra, doœæ pogaduszek. */ GOTO Skie01z08
END

IF~~THEN BEGIN Skie01z07
SAY@14 /* Ojej no... */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z08
SAY@15 /* Dobra, dobra... Na czym my to skoñ...Aaa! Z³ama³am paznokieæ! Znowu... */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN Skie01z03
SAY@16 /* Tylko byœ wrzeszcza³... a¿ mnie g³owa znowu boli... */
IF~~THEN DO ~SetGlobal("ToBSkieTalk","GLOBAL",2)~ EXIT
END

////////////////////ROMANCE
//BabyTalk

IF~PartyHasItem("SKIEBA") Global("SkieRomanceBaby","GLOBAL",1) Global("SkieRomanceActive","GLOBAL",2)~THEN BEGIN SkieBaby000
SAY @17 /* Nie spodziewa³am siê, ¿e czas nam zleci tak szybko. Patrz na nasz¹ córkê. Czy ona nie jest urocza? Cieszê siê, ¿e nie by³o ¿adnych komplikacji. */
IF~~THEN REPLY @18 /* I ja siê cieszê. */ GOTO SkieBaby001
IF~~THEN REPLY @19 /* Mam ciebie dosyæ - tak samo tego bachora. */ GOTO SkieBaby002
END

IF~~THEN BEGIN SkieBaby001
SAY @20 /* Jeszcze jakiœ czas temu w ogóle nie przysz³oby mi do g³owy, ¿e mogê byæ matk¹, a teraz...wszystko po prostu odwróci³o siê do góry nogami. Nie ma Eldotha, jesteœ ty. Nie ma s³u¿¹cych, jest droga. Nie ma ciszy, jest nasze dziecko. */
IF~~THEN REPLY @21 /* Z tob¹ nigdy nie by³o ciszy. Oczywiœcie mówiê to z jak najlepsz¹ intencj¹. Z tob¹ nie mo¿na siê nudziæ. */ GOTO SkieBaby003
IF~~THEN REPLY @22 /* I mnie ciesz¹ te zmiany. Widaæ, ¿e Faerun siê zmienia, a my razem z nim. To kwestia czasu. */ GOTO SkieBaby003
IF~~THEN REPLY @23 /* Ach, ju¿ siê bojê kto z niej wyroœnie. Jakby nie patrzeæ, to w jednej czwartej dziecko Bhaala! */ GOTO SkieBaby004
IF~~THEN REPLY @24 /* Nie mam czasu na twoje rozmyœlania. Irytujesz mnie. OdejdŸ razem z tym bachorem. */ GOTO SkieBaby002
END

IF~~THEN BEGIN SkieBaby003
SAY @25 /* (Uœmiecha siê.) */
IF~~THEN GOTO SkieBaby005
END

IF~~THEN BEGIN SkieBaby004
SAY @26 /* Jakoœ nigdy w ten sposób o niej nie myœla³am...ale to nie jest istotne. Jest nasz¹ córk¹ i to siê liczy. */
IF~~THEN GOTO SkieBaby005
END

IF~~THEN BEGIN SkieBaby005
SAY @27 /* Z tob¹ nie ma czego ¿a³owaæ. */
=
@28 /* Jest tylko jedna sprawa... Widzisz, obawiam siê, ¿e nie mogê ciê teraz zostawiæ, ale droga...ona nie jest odpowiednia dla dziecka. Nie wiadomo co siê mo¿e staæ. Myœla³am nad tym i...mo¿e lepiej by by³o, gdybym zostawi³a j¹ pod opiek¹ w posiad³oœci Srebrnych Tarcz? */
IF~~THEN REPLY @29 /* To chyba by³by dobry pomys³. Problem jakby siê tam dostaæ. Obecnie to chyba dwa dekadni drogi. Niebezpiecznej drogi. */ GOTO SkieBaby006
IF~~THEN REPLY @30 /* Nie ufam ludziom z twojej posiad³oœci. Wyrusz tam sama i zostaæ z ni¹. Gdy skoñczê swoje sprawy w tych stronach, do³¹czê do was. */ GOTO SkieBaby007
IF~~THEN REPLY @31 /* Nie bêdê was niañczy³. Mam dosyæ ciebie i tego dzieciaka. */ GOTO SkieBaby002
END

IF~~THEN BEGIN SkieBaby006
SAY @32 /* Wiem. Pierw sprawdŸmy, czy dowiesz siê czegoœ w tym gaju. PóŸniej pomyœlimy jak zapewniæ jej bezpieczeñstwo. */
=
@33 /* Na chwilê obecn¹ ma nas, a my bêdziemy pilnowaæ, by nic jej siê nie sta³o. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",2)~ EXIT
END

IF~~THEN BEGIN SkieBaby007
SAY @34 /* To...doœæ niebezpieczne, ale dobrze. Niech bêdzie jak chcesz, ukochany. Wróæ do mnie, gdy to wszystko siê skoñczy. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",20) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

IF~~THEN BEGIN SkieBaby002
SAY @35 /* Jesteœ potworem! */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",30) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

//Baby In Saradush

IF~Global("SkieRomanceActive","GLOBAL",2) Global("SkieRomanceBaby","GLOBAL",2) AreaCheck("AR5000")~THEN BEGIN SkieBaby200
SAY @36 /* To miasto zdaje siê byæ ju¿ trochê podniszczone, ale...mo¿e jest tutaj jakiœ sklep z zaklêciami. Wiesz, mam na myœli nasze dziecko. Mo¿e bêd¹ mieli zaklêcie, które przeniesie mnie do posiad³oœci. Tam mog³abym pozostawiæ dziecko w dobrych rêkach. */
IF~~THEN REPLY @37 /* Doskona³y pomys³. */ GOTO SkieBaby201
IF~~THEN REPLY @38 /* To idiotyczne. Wiesz co - sama ucieknij z dzieckiem i tam na mnie czekaj. Powinno udaæ ci siê pokonaæ ca³a drogê. */ GOTO SkieBaby202
END

IF~~THEN BEGIN SkieBaby201
SAY @39 /* Oj, rzadko mówisz mi tego typu komplementy. */
=
@40 /* A wiêc ruszajmy. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",3)~ EXIT
END

IF~~THEN BEGIN SkieBaby202
SAY @41 /* No...dobrze. */
=
@42 /* Pamiêtaj - bêdê na ciebie czekaæ w naszym domu. */
IF~~THEN DO ~SetGlobal("SkieRomanceBaby","GLOBAL",20) SetGlobal("SkieRomanceActive","GLOBAL",3) LeaveParty() EscapeArea()~ EXIT
END

////////////////////////////T1

IF~Global("SkieRomanceTalkTB","GLOBAL",1) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR01x00
SAY @43 /* Patrz, nasza córeczka do ciebie macha r¹si¹! Jaka ona jest s³odziutka! Ojejku, nie mogê siê na ni¹ napatrzeæ! */
IF~~THEN REPLY @44 /* Faktycznie. Zdajesz siê zamyœlona. Coœ siê sta³o? */ GOTO SkieR01x01
IF~~THEN REPLY @45 /* Coœ siê sta³o...? */ GOTO SkieR01x01
IF~~THEN REPLY @46 /* Kochanie, nie mamy teraz czasu na takie rozmowy. */ GOTO SkieR01x02
END

IF~~THEN BEGIN SkieR01x02
SAY @47 /* No dobrze, dobrze... Kurczê, ale znajdŸ czasem ten czas dla mnie i dla dziecka... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",2) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR01x01
SAY @48 /* Nie, nic takiego... Szczerze mówi¹c, po prostu rozmyœlam sobie o tym co powinnam kupiæ dla mnie i dla dziecka... Teraz to bym dopiero posz³a na wielkie zakupy! */
=
@49 /* Mog³abym kupiæ œliniaczek... nowe pieluszki... jakieœ spodenki... albo nie! Spódniczkê! Tak! Tak¹ w kwiatki! Jednak to trzeba by by³o na zamówienie jednak... */
IF~~THEN REPLY @50 /* (Zaœmiej siê.) Niektóre rzeczy jednak siê po prostu nie zmieniaj¹! */ GOTO SkieR01x03
IF~~THEN REPLY @51 /* Ha! Na takie zakupy pójdziemy razem! Z tob¹ zakupy s¹ jak walka o duszê! */ GOTO SkieR01x03
IF~~THEN REPLY @52 /* Nie mamy jednak teraz czasu na takie rozmowy. */ GOTO SkieR01x02
END

IF~~THEN BEGIN SkieR01x03
SAY @53 /* Ojej no, œmiejesz siê ze mnie! */
=
@54 /* Pomo¿esz mi wybraæ wszystko co potrzebujemy dla naszego cukiereczka! Nie wa¿ne czy chcesz czy nie! Zobaczysz jaka to mo¿e byæ zabawa! */
=
@55 /* No a teraz musimy siê zaj¹æ innego rodzaju sprawami! Musimy zdobyæ zakupy na wielk¹ wyprawê zakupow¹! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",2) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

////////////////////////////T2

IF~Global("SkieRomanceTalkTB","GLOBAL",2) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR02x00
SAY @56 /* (Skie spogl¹da w nocne niebo. Jej twarz jest oœwietlona przez jego blask. Zdaje siê rozmyœlaæ, nie jesteœ jednak w stanie powiedzieæ o czym... i czy na pewno.) */
IF~~THEN REPLY @57 /* (PodejdŸ.) Co robisz? */ GOTO SkieR02x01
IF~~THEN REPLY @58 /* (Zostaw Skie samej sobie.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x02
SAY @59 /* (Skie przez kilka kolejnych chwil wpatruje siê w gwiazdy i ksiê¿yc. Zdaje siê nie zauwa¿aæ niczego innego.) */
=
@60 /* (Ciszê przerywa gaworzenie dziecka. Skie natychmiast bierze je na rêce i do³¹cza do reszty dru¿yny.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",3) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR02x01
SAY @61 /* Ojej, wystraszy³eœ mnie! */
=
@62 /* Tak sobie siedzê i obserwuje gwiazdy... Wiesz, chcia³abym mówiæ ich jêzykiem... Mog³abym czasem prowadziæ dysputy z ksiê¿ycem, œpiewaæ gdy mia³abym dobry humor, a one mog³yby mnie s³uchaæ... To by³oby coœ wyj¹tkowego... */
IF~~THEN REPLY @63 /* Dysputy? Przegl¹da³aœ jakieœ ksiêgi i nauczy³aœ siê nowego s³owa, czy co? */ GOTO SkieR02x03
IF~~THEN REPLY @64 /* Skie, kochanie, ale przecie gwiazdy nie mówi¹... */ GOTO SkieR02x04
IF~~THEN REPLY @65 /* Rozumiem. Zostawiê ciê twoim rozmyœlaniom. (Zostaw Skie sam¹.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x04
SAY @66 /* <CHARNAME>, czy to, ¿e ich nie s³yszymy oznacza, ¿e nie rozmawiaj¹? Ja s¹dzê, ¿e maj¹ wiele tematów do rozmów, znaj¹ wiele opowieœci... */
=
@67 /* Dla nas ujadanie psa, jest jedynie, ujadaniem, a dla psów to mo¿e byæ po prostu rozmowa. Po prostu jej nie rozumiemy... */
IF~~THEN REPLY @68 /* To doœæ ciekawy punkt widzenia... */ GOTO SkieR02x05
IF~~THEN REPLY @58 /* (Zostaw Skie samej sobie.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x03
SAY @69 /* W domu tata zawsze dba³ o moj¹ edukacjê... Ale przestañ siê ze mnie nabijaæ... */
IF~~THEN REPLY @70 /* Skie, g³upiutka, ale przecie gwiazdy nie mówi¹... */ GOTO SkieR02x04
IF~~THEN REPLY @71 /* Dobra, dobra... Zostawiê ciê twoim rozmyœlaniom. (Zostaw Skie sam¹.) */ GOTO SkieR02x02
END

IF~~THEN BEGIN SkieR02x05
SAY @72 /* Pewnie znowu zachowuje siê jak idiotka, ale œwiat bajek, które opowiada³ mi mój ojciec jest dla mnie dalej taki... ¿ywy... */
=
@73 /* No, ale ju¿ ruszajmy. */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",3) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

//////////////////////////////T3

IF~Global("SkieRomanceTalkTB","GLOBAL",3) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR03x00
SAY @74 /* Co zrobimy gdy to wszystko siê skoñczy, <CHARNAME>? Jak za³atwimy ju¿ wszystkie sprawy na po³udniu... */
IF~~THEN REPLY @75 /* Mo¿e wrócimy na Wybrze¿e Mieczy, Wrota Baldura... */ GOTO SkieR03x01
IF~~THEN REPLY @76 /* Poszukamy kolejnych przygód! */ GOTO SkieR03x02
IF~~THEN REPLY @77 /* Mo¿e odwiedzimy jakieœ nowe krainy... Rashemen albo Calimshan... */ GOTO SkieR03x03
IF~~THEN REPLY @78 /* Wybacz, ale nie mamy czasu na takie rozmowy. */ GOTO SkieR03x04
END

IF~~THEN BEGIN SkieR03x04
SAY @79 /* Nie lubiê, gdy tak mówisz... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",4) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR03x03
SAY @80 /* To doœæ ciekawy pomys³! Ale... nie wiem czy to dobry pomys³... Coœ siê mo¿e kiedyœ przytrafiæ naszemu dziecku... Ale z drugiej strony moglibyœmy pokazaæ mu tyle miejsc... */
IF~~THEN GOTO SkieR03x05
END

IF~~THEN BEGIN SkieR03x02
SAY @81 /* Ale... Nie wiem czy to jest dobry pomys³... Nie mo¿emy wpl¹tywaæ dziecka w nasze walki, targaæ po lochach, czy ci¹gle na niego uwa¿aæ przy walce z demonami i innymi poczwarami... */
IF~~THEN GOTO SkieR03x05
END

IF~~THEN BEGIN SkieR03x01
SAY @82 /* Mi³o by by³o zobaczyæ kilka starych twarzy, mój dom, s³u¿¹cych, odwiedziæ moje ukochane sklepy we Wrotach Baldura... Ale z drugiej strony, to mog³oby byæ nudne... */
IF~~THEN GOTO SkieR03x05
END

IF~~THEN BEGIN SkieR03x05
SAY @83 /* To wszystko jednak zale¿y od naszego dziecka... Trudno pogodziæ bycie rodzicem z poszukiwaniem przygód... Nie chcia³abym rezygnowaæ z ani jednego, ani drugiego. Przywyk³am trochê do trudów na szlaku... */
=
@84 /* Nie wierze, ¿e sama to mówiê! */
IF~~THEN REPLY @85 /* Wszystko siê jeszcze oka¿e, Skie. Nie martw siê, na nudê coœ zawsze poradzimy! */ GOTO SkieR03x06
IF~~THEN REPLY @86 /* Oj, nie marudŸ! Powinnaœ mniej myœleæ! */ GOTO SkieR03x07
IF~~THEN REPLY @87 /* E, tam. Po prostu ruszajmy. */ GOTO SkieR03x07
END

IF~~THEN BEGIN SkieR03x07
SAY @88 /* Chyba masz racjê... */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",4) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR03x06
SAY @89 /* (Skie uœmiecha siê.) Wiesz jak poprawiæ mi humor... A mo¿e zgodzisz siê na pomalowanie ci paznokci...? To by mi jeszcze bardziej poprawi³o humor... */
=
@90 /* Ej, gdzie idziesz? No dobra, dobra... ale zaczekaj na mnie! */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",4) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END


/////////////////////////////////T4

IF~Global("SkieRomanceTalkTB","GLOBAL",4) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR04x00
SAY @91 /* Kiedy mieszka³am w posiad³oœci Srebrnych Tarcz uwielbia³am wieczory z moj¹ matk¹. Ledwo to pamiêtam, ale jest coœ co zapamiêta³am doskonale - mama uwielbia³a graæ dla mnie na pianinie. Zasypia³am przy jego muzyce, lecz pierw pi³am gor¹ce kakao. */
IF~~THEN REPLY @92 /* Têsknisz za tymi czasami, prawda? */ GOTO SkieR04x01
IF~~THEN REPLY @93 /* Czemu w³aœciwie mi o tym opowiadasz, Skie? */ GOTO SkieR04x02
IF~~THEN REPLY @94 /* Skie, porozmawiamy póŸniej. Mamy teraz wiele do roboty. */ GOTO SkieR04x03
END

IF~~THEN BEGIN SkieR04x03
SAY @95 /* (Skie jedynie kiwnê³a g³ow¹. Przez chwile patrzy siê po prostu w przestrzeñ. Nie jesteœ w stanie powiedzieæ czy siê czemuœ przygl¹da, czy jej myœli skupione s¹ na wspomnieniach.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",5) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR04x02
SAY @96 /* W³aœciwie nie wiem czemu. Po prostu ten obraz przyszed³ mi do g³owy. Obraz mamy, pianina, kakao i rozbrzmiewaj¹cej muzyki. Zza okna wpada³y jedynie œwiat³a latarni Wrót Baldura, a z kuchni dobiega³ czasami œmiech s³u¿¹cych... */
IF~~THEN GOTO SkieR04x04
END

IF~~THEN BEGIN SkieR04x01
SAY @97 /* Czasami. To pewnie dlatego ten obraz przyszed³ mi do g³owy. Obraz mamy, pianina, kakao i rozbrzmiewaj¹cej muzyki. Zza okna wpada³y jedynie œwiat³a latarni Wrót Baldura, a z kuchni dobiega³ czasami œmiech s³u¿¹cych... */
IF~~THEN GOTO SkieR04x04
END

IF~~THEN BEGIN SkieR04x04
SAY @98 /* Chcia³abym by nasza córka te¿ mog³a wspominaæ takie chwile ze mn¹... <CHARNAME>, czy bêdê dobr¹ matk¹? */
IF~~THEN REPLY @99 /* Skie, ju¿ ni¹ jesteœ. */ GOTO SkieR04x05
IF~~THEN REPLY @100 /* Skie, bêdzie dobrze, ale ruszajmy ju¿. */ GOTO SkieR04x03
IF~~THEN REPLY @101 /* To siê oka¿e. */ GOTO SkieR04x06
END

IF~~THEN BEGIN SkieR04x06
SAY @102 /* Zrobiê wszystko by tak by³o. */
=
@103 /* Powinniœmy ruszaæ... (Skie jeszcze chwilê idzie zamyœlona.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",5) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

IF~~THEN BEGIN SkieR04x05
SAY @104 /* Dziêkujê. (Skie podchodzi i ca³uje twój policzek.) */
=
@105 /* Ruszajmy. (Skie chwyta twoj¹ d³oñ i ci¹gnie ciê w kierunku do którego zmierzaliœcie.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",5) RealSetGlobalTimer("SkieRomanceTimerTB","GLOBAL",1500)~ EXIT
END

/////////////////////////////////T5

IF~Global("SkieRomanceTalkTB","GLOBAL",5) RealGlobalTimerExpired("SkieRomanceTimerTB","GLOBAL")~THEN BEGIN SkieR05x00
SAY @106 /* (Skie nagle podbiega do ciebie i ca³uje twój policzek.) */
IF~~THEN REPLY @107 /* A to za co? */ GOTO SkieR05x01
IF~~THEN REPLY @108 /* (Poca³uj policzek Skie.) */ GOTO SkieR05x01
IF~~THEN REPLY @109 /* (Poca³uj Skie w usta.) */ GOTO SkieR05x01
IF~~THEN REPLY @110 /* Co to ma znaczyæ? */ GOTO SkieR05x01
END

IF~~THEN BEGIN SkieR05x01
SAY @111 /* Za to, ¿e jesteœ. */
=
@112 /* (Skie ca³uje twój policzek jeszcze raz i ucieka z powrotem na szlak.) */
IF~~THEN DO ~SetGlobal("SkieRomanceTalkTB","GLOBAL",6)~ EXIT
END

/////////////////////////////////SENDAI

IF~Global("SkieSendaiArea","GLOBAL",0) Global("SkieRomanceActive","GLOBAL",2) AreaCheck("AR6100")~THEN BEGIN SendaiWood000
SAY @113 /* Ten las jest taki gêsty... Strasznie tu trochê. */
IF~~THEN REPLY @114 /* Nie martw siê. Jak coœ siê bêdzie dzia³o - masz mnie. */ GOTO SendaiWood001
IF~~THEN REPLY @115 /* Nie mamy teraz czasu na te twoje gadki. */ GOTO SendaiWood002
END

IF~~THEN BEGIN SendaiWood001
SAY @116 /* Dziêkujê. */
=
@117 /* Wiesz, jesteœmy ju¿ razem tak d³ugo, mamy tyle za sob¹. S¹dzisz, ¿e kiedyœ jeszcze zobaczymy Candlekeep? Trochê g³upio to mówiæ, ale chcia³abym zobaczyæ miejsce, w którym spêdzi³eœ dzieciñstwo. Tak wiesz, nie martwi¹c siê, ¿e jesteœmy œcigani, albo ¿e mam krew jakiegoœ potwora na sukience. */
IF~~THEN REPLY @118 /* Och, wiem co masz na myœli. I mi siê to zdarza! Nie wiem jakim cudem, ale ostatnio mia³em krew na mojej bieliŸnie. Oczywiœcie zak³adaj¹c, ¿e nie dosta³em okresu... */ GOTO SendaiWood003
IF~~THEN REPLY @119 /* Jestem pewien, ¿e odwiedzimy Candlekeep, ale nie tylko. Jest wiele miejsc, gdzie mo¿emy zawêdrowaæ. Candlekeep to jedna twierdza, ale pomyœl - kiedyœ mo¿emy zobaczyæ na przyk³ad Wielki Lodowiec. */ GOTO SendaiWood004
IF~~THEN REPLY @120 /* Nie mamy czasu na tego typu gdybanie. Ruszajmy. */ GOTO SendaiWood002
END

IF~~THEN BEGIN SendaiWood003
SAY @121 /* (œmieje siê) Ty to zawsze potrafisz mnie rozœmieszyæ! */
IF~~THEN GOTO SendaiWood005
END

IF~~THEN BEGIN SendaiWood004
SAY @122 /* Mo¿e masz racjê... No, ja raczej zobaczy³abym coœ ciekawszego, ni¿ bry³a lodu, ale mo¿e...Calimshan. */
IF~~THEN GOTO SendaiWood005
END

IF~~THEN BEGIN SendaiWood005
SAY @123 /* Wiesz...nie spodziewa³am siê, ¿e bêdê mia³a okazjê przy tobie dorosn¹æ. */
IF~~THEN REPLY @124 /* Ale przecie¿ my dalej jesteœmy jak dzieci! Kto jak nie my upijamy siê winem w ka¿dej tawernie! */ GOTO SendaiWood006
IF~~THEN REPLY @125 /* Ty podobnie zadzia³a³aœ na mnie! Ale nie zmienia to faktu...mam dziœ wieczorem ochotê na coœ w³aœnie dla doros³ych, hmm? */ GOTO SendaiWood007
IF~~THEN REPLY @126 /* Kocham ciê. */ GOTO SendaiWood008
IF~~THEN REPLY @127 /* Wybacz, ale musimy ruszaæ. */ GOTO SendaiWood002
END

IF~~THEN BEGIN SendaiWood006
SAY @128 /* No, zdarza siê...i wiesz, o dziwo jak z tob¹ pijê, to póŸniej nie boli mnie g³owa. */
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
@133 /* Ten... on jest jakiœ... straszny... */
END

INTERJECT_COPY_TRANS BALTH 0 skieatthebalth
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@134 /* Czemu ten cz³owiek nas zna... */
END

INTERJECT_COPY_TRANS GROMNIR 7 skieatthegromnir
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@135 /* Jak jemu cuchnie z ust... */
==GROMNIR
@136 /* Zginiecie! */
END

INTERJECT_COPY_TRANS SENDAI 15 skieatthesendai
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@137 /* Ju¿ mam dosyæ tej walki... */
==SENDAI
@138 /* Iblith! */
END

INTERJECT_COPY_TRANS ILLASERA 0 skieattheilla
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@139 /* Ta kobieta... boje siê jej... */
END

INTERJECT_COPY_TRANS SOLAR 0 skieatthesolar
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@140 /* Co to za dziwna istota? */
==SOLAR
@141 /* Milcz, nie rozmawiam z tob¹. */
END

INTERJECT_COPY_TRANS YAGA01 2 skieattheyaga
== 1xSki25J IF ~InParty("SkieDV") InMyArea("SkieDV")~ THEN
@142 /* On jest wielki! Ja... nie chce z nim walczyæ... */
END

////////////////EPILOG

EXTEND_BOTTOM FINSOL01 27
IF ~InParty("SKIEDV") InMyArea("SKIEDV") Global("SkieRomanceActive","GLOBAL",2) Global("SkieSolarChoice","GLOBAL",0)~ DO ~SetGlobal("SkieSolarChoice","GLOBAL",1)~ EXTERN 1xSki25J SkieSolarChoice
END

CHAIN 1xSki25J SkieSolarChoice
@143 /* To... teraz zapewne odejdziesz... Ja... Powinnam siê by³a tego spodziewaæ... powinnam by³a wiedzieæ, ¿e to nie bêdzie trwa³o wiecznie... To chyba... chyba czas byœmy siê po¿egnali... Pójdê gdzieœ... ale wiesz... nie mam ochoty na zakupy czy cokolwiek innego... */
END
IF~~THEN REPLY @144 /* Skie, nie s¹dzisz chyba, ¿e tak ciê zostawiê po prostu? Jesteœ niem¹dra... */ DO ~SetGlobal("SkieSolarChoice","GLOBAL",10)~ + SKIECHARNAMEZOSTAJE
IF~~THEN REPLY @145 /* Wybacz mi, ale powinienem po prostu przej¹æ to wszystko. Z t¹ moc¹ bêdê móg³ wiele. Wybacz. */ DO ~SetGlobal("SkieSolarChoice","GLOBAL",5)~ + SKIECHARNAMENIE


CHAIN 1xSki25J SKIECHARNAMEZOSTAJE
@146 /* Ja... Ja tak ciê kocham... Nie œni³am, ¿e porzucisz to wszystko dla mnie... */
END
COPY_TRANS FINSOL01 27

CHAIN 1xSki25J SKIECHARNAMENIE
@147 /* Ja... Rozumiem... bêdê siê opiekowa³a naszym dzieckiem... (Skie ma ³zy w oczach.) */
END
COPY_TRANS FINSOL01 27

////////////////VOLO

EXTEND_BOTTOM SARVOLO 9 #4
+ ~InParty("SKIEDV") InMyArea("SKIEDV") Global("SkieRomanceActive","GLOBAL",2)~ + @148 /* Co napisa³eœ o mojej ukochanej Skie? */ + SkieRBio
+ ~InParty("SKIEDV") InMyArea("SKIEDV") !Global("SkieRomanceActive","GLOBAL",2)~ + @148 /* Co napisa³eœ o mojej ukochanej Skie? */ + SkieBio
END

CHAIN SARVOLO SkieRBio
@149 /* Skie - pani zakupów i serca naszego <CHARNAME>! Córka Entara Srebrnej Tarczy z Wrót Baldura. Niekiedy marudz¹ca, lecz tak¿e o wielkim sercu i drugiej, ukrytej naturze, któr¹ najlepiej zna <CHARNAME>. */
== 1xSki25J @150 /* Dziêkujê, Volo! To bardzo mi³e! */ 
== SARVOLO @151 /* Winnaœ mi za to informacjê o twoim projektancie, Skie! */
EXTERN SARVOLO 9

CHAIN SARVOLO SkieBio
@152 /* Skie - pani zakupów! Niegdyœ wêdrowa³a razem z Eldothem Kronem - bardem, który nawet mi winny jest kilka butelek wina i beczkê rumu! (A to ³ajdak tak swoj¹ drog¹!) Jako córka Entara Srebrnej Tarczy posiada doskona³e maniery i obeznanie w sztucê! */
== 1xSki25J @150 /* Dziêkujê, Volo! To bardzo mi³e! */ 
== SARVOLO @151 /* Winnaœ mi za to informacjê o twoim projektancie, Skie! */
EXTERN SARVOLO 9

/////////////////GORION

INTERJECT_COPY_TRANS HGWRA01 4 skiegorion
== 1xSki25J IF ~InParty("SKIEDV") Global("SkieRelationsActive","GLOBAL",2)~ THEN
@153 /* Zostaw go Gorionie! Nie mo¿esz tak mówiæ o <CHARNAME>! Po prostu... nie mo¿esz! */
==HGWRA01
@154 /* Znasz go lepiej, Skie? Czy to nie on przyprowadzi³ Eldotha do twojego mieszkania wprost z Knieii Otulisko? Czy to nie przez niego wszystko siê tak potoczy³o? */
==HGWRA01
@155 /* A twój ojciec? <CHARNAME> nie uratowa³ go... A przez kogo zgina³? Przez brata twojego "ukochanego". */
==HGWRA01
@156 /* Przejrzyj na oczy dziecko. */
==1xSki25J
@157 /* Ale... */
==HGWRA01
@158 /* W¹tpisz w to co mówiê? Próbujesz oszukaæ sam¹ siebie! To <CHARNAME> jest powodem tego co ciê tak bola³o! To przez niego te koszmary, bolesne wspomnienia i œmieræ bliskich! */
==1xSki25J
@159 /* To k³amstwa! Zostaw mnie! Zostaw! Nie masz prawa tak mówiæ! B³agam! Zostaw mnie...! */
==HGWRA01
@160 /* Boli prawda...? */
END