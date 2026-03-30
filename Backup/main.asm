arch snes.cpu
hirom

define	bgm_ram1		$78
define	bgm_ram2		$79
define	main_event		$AA
define	sub_event			$AB
define	brightness	$0380
define	new_irq_trigger	$7FFFFF

//########BRIGHTNESS##########
org $828256
	LDA #$0F
	STA $0380
org $82821B
	CMP #$0F
org $82823A
	CMP #$0F
	
//########Menu EVENT##########
org $8183DA
	JML new_menu
org $81840F
	//JML command_menu1
org $818F02
	JML menu_pos
org $CB36C2
	//dw $8001		//new seishinichiran hightlight pos
	
org $8184BD
	JML override_seishin_tile	
org $818D0D
	JML new_space	//seishin command, number space
	
org $818456
	JML menu_write
	
//seishin ichiran
org $CB36C2
	dw $8001		//green string pos
org $C4FDAF
	db $03		//seishin per line
	
org $818D1A
	JML new_f7
	
//menu panel
org $CC965C
panel_hightlight_pos:
	db $FD, $FF, $FF
	db $FC, $01, $01
	db $F7, $0F
	db $F9, $00
	db $F2, $9E, $FF, $FF
	db $FA
	db $FE, $00
	db $FF
org $CCA136
ability_hightlight_pos:
	db $FD, $FF, $FF
	db $F9, $00
	db $FA
	db $F7, $0A
	db $FC, $01, $01
	db $F2, $94, $FF, $FF
	db $F7, $0A
	db $FC, $01, $FF
	db $F2, $94, $FF, $FF
	db $F7, $08
	db $FC, $01, $FF
	db $F2, $90, $FF, $FF
	db $FE, $00
	db $FF
org $CC9E86	//robot nouryoku
robot_ability:
	db $FD, $01, $90
	db $F7, $FE, $00	//save $14
	db $0D, $40, $00	//type
	db $F6
	db $0D, $41, $00	//idou ryoku
	db $F6
	db $0D, $42, $00	//undousei
	db $F6
	db $0D, $43, $00		//soukou
	db $F6
	db $0D, $44, $00		//genkai
	db $F7, $FE, $01	//restore $14
	db $FD, $05, $90
	db $FB, $FF, $0D	//type variable
	db $FD, $0B, $92
	db $F8, $84
	db $F6
	db $F8, $84
	db $F6
	db $F8, $83
	db $30
	db $F6
	db $F8, $84
	db $F7, $00
	db $FD, $10, $90	//HP pos
	db $5A, $5B, $28	//HP
	db $F8, $85
	db $4F
	db $F8, $00
	db $F6
	db $28, $28, $28
	db $F8, $0B
	db $F6
	db $5C, $5D, $28	//EN
	db $F8
	db $83, $4F
	db $F8, $00
	db $FD, $16, $92
	db $F8, $04
	db $F7, $40
	db $FD, $10, $94
	db $FB, $FF, $0D	//skill1
	db $FD, $18, $94
	db $FB, $FF, $0D	//skill2
	db $FD, $10, $96
	db $FB, $FF, $0D	//skill3
	db $FD, $18, $96
	db $FB, $FF, $0D	//skill4
	db $FF
org $CCA4F7
	db $F7, $FE, $00	//save $14
	db $0D, $45, $00	//next level
	db $F7, $FE, $01	//restore $14
	db $F8, $84, $FF
	
org $82818E
	JML decomp_panel
	
	
org $82E0B4
	LDA #$8000	//shikin panel pos  hidari
org $82E0B9
	LDA #$8014		//shikin panel pos migi
org $838109
	JML menu_panel_pos
	
org $D28613
	db $0D, $00, $00  //idou
org $D28631
	db $0D, $01, $00	//seishin
org $D2864F
	db $0D, $02, $00	//nouryoku
org $D28618
	db $0D, $03, $00	//kougeki
org $D28622
	db $0D, $04, $00	//henkei
org $D28627
	db $0D, $05, $00	//gattai
org $D2862C
	db $0D, $06, $00	//bunri
org $D28636
	db $0D, $07, $00	//settoku
org $D2863B
	db $0D, $08, $00	//chichuu
org $D28640
	db $0D, $09, $00	//suichuu
org $D28645
	db $0D, $0A, $00	//chijou
org $D2864A
	db $0D, $0B, $00	//kuuchuu
org $D28654
	db $0D, $0C, $00	//taiki
org $D28659
	db $0D, $0D, $00	//part
org $D2861D
	db $0D, $0E, $00	//hasshin
	
org $D284D2
	db $0D, $10, $00	//konjou
org $D284D7
	db $0D, $11, $00	//dokonjou
org $D284DD
	db $0D, $12, $00	//hokyuu
org $D284E2
	db $0D, $13, $00	//yuujou
org $D284E7
	db $0D, $14, $00	//shinrai
org $D284EC
	db $0D, $15, $00	//ai
org $D284EF
	db $0D, $16, $00	//gekido
org $D284F4
	db $0D, $17, $00	//kiai
org $D284F9
	db $0D, $18, $00	//kasoku
org $D284FE
	db $0D, $19, $00	//nekketsu
org $D28503
	db $0D, $1A, $00	//hitchu
org $D28508
	db $0D, $1B, $00	//hirameki
org $D2850D
	db $0D, $1C, $00	//kouun
org $D28512
	db $0D, $1D, $00	//kakusei
org $D28517
	db $0D, $1E, $00	//iatsu
org $D2851C
	db $0D, $1F, $00	//tekagen
org $D28521
	db $0D, $20, $00	//shuuchuu
org $D28526
	db $0D, $21, $00	//gekirei
org $D2852B
	db $0D, $22, $00	//saidou
org $D28530
	db $0D, $23, $00	//fukkatsu
org $D28535
	db $0D, $24, $00	//kakuremi
org $D2853B
	db $0D, $25, $00	//datsuryoku
org $D28540
	db $0D, $26, $00	//jibaku
org $D28545
	db $0D, $27, $00	//tansaku
org $D2854A
	db $0D, $28, $00	//ashikase
org $D2854F
	db $0D, $29, $00	//kakuran
org $D28554
	db $0D, $2A, $00	//teisatsu
org $D28559
	db $0D, $2B, $00	//teppeki
org $D2855E
	db $0D, $2C, $00	//tamashii
org $D28561
	db $0D, $2D, $00	//kiseki
org $D284CD
	db $0D, $2F, $00	//nazo
org $D286F0
	db $0D, $46, $00	//beam coat
org $D286F7
	db $0D, $47, $00	//E-field
org $D286FE
	db $0D, $48, $00	//aura barrier
org $D28705
	db $0D, $49, $00	//beam barrier
org $D2870D
	db $0D, $4A, $00	//HP kaifuku
org $D28714
	db $0D, $4B, $00	//bunshin
org $D28719
	db $0D, $4C, $00	//henkei
org $D2871E
	db $0D, $4D, $00	//gattai
org $D28723
	db $0D, $4E, $00	//bunri
org $D262C9
	db $0D, $4F, $00	//nu gundam
org $D262CF
	db $0D, $50, $00	//F-91
org $D262D4
	db $0D, $51, $00	//NT Alex
org $D262DE
	db $0D, $52, $00 //GP-01Fb
org $D262E6
	db $0D, $53, $00 //GP-02A
org $D262ED
	db $0D, $54, $00 //GP-03 Dendrobium
org $D262FA
	db $0D, $55, $00 //GP-03S Stamen
org $D26306
	db $0D, $56, $00 //Gun Cannon
org $D2630D
	db $0D, $57, $00 //Gun Tank
org $D26313
	db $0D, $58, $00 //Ball
org $D26317
	db $0D, $59, $00 //Nemo
org $D2631A
	db $0D, $5A, $00 //GM II
org $D2631E
	db $0D, $5B, $00 //Jegan
org $D26323
	db $0D, $5C, $00 //Re-Gz
org $D26329
	db $0D, $5D, $00 //Re-Gz
org $D2632F
	db $0D, $5E, $00 //Getter1
org $D26335
	db $0D, $5F, $00 //Getter2
org $D2633B
	db $0D, $60, $00 //Getter3
org $D26341
	db $0D, $61, $00 //Getter Dragom
org $D2634A
	db $0D, $62, $00 //Getter Liger
org $D26353
	db $0D, $63, $00 //Getter Poisedon
org $D2635D
	db $0D, $64, $00 //Mazinger Z
org $D26364
	db $0D, $65, $00 //Mazinger Z
org $D2636B
	db $0D, $66, $00 //Great Mazinger
org $D26375
	db $0D, $67, $00 //Grendizer
org $D2637D
	db $0D, $68, $00 //Speizer
org $D26383
	db $0D, $69, $00 //Double Speizer
org $D2638C
	db $0D, $6A, $00 //Drill Speizer
org $D26395
	db $0D, $6B, $00 //Marine Speizer
org $D2639E
	db $0D, $6C, $00 //Grendizer
org $D263A6
	db $0D, $6D, $00 //Grendizer
org $D263AE
	db $0D, $6E, $00 //Grendizer
org $D263B6
	db $0D, $6F, $00 //Afrodite A
org $D263BD
	db $0D, $70, $00 //Diana A
org $D263C4
	db $0D, $71, $00 //Boss Borot
org $D263CB
	db $0D, $72, $00 //Venus A
org $D263D2
	db $0D, $73, $00 //Battle Jet
org $D263DA
	db $0D, $74, $00 //Battle Crusher
org $D263E4
	db $0D, $75, $00 //Battle Tank
org $D263EB
	db $0D, $76, $00 //Battle Marine
org $D263F2
	db $0D, $77, $00 //Battle Craft
org $D263FA
	db $0D, $78, $00 //Combattler V
org $D26402
	db $0D, $79, $00 //Raideen
org $D26409
	db $0D, $7A, $00 //Blueger
org $D2640F
	db $0D, $7B, $00 //Daimos
org $D26414
	db $0D, $7C, $00 //Galver FX II
org $D2641C
	db $0D, $7D, $00 //Daitarn 3
org $D26423
	db $0D, $7E, $00 //Dai Fighter
org $D2642B
	db $0D, $7F, $00 //Daitank
org $D26431
	db $0D, $80, $00 //Zambird
org $D26437
	db $0D, $81, $00 //Zambo Ace
org $D2643E
	db $0D, $82, $00 //Zambull
org $D26443
	db $0D, $83, $00 //Zambase
org $D26449
	db $0D, $84, $00 //Zambot 3
org $D26450
	db $0D, $85, $00 //dunbine
org $D26456
	db $0D, $86, $00 //billbine
org $D2645C
	db $0D, $87, $00 //wing caliver
org $D26466
	db $0D, $88, $00 //Goshogun
org $D2646E
	db $0D, $89, $00 //Dankuga
org $D26474
	db $0D, $8A, $00 //Eagle Fighter N
org $D2647F
	db $0D, $8B, $00 //Eagle Fighter A
org $D2648A
	db $0D, $8C, $00 //Eagle Fighter H
org $D26495
	db $0D, $8D, $00 //Land Kuga N
org $D2649E
	db $0D, $8E, $00 //Land Kuga A
org $D264A7
	db $0D, $8F, $00 //Land Kuga H
org $D264B0
	db $0D, $90, $00 //Land Liger N
org $D264B9
	db $0D, $91, $00 //Land Liger A
org $D264C2
	db $0D, $92, $00 //Land Liger H
org $D264CB
	db $0D, $93, $00 //Big moth N
org $D264D2
	db $0D, $94, $00 //Big moth A
org $D264D9
	db $0D, $95, $00 //Big moth H
org $D264E0
	db $0D, $96, $00 //Bloodtemple
org $D264E9
	db $0D, $97, $00 //Atol 5
org $D264EF
	db $0D, $98, $00 //Godneros
org $D264F6
	db $0D, $99, $00 //Psybuster
org $D264FD
	db $0D, $9A, $00 //Psybird
org $D26503
	db $0D, $9B, $00 //Granzon
org $D26509
	db $0D, $9C, $00 //Neo Granzon
org $D26512
	db $0D, $9D, $00 //Valsione R
org $D2651B
	db $0D, $9E, $00 //Zamzeed
org $D26521
	db $0D, $9F, $00 //Granvel
org $D26529
	db $0D, $A0, $00 //Gaddess
org $D2652E
	db $0D, $A1, $00 //Wizol kai
org $D26536
	db $0D, $A2, $00 //Norus Rei
org $D2653D
	db $0D, $A3, $00 //Gadifoul
org $D26545
	db $0D, $A4, $00 //Gespent
org $D2654D
	db $0D, $A5, $00 //Zaku kai
org $D26552
	db $0D, $A6, $00 //Dom
org $D26555
	db $0D, $A7, $00 //Elemes
org $D2655A
	db $0D, $A8, $00 //Marasai
org $D2655F
	db $0D, $A9, $00 //Barzam
org $D26564
	db $0D, $AA, $00 //Hambrabi
org $D2656A
	db $0D, $AB, $00 //Hambrabi
org $D26570
	db $0D, $AC, $00 //Asshimer
org $D26576
	db $0D, $AD, $00 //Asshimer
org $D2657C
	db $0D, $AE, $00 //Psychogundam
org $D26584
	db $0D, $AF, $00 //Psychogundam
org $D2658C
	db $0D, $B0, $00 //Byarlant
org $D26592
	db $0D, $B1, $00 //Gabthley
org $D26598
	db $0D, $B2, $00 //Gabthley
org $D2659E
	db $0D, $B3, $00 //Baund Doc
org $D265A7
	db $0D, $B4, $00 //Baund Doc
org $D265B0
	db $0D, $B5, $00 //Psychogundam mk2
org $D265BB
	db $0D, $B6, $00 //Psychogundam mk2
org $D265C6
	db $0D, $B7, $00 //Hyakushiki
org $D265CB
	db $0D, $B8, $00 //Methuss
org $D265CF
	db $0D, $B9, $00 //Methuss
org $D265D3
	db $0D, $BA, $00 //Braw Bro
org $D265DA
	db $0D, $BB, $00 //Bigro
org $D265DE
	db $0D, $BC, $00 //Kempfer
org $D265E5
	db $0D, $BD, $00 //Valwaro
org $D265ED
	db $0D, $BE, $00 //Gerbera Tetra
org $D265F6
	db $0D, $BF, $00 //Neue Ziel
org $D265FE
	db $0D, $C0, $00 //Qubeley
org $D26604
	db $0D, $C1, $00 //Qubeley mk2
org $D2660D
	db $0D, $C2, $00 //Garus J
org $D26612
	db $0D, $C3, $00 //Zssa
org $D26615
	db $0D, $C4, $00 //Hammer Hammer
org $D2661D
	db $0D, $C5, $00 //R Jarja
org $D26624
	db $0D, $C6, $00 //Bawoo
org $D26627
	db $0D, $C7, $00 //Bawoo
org $D2662A
	db $0D, $C8, $00 //Dreissen
org $D26630
	db $0D, $C9, $00 //Quin Mantha
org $D26638
	db $0D, $CA, $00 //Doven Wolf
org $D26640
	db $0D, $CB, $00 //Geymalk
org $D26646
	db $0D, $CC, $00 //Geara Doga
org $D2664D
	db $0D, $CD, $00 //Geara Doga
org $D26654
	db $0D, $CE, $00 //Jagd Doga
org $D2665C
	db $0D, $CF, $00 //Jagd Doga
org $D26664
	db $0D, $D0, $00 //Sazabi
org $D26669
	db $0D, $D1, $00 //Alpha Azieru
org $D26670
	db $0D, $D2, $00 //Vigna Ghina
org $D26677
	db $0D, $D3, $00 //Berga Giros
org $D2667F
	db $0D, $D4, $00 //Raflessia
org $D26685
	db $0D, $D5, $00 //Mechasaurus Saki
org $D2668F
	db $0D, $D6, $00 //Mechasaurus Bado
org $D26699
	db $0D, $D7, $00 //Mechasaurus Zai
org $D266A3
	db $0D, $D8, $00 //Mechasaurus Zen 2
org $D266AE
	db $0D, $D9, $00 //Mechasaurus Dai
org $D266B8
	db $0D, $DA, $00 //Mechasaurus Sig
org $D266C2
	db $0D, $DB, $00 //Dablas M2
org $D266CF
	db $0D, $DC, $00 //Garada K7
org $D266DB
	db $0D, $DD, $00 //Tros D7
org $D266E7
	db $0D, $DE, $00 //Rhine X1
org $D266ED
	db $0D, $DF, $00 //Jenova M9
org $D266FA
	db $0D, $E0, $00 //Spartan K5
org $D26708
	db $0D, $E1, $00 //Abdra U6
org $D26715
	db $0D, $E2, $00 //Goole
org $D26719
	db $0D, $E3, $00 //Bood
org $D2671D
	db $0D, $E4, $00 //Gratonius
org $D2672A
	db $0D, $E5, $00 //Obelisk
org $D26736
	db $0D, $E6, $00 //Minifo
org $D2673C
	db $0D, $E7, $00 //Mother barn
org $D26743
	db $0D, $E8, $00 //Gilgil
org $D2674E
	db $0D, $E9, $00 //Gosgos
org $D26759
	db $0D, $EA, $00 //Kingori
org $D26763
	db $0D, $EB, $00 //Picdron
org $D26769
	db $0D, $EC, $00 //Gilgilgun
org $D26770
	db $0D, $ED, $00 //Mecha Gilgilgun
org $D26779
	db $0D, $EE, $00 //Dragonsaurus
org $D26782
	db $0D, $EF, $00 //Valsion
org $D26789
	db $0D, $F0, $00 //Drumlo
org $D2678E
	db $0D, $F1, $00 //Leprechaun
org $D26795
	db $0D, $F2, $00 //Zwarth
org $D2679B
	db $0D, $F3, $00 //Vierres
org $D267A0
	db $0D, $F4, $00 //Wryneck
org $D267A6
	db $0D, $F5, $00 //Bastole
org $D267AC
	db $0D, $F6, $00 //Bubri
org $D267B1
	db $0D, $F7, $00 //Gallaba
org $D267B5
	db $0D, $F8, $00 //Gran-Garan
org $D267BD
	db $0D, $F9, $00 //Goraon
org $D267C2
	db $0D, $FA, $00 //Willwips
org $D267CB
	db $0D, $FB, $00 //Gyre Garing
org $D267D3
	db $0D, $FC, $00 //Spriggan
org $D267D9
	db $0D, $FD, $00 //Drome
org $D267DE
	db $0D, $FE, $00 //Gante
org $D267E2
	db $0D, $FF, $00 //Buston
org $D267EE
	db $0D, $00, $01 //Gildeen
org $D267FB
	db $0D, $01, $01 //Kyodai Sharking
org $D26805
	db $0D, $02, $01 //Mechaboost Domira
org $D26810
	db $0D, $03, $01 //Mechaboost Gavitan
org $D2681C
	db $0D, $04, $01 //Mechaboost Gavitan
org $D26828
	db $0D, $05, $01 //Descain
org $D26834
	db $0D, $06, $01 //Helldain
org $D26840
	db $0D, $07, $01 //Bundock
org $D26846
	db $0D, $08, $01 //Zonnekaiser
org $D26854
	db $0D, $09, $01 //Gimeria
org $D2685F
	db $0D, $0A, $01 //God Amon
org $D2686D
	db $0D, $0B, $01 //Garumus
org $D26877
	db $0D, $0C, $01 //Demon
org $D26880
	db $0D, $0D, $01 //Big Garuda
org $D26888
	db $0D, $0E, $01 //Bundle
org $D2688F
	db $0D, $0F, $01 //Cuttnal
org $D26897
	db $0D, $10, $01 //Kernagul
org $D268A0
	db $0D, $11, $01 //Gornagool
org $D268A7
	db $0D, $12, $01 //Zanzibar
org $D268AD
	db $0D, $13, $01 //Midea
org $D268B1
	db $0D, $14, $01 //Columbus
org $D268B7
	db $0D, $15, $01 //Pazock
org $D268BB
	db $0D, $16, $01 //Gaw
org $D268BE
	db $0D, $17, $01 //Dabude
org $D268C2
	db $0D, $18, $01 //Troy Horse
org $D268C9
	db $0D, $19, $01 //Graf Zeppelin
org $D268D3
	db $0D, $1A, $01 //S Gundam
org $D268D9
	db $0D, $1B, $01 //G Cruiser
org $D268E0
	db $0D, $1C, $01 //Alexandria
org $D268E9
	db $0D, $1D, $01 //Musai kai
org $D268EF
	db $0D, $1E, $01 //Argama
org $D268F4
	db $0D, $1F, $01 //Irish
org $D268FB
	db $0D, $20, $01 //Ex-S Gundam
org $D26903
	db $0D, $21, $01 //Nahel Argama
org $D2690C
	db $0D, $22, $01 //Endra
org $D26911
	db $0D, $23, $01 //Sadarahn
org $D26917
	db $0D, $24, $01 //Rewloola
org $D2691D
	db $0D, $25, $01 //Ra Cailum
org $D26925
	db $0D, $26, $01 //Zamouth-Garr
org $D2692C
	db $0D, $27, $01 //Garoica
org $D26931
	db $0D, $28, $01 //Kaleitsed
org $D26938
	db $0D, $29, $01 //Restrail
org $D2693F
	db $0D, $2A, $01 //Glassidu-lu
org $D26948
	db $0D, $2B, $01 //Rest Gransh
org $D26951
	db $0D, $2C, $01 //Zeranio
org $D26956
	db $0D, $2D, $01 //Geios Glud
org $D26960
	db $0D, $2E, $01 //Liege Geios
org $D26969
	db $0D, $2F, $01 //Baran Schnile
org $D26973
	db $0D, $30, $01 //Gespenst mkII
org $D2697E
	db $0D, $31, $01 //L-Gaim
org $D26984
	db $0D, $32, $01 //L-Gaim mkII
org $D2698D
	db $0D, $33, $01 //Proller
org $D26993
	db $0D, $34, $01 //Dizard
org $D26999
	db $0D, $35, $01 //Auge
org $D2699E
	db $0D, $36, $01 //Aug
org $D269A2
	db $0D, $37, $01 //Ash Ra Tempel
org $D269AB
	db $0D, $38, $01 //Calvary Tempel
org $D269B5
	db $0D, $39, $01 //Bash
org $D269BA
	db $0D, $3A, $01 //Atorl
org $D269BF
	db $0D, $3B, $01 //G-Roon
org $D269C4
	db $0D, $3C, $01 //Saloons
org $D269CB
	db $0D, $3D, $01 //Aaron
org $D269D0
	db $0D, $3E, $01 //Shin Getter1
org $D269D9
	db $0D, $3F, $01 //Shin Getter2
org $D269E2
	db $0D, $40, $01 //Shin Getter3
org $D269EC
	db $0D, $41, $01 //Gayrahm
org $D269F1
	db $0D, $42, $01 //Gundam
org $D269F6
	db $0D, $43, $01 //Gundam mkII
org $D269FE
	db $0D, $44, $01 //G Defenser
org $D26A07
	db $0D, $45, $01 //Super Gundam
org $D26A10
	db $0D, $46, $01 //Nu Gundam
org $D26A16
	db $0D, $47, $01 //Kyuu Zaku
org $D26A1B
	db $0D, $48, $01 //Sarbine
org $D26A21
	db $0D, $49, $01 //Zwauth
org $D26A26
	db $0D, $4A, $01 //Texas Mac
org $D26A2E
	db $0D, $4B, $01 //Adzam
org $D26A33
	db $0D, $4C, $01 //Nise Psybuster
org $D26A3C
	db $0D, $4D, $01 //Nightingale
org $D26A44
	db $0D, $4E, $01 //Nuvel Dizard
org $D26A4E
	db $0D, $4F, $01 //Ankoku Taishogun
org $D26A59
	db $0D, $50, $01 //Hardias
org $D26A60
	db $0D, $51, $01 //Dreiud
org $D26A66
	db $0D, $52, $01 //Z Gundam
org $D26A6C
	db $0D, $53, $01 //Wave Rider
org $D26A75
	db $0D, $54, $01 //ZZ Gundam
org $D26A7C
	db $0D, $55, $01 //G Fortress
org $D26A85
	db $0D, $56, $01 //Enbanju Jinjin
org $D26A90
	db $0D, $57, $01 //Enbanju Dekdek
org $D26A9B
	db $0D, $58, $01 //Sentouju Dante
org $D26AA5
	db $0D, $59, $01 //Sentouju Zugahr
org $D26AB0
	db $0D, $5A, $01 //Juma Taishogun
org $D26AB9
	db $0D, $5B, $01 //Graydon
org $D26ABF
	db $0D, $5C, $01 //Garunrol
org $D26AC6
	db $0D, $5D, $01 //Greia
org $D26ACB
	db $0D, $5E, $01 //Mechasaurus Zu
org $D26AD5
	db $0D, $5F, $01 //Botune
org $D26ADB
	db $0D, $60, $01 //Dogosse Giar
org $D26AE2
	db $0D, $61, $01 //Audhumla
org $D26AE8
	db $0D, $62, $01 //Thudree
org $D26AED
	db $0D, $63, $01 //Hyper Leprechaun
org $D26AF8
	db $0D, $64, $01 //Hyper Wryneck
org $D26B02
	db $0D, $65, $01 //Hyper Gallaba
org $D26B1A
	db $0D, $66, $01 //Mobile Suit
org $D26B21
	db $0D, $67, $01 //Mobile Armor
	
org $D26DB4
	db $0D, $68, $01 //Cham Faw
org $D26DBC
	db $0D, $69, $01 //Belle Arl
org $D26DC3
	db $0D, $6A, $01 //Ell Fino
org $D26DCA
	db $0D, $6B, $01 //Lilith Faw
org $D26DD2
	db $0D, $6C, $01 //Silky Mau
org $D26DDA
	db $0D, $6D, $01 //Yousei6
org $D26DE0
	db $0D, $6E, $01 //Jack King
org $D26DE9
	db $0D, $6F, $01 //Mary King
org $D26DF1
	db $0D, $70, $01 //Nagare Hyoma
org $D26DF8
	db $0D, $71, $01 //Jin Hayato
org $D26DFF
	db $0D, $72, $01 //Kuruma Benkei
org $D26E06
	db $0D, $73, $01 //Hojo Shingo
org $D26E0F
	db $0D, $74, $01 //Remy Shimada
org $D26E17
	db $0D, $75, $01 //Kily Gaglay
org $D26E21
	db $0D, $76, $01 //Jin Kappei
org $D26E28
	db $0D, $77, $01 //Kamie Uchuta
org $D26E33
	db $0D, $78, $01 //Kamikita Keiko
org $D26E3C
	db $0D, $79, $01 //Fujiwara Shinobu
org $D26E43
	db $0D, $7A, $01 //Yuki Sara
org $D26E4C
	db $0D, $7B, $01 //Shikibu Masato
org $D26E55
	db $0D, $7C, $01 //Shiba Ryou
org $D26E5C
	db $0D, $7D, $01 //Aoi Hyoma
org $D26E63
	db $0D, $7E, $01 //Naniwa Juzo
org $D26E6C
	db $0D, $7F, $01 //Nishikawa Daisaku
org $D26E75
	db $0D, $80, $01 //Namba Chizuru
org $D26E7D
	db $0D, $81, $01 //Kita Kosuke
org $D26E84
	db $0D, $82, $01 //Gilliam Yeager
org $D26E8F
	db $0D, $83, $01 //Sho Zama
org $D26E96
	db $0D, $84, $01 //Masaki Ando
org $D26E9F
	db $0D, $85, $01 //Ryune Zoldark
org $D26EAA
	db $0D, $86, $01 //Shu Shirakawa
org $D26EB3
	db $0D, $87, $01 //Quattro Vageena
org $D26EBD
	db $0D, $88, $01 //Bright Noa
org $D26EC5
	db $0D, $89, $01 //Hayato Kobayashi
org $D26ECE
	db $0D, $8A, $01 //Kai Siden
org $D26ED5
	db $0D, $8B, $01 //Matilda Ajan
org $D26EDF
	db $0D, $8C, $01 //Sayla Mass
org $D26EE6
	db $0D, $8D, $01 //Wackein
org $D26EEC
	db $0D, $8E, $01 //Tianem
org $D26EF2
	db $0D, $8F, $01 //Emma Sheen
org $D26EF9
	db $0D, $90, $01 //Torres
org $D26EFE
	db $0D, $91, $01 //Fa Yuiri
org $D26F06
	db $0D, $92, $01 //Katsu Kobayashi
org $D26F0E
	db $0D, $93, $01 //Fou Murasame
org $D26F17
	db $0D, $94, $01 //Beltorch Chika
org $D26F22
	db $0D, $95, $01 //Kely Layzner
org $D26F2B
	db $0D, $96, $01 //Henken Beckener
org $D26F36
	db $0D, $97, $01 //Blex Forer
org $D26F41
	db $0D, $98, $01 //Roux Louka
org $D26F47
	db $0D, $99, $01 //Elpee Puru
org $D26F4F
	db $0D, $9A, $01 //Purutz
org $D26F54
	db $0D, $9B, $01 //Leina Ashta
org $D26F5D
	db $0D, $9C, $01 //Beecha Oleg
org $D26F67
	db $0D, $9D, $01 //Mondo Agake
org $D26F6F
	db $0D, $9E, $01 //Elle Vianno
org $D26F77
	db $0D, $9F, $01 //Iino Abbav
org $D26F81
	db $0D, $A0, $01 //Emary Ounce
org $D26F8A
	db $0D, $A1, $01 //Quess Paraya
org $D26F92
	db $0D, $A2, $01 //Chan Agi
org $D26F9A
	db $0D, $A3, $01 //Kayra Su
org $D26FA1
	db $0D, $A4, $01 //Hathaway Noa
org $D26FAA
	db $0D, $A5, $01 //Christina Mckenzie
org $D26FB8
	db $0D, $A6, $01 //Bernard Wiseman
org $D26FC4
	db $0D, $A7, $01 //Cecily Farchild
org $D26FD2
	db $0D, $A8, $01 //Nina Purpleton
org $D26FDC
	db $0D, $A9, $01 //Anavel Gato
org $D26FE5
	db $0D, $AA, $01 //Chuck Keith
org $D26FEE
	db $0D, $AB, $01 //Bernando Monsha
org $D26FF9
	db $0D, $AC, $01 //Yumi Sayaka
org $D26FFF
	db $0D, $AD, $01 //Ramthus Hatha
org $D27007
	db $0D, $AE, $01 //Boss
org $D2700A
	db $0D, $AF, $01 //Honoo Jun
org $D27010
	db $0D, $B0, $01 //Maria Fleed
org $D27019
	db $0D, $B1, $01 //Makiba Hikaru
org $D27021
	db $0D, $B2, $01 //Saotome Michiru
org $D2702B
	db $0D, $B3, $01 //Dangel Kupa
org $D27035
	db $0D, $B4, $01 //Jinguji Chikara
org $D2703E
	db $0D, $B5, $01 //Asuka Rei
org $D27047
	db $0D, $B6, $01 //Sakurano Mari
org $D2704E
	db $0D, $B7, $01 //Amuro Ray
org $D27055
	db $0D, $B8, $01 //Camille Vidan
org $D2705E
	db $0D, $B9, $01 //Judau Ashta
org $D27068
	db $0D, $BA, $01 //Seebook Arno
org $D27072
	db $0D, $BB, $01 //Kou Uraki
org $D27079
	db $0D, $BC, $01 //Kabuto Kouji
org $D27080
	db $0D, $BD, $01 //Kamikita Heizaemon
org $D2708C
	db $0D, $BE, $01 //Jin Umee
org $D27093
	db $0D, $BF, $01 //Jin Gengorou
org $D2709C
	db $0D, $C0, $01 //Jin Ichitarou
org $D270A5
	db $0D, $C1, $01 //Garison Tokita
org $D270AF
	db $0D, $C2, $01 //Beautiful Tachibana
org $D270BC
	db $0D, $C3, $01 //Sanjou Reika
org $D270C4
	db $0D, $C4, $01 //Toda Totta
org $D270CD
	db $0D, $C5, $01 //Tsurugi Tetsuya
org $D270D4
	db $0D, $C6, $01 //Yuzuki Kyoshirou
org $D270DF
	db $0D, $C7, $01 //Izumi Nana
org $D270E6
	db $0D, $C8, $01 //Duke Fleed
org $D270F0
	db $0D, $C9, $01 //Marvel Frozen
org $D270FB
	db $0D, $CA, $01 //Hibiki Akira
org $D27101
	db $0D, $CB, $01 //Nie Givun
org $D27108
	db $0D, $CC, $01 //Keen Kiss
org $D27110
	db $0D, $CD, $01 //Ciela Lapana
org $D27119
	db $0D, $CE, $01 //Elle Hum
org $D27120
	db $0D, $CF, $01 //Rimul Luft
org $D27128
	db $0D, $D0, $01 //Eve Tamari
org $D27130
	db $0D, $D1, $01 //Haran Banjou
org $D27139
	db $0D, $D2, $01 //Ryuzaki Kazuya
org $D27142
	db $0D, $D3, $01 //Rempou Heishi
org $D2714D
	db $0D, $D4, $01 //Byston Well Heishi
org $D27158
	db $0D, $D5, $01 //Tytti Norback
org $D27165
	db $0D, $D6, $01 //Juma Shogun
org $D2716E
	db $0D, $D7, $01 //South Burining
org $D27177
	db $0D, $D8, $01 //Long
org $D27180
	db $0D, $D9, $01 //Presia Xenosakis
org $D2718B
	db $0D, $DA, $01 //Mio Sasuga
org $D27192
	db $0D, $DB, $01 //Titans Hei
org $D2719D
	db $0D, $DC, $01 //Monica Bilsea
org $D271A7
	db $0D, $DD, $01 //Safine Grace
org $D271B2
	db $0D, $DE, $01 //Gadem
org $D271B6
	db $0D, $DF, $01 //Rambal Ral
org $D271BD
	db $0D, $E0, $01 //Crowley Hamon
org $D271C6
	db $0D, $E1, $01 //Clamp
org $D271CB
	db $0D, $E2, $01 //Gaia
org $D271CF
	db $0D, $E3, $01 //Mash
org $D271D4
	db $0D, $E4, $01 //Ortega
org $D271D9
	db $0D, $E5, $01 //Challia Bull
org $D271E1
	db $0D, $E6, $01 //Lalah Sune
org $D271E8
	db $0D, $E7, $01 //Gadi Nkinze
org $D271F1
	db $0D, $E8, $01 //Kacricon Cacooler
org $D271FD
	db $0D, $E9, $01 //Sara Zabiarov
org $D27206
	db $0D, $EA, $01 //Gates Capa
org $D2720E
	db $0D, $EB, $01 //Jerid Messa
org $D27216
	db $0D, $EC, $01 //Jamaican Daninghan
org $D27223
	db $0D, $ED, $01 //Jamitov Hymen
org $D2722E
	db $0D, $EE, $01 //Haman Karn
org $D27237
	db $0D, $EF, $01 //Buran Blutach
org $D27241
	db $0D, $F0, $01 //Ben Wooder
org $D27249
	db $0D, $F1, $01 //Mauar Pharaoh
org $D27253
	db $0D, $F2, $01 //Mineva Zabi
org $D2725A
	db $0D, $F3, $01 //Lila Milla Rira
org $D27265
	db $0D, $F4, $01 //Yazan Gable
org $D2726E
	db $0D, $F5, $01 //Rosamia Badam
org $D27277
	db $0D, $F6, $01 //Mashymre Cello
org $D27280
	db $0D, $F7, $01 //Illia Pazom
org $D27288
	db $0D, $F8, $01 //Chara Son
org $D27290
	db $0D, $F9, $01 //Glemy Toto
org $D27298
	db $0D, $FA, $01 //Gotton Go
org $D272A0
	db $0D, $FB, $01 //Nie Ghiren
org $D272A8
	db $0D, $FC, $01 //Lance Ghiren
org $D272B1
	db $0D, $FD, $01 //Rakan Dahkaran
org $D272BA
	db $0D, $FE, $01 //Gyunei Guss
org $D272C2
	db $0D, $FF, $01 //Nanai Migel
org $D272CA
	db $0D, $00, $02 //Rezin Schneider
org $D272D5
	db $0D, $01, $02 //Zabine Chareux
org $D272DE
	db $0D, $02, $02 //Annamarie Bourget
org $D272EB
	db $0D, $03, $02 //Dorel Ronah
org $D272F2
	db $0D, $04, $02 //Carozzo Ronah
org $D272FA
	db $0D, $05, $02 //Steiner
org $D27301
	db $0D, $06, $02 //Cima Garahau
org $D2730A
	db $0D, $07, $02 //Ashura danshaku
org $D27313
	db $0D, $08, $02 //Blocken hashaku
org $D2731D
	db $0D, $09, $02 //Dr.Hell
org $D27322
	db $0D, $0A, $02 //Sharkin
org $D27328
	db $0D, $0B, $02 //Aeug hei
org $D2732F
	db $0D, $0C, $02 //Balao
org $D27333
	db $0D, $0D, $02 //Garuda
org $D27338
	db $0D, $0E, $02 //Mia
org $D2733C
	db $0D, $0F, $02 //Orleana
org $D27341
	db $0D, $10, $02 //Killer the Butcher
org $D2734D
	db $0D, $11, $02 //Korosu
org $D27351
	db $0D, $12, $02 //Don Zauther
org $D27359
	db $0D, $13, $02 //Richter
org $D2735E
	db $0D, $14, $02 //Bullbous
org $D27363
	db $0D, $15, $02 //Ryza
org $D27367
	db $0D, $16, $02 //Izam
org $D2736C
	db $0D, $17, $02 //Leonardo Bundle
org $D2737C
	db $0D, $18, $02 //Suguni Cuttnal
org $D27387
	db $0D, $19, $02 //Yatat La Cuttnal
org $D27395
	db $0D, $1A, $02 //Todo Guinness
org $D2739D
	db $0D, $1B, $02 //Burne Banning
org $D273A7
	db $0D, $1C, $02 //Kokukishi
org $D273AE
	db $0D, $1D, $02 //Drake Luft
org $D273B7
	db $0D, $1E, $02 //Shot Weapon
org $D273C1
	db $0D, $1F, $02 //Bishot Hatta
org $D273CB
	db $0D, $20, $02 //Luther Luft
org $D273D3
	db $0D, $21, $02 //Musy Poe
org $D273DC
	db $0D, $22, $02 //Z Light
org $D273E4
	db $0D, $23, $02 //Torust Chesilenko
org $D273F2
	db $0D, $24, $02 //Jeryll Coochibie
org $D273FB
	db $0D, $25, $02 //Allen Brady
org $D27404
	db $0D, $26, $02 //Fay Chenka
org $D2740D
	db $0D, $27, $02 //Garalia Nyamhee
org $D27418
	db $0D, $28, $02 //Galamity Mangan
org $D27423
	db $0D, $29, $02 //Daa
org $D27426
	db $0D, $2A, $02 //Het
org $D2742B
	db $0D, $2B, $02 //Ankoku Taishogun
org $D27436
	db $0D, $2C, $02 //Akuryou Hardias
org $D27445
	db $0D, $2D, $02 //Hachuu Dreiud
org $D27455
	db $0D, $2E, $02 //DC heishi
org $D2745C
	db $0D, $2F, $02 //Elite hei
org $D27463
	db $0D, $30, $02 //Jinkou chinou
org $D2746C
	db $0D, $31, $02 //Jinkou chinou kai
org $D27477
	db $0D, $32, $02 //Guest hei
org $D2747F
	db $0D, $33, $02 //Guest totsugeki hei
org $D27489
	db $0D, $34, $02 //Guest shineitai
org $D27495
	db $0D, $35, $02 //Poseidal hei
org $D2749D
	db $0D, $36, $02 //Poseidal shineitai
org $D274AB
	db $0D, $37, $02 //Aiguille Delaz
org $D274B5
	db $0D, $38, $02 //Daba Myroad
org $D274BE
	db $0D, $39, $02 //Gawha Leccee
org $D274C8
	db $0D, $3A, $02 //Mirau Kyao
org $D274D1
	db $0D, $3B, $02 //Fannelia Amu
org $D274DB
	db $0D, $3C, $02 //Hatchia Motchia
org $D274E5
	db $0D, $3D, $02 //Gavlet Gablae
org $D274F2
	db $0D, $3E, $02 //Amandara Kamandara
org $D274FE
	db $0D, $3F, $02 //Oldona Poseidal
org $D27509
	db $0D, $40, $02 //Nei Mo Han
org $D27512
	db $0D, $41, $02 //Giwaza Lowaw
org $D2751A
	db $0D, $42, $02 //Full Flat
org $D27522
	db $0D, $43, $02 //Kwasan Olivie
org $D2752C
	db $0D, $44, $02 //Rockley Ron
org $D27535
	db $0D, $45, $02 //Anton Land
org $D2753E
	db $0D, $46, $02 //Heckler Mauze
org $D27549
	db $0D, $47, $02 //Lily Hasshi
org $D27553
	db $0D, $48, $02 //Chai Char
org $D2755B
	db $0D, $49, $02 //Wazan Loon
org $D27563
	db $0D, $4A, $02 //Maph Mactomin
org $D2756C
	db $0D, $4B, $02 //Barn Gania Killas
org $D27579
	db $0D, $4C, $02 //Ted Dibilase
org $D27582
	db $0D, $4D, $02 //Glofis Raclayne
org $D2758E
	db $0D, $4E, $02 //Justine Shaflawas
org $D2759D
	db $0D, $4F, $02 //Zebris Furszewa
org $D275A9
	db $0D, $50, $02 //Tiniquet Zezenan
org $D275B7
	db $0D, $51, $02 //Mechibos
org $D275BC
	db $0D, $52, $02 //Terius Bilsea
org $D275C7
	db $0D, $53, $02 //Kyouka hei
org $D275CE
	db $0D, $54, $02 //Miwa Sakimori
org $D275D7
	db $0D, $55, $02 //Chou jinkou chinou
org $D28433
	db $0D, $57, $02  //kuu-riku-chichuu
org $D28401
	db $0D, $58, $02  //Type riku
org $D28406
	db $0D, $59, $02  //Type kuu-riku
org $D2840F
	db $0D, $5A, $02  //Type kuu
org $D28418
	db $0D, $5B, $02  //Type sui-riku
org $D28421
	db $0D, $5C, $02  //Type sui-riku-kuu
org $D2842A
	db $0D, $5D, $02  //Type riku-chichuu
org $D2843C
	db $0D, $5E, $02  //Type sui
org $D28445
	db $0D, $5F, $02  //Type riku
org $D2844E
	db $0D, $60, $02  //Type uchuu
org $D28457
	db $0D, $61, $02  //Type kuu-chichuu
org $D28460
	db $0D, $62, $02  //Type kuu-kai
org $D28469
	db $0D, $63, $02 //Type kuu
org $D2875D
	db $0D, $64, $02 //kouseinou radar
org $D28768
	db $0D, $65, $02 //Minovsky craft
org $D28773
	db $0D, $66, $02 //Booster
org $D28779
	db $0D, $67, $02 //Mega booster
org $D28781
	db $0D, $68, $02 //Apogee motor
org $D28789
	db $0D, $69, $02 //Fatima
org $D2878F
	db $0D, $6A, $02 //ALICE
org $D28795
	db $0D, $6B, $02 //Psycho frame
org $D2879D
	db $0D, $6C, $02 //Bio Sensor
org $D287A5
	db $0D, $6D, $02 //Magnet coating
org $D287B1
	db $0D, $6E, $02 //I-field Generator
org $D287BE
	db $0D, $6F, $02 //Chobham armor
org $D287C7
	db $0D, $70, $02 //Hybrid armor
org $D287D2
	db $0D, $71, $02 //Barrier generator
org $D287DD
	db $0D, $72, $02 //Anti Beam coating
org $D287E9
	db $0D, $73, $02 //Repair kit
org $D287F0
	db $0D, $74, $02 //Propellen tank
org $D287F0
	db $0D, $75, $02 //Propellen tank S
org $D28729
	db $0D, $79, $02	//no shield
org $D28730
	db $0D, $7A, $02	//have shield
org $D28737
	db $0D, $7B, $02	//Size S
org $D2873A
	db $0D, $7C, $02	//Size M
org $D2873D
	db $0D, $7D, $02	//Size L
org $D28740
	db $0D, $7E, $02	//Size LL

//########Easy#############
org $809ADF
	JML move_again
org $CBD055
	dw $5000		//zeta beam iryoku
org $CBD0F5
	dw $5000 //zz map pow
org $82B6A3
	JML himitsu_botan

//############TITLE SCREEN###############
org $F00000
title1_chr:
	incbin	"Data/Title1.chr"
gp01_chr:
	incbin	"Data/gp01.chr"
gp01_pal:
	incbin	"Data/gp01.pal"
ishibune_chr:
	incbin	"Data/isibune.chr"
ishibune_map:
	incbin	"Data/ishibune.map"
ishibune_pal:
	incbin	"Data/ishibune.pal"
yaku_chr:
	incbin	"Data/yaku.chr"
yaku_map:
	incbin	"Data/yaku.map"
yaku_pal:
	incbin	"Data/yaku.pal"
beam_chr:
	incbin	"Data/beam.chr"
beam_pal:
	incbin	"Data/beam.pal"
hibana_chr:
	incbin	"Data/hibana.chr"
hibana_pal:
	incbin	"Data/hibana.pal"
jet_pal:
	incbin "Data/jet.pal"
beam_tama_pal:
	incbin "Data/beam_tama.pal"
nu_chr:
	incbin "Data/nu.chr"
nu_pal:
	incbin "Data/nu.pal"
nugun_pal:
	incbin "Data/nugun.pal"
hibana2_chr:
	incbin "Data/hibana2.chr"
hibana2_pal:
	incbin "Data/hibana2.pal"
sparkle_chr:
	incbin "Data/sparkle.chr"
sparkle_pal:
	incbin "Data/sparkle.pal"
explosion_chr:
	incbin "Data/explosion.chr"
explosion_pal:
	incbin "Data/explosion.pal"
jetpack_chr:
	incbin "Data/jetpack.chr"
beam2_pal:
	incbin "Data/beam2.pal"
wing_chr:
	incbin "Data/wing.chr"
wing_pal:
	incbin "Data/wing.pal"

org $F10000
command1:
	incbin "Data/menu.bin"
keito_chr:
	incbin "Data/keito.chr"
chimei_chr:
	incbin "Data/chimei.chr"
seishin_chr:
	incbin "Data/seishin.chr"
panel_chr:
	incbin "Data/menupanel.chr"
ability_chr:
	incbin "Data/ability.chr"
unit_chr:
	incbin "Data/robot_name.chr"

org $F20000
pilot_chr:
	incbin "Data/pilot_name.chr"
ability_panel_chr:
	incbin "Data/panel.chr"
	
	
org $CB019C
	dw $4000		//size
	dl (title1_chr)
org $C603B2
	incbin	"Data/title1.pal"
org $C60404
	incbin	"Data/title2.pal"
	
//######EVENT##########
org $CB020F
	dw (new_about)
org $CBFFB0
new_about:
	db $03		//change event block
	dl (event_about)

org $80FC6D
	dl (event_34)
	db $00
	dl (event_35)
	db $00
dl (event_36)
	db $00
	
org $83F95B
	JML keito_decomp
	
org $828105
	JML new_event0A
org $83FA95
	JML new_event71
	
org $CC2018
	dw $001F  //kanji pal red
	
org $CC3250
	dw (kanji_gou)
	dw (kanji_ken)
org $CC325A
	dw (kanji_an)
	dw (kanji_ken)
	dw (kanji_satsu)
	
org $CC4410
kanji_gou:
	db $02
	dw $114A
	dw $08F0
	dw $114C
	dw $18F0
kanji_ken:
	db $03
	dw $114E
	dw $08F0
	dw $0162
	dw $18F0
	dw $0172
	dw $18F8
kanji_an:
	db $01
	dw $1163
	dw $08F0
kanji_satsu:
	db $03
	dw $1165
	dw $08F0
	dw $0167
	dw $18F0
	dw $0177
	dw $18F8
	
//########BATTLE#########
org $83D5C4
	JML new_effect
org $83D5E4
	CPY #$01E0
	
org $81D127
	LDA #$0240	//effect text, number space
	
//##########NMI##############
org $80F02D
//	JML new_irq
org $80F7FB
	JML nmi_dma
	
//######NEW OAM#########
org $C40066
	dl new_oam_block
	
//#######TITLE OAM##########
org $CB01FD
	dw $F830		//active demo
org $8399DA
	JML choose_demo
org $C40063
	dl (about_ptr)

org $C76962
	dw (taisen)
	dw (dai4ji)
	dw (start)
	dw (load)
	dw (kontinue)
	dw (option)
	dw (demo)
	
org $C76D3B
start:
	db $04
	dw $11C6, $E800
	dw $11C8, $F800
	dw $01CA, $0800
	dw $01DA, $0808
load:
	db $02
	dw $11CB, $EA00
	dw $11CD, $FA00
kontinue:
	db $07
	dw $01CF, $DE00
	dw $01DF, $DE08
	dw $11E0, $E600
	dw $11E2, $F600
	dw $11E4, $0600
	dw $01E6, $1600
	dw $01F6, $1608
option:
	db $03
	dw $11C0, $E600
	dw $11C2, $F600
	dw $11C4, $0600
demo:
	db $02
	dw $11E7, $EA00
	dw $11E9, $FA00
	
about_ptr:
	dw (about)
about:
	db $04
	dw $11EB, $E710
	dw $11ED, $F710
	dw $01EF, $0710
	dw $01FF, $0718
		
org $C7FE50
dai4ji:
	db $12
	dw $1008, $C0D4
	dw $100A, $D0D4
	dw $100C, $E0D4
	dw $100E, $F0D4
	dw $10E0, $00D4
	dw $10E2, $10D4
	dw $10E4, $20D4
	dw $10E6, $30D4
	dw $00E8, $40D4
	dw $00F8, $40DC
	
	dw $1028, $C0E4
	dw $102A, $D0E4
	dw $102C, $E0E4
	dw $102E, $F0E4
	dw $1100, $00E4
	dw $1102, $10E4
	dw $1104, $20E4
	dw $1106, $30E4
	
taisen:
	db $4F
	dw $1042, $90F4
	dw $1044, $A0F4
	dw $1046, $B0F4
	dw $1048, $C0F4
	dw $104A, $D0F4
	dw $104C, $E0F4
	dw $104E, $F0F4
	dw $1120, $00F4
	dw $1122, $10F4
	dw $1124, $20F4
	dw $1126, $30F4
	dw $1128, $40F4
	dw $112A, $50F4
	dw $112C, $60F4
	dw $1109, $48E4
	dw $110B, $58E4
	dw $1107, $38E4
	
	dw $1062, $9004	//12
	dw $1064, $A004
	dw $1066, $B004
	dw $1068, $C004
	dw $106A, $D004
	dw $106C, $E004
	dw $106E, $F004
	dw $1140, $0004
	dw $1142, $1004
	dw $1144, $2004
	dw $1146, $3004
	dw $1148, $4004
	dw $114A, $5004
	dw $114C, $6004
	
	dw $1080, $8014	//20
	dw $1082, $9014
	dw $1084, $A014
	dw $1086, $B014
	dw $1088, $C014
	dw $108A, $D014
	dw $108C, $E014
	dw $108E, $F014
	dw $1160, $0014
	dw $1162, $1014
	dw $1164, $2014
	dw $1166, $3014
	dw $1168, $4014
	dw $116A, $5014
	dw $116C, $6014
	dw $116E, $7014
	
	dw $10A0, $8024	//30
	dw $10A2, $9024
	dw $10A4, $A024
	dw $10A6, $B024
	dw $10A8, $C024
	dw $10AA, $D024
	dw $10AC, $E024
	dw $10AE, $F024
	dw $1180, $0024
	dw $1182, $1024
	dw $1184, $2024
	dw $1186, $3024
	dw $1188, $4024
	dw $118A, $5024
	dw $118C, $6024
	dw $118E, $7024
	
	dw $10C0, $8034	//40
	dw $10C2, $9034
	dw $10C4, $A034
	dw $10C6, $B034
	dw $10C8, $C034
	dw $10CA, $D034
	dw $10CC, $E034
	dw $10CE, $F034
	dw $11A0, $0034	//48
	dw $11A2, $1034
	dw $11A4, $2034
	dw $11A6, $3034
	dw $11A8, $4034
	dw $11AA, $5034
	dw $11AC, $6034
	dw $11AE, $7034
	
//############################
org $FF0000
choose_demo:
	CLC
	ADC #$0006  
	SEC
-
	SBC #$0006
	BCS -
	ADC #$0006
	STA $0E3A
	ASL
	TAY
	LDA #$F830  
	STA $0730
	STA $0732
	STA $0734
	STA $0736
	STA $0738
	STA $073A
	LDA #$FA30  
	STA $0730,y
	LDA #$1100	//about ptr ID
	STA $079A
	LDA #$0080	//zahyou x
	STA $07FA
	LDA #$00C0	//zahyou y
	STA $085A	
	JML $839A01
	
event_about:
	db $18, $F9		//BGM off
	db $13, $02	//fadein
	db $1C, $35		//oam
	db $24, $00, $2F	//reset oam block
	db $05, $01, $00
	
	db $0E
	dw $0700
	dw (ishibune_map)
	dw (ishibune_map>>16)
	dw $E000>>1

	db $78, $00
	db $18	//seme haikei
	db $01	//uke haikei
	db $20	//seme hit
	db $20	//uke hit
	db $00, $00
	db $84
	db $55	//seme avatar
	db $1E
	db $53, $00	//seme robot, bgm
	db $04, $01 //seme waza
	dw $062C //uke damage
	db $5A
	db $86
	db $0A	//uke avatar
	db $0B
	db $0C, $00	//uke robot
	db $0B, $01	//uke waza
	dw $0708 //seme damage
	db $2F
	
//	db $1B, $00, $00
	db $68, $24
//	db $0A, $BE, $03, $8F
//	db $1C, $35
//	db $24, $00, $2F
//	db $1D, $80, $28, $58, $F2
//	db $0F
//	db $0D, $05, $00, $00, $7F
//	db $0E, $00, $08, $00, $00, $7F, $00, $00, $50
//	db $0F
//	db $68, $00
//	db $1F, $1C, $00
//	db $22, $00
//	db $20, $1D, $00
//	db $22, $01
	db $0E		//dma ishibune chr
	dw $2700
	dw (ishibune_chr)
	dw (ishibune_chr>>16)
	dw $0000
	
//	db $68, $01
//	db $0E, $00, $40, $00, $00, $7F, $00, $00, $00
//	db $0E, $00, $40, $00, $40, $7F, $00, $00, $20
//	db $0F
//	db $6C, $00, $00
//	db $68, $02
//	db $0E, $00, $20, $00, $20, $7F, $00, $00, $60

	db $0E	//dma gp01
	dw $1400	//size
	dw (gp01_chr)
	dw (gp01_chr>>16)
	dw $8000>>1
	db $0E
	dw $0C00
	dw (hibana_chr)
	dw (hibana_chr>>16)
	dw $A800>>1
	
//	db $0C, $03
//	db $59, $0F, $04, $01
//	db $17, $05	//palette update
//	db $0F
//	db $4A
//	db $68, $04
	db $34
	db $12, $03
	db $05, $50, $00		//wait
	db $13, $04		//fade out
	db $0E	
	dw $2C00	//size
	dw (yaku_chr)
	dw (yaku_chr>>16)
	dw $0000
	db $0E	
	dw $0800	//size
	dw (yaku_map)
	dw (yaku_map>>16)
	dw $E000>>1
	
	db $0E
	dw $0200
	dw (beam_chr)
	dw (beam_chr>>16)
	dw $6000>>1
	db $0E
	dw $0C00
	dw (nu_chr)
	dw (nu_chr>>16)
	dw $9400>>1
	
	db $18, $F4	//BGM on
	db $35
	db $13, $04	//fade out
	db $58, $18
//	db $18, $F9	//BGM off
	
event_34:
	SEP #$30
	LDA #$7E
	PHA
	PLB
	LDX #$1F
	PHX
	PHX
	PHX
	PHX
	PHX
	PHX
	PHX
-
	LDA ishibune_pal,x
	STA $DD00,x
	DEX
	BPL -
	PLX
-
	LDA beam_pal,x
	STA $DD20,x
	DEX
	BPL -
	PLX
-
	LDA gp01_pal,x
	STA $DEE0,x
	DEX
	BPL -
	PLX
-
	LDA hibana_pal,x
	STA $DEC0,x
	DEX
	BPL -
	PLX
-
	LDA jet_pal,x
	STA $DEA0,x
	DEX
	BPL -	
	PLX
-
	LDA beam_tama_pal,x
	STA $DE80,x
	DEX
	BPL -	
	PLX
-
	LDA nu_pal,x
	STA $DE00,x
	DEX
	BPL -
	PLX
-
	LDA nugun_pal,x
	STA $DE20,x
	DEX
	BPL -
	LDA #$FF
	STA $0390	//bg2 vscroll
	LDA #$38
	STA $0386	//bg3 map
	LDA #$03
	STA $0389	//bg3 tile
	LDA #$80
	PHA
	PLB
	STZ $AB
	STZ $AC
	JSR update_cgram
	JML [$F5F8]
	
event_35:
	SEP #$30
	LDA #$80
	PHA
	PLB
	LDA $AB
	ASL
	TAX
	JMP (sub_event35,x)
	
sub_event35:
	dw sub35_0
	dw sub35_1
	dw sub35_2
	dw sub35_3
	dw sub35_4
	dw sub35_5
	dw sub35_6
	dw sub35_7
	dw sub35_8
	dw sub35_9
	dw sub35_a
	dw sub35_b
	dw sub35_c
	dw sub35_d
	dw sub35_e
	dw sub35_f
	dw sub35_10
	dw sub35_11
	dw sub35_12
	dw sub35_13
	dw sub35_14
	dw sub35_15
	dw sub35_16
	dw sub35_17
	dw sub35_18
	dw sub35_19
	dw sub35_1a
	dw sub35_1b
	dw sub35_1c
	dw sub35_1d
	dw sub35_1e
	dw sub35_1f
	dw sub35_20
	dw sub35_21
	dw sub35_22
	dw sub35_23
	dw sub35_24
	dw sub35_25
	dw sub35_26
	dw sub35_27
	dw sub35_28
	dw sub35_29
	dw sub35_2a
	dw sub35_2b
	dw sub35_2c
	dw sub35_2d
	dw sub35_2e
	dw sub35_2f
	dw sub35_30
	dw sub35_31
	dw sub35_32
	dw sub35_33
	dw sub35_34
	dw sub35_35
	dw sub35_36
	dw sub35_37
	dw sub35_38
	dw sub35_39

sub35_0:
	SEP #$30
	LDA #$80
	PHA
	PLB
	LDA $AB
	ASL
	TAX
	JMP (sub35,x)
sub35:
	dw sub35_1
	dw sub35_2
	dw sub35_3
	dw sub35_4
	dw sub35_5
	dw sub35_6
	dw sub35_7
	dw sub35_8
sub35_1:
	LDA #$7E
	PHA
	PLB
	LDX #$1F
-
	LDA yaku_pal,x
	STA $DD00,x
	DEX
	BPL -
	LDA #$05
	STA $AC
	STA $AD
	STZ $0380
	LDA #$80
	PHA
	PLB
	JSR update_cgram
	JML [$F5FE]		//inc sub, wait nmi
//#########################
define oam_x	$B0
define oam_y	$B2
define oam_attribute1	$B4
define oam_attribute2	$B6
define oam_gra_id  $B8
define	buffer $BA
define bg3_map		$2000
//#########################
sub35_2:
	DEC $AD
	BNE +
	LDA $AC
	STA $AD
	INC $0380
	LDA $0380
	CMP #$0F
	BEQ _1
+
	JML [$F5FB]
_1:
	STZ $AC
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	LDA #$5200		//oam h-flip
	STA {oam_attribute2}
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$0000
	STA {oam_x}
	LDA #$0010
	STA {oam_y}
	JSR write_oam
	JML [$F5FE]		//inc sub, wait nmi
sub35_3:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	INC $07E0,x
	LDA $07E0,x	
	CMP #$001A
	BCS +
	JML [$F5FB]
+
	LDX #$0004
	LDA #$5201
	STA {oam_attribute2}
	LDA #$2A30
	STA {oam_attribute1}
	LDA #$0000
	STA {oam_x}
	LDA #$0022		//JeT
	STA {oam_y}
	JSR write_oam
	SEP #$20
	LDA #$08
	STA $AC
	STA $AD
	JML [$F5FE]
sub35_4:
	LDA #$7E
	PHA
	PLB
	DEC $AD
	BNE +
	LDA $AC
	STA $AD
	REP #$30
	LDX #$0004
	INC $0780,x
	LDA $0780,x
	CMP #$5205
	BCC _2
	LDA #$5201
	STA $0780,x
+
	REP #$30
	LDX #$0004
_2:
	INC $07E0,x
	LDX #$0002
	INC $07E0,x
	LDA $07E0,x
	CMP #$0131
	BCS +
	JML [$F5FB]
+
	LDX #$0002
	LDA #$1200
	STA {oam_attribute2}
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$0010
	STA {oam_y}
	LDA #$0131
	STA {oam_x}
	JSR write_oam
	LDX #$0004
	LDA #$2A30
	STA {oam_attribute1}
	LDA #$1201
	STA {oam_attribute2}
	LDA #$014C
	STA {oam_x}
	LDA #$0022
	STA {oam_y}
	JSR write_oam	
	SEP #$20
	LDA #$08
	STA $AC
	STA $AD
	JML [$F5FE]
sub35_5:
	LDA #$7E
	PHA
	PLB
	JSR write_jet
+
	REP #$30
	LDX #$0004
	DEC $07E0,x
	LDX #$0002
	DEC $07E0,x
	LDA $07E0,x
	CMP #$008B
	BCC +
	JML [$F5FB]
+
	SEP #$20
	LDA #$40
	STA $AE
	JML [$F5FE]
	
sub35_6:
	LDA #$7E
	PHA
	PLB
	JSR write_jet
	SEP #$20
+
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	LDA #$30
	STA $AE
	REP #$30
	LDX #$0004
	LDA #$2A00
	STA $0720,x
	LDX #$0002
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$1205
	STA {oam_attribute2}
	LDA #$008B
	STA {oam_x}
	LDA #$0010
	STA {oam_y}
	JSR write_oam
	JML [$F5FE]
	
sub35_7:
	LDA #$7E
	PHA
	PLB
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	LDA #$16
	STA $03AC  //enable bg3
	LDA #$09
	STA $0382  //bg3 priority
	LDA #$0C
	STA $AE
	REP #$30
	LDA #$0010
	STA $03B9	//irq v-
	LDA #$2830
	STA {oam_attribute1}
	LDA #$1206
	STA {oam_attribute2}
	LDA #$0080
	STA {oam_x}
	LDA #$0048
	STA {oam_y}
	LDX #$0000
	JSR write_oam	
	JSR write_bg3
	JML [$F5FE]

sub35_8:
	LDA #$7E
	PHA
	PLB
	LDA #$50
	STA $90
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	LDA #$0C
	STA $AE
	REP #$30
	LDA #$2830
	STA {oam_attribute1}
	LDA #$1207
	STA {oam_attribute2}
	LDA #$0078
	STA {oam_x}
	LDA #$0046
	STA {oam_y}
	LDX #$0000
	JSR write_oam	
	JML [$F5FE]
sub35_9:
	LDA #$7E
	PHA
	PLB
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	STZ $AF
	LDA #$CE
	STA $0392  //bg3 hscroll
	LDA #$AA
	STA $0394  //bg3 vscroll
	REP #$30
	LDA #$2830
	STA {oam_attribute1}
	LDA #$1208
	STA {oam_attribute2}
	LDA #$0078
	STA {oam_x}
	LDA #$0046
	STA {oam_y}
	LDX #$0000
	JSR write_oam	
	JML [$F5FE]	
sub35_a:
	LDA #$7E
	PHA
	PLB
	LDA $AF
	ASL
	TAX
	JMP (sub35_az,x)
sub35_az:
	dw sub35_a0
	dw sub35_a1
	dw sub35_a2
	dw sub35_a3
	dw sub35_a4
	dw sub35_a5
	dw sub35_a6
	dw sub35_a7
	dw sub35_a8
	dw sub35_a9
	dw sub35_aa
	dw sub35_ab
	dw sub35_ac
	dw sub35_ad
	dw sub35_ae
	dw sub35_af
	dw sub35_b0
	dw sub35_b1
	dw sub35_b2
	dw sub35_b3
	dw sub35_b4
	dw sub35_b5
	dw sub35_b6
	dw sub35_b7
	dw sub35_b8
	dw sub35_b9
	dw sub35_ba
	dw sub35_bb
	dw sub35_bc

sub35_a0:
	INC $AF
	REP #$30
	LDX #$0010
	LDA #$3001
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_a1:
	INC $AF
	REP #$30
	LDX #$0050
	LDA #$3003
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_a2:
	INC $AF
	REP #$30
	LDX #$008E
	LDA #$3005
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3	
	JML [$F5FB]
sub35_a3:
	INC $AF
	REP #$30
	LDX #$00CE
	LDA #$3003
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_a4:
	INC $AF
	REP #$30
	LDX #$010C
	LDA #$3005
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_a5:
	LDA #$52
	STA $90	//sfx
	INC $AF
	REP #$30
	LDX #$014C
	LDA #$3003
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_a6:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$06
	STA $0392
	REP #$30
	LDX #$018A
	LDA #$3005
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3	
	JML [$F5FB]
sub35_a7:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$01CA
	LDA #$3003
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3	
	JML [$F5FB]	
sub35_a8:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$0000
	STZ $0720,x
	LDX #$0208
	LDA #$3005
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3	
	JML [$F5FB]
sub35_a9:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$0248
	LDA #$3003
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_aa:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$0286
	LDA #$3005
	STA {bg3_map},x
	INC
	INX #2
	STA {bg3_map},x
	JSR write_bg3
	LDA #$2C30		//hibana1
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	LDA #$0066
	STA {oam_x}
	LDA #$007A
	STA {oam_y}
	LDX #$0000
	JSR write_oam
	JML [$F5FB]	
sub35_ab:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$03
	STA $0392
	JML [$F5FB]
sub35_ac:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	JML [$F5FB]
sub35_ad:	
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	JML [$F5FB]
sub35_ae:		
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	JML [$F5FB]
sub35_af:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$0286
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	LDX #$0248
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_b0:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$01CA
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	LDX #$0208
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	JSR write_bg3
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120A		//hibana 2
	STA {oam_attribute2}
	LDA #$0058
	STA {oam_x}
	LDA #$007A
	STA {oam_y}
	LDX #$0000
	JSR write_oam
	JML [$F5FB]
sub35_b1:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$018A
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_b2:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	JML [$F5FB]
sub35_b3:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	JML [$F5FB]
sub35_b4:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$014C
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_b5:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$010C
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_b6:
	INC $AF
	LDA $0394
	SEC
	SBC #$08
	STA $0394
	LDA $0392
	CLC
	ADC #$04
	STA $0392
	REP #$30
	LDX #$00CE
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	LDX #$008E
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x	
	JSR write_bg3
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120B		//hibana 3
	STA {oam_attribute2}
	LDA #$0058
	STA {oam_x}
	LDA #$007A
	STA {oam_y}
	LDX #$0000
	JSR write_oam
	JML [$F5FB]
sub35_b7:
	INC $AF
	REP #$30
	LDX #$0010
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	LDX #$0050
	STZ {bg3_map},x
	INX #2
	STZ {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
sub35_b8:
sub35_b9:
sub35_ba:
sub35_bb:
	INC $AF
	JML [$F5FB]
sub35_bc:
	REP #$30
	LDX #$0000
	STZ $0720,x
	STZ $AC
	STZ $AE
	LDA #$0030
	STA $AC
	JML [$F5FE]
sub35_b:
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	LDA #$08
	STA $AC
	STA $AD
	REP #$30
	LDX #$0002
	LDA #$1200		//oam h-flip
	STA {oam_attribute2}
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$008B
	STA {oam_x}
	LDA #$0010
	STA {oam_y}
	LDA #$2A30
	STA $0724
	JSR write_oam
	LDA #$0030
	STA $AE
	JML [$F5FE]	

sub35_c:		//nu
	JSR write_jet
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	LDX #$000A
	LDA #$F030
	STA {oam_attribute1}
	LDA #$520C
	STA {oam_attribute2}
	LDA #$0000
	STA {oam_x}
	LDA #$0006
	STA {oam_y}
	LDA #$00A0
	STA {oam_gra_id}
	JSR write_oam
	JML [$F5FE]
	
sub35_d:
	JSR write_jet
	REP #$30
	LDX #$000A
	INC $07E0,x
	LDA $07E0,x
	CMP #$0040
	BCS +
	JML [$F5FB]
+
	LDX #$0008
	LDA #$F230
	STA {oam_attribute1}
	LDA #$520D
	STA {oam_attribute2}
	LDA #$0059
	STA {oam_x}
	LDA #$0017
	STA {oam_y}
	LDA #$00A0
	STA {oam_gra_id}
	JSR write_oam
	JML [$F5FE]
	
sub35_e:
	JSR write_jet
	REP #$30
	LDA #$0020
	STA $AE
	JML [$F5FE]
sub35_f:
	JSR write_jet
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0002
	LDA #$120E
	STA {oam_attribute2}
	LDA #$0E30
	STA {oam_attribute1}
	LDA #$008B
	STA {oam_x}
	LDA #$0006
	STA {oam_y}
	LDA #$0000
	STA {oam_gra_id}
	JSR write_oam
	LDX #$0004
	STZ $0720,x		//disable jet
	LDA #$0010
	STA $AE
	SEP #$20
	LDA #$BD
	STA $0392	//bg3 hscroll
	LDA #$FF
	STA $0399
	LDA #$53
	STA $90	//sfx
	JML [$F5FE]
sub35_10:
	LDA #$7E
	PHA
	PLB
	DEC $AE
	BEQ +
	JML [$F5FB]	
+
	REP #$30
	LDX #$020A
	LDA #$7008
	STA {bg3_map},x
	JSR write_bg3
	LDA #$0006
	STA $AC
	LDA #$0008
	STA $AE
	LDA #$020C
	STA {buffer}
	JML [$F5FE]
sub35_11:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDA $AE
	BEQ +
	DEC $AE
	LDX #$0008
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	LDA $0840,x
	SEC
	SBC #$0002
	STA $0840,x
	LDX #$000A
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	LDA $0840,x
	SEC
	SBC #$0002
	STA $0840,x	
+
	LDA $AC
	BEQ +
	DEC $AC
	LDX {buffer}
	LDA #$3007
	STA {bg3_map},x
	INC {buffer}
	INC {buffer}
	LDA $0392	//bg3 hscroll
	CLC
	ADC #$0008
	STA $0392
	JSR write_bg3
	JML [$F5FB]
+
	LDX {buffer}
	LDA #$3008
	STA {bg3_map},x
	STZ {buffer}
	LDA #$0008
	STA $AC
	JSR write_bg3
	JML [$F5FE]
sub35_12:
	LDA #$7E
	PHA
	PLB
	REP #$30
	DEC $AC
	BEQ +
	LDA $0392	//bg3 hscroll
	CLC
	ADC #$0008
	STA $0392
	JSR write_bg3
	JML [$F5FB]
+
	LDA #$020A
	STA {buffer}
	LDA #$0009
	STA $AC
	JML [$F5FE]
sub35_13:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	REP #$30
	LDX {buffer}
	INC {buffer}
	INC {buffer}
	LDA $0392	//bg3 hscroll
	CLC
	ADC #$0008
	STA $0392
	STZ {bg3_map},x
	JSR write_bg3
	JML [$F5FB]
+
	REP #$30
	LDA #$0008
	STA $AE
	JML [$F5FE]
sub35_14:
	LDA #$7E
	PHA
	PLB
	REP #$30
	DEC $AE
	BEQ +
	LDX #$0008
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x
	LDA $0840,x
	CLC
	ADC #$0002
	STA $0840,x
	LDX #$000A
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x
	LDA $0840,x
	CLC
	ADC #$0002
	STA $0840,x
	JML [$F5FB]
+
	LDX #$001E
-
	LDA hibana2_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	STZ $8C
	LDA #$0800
	STA $0400
	LDA #(hibana2_chr)
	STA $0402
	LDA #$A800>>1
	STA $0406
	LDA #(hibana2_chr>>16)
	STA $0404
	JSR update_cgram
	LDA #$0010
	STA $AE
	SEP #$20
	LDA #$01
	STA $8E
	JML [$F5FE]
sub35_15:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0004
	LDA #$0230
	STA {oam_attribute1}
	LDA #$520F
	STA {oam_attribute2}
	LDA #$00A0
	STA {oam_gra_id}
	LDA #$0068
	STA {oam_x}
	LDA #$0018
	STA {oam_y}
	LDA #$0008
	STA $AE
	JSR write_oam
	JML [$F5FE]
sub35_16:
	LDA #$7E
	PHA
	PLB
	DEC $AE
	BEQ +
	JML [$F5FB]
+
	LDA #$52
	STA $90
	REP #$30
	LDX #$0004
	LDA #$0230
	STA {oam_attribute1}
	LDA #$5211
	STA {oam_attribute2}
	LDA #$00A0
	STA {oam_gra_id}
	LDA #$006C
	STA {oam_x}
	LDA #$001C
	STA {oam_y}
	JSR write_oam
	
	LDX #$0000
	LDA #$000D
	STA $AC
	LDA #$0008
	STA $AE
	LDA #$0230
	STA {oam_attribute1}
	LDA #$5210	//dangan
	STA {oam_attribute2}
	LDA #$0078
	STA {oam_x}
	LDA #$001A
	STA {oam_y}
	JSR write_oam
	JML [$F5FE]
sub35_17:
	LDA #$7E
	PHA
	PLB
	LDA $AE
	BNE +
	LDX #$04
	STZ $0720,x
	BRA _3
+
	DEC $AE
_3:
	DEC $AC
	BEQ +
	REP #$30
	LDX #$0000
	LDA $07E0,x
	CLC
	ADC #$0006
	STA $07E0,x
	JML [$F5FB]
+
	REP #$30
	LDA #$0010
	STA $AC
	LDA #$0008
	STA $AE
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1212
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0088
	STA {oam_x}
	LDA #$0018
	STA {oam_y}
	JSR write_oam	
	JML [$F5FE]
sub35_18:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDA $AE
	BNE +
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1213
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0084
	STA {oam_x}
	LDA #$0016
	STA {oam_y}
	JSR write_oam	
+
	DEC $AE
	DEC $AC
	BEQ +
_4:
	LDX #$0000
	LDA $07E0,x
	CLC
	ADC #$0006
	STA $07E0,x
	JML [$F5FB]
+
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1214	//hibana6
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0080
	STA {oam_x}
	LDA #$0013
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]
	
sub35_19:
	LDA #$7E
	PHA
	PLB
	REP #$30
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1215	//hibana7
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0090
	STA {oam_x}
	LDA #$0013
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]
sub35_1a:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$001E
-
	LDA sparkle_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	LDX #$0006
	STZ $0720,x
	STZ $8C
	LDA #$0200
	STA $0400
	LDA #(sparkle_chr)
	STA $0402
	LDA #$A800>>1
	STA $0406
	LDA #(sparkle_chr>>16)
	STA $0404
	JSR update_cgram
	SEP #$20
	LDA #$01
	STA $8E
	LDA #$08
	STA $AC
	LDA #$AA
	STA $90
	JML [$F5FE]
	
sub35_1b:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1216	//sparkle1
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0090
	STA {oam_x}
	LDA #$0013
	STA {oam_y}
	JSR write_oam	
	JML [$F5FE]
sub35_1c:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1217	//sparkle2
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0090
	STA {oam_x}
	LDA #$0013
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]
sub35_1d:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1218	//sparkle3
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0090
	STA {oam_x}
	LDA #$0013
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]	
	
sub35_1e:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1217	
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0090
	STA {oam_x}
	LDA #$0013
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]		
sub35_1f:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1216
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0080
	STA {oam_x}
	LDA #$0010
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]	
sub35_20:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$4C30
	STA {oam_attribute1}
	LDA #$1218
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0098
	STA {oam_x}
	LDA #$0010
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]
	
sub35_21:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$001E
-
	LDA explosion_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	JSR update_cgram
	STZ $8C
	LDA #$0400
	STA $0400
	LDA #(explosion_chr)
	STA $0402
	LDA #$A800>>1
	STA $0406
	LDA #(explosion_chr>>16)
	STA $0404	
	LDX #$0006
	STZ $0720,x	//del sparkle
	LDA #$0008
	STA $AC		
	SEP #$20
	LDA #$01
	STA $8E
	JML [$F5FE]
	
sub35_22:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	LDA #$AE
	STA $90
	REP #$30
	LDX #$0002
	STZ $0720,x  //del gp01
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1219	//bakuhatsu1
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0088
	STA {oam_x}
	LDA #$0014
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]

sub35_23:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$121A	//bakuhatsu2
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0088
	STA {oam_x}
	LDA #$0014
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]	

sub35_24:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$121B	//bakuhatsu3
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$007E
	STA {oam_x}
	LDA #$000C
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]		
sub35_25:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
	REP #$30
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$121C	//bakuhatsu4
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$007E
	STA {oam_x}
	LDA #$000C
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]	
sub35_26:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$121D	//bakuhatsu5
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$007E
	STA {oam_x}
	LDA #$000C
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	JML [$F5FE]	
	
sub35_27:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$121E	//bakuhatsu6
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$007E
	STA {oam_x}
	LDA #$000C
	STA {oam_y}
	JSR write_oam
	LDA #$0010
	STA $AC
	JML [$F5FE]
sub35_28:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0006
	STZ $0720,x
	LDX #$0000
	STZ $0720,x
	LDX #$001E
-
	LDA wing_pal,x
	STA $DEE0,x
	DEX #2
	BPL -
	STZ $8C
	LDA #$1000
	STA $0400
	LDA #(wing_chr)
	STA $0402
	LDA #$8000>>1
	STA $0406
	LDA #(wing_chr>>16)
	STA $0404
	JSR update_cgram
	SEP #$20
	LDA #$01
	STA $8E
	JML [$F5FE]
sub35_29:
	LDA #$7E
	PHA
	PLB
	REP #$30
	STZ $8C
	LDA #$0400
	STA $0400
	LDA #(jetpack_chr)
	STA $0402
	LDA #$A000>>1
	STA $0406
	LDA #(jetpack_chr>>16)
	STA $0404
	SEP #$20
	LDA #$01
	STA $8E
	LDA #$08
	STA $AF
	STA $AE
	JML [$F5FE]
sub35_2a:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0000
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$121F
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0107
	STA {oam_x}
	LDA #$0008
	STA {oam_y}
	JSR write_oam	
	LDA #$0060
	STA $AC
	LDX #$0002
	LDA #$2A30
	STA {oam_attribute1}
	LDA #$1220		//jetpack
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$0132
	STA {oam_x}
	LDA #$0025
	STA {oam_y}
	JSR write_oam
	STZ $8C
	LDA #$0800
	STA $0400
	LDA #(hibana2_chr)
	STA $0402
	LDA #$A800>>1
	STA $0406
	LDA #(hibana2_chr>>16)
	STA $0404
	SEP #$20
	LDA #$01
	STA $8E
	JML [$F5FE]
sub35_2b:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BEQ +
	REP #$30
	LDX #$0000
	DEC $07E0,x
	LDX #$0002
	DEC $07E0,x
	LDX #$0002
	JSR write_jetpack
	JML [$F5FB]
+
	REP #$30
	LDA #$0010
	STA $AC
	JML [$F5FE]
sub35_2c:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	LDX #$0000
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$1224
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$00B2
	STA {oam_x}
	LDA #$0008
	STA {oam_y}
	JSR write_oam	
	LDA #$0010
	STA $AC
	LDX #$001E
-
	LDA beam2_pal,x
	STA $DD20,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FE]
sub35_2d:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	LDA #$7008
	STA {bg3_map}
	SEP #$20
	LDA #$6E
	STA $0392  //bg3hscroll
	LDA #$E1
	STA $0394
	LDA #$01
	STA $AC
	LDA #$22
	STA $AD
	LDA #$4C
	STA $90
	JML [$F5FE]
sub35_2e:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	SEP #$20
	DEC $AD
	BEQ +
	LDA $AD
	CMP #$10
	BNE _6
	LDA #$52		//atari
	STA $90
	REP #$30
	LDX #$001E
-
	LDA hibana2_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	JSR update_cgram
	SEP #$20
_6:
	JSR write_bg3
	JSR beam_hassha1
	JML [$F5FB]
+
	LDA #$FF
	STA $90
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1212		//hibana5
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$001C
	STA {oam_x}
	STA {oam_y}
	JSR write_oam
	LDA #$0010
	STA $AC
	JML [$F5FE]
sub35_2f:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	LDA $AC
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1214		//hibana7
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$001C
	STA {oam_x}
	STA {oam_y}
	JSR write_oam
	LDX #$0002
	JSR write_jetpack
	LDA #$0008
	STA $AC
	JML [$F5FE]
+
	CMP #$08
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1213		//hibana6
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$001C
	STA {oam_x}
	STA {oam_y}
	JSR write_oam
	BRA _7
+
	REP #$30
_7:
	LDX #$0002
	JSR write_jetpack
	JML [$F5FB]
sub35_30:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	SEP #$20
	DEC $AC
	BEQ +	
	JML [$F5FB]
+
	LDA #$AA
	STA $90
	REP #$30
	STZ $8C
	LDA #$0200
	STA $0400
	LDA #(sparkle_chr)
	STA $0402
	LDA #$A800>>1
	STA $0406
	LDA #(sparkle_chr>>16)
	STA $0404
	LDX #$001E
-
	LDA sparkle_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	JSR update_cgram
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1216	//sparkle1
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0010
	STA {oam_x}
	LDA #$0011
	STA {oam_y}
	JSR write_oam	
	LDX #$0008
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x
	LDX #$000A
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x	
	SEP #$20
	LDA #$01
	STA $8E
	LDA #$28
	STA $AC
	JML [$F5FE]
	
sub35_31:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	SEP #$20
	DEC $AC
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1218	//sparkle3
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0010
	STA {oam_x}
	LDA #$0011
	STA {oam_y}
	JSR write_oam
	LDA #$0008
	STA $AC
	LDX #$0008
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	LDX #$000A
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	JML [$F5FE]
+
	LDA $AC
	CMP #$20
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1217	//sparkle2
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0010
	STA {oam_x}
	LDA #$0011
	STA {oam_y}
	JSR write_oam	
	LDX #$0008
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x
	LDX #$000A
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x	
	JML [$F5FB]
+
	CMP #$18
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1218	//sparkle3
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0013
	STA {oam_x}
	LDA #$0011
	STA {oam_y}
	JSR write_oam	
	LDA #$0008
	STA $AC
	LDX #$0008
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	LDX #$000A
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	JML [$F5FB]
+
	CMP #$10
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1216	//sparkle1
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0011
	STA {oam_x}
	LDA #$0011
	STA {oam_y}
	JSR write_oam	
	LDX #$0008
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x
	LDX #$000A
	LDA $07E0,x
	CLC
	ADC #$0002
	STA $07E0,x	
	JML [$F5FB]
+
	CMP #$08
	BNE +
	REP #$30
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1217	//sparkle2
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0015
	STA {oam_x}
	LDA #$0011
	STA {oam_y}
	JSR write_oam	
	LDX #$0008
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x
	LDX #$000A
	LDA $07E0,x
	SEC
	SBC #$0002
	STA $07E0,x

+
	JML [$F5FB]
sub35_32:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	SEP #$20
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	LDA #$AE
	STA $90
	REP #$30
	LDX #$001E
-
	LDA explosion_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	JSR update_cgram
	LDX #$0004
	STZ $0720,x
	LDX #$0008
	STZ $0720,x
	LDX #$000A
	STZ $0720,x
	JML [$F5FE]
sub35_33:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	STZ $8C
	LDA #$0400
	STA $0400
	LDA #(explosion_chr)
	STA $0402
	LDA #$A800>>1
	STA $0406
	LDA #(explosion_chr>>16)
	STA $0404	
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1219	//bakuhatsu1
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0018
	STA {oam_y}
	JSR write_oam
	SEP #$20
	LDA #$01
	STA $8E
	LDA #$38
	STA $AC
	JML [$F5FE]
sub35_34:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	DEC $AC
	LDA $AC
	AND #$00FF
	LSR #3
	ASL
	TAX
	JMP (nu_explode,x)
nu_explode:
	dw nubakuhatsu0
	dw nubakuhatsu1
	dw nubakuhatsu2
	dw nubakuhatsu3
	dw nubakuhatsu4
	dw nubakuhatsu5
	dw nubakuhatsu6
nubakuhatsu6:
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$1219	//bakuhatsu1
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0018
	STA {oam_y}
	JSR write_oam
	JML [$F5FB]
nubakuhatsu5:
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$121A	//bakuhatsu2
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0018
	STA {oam_y}
	JSR write_oam
	JML [$F5FB]
nubakuhatsu4:
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$121B	//bakuhatsu3
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0014
	STA {oam_y}
	JSR write_oam
	JML [$F5FB]
nubakuhatsu3:
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$121C	//bakuhatsu4
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0014
	STA {oam_y}
	JSR write_oam
	JML [$F5FB]
nubakuhatsu2:
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$121D	//bakuhatsu5
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0014
	STA {oam_y}
	JSR write_oam
	JML [$F5FB]
nubakuhatsu1:
	LDX #$0004
	LDA #$CC30
	STA {oam_attribute1}
	LDA #$121E	//bakuhatsu6
	STA {oam_attribute2}
	LDA #$0140
	STA {oam_gra_id}
	LDA #$0014
	STA {oam_x}
	LDA #$0014
	STA {oam_y}
	JSR write_oam
	JML [$F5FB]
nubakuhatsu0:
	LDX #$0004
	STZ $0720,x
	LDX #$0000
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$121F
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$00A8
	STA {oam_x}
	LDA #$0008
	STA {oam_y}
	LDA #$0028
	STA $AC
	JSR write_oam	
	JML [$F5FE]

sub35_35:
	LDA #$7E
	PHA
	PLB
	REP #$30
	LDX #$0002
	JSR write_jetpack
	SEP #$20
	DEC $AC
	BEQ +
	JML [$F5FB]
+
	REP #$30
	LDX #$0002
	STZ $0720,x
	LDX #$0000
	LDA #$2E30
	STA {oam_attribute1}
	LDA #$1225
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$00A8
	STA {oam_x}
	LDA #$0018
	STA {oam_y}
	JSR write_oam	
	LDX #$001E
-
	LDA beam_tama_pal,x
	STA $DEA0,x
	DEX #2
	BPL -
	JSR update_cgram
	LDA #$0020
	STA $AC
	JML [$F5FE]
	
sub35_36:
	LDA #$7E
	PHA
	PLB
	LDA #$B0
	STA $90
	REP #$30
	DEC $AC
	LDA $AC
	AND #$00FF
	LSR #3
	ASL
	TAX
	JMP (wingbeam,x)
wingbeam:
	dw wingbeam0
	dw wingbeam1
	dw wingbeam2
	dw wingbeam3
wingbeam3:
	LDX #$0002
	LDA #$CA30
	STA {oam_attribute1}
	LDA #$1226
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$00AA
	STA {oam_x}
	LDA #$0040
	STA {oam_y}
	JSR write_oam
	LDX #$0004
	LDA #$CA30
	STA {oam_attribute1}
	LDA #$1226
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$00BF
	STA {oam_x}
	LDA #$0040
	STA {oam_y}
	JSR write_oam		
	JML [$F5FB]
wingbeam2:
	LDX #$0002
	LDA #$CA30
	STA {oam_attribute1}
	LDA #$1227
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$00AA
	STA {oam_x}
	LDA #$0040
	STA {oam_y}
	JSR write_oam
	LDX #$0004
	LDA #$CA30
	STA {oam_attribute1}
	LDA #$1227
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$00BF
	STA {oam_x}
	LDA #$0040
	STA {oam_y}
	JSR write_oam	
	JML [$F5FB]
wingbeam1:
	LDX #$0002
	LDA #$CA30
	STA {oam_attribute1}
	LDA #$1228
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$00AA
	STA {oam_x}
	LDA #$0040
	STA {oam_y}
	JSR write_oam
	LDX #$0004
	LDA #$CA30
	STA {oam_attribute1}
	LDA #$1228
	STA {oam_attribute2}
	LDA #$0100
	STA {oam_gra_id}
	LDA #$00BF
	STA {oam_x}
	LDA #$0040
	STA {oam_y}
	JSR write_oam	
	JML [$F5FB]
wingbeam0:
	STZ $AE
	LDA #$0030
	STA $F0
	LDA #$0036
	STA $F2
	LDX #$001E
-
	LDA hibana_pal,x
	STA $DEC0,x
	DEX #2
	BPL -
	JSR update_cgram
	STZ $8C
	LDA #$0C00
	STA $0400
	LDA #(hibana_chr)
	STA $0402
	LDA #(hibana_chr>>16)
	STA $0404
	LDA #$A800>>1
	STA $0406
	SEP #$20
	LDA #$01
	STA $8E
	LDA #$18
	STA $0392		//bg3 hscroll
	LDA #$B0
	STA $0394
	LDA #$12
	STA $AC
	STZ $AD
	JML [$F5FE]
	
sub35_37:
	LDA #$7E
	PHA
	PLB
	LDA $AD
	CMP #$19
	BEQ +
	JSR write_bg3
	JSR wingshipbeam
	JSR checkbakuhatsu
	JSR exebakuhatsu
	JSR stoneshake
	JML [$F5FB]
+
	REP #$30
	LDX #$06FE
-
	STZ {bg3_map},x
	DEX #2
	BPL -
	LDX #$0002
	STZ $0720,x
	LDX #$0004
	STZ $0720,x
	LDX #$0006
	STZ $0720,x
	JSR write_bg3
	LDA #$0020
	STA $AC
	JML [$F5FE]
sub35_38:
	LDA #$7E
	PHA
	PLB
	REP #$30
	DEC $AC
	LDA $AC
	LSR #2
	ASL
	TAX
	JML [$F5FB]
	JMP (endgame,x)
endgame:
	dw end1
	dw end2
	dw end3
	dw end4
	dw end5
	dw end6
	dw end7
	dw end8
end8:
	LDX #$01FE
-
	LDA #$41CE
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end7:
	LDX #$01FE
-
	LDA #$4E73
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end6:
	LDX #$01FE
-
	LDA #$56B5
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end5:
	LDX #$01FE
-
	LDA #$41CE
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end4:
	LDX #$01FE
-
	LDA #$5EF7
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end3:
	LDX #$01FE
-
	LDA #$6318
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end2:
	LDX #$01FE
-
	LDA #$6739
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	JML [$F5FB]
end1:
	LDX #$01FE
-
	LDA #$FFFF
-
	STA $DD00,x
	DEX #2
	BPL -
	JSR update_cgram
	LDA #$0404
	STA $AC
	JML [$F5FE]
sub35_39:
	LDA #$7E
	PHA
	PLB
	DEC $AC
	BNE +
	LDA $AD
	STA $AC
	DEC $0380
	BEQ _9
+
	JML [$F5FB]
_9:
	LDA #$FD
	STA $90
	JML [$F5FB]
	
	
write_jet:
	DEC $AD
	BNE +
	LDA $AC
	STA $AD
	REP #$30
	LDX #$0004
	INC $0780,x
	LDA $0780,x
	CMP #$1205
	BCC +
	LDA #$1201
	STA $0780,x
+
	RTS
	
event_36:
	JML [$F5FB]
	
write_oam:
	LDA {oam_x}
	STA $07E0,x
	LDA {oam_y}
	STA $0840,x
	LDA {oam_attribute1}
	STA $0720,x
	LDA {oam_attribute2}
	STA $0780,x
	LDA {oam_gra_id}
	STA $0B40,x
	RTS

new_oam_block:
dw gp01_1
dw jet1
dw jet2
dw jet3
dw jet4
dw gp01_2
dw beam_tama1
dw beam_tama2
dw beam_tama3
dw hibana1
dw hibana2
dw hibana3
dw nu
dw bazooka
dw gp01_3
dw smoke1
dw dangan
dw smoke2
dw hibana4  //$12
dw hibana5
dw hibana6
dw hibana7
dw sparkle1	//$16
dw sparkle2
dw sparkle3
dw bakuhatsu1		//$19
dw bakuhatsu2
dw bakuhatsu3
dw bakuhatsu4
dw bakuhatsu5
dw bakuhatsu6
dw wing1		//$1F
dw jetpack1
dw jetpack2
dw jetpack3
dw jetpack4
dw wing2		//$24
dw wing3
dw tamabeam1  //$26
dw tamabeam2
dw tamabeam3

gp01_1:	//00
	db $08
	dw $1000, $0000
	dw $1002, $1000
	dw $1004, $2000
	dw $1006, $0010
	dw $1008, $1010
	dw $100A, $2010
	dw $100C, $0020
	dw $100E, $1020
jet1:
	db $01
	dw $1087, $0000
jet2:
	db $01
	dw $1089, $0000
jet3:
	db $01
	dw $108B, $0000
jet4:
	db $01
	dw $108D, $0000
gp01_2:
	db $11
	dw $1020, $0000
	dw $1022, $1000
	dw $1024, $F810
	dw $1026, $0810
	dw $1028, $1810
	dw $102A, $F820
	dw $102C, $0820
	dw $102E, $1820
	dw $1040, $F030
	dw $0043, $2008
	dw $0044, $2810
	dw $0045, $2818
	dw $0046, $2820
	dw $0047, $2828
	dw $004A, $2830
	dw $0049, $2030
	dw $0048, $0830
beam_tama1:
	db $01
	dw $004B, $0000
beam_tama2:
	db $01
	dw $104C, $0000
beam_tama3:
	db $01
	dw $104E, $0000
dangan:
	db $03
	dw $1042, $0000
	dw $0044, $1000
	dw $0054, $1008

write_bg3:
	PHP
	REP #$30
	STZ $8C
	LDA #$0700
	STA $0400
	LDA #{bg3_map}
	STA $0402
	LDA #$7000>>1
	STA $0406
	SEP #$20
	LDA #$7E
	STA $0404
	LDA #$01
	STA $8E  //nmi dma
	PLP
	RTS
	
hibana1:
	db $01
	dw $1140, $0000
hibana2:
	db $09
	dw $1142, $0000
	dw $1144, $1000
	dw $1146, $2000
	dw $1148, $0010
	dw $114A, $1010
	dw $114C, $2010
	dw $1182, $0020
	dw $1184, $1020
	dw $1186, $2020
hibana3:
	db $0A
	dw $114E, $0000
	dw $1160, $1000
	dw $1162, $2000
	dw $1164, $F810
	dw $1166, $0810
	dw $1168, $1810
	dw $116A, $2810
	dw $118A, $0020
	dw $118C, $1020
	dw $118E, $2020
nu:
	db $0F
	dw $1000, $0000
	dw $1002, $1000
	dw $1004, $2000
	dw $1006, $0010
	dw $1008, $1010
	dw $100A, $2010
	dw $100C, $3010
	dw $100E, $0020
	dw $1020, $1020
	dw $1022, $2020
	dw $1024, $3020
	dw $1026, $0030
	dw $1028, $1030
	dw $102A, $2030
	dw $102C, $3030
	
bazooka:
	db $02
	dw $102E, $0000
	dw $1040, $1000
	
gp01_3:
	db $0F
	dw $1060, $0000
	dw $1062, $1000
	dw $1064, $E810
	dw $1066, $F810
	dw $1068, $0810
	dw $106A, $1810
	dw $106C, $F820
	dw $106E, $0820
	dw $0080, $F808
	dw $0081, $F020
	dw $0082, $1820
	dw $0083, $1828
	dw $0084, $0830
	dw $0085, $1030
	dw $0086, $1830
	
smoke1:
	db $06
	dw $1047, $0000
	dw $005B, $0010
	dw $005C, $0810
	dw $005D, $1010
	dw $005E, $1810
	dw $005F, $2010
smoke2:
	db $03
	dw $1049, $0000
	dw $005E, $1008
	dw $005F, $1808
hibana4:
	db $01
	dw $1002, $0000
hibana5:
	db $04
	dw $1004, $0000
	dw $1006, $1000
	dw $1008, $0010
	dw $100A, $1010
hibana6:
	db $04
	dw $100C, $0000
	dw $100E, $1000
	dw $1020, $0010
	dw $1022, $1010
hibana7:
	db $04
	dw $1024, $0000
	dw $0029, $1810
	dw $002C, $1018
	dw $002D, $1818
sparkle1:
	db $09
	dw $0000, $0000
	dw $0001, $0800
	dw $0002, $1000
	dw $0005, $1800	
	dw $0005, $0820
	dw $0006, $0828
	dw $0007, $1028
	dw $0009, $F010
	dw $000A, $F810
sparkle2:
	db $0A
	dw $0005, $F8F0
	dw $000B, $F8F8
	
	dw $000D, $0000
	dw $000E, $0800
	
	dw $000F, $F008
	dw $000B, $F808
	dw $000C, $0008
	
	dw $0001, $0218
	dw $0002, $0A18
	dw $0004, $0F18	
sparkle3:
	db $0D
	dw $0005, $08F8
	dw $0006, $0800
	dw $0007, $1000
	dw $000F, $1800
	
	dw $0005, $1010
	dw $0008, $1018
	dw $000B, $1020
	dw $000C, $1820
	
	dw $000F, $E810
	dw $0000, $F010
	dw $0001, $F810
	dw $000D, $0010
	dw $000E, $0810
bakuhatsu1:
	db $01
	dw $1000, $0000
bakuhatsu2:
	db $01
	dw $1002, $0000
bakuhatsu3:
	db $04
	dw $1004, $0000
	dw $5004, $1000
	dw $9004, $0010
	dw $D004, $1010
bakuhatsu4:
	db $04
	dw $1006, $0000
	dw $5006, $1000
	dw $9006, $0010
	dw $D006, $1010
bakuhatsu5:
	db $04
	dw $1008, $0000
	dw $5008, $1000
	dw $9008, $0010
	dw $D008, $1010
bakuhatsu6:
	db $04
	dw $100A, $0000
	dw $500A, $1000
	dw $900A, $0010
	dw $D00A, $1010
wing1:
	db $0C
	dw $1000, $0000
	dw $1002, $1000
	dw $1004, $2000
	dw $1006, $0010
	dw $1008, $1010
	dw $100A, $2010
	dw $100C, $F820
	dw $100E, $0820
	dw $1020, $1820
	dw $1022, $2820
	dw $0024, $3010
	dw $0034, $3018
jetpack1:
	db $01
	dw $1000, $0000
jetpack2:
	db $01
	dw $1002, $0000
jetpack3:
	db $01
	dw $1004, $0000
jetpack4:
	db $01
	dw $1006, $0000
wing2:
	db $0D
	dw $1025, $0000
	dw $1027, $1000
	dw $1029, $2000
	dw $102B, $E810
	dw $102D, $F810
	dw $1040, $0810
	dw $1042, $1810
	dw $1044, $2810
	dw $1046, $F820
	dw $1048, $0820
	dw $104A, $1820
	dw $002F, $2820
	dw $003F, $3020
wing3:
	db $0D
	dw $1060, $0010
	dw $1062, $1010
	dw $1064, $2010
	dw $1066, $3010
	dw $104C, $0000
	dw $104E, $1000
	dw $1068, $0820
	dw $106A, $1820
	dw $106C, $2820
	dw $006E, $2008
	dw $006F, $2808
	dw $007E, $3008
	dw $007F, $3808
tamabeam1:
	db $01
	dw $1008, $0000
tamabeam2:
	db $01
	dw $100A, $0000
tamabeam3:
	db $01
	dw $100C, $0000
	
write_jetpack:
	PHP
	SEP #$30
	DEC $AF
	BNE +
	LDA $AE
	STA $AF
	REP #$30
	INC $0780,x
	LDA $0780,x
	CMP #$1224
	BCC +
	LDA #$1220
	STA $0780,x
+
	PLP
	RTS
	
update_cgram:
	PHP
	REP #$20
	LDA #$2200
	STA $804300
	LDA #$DD00
	STA $804302
	LDA #$0200
	STA $804305
	SEP #$20
	LDA #$7E
	STA $804304
	PLP
	RTS
	
beam_hassha1:
	PHP
	SEP #$30
	LDA $AC
	CMP #$0E
	BCS +
	INC $AC
	REP #$30
	AND #$00FF
	ASL
	TAX
	LDA #$3007
	STA {bg3_map},x
	BRA _5
+	
	REP #$30
	AND #$00FF
	ASL
	TAX
	LDA #$3008
	STA {bg3_map},x
_5:
	SEP #$30
	LDA $0392
	CLC
	ADC #$08
	STA $0392
	LDA $0392
	BPL +
-
	PLP
	RTS
+
	SEC
	SBC #$06
	LSR #2
	TAX
	STZ {bg3_map},x
	INX
	STZ {bg3_map},x
	BRA -
	
wingshipbeam:
	PHP
	SEP #$20
	LDA $AC
	BNE +
	PLP
	RTS
+
	DEC $AC
	LDA $AE
	BNE +
	REP #$30
	LDX $F0
	LDA #$3003
	STA {bg3_map},x
	INX #2
	LDA #$3004
	STA {bg3_map},x
	LDX $F2
	LDA #$3003
	STA {bg3_map},x
	INX #2
	LDA #$3004
	STA {bg3_map},x
	INC $AE
	PLP
	RTS
+
	AND #$01
	BEQ +
	REP #$30
	LDA $F0
	CLC
	ADC #$003E
	STA $F0
	TAX
	LDA #$3005
	STA {bg3_map},x
	INX #2
	LDA #$3006
	STA {bg3_map},x
	LDA $F2
	CLC
	ADC #$003E
	STA $F2
	TAX
	LDA #$3005
	STA {bg3_map},x
	INX #2
	LDA #$3006
	STA {bg3_map},x
	INC $AE
	PLP
	RTS
+
	REP #$30
	LDA $F0
	CLC
	ADC #$0040
	STA $F0
	TAX
	LDA #$3003
	STA {bg3_map},x
	INX #2
	LDA #$3004
	STA {bg3_map},x
	LDA $F2
	CLC
	ADC #$0040
	STA $F2
	TAX
	LDA #$3003
	STA {bg3_map},x
	INX #2
	LDA #$3004
	STA {bg3_map},x
	INC $AE
	PLP
	RTS
	
checkbakuhatsu:
	PHP
	SEP #$30
	LDA $AC
	CMP #$07
	BNE +
	LDA #$AE
	STA $90
	LDA #$40
	STA $AF
+
	PLP
	RTS
exebakuhatsu:
	PHP
	LDA $AF
	BEQ +
	DEC $AF
	REP #$30
	LDA $AF
	AND #$00FF
	LSR #3
	ASL
	TAX
	JSR (last_explode,x)	
+
	PLP
	RTS
last_explode:
	dw last0
	dw last1
	dw last2
	dw last3
	dw last4
	dw last5
	dw last6
	dw last7
	
last7:
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0098
	STA {oam_x}
	LDA #$0080
	STA {oam_y}
	JSR write_oam
	RTS
last6:
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120A
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0098
	STA {oam_x}
	LDA #$0080
	STA {oam_y}
	JSR write_oam
	
	LDX #$0008
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0088
	STA {oam_x}
	LDA #$0095
	STA {oam_y}
	JSR write_oam	
	RTS
last5:
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120B
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0098
	STA {oam_x}
	LDA #$0083
	STA {oam_y}
	JSR write_oam
	
	LDX #$0008
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$007C
	STA {oam_x}
	LDA #$0090
	STA {oam_y}
	JSR write_oam	
	RTS
last4:
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120A
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$007C
	STA {oam_x}
	LDA #$0090
	STA {oam_y}
	JSR write_oam	
	
	LDX #$0008
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0072
	STA {oam_x}
	LDA #$0070
	STA {oam_y}
	JSR write_oam	
	
	LDX #$000A
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0082
	STA {oam_x}
	LDA #$0078
	STA {oam_y}
	JSR write_oam	
	RTS
last3:
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120B
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$007C
	STA {oam_x}
	LDA #$0090
	STA {oam_y}
	JSR write_oam	
	
	LDX #$0008
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120A
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0072
	STA {oam_x}
	LDA #$0070
	STA {oam_y}
	JSR write_oam	
	
	LDX #$000A
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$00B2
	STA {oam_x}
	LDA #$0088
	STA {oam_y}
	JSR write_oam	
	RTS
last2:
	LDX #$0008
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120B
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$0072
	STA {oam_x}
	LDA #$0070
	STA {oam_y}
	JSR write_oam	
	
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$1209
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$008C
	STA {oam_x}
	LDA #$0090
	STA {oam_y}
	JSR write_oam	
	
	LDX #$000A
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120A
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$00B2
	STA {oam_x}
	LDA #$008C
	STA {oam_y}
	JSR write_oam	
	LDA #$00AE
	STA $90
	RTS
last1:
	LDX #$0008
	STZ $0720,x
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120A
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$008C
	STA {oam_x}
	LDA #$0090
	STA {oam_y}
	JSR write_oam	
	
	LDX #$000A
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120B
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$00B2
	STA {oam_x}
	LDA #$008C
	STA {oam_y}
	JSR write_oam	
last0:
	LDX #$0008
	STZ $0720,x
	LDX #$0006
	LDA #$2C30
	STA {oam_attribute1}
	LDA #$120B
	STA {oam_attribute2}
	STZ {oam_gra_id}
	LDA #$008C
	STA {oam_x}
	LDA #$0090
	STA {oam_y}
	JSR write_oam	
	
	LDX #$000A
	STZ $0720,x
	RTS
	
stoneshake:
	PHP
	SEP #$20
	INC $F4
	LDA $F4
	CMP #$03
	BEQ +
	PLP
	RTS
+	
	STZ $F4
	LDA $AD
	AND #$01
	BEQ +
	LDA $038E
	CLC
	ADC #$02
	STA $038E
	LDA $0390
	CLC
	ADC #$02
	STA $0390	
	BRA _8
+
	LDA $038E
	SEC
	SBC #$02
	STA $038E
	LDA $0390
	SEC
	SBC #$02
	STA $0390	
_8:
	INC $AD
	PLP
	RTS

move_again:
	LDA $1565,x
	BMI +
	AND #$0600
	ORA $00
	STA $00
+
	LDA $03EC
	CMP #$3000 	//startselect
	BNE +
	SEP #$20
	LDA #$44
	STA $1566,x
	REP #$20
+
	JML $809AEB
	
new_event0A:
	REP #$20
	LDA $92
	CMP #$5C53
	BNE +
	LDA #(keito_block>>16)
	XBA
	STA $93
	LDA #(keito_block)
	STA $92
+
	SEP #$30
	LDA $AE
	STZ $AE
	STA ($AC)
	JML [$F5F8]
	
keito_block:
	db $30, $88, $20, $03, $60, $02, $11, $F6, $09, $0C
	db $30, $89, $60, $03, $60, $02,  $11, $F6, $0A, $0C
	db $30, $8A, $A0, $03, $60, $02, $11, $F6, $0B, $0C
	db $30, $8B,  $E0, $03, $60, $02, $11, $F6, $0C, $0C
	db $30, $8C, $C0, $04, $60, $02, $11, $F6,  $0D, $0C

	db $71, $01, $00, $03

	db $30, $8D, $60, $02, $10, $03, $11, $F6, $38, $0C
	db $30, $8E, $40, $03, $10, $03, $11, $F6, $39, $0C
	db $30, $8F, $50, $04, $10, $03, $11, $F6, $3A, $0C
	db $71, $01
keito_return:	
	db $00, $00
	
new_event71:
	REP #$20
	LDA $92
	CMP #(keito_return)
	BNE +
	LDA #$CA5C
	STA $93
	LDA #$5CA9
	STA $92
+
	SEP #$30
	LDA $AC
	ASL
	JML $83FA9A
	
keito_decomp:
	REP #$30
	LDA $AD
	CMP #$0044
	BEQ +
	JML $83F95F
+
	LDA $00
	PHA
	LDA $02
	PHA
	LDA $04
	PHA
	SEP #$20
	LDA #$7F
	STA $05
	LDA.b #(keito_chr>>16)
	STA $02
	REP #$20
	STZ $03
	LDA #(keito_chr)
	STA $00
	PHX
	PHY
	LDX #$1000
	LDY #$0000
-
	LDA [$00],y
	STA [$03],y
	INY #2
	DEX #2
	BNE -
	PLY
	PLX
	PLA
	STA $04
	PLA
	STA $02
	PLA
	STA $00
	JML [$F5EC]
	
new_effect:
	CPX #$0280	//critical
	BNE +
	LDA #(chimei_chr)
	STA $7E0D50
	LDA #$0080
	STA $FFFE
	JMP write_new_effect
+
	CPX #$0440
	BNE +
	LDA #(chimei_chr)
	CLC
	ADC #$0400	//e-field
	STA $7E0D50
	LDA #$0060
	STA $FFFE
	JMP write_new_effect	
+
	CPX #$07C0
	BNE +
	LDA #(chimei_chr)
	CLC
	ADC #$0100	//bunshin
	STA $7E0D50
	LDA #$0080	
	STA $FFFE
	JMP write_new_effect
+
	CPX #$0600
	BNE +
	LDA #(chimei_chr)
	CLC
	ADC #$0800	//aura barrier
	STA $7E0D50
	LDA #$0080
	STA $FFFE
	JMP write_new_effect
+	
	CPX #$0D00
	BNE +
	LDA #(chimei_chr)
	CLC
	ADC #$0500	//beam coat
	STA $7E0D50
	LDA #$0080
	STA $FFFE
	JMP write_new_effect
+
-
	LDA $0000,x
	STA $1C00,y
	LDA $00E0,x
	STA $1E00,y
	INX #2
	INY #2
	CPY #$01A0
	BNE -
	JML $83D5D9

write_new_effect:
	PHB
	LDA $00
	PHA
	LDA $02
	PHA
	LDA $04
	PHA
	SEP #$20
	LDA.b #(chimei_chr>>16)
	PHA
	PLB
	LDA #$7F
	STA $02
	STA $05
	REP #$20
	LDA #$1C00
	STA $00
	LDA #$1E00
	STA $03
	LDA $7E0D50
	TAX
-
	LDA $0000,x
	STA [$00],y
	LDA $0200,x
	STA [$03],y
	INX #2
	INY #2
	LDA $7FFFFE
	DEC
	STA $7FFFFE
	BNE -
	PLA
	STA $04
	PLA
	STA $02
	PLA
	STA $00
	PLB
	JML $83D5D9
	
himitsu_botan:
	LDA $0840	//unit zahyou
	STA $0842
	STA $0E86
	LDA $03EC
	CMP #$1040	//start x
	BNE +
	JSR en_kaifuku
+
	JML $82B6AC
	
en_kaifuku:
	PHY
	LDA $00
	PHA
	LDA $0E84
	LSR #3
	AND #$007E
	STA $00
	LDA $0E86
	ASL #3
	AND #$1F80
	ORA $00
	TAX
	LDA $7E4000,x
	BPL +
	AND #$7E00
	XBA
	TAY
	SEP #$20
	LDA $1966,y
	STA $1965,y	
	REP #$20
+
	PLA
	PLY
	STA $00
	RTS
	
decomp_panel:
	LDA $10
	CMP #$03FC
	BEQ +
	JSL $80F93D
	JML $828192
+
	PHX
	PHB
	PHP
	SEP #$20
	LDA #$7F
	PHA
	PLB
	REP #$30
	LDX #$0000
	LDY $13
-
	LDA ability_panel_chr,x
	STA $0000,y
	INY #2
	INX #2
	CPX #$1E00
	BNE -
	PLP
	PLB
	PLX
	JML $828192	

incsrc "menu.asm"