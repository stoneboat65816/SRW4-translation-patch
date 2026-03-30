arch snes.cpu
hirom

org $300000
	fill $100000
	
org $FFD7
	db $0D
	

define	bgm_ram1		$78
define	bgm_ram2		$79
define	main_event		$AA
define	sub_event			$AB
define	brightness	$0380
define	new_irq_trigger	$7FFFFF

	incsrc "event.asm"
	incsrc "incbin.asm"
	incsrc "freespace.asm"

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
	
//buki panel: hitsuyou ginou pos
org $CCA6E0
	db $FD, $09, $99
org $CCA769
	db $FD, $09, $99
	
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
	
org $CCB385	//subpanel 2
db	$F1, $00, $20
db	$F7, $00
db	$FD, $FF, $FF
db	$11, $19, $19, $19, $19, $15
db	$F2, $0A, $19, $20
db	$12
db	$F6

db	$1B
db	$F3, $04
db	$F0, $28, $1D
db	$F2, $0A, $28, $20
db	$1C
db	$F6

db	$1B
db	$F3, $04
db	$F4, $28, $1D
db	$F2, $0A, $28, $20
db	$1C
db	$F6

db	$1B, $F3, $04
db	$F8, $28
db	$1D
db	$F2, $0A, $28, $20
db	$1C
db	$F6

db	$1B, $F3, $04, $FC, $28, $1D
db	$F2, $0A, $28, $20
db	$1C
db	$F6

db	$17, $1E, $1E, $1E, $1E, $22
db	$F2, $0A, $28, $20
db	$1C
db	$F6

db	$F9, $04, $1B
db	$F2, $0D, $28, $20
db	$1C
db	$F6
db	$FA
db	$FF
	
org $0CB3D8
	db $F2, $0F
	
	
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
	
org $D288ED
	db $0D, $84, $02	//Huckebein
org $D288F5
	db $0D, $85, $02	//Grungust
org $D288FC
	db $0D, $86, $02	//Wing Gust
org $D28904
	db $0D, $87, $02	//Gust Lander
	
org $0C7C81
	db $0D, $96, $02	//beam saber
org $0C7C89
	db $0D, $97, $02	//beam riffle B
org $0C7C92
	db $0D, $98, $02	//vulcan
org $0C7C97
	db $0D, $99, $02	//hyper bazooka
org $0C7CA0
	db $0D, $9A, $02	//hyper hammer
org $0C7CA9
	db $0D, $9B, $02	//missile launcher
org $0C7CB3
	db $0D, $9C, $02	//long riffle B
org $0C7CBC
	db $0D, $9D, $02	//long beam saber
org $0C7CC7
	db $0D, $9E, $02	//grenade launcher
org $0C7CD2
	db $0D, $9F, $02	//hyper mega launcher B
org $0C7CDF
	db $0D, $A0, $02	//beam gun B
org $0C7CE6
	db $0D, $A1, $02	//smash beam
org $0C7CEF
	db $0D, $A2, $02	//double vulcan
org $0C8C69
	db $0D, $A2, $02	//double vulcan	
org $0C7CF7
	db $0D, $A3, $02	//double beam riffle B
org $0C7D03
	db $0D, $A4, $02	//double cannon
org $0C7D0C
	db $0D, $A5, $02	//hyper beam saber
org $0C7D18
	db $0D, $A6, $02	//hyper mega cannon MAP
org $0C7D24
	db $0D, $A7, $02	//beam cannon
org $0C7D2D
	db $0D, $A8, $02	//fin funnel
org $0C7EBB
	db $0D, $A9, $02	//missile
org $0C7D36
	db $0D, $AA, $02	//mega machine cannon
org $0C7D40
	db $0D, $AB, $02	//vesper B
org $0C7D47
	db $0D, $AC, $02	//gatling gun
org $0C7D4F
	db $0D, $AD, $02	//atomic bazooka MAP
org $0C7D5B
	db $0D, $AE, $02	//mega beam hou B
org $0C7D64
	db $0D, $AF, $02	//big beam saber
org $0C7D70
	db $0D, $B0, $02	//folding bazooka
org $0C7D7D
	db $0D, $B1, $02	//bakudousaku
org $0C7D86
	db $0D, $B2, $02	//shusoku missile
org $0C7D8F
	db $0D, $B3, $02	//micro missle MAP
org $0C7D9A
	db $0D, $B4, $02	//24mili cannon
org $0C7DA4
	db $0D, $B5, $02	//120mili cannon
org $0C7DAE
	db $0D, $B6, $02	//bop missile
org $0C7DB6
	db $0D, $B7, $02	//kogata missile
org $0C8CAF
	db $0D, $B7, $02	//kogata missile	
org $0C88AB
	db $0D, $B8, $02	//hakai kousen
org $0C7DBF
	db $0D, $B9, $02	//vegatron beam
org $0C7DC8
	db $0D, $BA, $02	//hand grenade P
org $0C7DD2
	db $0D, $BB, $02	//rose cutter
org $0C7DDA
	db $0D, $BC, $02	//getter laser
org $0C7DE2
	db $0D, $BD, $02	//getter tomahawk
org $0C7DEC
	db $0D, $BE, $02	//tomahawk boomeran P
org $0C7DF8
	db $0D, $BF, $02	//getter beam
org $0C7E00
	db $0D, $C0, $02	//getter arm
org $0C7E08
	db $0D, $C1, $02	//getter drill
org $0C7E10
	db $0D, $C2, $02	//drill storm
org $0C7E18
	db $0D, $C3, $02	//drill punch
org $0C7E1F
	db $0D, $C4, $02	//kakutou
org $0C7E24
	db $0D, $C5, $02	//getter missile
org $0C7E2D
	db $0D, $C6, $02	//spin cutter
org $0C7E35
	db $0D, $C7, $02	//double tomahawk
org $0C7E3E
	db $0D, $C8, $02	//double tomahawk boomerang P
org $0C7E4D
	db $0D, $C9, $02	//shine spark
org $0C7E56
	db $0D, $CA, $02	//drill arm
org $0C7E5D
	db $0D, $CB, $02	//liger missile
org $0C7E66
	db $0D, $CC, $02	//chain attack
org $0C7E6F
	db $0D, $CD, $02	//getter cyclone
org $0C7E79
	db $0D, $CE, $02	//strong missile
org $0C7E83
	db $0D, $CF, $02	//reitou beam
org $0C7E8B
	db $0D, $D0, $02	//koushiryoku beam
org $0C7E96
	db $0D, $D1, $02	//rocket punch
org $0C7E9F
	db $0D, $D2, $02	//iron cutter P
org $0C7EA9
	db $0D, $D3, $02	//double missile
org $0C7EB1
	db $0D, $D4, $02	//afrodite missile
org $0C7EC0
	db $0D, $D5, $02	//drill missile
org $0C7EC8
	db $0D, $D6, $02	//rust hurricane
org $0C7ED1
	db $0D, $D7, $02	//breast fire
org $0C7EDB
	db $0D, $D8, $02	//scrander cutter
org $0C7EE6
	db $0D, $D9, $02	//southern cross knife P
org $0C7EF1
	db $0D, $DA, $02	//knee impulse kick
org $0C7EFC
	db $0D, $DB, $02	//back spin kick
org $0C7F06
	db $0D, $DC, $02	//mazinger blade
org $0C7F10
	db $0D, $DD, $02	//scramble cutter
org $0C7F1B
	db $0D, $DE, $02	//navel missile
org $0C7F24
	db $0D, $DF, $02	//great typhoon
org $0C7F2E
	db $0D, $E0, $02	//great boomerang
org $0C7F38
	db $0D, $E1, $02	//atomic punch P
org $0C7F42
	db $0D, $E2, $02	//drill pressure punch P
org $0C7F50
	db $0D, $E3, $02	//breast burn
org $0C7F58
	db $0D, $E4, $02	//thunder break
org $0C7F61
	db $0D, $E5, $02	//hand beam B
org $0C7F69
	db $0D, $E6, $02	//shoulder boomerang 
org $0C7F74
	db $0D, $E7, $02	//han juryoku storm
org $0C7F7F
	db $0D, $E8, $02	//double haken
org $0C7F87
	db $0D, $E9, $02	//screw crusher P
org $0C7F94
	db $0D, $EA, $02	//space thunder
org $0C7F9D
	db $0D, $EB, $02	//spin saucer
org $0C7FA5
	db $0D, $EC, $02	//spin drill
org $0C7FAC
	db $0D, $ED, $02	//melt shower
org $0C7FB4
	db $0D, $EE, $02	//cyclone beam B
org $0C7FBE
	db $0D, $EF, $02	//double cutter
org $0C7FC6
	db $0D, $F0, $02	//spark bomber B
org $0C7FD0
	db $0D, $F1, $02	//drill attack
org $0C8D6B
	db $0D, $F1, $02	//drill attack
org $0C7FD8
	db $0D, $F2, $02	//marine missile
org $0C7FE0
	db $0D, $F3, $02	//marine cutter
org $0C7FE8
	db $0D, $F4, $02	//diana missile
org $0C7FF2
	db $0D, $F5, $02	//scarlet beam
org $0C7FFD
	db $0D, $F6, $02	//borot puch
org $0C8005
	db $0D, $F7, $02	//special borot punch
org $0C8012
	db $0D, $F8, $02	//special dx borot punch
org $0C8021
	db $0D, $F9, $02	//koushiryoku missile
org $0C802C
	db $0D, $FA, $02	//finger missile P
org $0C8037
	db $0D, $FB, $02	//30mili machine gun
org $0C8041
	db $0D, $FC, $02	//sky ripper
org $0C804A
	db $0D, $FD, $02	//doth pressure
org $0C8053
	db $0D, $FE, $02	//magnet laser
org $0C805B
	db $0D, $FF, $02	//rock fighter
org $0C8064
	db $0D, $00, $03	//electro dart
org $0C806D
	db $0D, $01, $03	//magnet claw
org $0C8074
	db $0D, $02, $03	//atomic burner
org $0C807E
	db $0D, $03, $03	//ancho nunckle
org $0C8087
	db $0D, $04, $03	//380mili sensha hou
org $0C8093
	db $0D, $05, $03	//mechanic fixer
org $0C809C
	db $0D, $06, $03	//bakurai
org $0C80A1
	db $0D, $07, $03	//craft drill
org $0C80A9
	db $0D, $08, $03	//battle return P
org $0C80B2
	db $0D, $09, $03	//battle garegga
org $0C80BB
	db $0D, $0A, $03	//choudenji crane
org $0C80C6
	db $0D, $0B, $03	//spring crusher
org $0C80D2
	db $0D, $0C, $03	//choudenji yoyo
org $0C80DD
	db $0D, $0D, $03	//twin lancer
org $0C80E5
	db $0D, $0E, $03	//V laser
org $0C80EB
	db $0D, $0F, $03	//battle chainsaw
org $0C80F5
	db $0D, $10, $03	//big blast
org $0C80FD
	db $0D, $11, $03	//big blast divider
org $0C810C
	db $0D, $12, $03	//choudenji spark
org $0C8117
	db $0D, $13, $03	//choudenji spin
org $0C8121
	db $0D, $14, $03	//god breaker
org $0C812A
	db $0D, $15, $03	//god missile
org $0C8132
	db $0D, $16, $03	//god boomrang P
org $0C813C
	db $0D, $17, $03	//god thunder
org $0C8144
	db $0D, $18, $03	//god arrow
org $0C814B
	db $0D, $19, $03	//god gun
org $0C8153
	db $0D, $1A, $03	//god pressure
org $0C815D
	db $0D, $1B, $03	//gogan sword
org $0C8165
	db $0D, $1C, $03	//energy cutter
org $0C816F
	db $0D, $1D, $03	//god alpha P
org $0C8178
	db $0D, $1E, $03	//god bird
org $0C817F
	db $0D, $1F, $03	//god voice
org $0C8186
	db $0D, $20, $03	//20mili vulcan
org $0C818F
	db $0D, $21, $03	//foot cutter
org $0C8197
	db $0D, $22, $03	//shinkuu mawashi geri
org $0C81A2
	db $0D, $23, $03	//snake lock P
org $0C81AB
	db $0D, $24, $03	//five shooter P
org $0C81B6
	db $0D, $25, $03	//cross boomerang P
org $0C81C0
	db $0D, $26, $03	//dymo gun
org $0C81C6
	db $0D, $27, $03	//dynamo shaft
org $0C81CE
	db $0D, $28, $03	//drill ancho
org $0C81D6
	db $0D, $29, $03	//sanryuukon
org $0C81DD
	db $0D, $2A, $03	//souryuuken
org $0C81E4
	db $0D, $2B, $03	//hissatsu reppuu seiken
org $0C8206
	db $0D, $2C, $03	//daiturn zamber
org $0C8210
	db $0D, $2D, $03	//daiturn hammer
org $0C821A
	db $0D, $2E, $03	//daiturn web P
org $0C8225
	db $0D, $2F, $03	//big web
org $0C822D
	db $0D, $30, $03	//daiturn missile
org $0C8237
	db $0D, $31, $03	//daiturn cannon
org $0C8241
	db $0D, $32, $03	//sun laser
org $0C8248
	db $0D, $33, $03	//sun attack
org $0C824F
	db $0D, $34, $03	//rocket hou
org $0C8256
	db $0D, $35, $03	//daiturn missile
org $0C8260
	db $0D, $36, $03	//bakudan
org $0C8265
	db $0D, $37, $03	//bird gun
org $0C826B
	db $0D, $38, $03	//oogata missile
org $0C8CB8
	db $0D, $38, $03	//oogata missile
org $0C8947
	db $0D, $38, $03 //oogata missile
org $0C8274
	db $0D, $39, $03	//tremble horn
org $0C827D
	db $0D, $3A, $03	//zambo magnum
org $0C8285
	db $0D, $3B, $03	//zambo riffle
org $0C828D
	db $0D, $3C, $03	//crusher drill
org $0C8297
	db $0D, $3D, $03	//arm punch P
org $0C829F
	db $0D, $3E, $03	//big cannon
org $0C82A7
	db $0D, $3F, $03	//bull missile
org $0C82AE
	db $0D, $40, $03	//big missile
org $0C8D51
	db $0D, $40, $03	//big missile
org $0C8D51
	db $0D, $40, $03	//big missile	
org $0C82B6
	db $0D, $41, $03	//base laser
org $0C82BE
	db $0D, $42, $03	//nessenhou
org $0C82C5
	db $0D, $43, $03	//base missile
org $0C82CD
	db $0D, $44, $03	//zambot glap
org $0C82D7
	db $0D, $45, $03	//zambot blow
org $0C82E0
	db $0D, $46, $03	//zambot buster P
org $0C82EB
	db $0D, $47, $03	//zambot cutter
org $0C82F5
	db $0D, $48, $03	//buster missile
org $0C82FE
	db $0D, $49, $03	//moon attack
org $0C8306
	db $0D, $4A, $03	//Ion hou
org $0C830C
	db $0D, $4B, $03	//wire claw
org $0C8314
	db $0D, $4C, $03	//dry strahl
org $0C831E
	db $0D, $4D, $03	//elemental fusion
org $0C832B
	db $0D, $4E, $03	//aura sword
org $0C8332
	db $0D, $4F, $03	//blast knuckle P
org $0C8341
	db $0D, $50, $03	//aura shot
org $0C833B
	db $0D, $51, $03	//evil eye
org $0C8349
	db $0D, $52, $03	//aura giri
org $0C8350
	db $0D, $53, $03	//hyper aura giri
org $0C8364
	db $0D, $54, $03	//aura cannon
org $0C835B
	db $0D, $55, $03	//sandan bazooka
org $0C836C
	db $0D, $56, $03	//aura beam sword
org $0C8376
	db $0D, $57, $03	//aura sword riffle
org $0C8381
	db $0D, $58, $03	//cosmo beam B
org $0C8389
	db $0D, $59, $03	//neo plasma cutter
org $0C8395
	db $0D, $5A, $03	//red impulse
org $0C839F
	db $0D, $5B, $03	//holster beam B
org $0C83A9
	db $0D, $5C, $03	//mega beam riffle B
org $0C83B4
	db $0D, $5D, $03	//slash ripper
org $0C83BE
	db $0D, $5E, $03	//go saber
org $0C83C5
	db $0D, $5F, $03	//go stick P
org $0C83CE
	db $0D, $60, $03	//space bazooka
org $0C83D7
	db $0D, $61, $03	//go flasher
org $0C83E0
	db $0D, $62, $03	//pulse laser
org $0C83E8
	db $0D, $63, $03	//beam launcher B
org $0C83F2
	db $0D, $64, $03	//rensou cannon hou
org $0C83FD
	db $0D, $65, $03	//dankuuhou
org $0C8404
	db $0D, $66, $03	//dankuuken
org $0C840B
	db $0D, $67, $03	//27mili kikanhou
org $0C8416
	db $0D, $68, $03	//4ren missile
org $0C841E
	db $0D, $69, $03	//totsugeki
org $0C8423
	db $0D, $6A, $03	//cannon hou
org $0C842A
	db $0D, $6B, $03	//koushusoku rensha beam B
org $0C843B
	db $0D, $6C, $03	//5ren missile launcher
org $0C8448
	db $0D, $6D, $03	//kamitsuki
org $0C844D
	db $0D, $6E, $03	//105mili riffle hou
org $0C8459
	db $0D, $6F, $03	//200mili ryudanhou
org $0C8465
	db $0D, $70, $03	//4ren daikoukeihou
org $0C8471
	db $0D, $71, $03	//4ren taikuu pulse laser
org $0C8480
	db $0D, $72, $03	//rocket launcher
org $0C848A
	db $0D, $73, $03	//kiba
org $0C848D
	db $0D, $74, $03	//Giga Sword Cannon
org $0C8496
	db $0D, $75, $03	//beam cannon
org $0C849E
	db $0D, $76, $03	//mega beam cannon
org $0C84A8
	db $0D, $77, $03	//linear rail gun
org $0C84C2
	db $0D, $78, $03	//dis cutter
org $0C84CA
	db $0D, $79, $03	//caloric missile
org $0C84D4
	db $0D, $7A, $03	//psyflash MAP
org $0C84DF
	db $0D, $7B, $03	//high familia
org $0C84E7
	db $0D, $7C, $03	//acaxis buster
org $0C84F1
	db $0D, $7D, $03	//cosmo nova
org $0C84F8
	db $0D, $7E, $03	//gran worm sword
org $0C8502
	db $0D, $7F, $03	//graviton cannon MAP
org $0C850E
	db $0D, $80, $03	//worm smasher
org $0C8518
	db $0D, $81, $03	//blackhole cluster
org $0C8525
	db $0D, $82, $03	//shukutaihou
org $0C852C
	db $0D, $83, $03	//divine arm
org $0C8535
	db $0D, $84, $03	//psycho blast MAP
org $0C8541
	db $0D, $85, $03	//cross saucer
org $0C8549
	db $0D, $86, $03	//Hyper beam cannon B
org $0C8556
	db $0D, $87, $03	//cross smasher
org $0C855F
	db $0D, $88, $03	//chousindouken
org $0C8571
	db $0D, $89, $03	//taikuu missile
org $0C857A
	db $0D, $8A, $03	//resonance quake MAP
org $0C8586
	db $0D, $8B, $03	//flame cutter
org $0C8597
	db $0D, $8C, $03	//chuuseishi laser
org $0C85A2
	db $0D, $8D, $03	//carolic smash
org $0C85AD
	db $0D, $8E, $03	//megid flame MAP P
org $0C85B8
	db $0D, $8F, $03	//gungnir
org $0C85BF
	db $0D, $90, $03	//high drop pressure
org $0C8568
	db $0D, $91, $03	//linear rail gun
org $0C858F
	db $0D, $92, $03	//pulse laser
org $0C85CA
	db $0D, $93, $03	//kelvin blizzard MAP
org $0C85D7
	db $0D, $94, $03	//plasma cutter
org $0C85E0
	db $0D, $95, $03	//split missile
org $0C85EA
	db $0D, $96, $03	//neutron beam
org $0C85F4
	db $0D, $97, $03	//heat hawk
org $0C85FB
	db $0D, $98, $03	//zaku bazooka
org $0C8602
	db $0D, $99, $03	//120mm machine gun
org $0C860D
	db $0D, $9A, $03	//hand grenade P
org $0C89A1
	db $0D, $9A, $03	//hand grenade P		
org $0C8617
	db $0D, $9B, $03	//sturm faust
org $0C8622
	db $0D, $9C, $03	//heat saber
org $0C862A
	db $0D, $9D, $03	//kakusan beam B
org $0C8635
	db $0D, $9E, $03	//giant bazu
org $0C8617
	db $0D, $9F, $03	//sturm faust
org $0C863E
	db $0D, $A0, $03	//mega ryushi hou B
org $0C8648
	db $0D, $A1, $03	//bit
org $0C864C
	db $0D, $A2, $03	//umi hebi
org $0C8651
	db $0D, $A3, $03	//big beam riffle B
org $0C84B1
	db $0D, $A4, $03	//beam hou B
org $0C84B8
	db $0D, $A5, $03	//godneros punch
org $0C865E
	db $0D, $A6, $03	//small megabeam hou B
org $0C866B
	db $0D, $A7, $03	//kakusan mega ryushi hou B
org $0C8679
	db $0D, $A8, $03	//fadein riffle B
org $0C8685
	db $0D, $A9, $03	//claw arm
org $0C868C
	db $0D, $AA, $03	//reflector bit
org $0C8696
	db $0D, $AB, $03	//psycommu beam sword
org $0C86A4
	db $0D, $AC, $03	//clay bazooka
org $0CC86AC
	db $0D, $AD, $03	//mega bazooka launcher MAP B
org $0C86BB
	db $0D, $AE, $03	//arm beam gun B
org $0C86C5
	db $0D, $AF, $03	//shuri souchi
org $0C86CE
	db $0D, $B0, $03	//shot gun
org $0C8635
	db $0D, $B1, $03	//giant bazu
org $0C86D5
	db $0D, $B2, $03	//60mili kikanhou
org $0C86E0
	db $0D, $B3, $03	//panzer faust
org $0C86EC
	db $0D, $B4, $03	//110mili vulcan
org $0C86F6
	db $0D, $B5, $03	//missile pod
org $0C86FE
	db $0D, $B6, $03	//big mega ryushi hou B
org $0C870C
	db $0D, $B7, $03	//plasma reader MAP
org $0C8717
	db $0D, $B8, $03	//psycommu mega ryushi hou
org $0C8727
	db $0D, $B9, $03	//110mili kikan hou
org $0C8733
	db $0D, $BA, $03	//henkou mega ryushi hou B
org $0C8741
	db $0D, $BB, $03	//yuusen claw arm
org $0C874C
	db $0D, $BC, $03	//big missile launcher
org $0C875A
	db $0D, $BD, $03	//small missile launcher
org $0C8768
	db $0D, $BE, $03	//mega cannon hou B
org $0C8771
	db $0D, $BF, $03	//funnel 
org $0C8777
	db $0D, $C0, $03	//finger launcher
org $0C8782
	db $0D, $C1, $03	//energy gun B
org $0C878B
	db $0D, $C2, $03	//yuusen beam hou
org $0C8797
	db $0D, $C3, $03	//beam tomahawk
org $0C8836
	db $0D, $C3, $03	//beam tomahawk
org $0C87A6
	db $0D, $C4, $03	//tryblade P
org $0C87AF
	db $0D, $A7, $02	//beam cannon B
org $0C87B8
	db $0D, $A7, $02	//beam cannon B
org $0C8A34
	db $0D, $A7, $02 //beam cannon B

org $0C87C0
	db $0D, $C7, $03	//taikan missile
org $0C87C9
	db $0D, $C8, $03	//incom
org $0C87CE
	db $0D, $C9, $03	//mega launcher B
org $0C87D7
	db $0D, $CA, $03	//mega beam cannon B
org $0C886D
	db $0D, $CA, $03	//mega beam cannon B
org $0C87E1
	db $0D, $CB, $03	//hyper mega ryuushi hou
org $0C87FF
	db $0D, $CC, $03	//beam sword axe
org $0C880A
	db $0D, $CD, $03	//beam machine gun B
org $0C8814
	db $0D, $CE, $03	//storm faust
org $0C881F
	db $0D, $CF, $03	//mega gatling gun
org $0C8829
	db $0D, $D0, $03	//beam assault riffle B
org $0C87A0
	db $0D, $D1, $03	//hand gun

org $0C883F
	db $0D, $D2, $03	//beam shot riffle B
org $0C884C
	db $0D, $D3, $03	//yuusen siki mega arm hou
org $0C885A
	db $0D, $D4, $03	//shot lancer
org $0C8863
	db $0D, $D5, $03	//tentacle claw
org $0C8878
	db $0D, $D6, $03	//bug
org $0C887B
	db $0D, $D7, $03	//claw
org $0C887F
	db $0D, $D8, $03	//mini missile
org $0C8886
	db $0D, $D9, $03	//magma dan
org $0C888C
	db $0D, $DA, $03	//tai atari
org $0C8893
	db $0D, $DB, $03	//hand sord
org $0C889A
	db $0D, $DC, $03	//rocket dan
org $0C88A1
	db $0D, $DD, $03	//taihou
org $0C88A6
	db $0D, $DE, $03	//laser
org $0C88B7
	db $0D, $DF, $03	//boomerang
org $0C88B4
	db $0D, $E0, $03	//kama
org $0C88BD
	db $0D, $E1, $03	//muchi
org $0C88C0
	db $0D, $E2, $03	//pistol
org $0C88C5
	db $0D, $E3, $03	//riffle
org $0C88CA
	db $0D, $E4, $03	//spear
org $0C88CE
	db $0D, $E5, $03	//hurricane
org $0C88D4
	db $0D, $E6, $03	//jiryoku kousen
org $0C88DD
	db $0D, $E7, $03	//shock beam
org $0C88E5
	db $0D, $E8, $03	//uzumaki
org $0C88EA
	db $0D, $E9, $03	//ring kousen
org $0C88F2
	db $0D, $EA, $03	//gyo rai
org $0C88F7
	db $0D, $EB, $03	//drill
org $0C88FB
	db $0D, $EC, $03	//shindouha
org $0C8902
	db $0D, $ED, $03	//kuchibashi
org $0C8907
	db $0D, $EE, $03	//vegatron beam
org $0C8912
	db $0D, $EF, $03	//beam vulcan B
org $0C891B
	db $0D, $F0, $03	//kyodai vegatron beam hou
org $0C892A
	db $0D, $F1, $03	//spin attack
org $0C8932
	db $0D, $F2, $03	//kaen
org $0C8937
	db $0D, $F3, $03	//denji mori
org $0C893E
	db $0D, $F4, $03	//reitou kousen
org $0C8950
	db $0D, $F5, $03	//lightning arrow
org $0C895A
	db $0D, $F6, $03	//iron claw
org $0C8962
	db $0D, $F7, $03	//graviton wave
org $0C896C
	db $0D, $F8, $03	//chou hakai kousen
org $0C8977
	db $0D, $F9, $03	//mega graviton wave
org $0C8983
	db $0D, $FA, $03	//shokushu
org $0C8988
	db $0D, $FB, $03	//chouonpa
org $0C898F
	db $0D, $FC, $03	//marine vortex
org $0C899A
	db $0D, $FD, $03	//flame bomb P
org $0C89AB
	db $0D, $FE, $03	//aura shot arm
org $0C89B7
	db $0D, $FF, $03	//aura nova hou MAP
org $0C89C1
	db $0D, $00, $04	//gante missile
org $0C89C9
	db $0D, $01, $04	//ceramic sword
org $0C89D2
	db $0D, $02, $04	//gil sword
org $0C89D8
	db $0D, $03, $04	//gil arrow
org $0C89DE
	db $0D, $04, $04	//youma saber
org $0C89E7
	db $0D, $05, $04	//nessen
org $0C89EC
	db $0D, $06, $04	//reitou gas
org $0C89F3
	db $0D, $07, $04	//kagizume
org $0C89F8
	db $0D, $08, $04	//scimitar
org $0C89FD
	db $0D, $09, $04	//shield beam B
org $0C8A06
	db $0D, $0A, $04	//lancer
org $0C8A74
	db $0D, $0A, $04	//lancer
org $0C8A0B
	db $0D, $0B, $04	//space missile
org $0C8A14
	db $0D, $0C, $04	//bundock hou
org $0C8A1C
	db $0D, $0D, $04	//wing sword
org $0C8A24
	db $0D, $0E, $04	//big bow
org $0C8A2A
	db $0D, $0F, $04	//homing missile
org $0C8A3D
	db $0D, $10, $04	//flasher beam B
org $0C8A48
	db $0D, $11, $04	//ram
org $0C8A4B
	db $0D, $12, $04	//saber
org $0C8A50
	db $0D, $13, $04	//bazooka
org $0C8A55
	db $0D, $14, $04	//han isalon ryuushi
org $0C8A63
	db $0D, $15, $04	//high mega ryuushi hou B
org $0C87EF
	db $0D, $16, $04	//hyper mega ryuushi hou MAP B
org $0C8A6F
	db $0D, $17, $04	//savior
org $0C8A79
	db $0D, $18, $04	//S mine P
org $0C8A7F
	db $0D, $19, $04	//power launcher B
org $0C8A89
	db $0D, $1A, $04	//buster launcher MAP B
org $0C8A96
	db $0D, $1B, $04	//slow lancer P
org $0C8A9F
	db $0D, $1C, $04	//size 
org $0C8AA3
	db $0D, $1D, $04	//hand launcher B
org $0C8AAD
	db $0D, $1E, $04	//reversed bommer
org $0C8AB5
	db $0D, $1F, $04	//energy bomber
org $0C8ABF
	db $0D, $20, $04	//sash
org $0C8AC4
	db $0D, $21, $04	//frogger
org $0C8ACA
	db $0D, $22, $04	//long spear
org $0C8AD1
	db $0D, $23, $04	//houden
org $0C8AD6
	db $0D, $24, $04	//hammer
org $0C8ADB
	db $0D, $25, $04	//beam lance
org $0C8AE2
	db $0D, $26, $04	//lance missile
org $0C8AEA
	db $0D, $27, $04	//battle spear
org $0C8AF1
	db $0D, $28, $04	//dai setsuzan oroshi
org $0C8AFB
	db $0D, $29, $04	//hokyu souchi
org $0C8B04
	db $0D, $2A, $04	//grandassher
org $0C81F4
	db $0D, $2B, $04	//hissatsu reppu seiken kai
org $0C8B0D
	db $0D, $2C, $04	//mega kakusan beam B

org $0C8B1A
	db $0D, $2D, $04	//mega beam launcher B
org $0C8C35
	db $0D, $2D, $04	//mega beam launcher B
org $0C8B26
	db $0D, $2E, $04	//marine beam
org $0C8B2E
	db $0D, $2F, $04	//aura vulcan
org $0C8B36
	db $0D, $30, $04	//hair missile
org $0C8B3D
	db $0D, $31, $04	//youma kousen
org $0C8B46
	db $0D, $32, $04	//60mili kijuu
org $0C8B4F
	db $0D, $33, $04	//main mega ryuushi hou B
org $0C8B5C
	db $0D, $34, $04	//sub mega ryuushi hou B
org $0C8B68
	db $0D, $35, $04	//120mili kijuu
org $0C8B74
	db $0D, $36, $04	//30mili kijuu
org $0C8B7D
	db $0D, $37, $04	//taikuu kikanhou
org $0C8B88
	db $0D, $38, $04	//12 rensou missile launcher
org $0C8B98
	db $0D, $39, $04	//15 rensou missile launcher
org $0C8BA8
	db $0D, $3A, $04	//90mili kijuu
org $0C8BB3
	db $0D, $3B, $04	//keito ragou ken
org $0C8BBE
	db $0D, $3C, $04	//140mili kijuu
org $0C8BCA
	db $0D, $3D, $04	//160mili kijuu
org $0C8BD6
	db $0D, $3E, $04	//180mili kijuu
org $0C8BE2
	db $0D, $3F, $04	//20 rensou missile launcher
org $0C8BF2
	db $0D, $40, $04	//great booster
org $0C8BFC
	db $0D, $41, $04	//chain mine
org $0C8C04
	db $0D, $42, $04	//hyper aura cannon
org $0C8C10
	db $0D, $43, $04	//laser vulcan
org $0C8C19
	db $0D, $44, $04	//gatling beam B
org $0C8C23
	db $0D, $45, $04	//laser sword
org $0C8C2B
	db $0D, $46, $04	//spread missile
org $0C8C41
	db $0D, $47, $04	//daikoukei beam hou B
org $0C8C4E
	db $0D, $48, $04	//dual laser sword
org $0C8C5A
	db $0D, $49, $04	//laser gun
org $0C8C61
	db $0D, $4A, $04	//double cannon
org $0C8C71
	db $0D, $4C, $04	//Ion hou beam B
org $0C8C7B
	db $0D, $4D, $04	//mass driver cannon
org $0C8C87
	db $0D, $4E, $04	//twin laser sword
org $0C8C92
	db $0D, $4F, $04	//launcher missile
org $0C8CA5
	db $0D, $4B, $04	//driver cannon
org $0C8C9C
	db $0D, $50, $04	//laser cannon
org $0C8CC1
	db $0D, $51, $04	//kaden ryuushi beam B
org $0C8CCE
	db $0D, $52, $04	//60mili vulcan
org $0C8CD7
	db $0D, $53, $04	//plasma sword
org $0C8CDF
	db $0D, $54, $04	//4 ren missile launcher
org $0C8CEC
	db $0D, $55, $04	//roche savior
org $0C8CF4
	db $0D, $56, $04	//leap slasher
org $0C8CFE
	db $0D, $57, $04	//blackhole cannon
org $0C8D0A
	db $0D, $58, $04	//boost knuckle P
org $0C8D14
	db $0D, $59, $04	//omega laser
org $0C8D1C
	db $0D, $5A, $04	//break cross P
org $0C8D25
	db $0D, $5B, $04	//laser spear
org $0C8D34
	db $0D, $5C, $04	//keito ragou ankensatsu
org $0C8D46
	db $0D, $5D, $04	//double omega laser
org $0C8D73
	db $0D, $5E, $04	//texas sword
org $0C8D59
	db $0D, $5F, $04	//spiral attack
org $0C8D63
	db $0D, $60, $04	//omega cannon
org $0C8D7B
	db $0D, $61, $04	//mac revolver
org $0C8D84
	db $0D, $62, $04	//mac client
org $0C8D8D
	db $0D, $63, $04	//mac riffle
org $0C8D95
	db $0D, $64, $04	//2 ren mega ryuushi hou B
org $0C8DA4
	db $0D, $65, $04	//adzam reader MAP
org $0C8DAF
	db $0D, $66, $04	//dark saber
org $0C8DB7
	db $0D, $67, $04	//evil size
org $0C8DBE
	db $0D, $68, $04	//hell fire
org $0C8DC6
	db $0D, $69, $04	//noroi
org $0C8DCA
	db $0D, $6A, $04	//fire breath
org $0C8DD3
	db $0D, $6B, $04	//slide shield
org $0C8DDC
	db $0D, $6C, $04	//shield boomerang
org $0C8DE6
	db $0D, $6D, $04	//evil ring
org $0C8DED
	db $0D, $6E, $04	//kai kousen
org $0C8DF4
	db $0D, $6F, $04	//shita 
org $0C8DF7
	db $0D, $70, $04	//daikaen
org $0C8E09
	db $0D, $71, $04	//mirage drill
org $0C8E12
	db $0D, $72, $04	//drill tempest
org $0C8E1B
	db $0D, $73, $04	//hammer punch
org $0C8E23
	db $0D, $74, $04	//daisetuzan oroshi 2dan gaeshi
org $0C8E34
	db $0D, $75, $04	//shippo
org $0C8E38
	db $0D, $76, $04	//drill breath
org $0C8E40
	db $0D, $77, $04	//corona barrier
org $0C8E47
	db $0D, $78, $04	//long laser sword
org $0C8E52
	db $0D, $79, $04	//giga blaster
org $0C8E5A
	db $0D, $7A, $04	//giga driver cannon
org $0C8E7D
	db $0D, $7B, $04	//reflector incom
org $0C8E66
	db $0D, $7C, $04	//bigbang wave MAP
org $0C8E72
	db $0D, $7D, $04	//beam smart gun B
org $D28566
	db $0D, $7F, $04	//hangeki funou
	
org $D279AB
	db $0D, $81, $04	//cham
org $D279AF
	db $0D, $82, $04	//belle
org $D279B2
	db $0D, $83, $04	//elle
org $D279B5
	db $0D, $84, $04	//lilith
org $D279B9
	db $0D, $85, $04	//silky
org $D279BE
	db $0D, $86, $04	//yousei6
org $D279C4
	db $0D, $87, $04	//jack
org $D279C9
	db $0D, $88, $04	//marry
org $D279CD
	db $0D, $89, $04	//ryou
org $D279D1
	db $0D, $8A, $04	//hayato
org $D279D5
	db $0D, $8B, $04	//benkei
org $D279DA
	db $0D, $8C, $04	//shingo
org $D279DF
	db $0D, $8D, $04	//remy
org $D279E3
	db $0D, $8E, $04	//kily
org $D279E7
	db $0D, $8F, $04	//kappei
org $D279EC
	db $0D, $90, $04	//uchuta
org $D279F3
	db $0D, $91, $04	//keiko
org $D279F8
	db $0D, $92, $04	//shinobu
org $D279FB
	db $0D, $93, $04	//sara
org $D27A00
	db $0D, $94, $04	//masato
org $D27A05
	db $0D, $95, $04	//ryou
org $D27A08
	db $0D, $96, $04	//hyouma
org $D27A0D
	db $0D, $97, $04	//juuzou
org $D27A12
	db $0D, $98, $04	//daisaku
org $D27A17
	db $0D, $99, $04	//chizuru
org $D27A1B
	db $0D, $9A, $04	//kosuke
org $D27A20
	db $0D, $9B, $04	//gilliam
org $D27A25
	db $0D, $9C, $04	//shou
org $D27A29
	db $0D, $9D, $04	//masaki
org $D27A2D
	db $0D, $9E, $04	//ryune
org $D27A32
	db $0D, $9F, $04	//shuu
org $D27A36
	db $0D, $A0, $04	//quatro
org $D27A3B
	db $0D, $A1, $04	//bright
org $D27A40
	db $0D, $A2, $04	//hayato
org $D27A44
	db $0D, $A3, $04	//kai
org $D27A47
	db $0D, $A4, $04	//matilda
org $D27A4C
	db $0D, $A5, $04	//sayla
org $D27A50
	db $0D, $A6, $04	//wakkein
org $D27A56
	db $0D, $A7, $04	//tianem
org $D27A5C
	db $0D, $A8, $04	//emma
org $D27A5F
	db $0D, $A9, $04	//torres
org $D27A64
	db $0D, $AA, $04	//fa
org $D27A67
	db $0D, $AB, $04	//katsu
org $D27A6A
	db $0D, $AC, $04	//four
org $D27A6E
	db $0D, $AD, $04	//beltorchika
org $D27A75
	db $0D, $AE, $04	//kelly
org $D27A79
	db $0D, $AF, $04	//henken
org $D27A7E
	db $0D, $B0, $04	//blex
org $D27A84
	db $0D, $B1, $04	//roux
org $D27A87
	db $0D, $B2, $04	//puru
org $D27A8A
	db $0D, $B3, $04	//purutz
org $D27A8F
	db $0D, $B4, $04	//leina
org $D27A93
	db $0D, $B5, $04	//beecha
org $D27A98
	db $0D, $B6, $04	//mondo
org $D27A9C
	db $0D, $B7, $04	//elle
org $D27A9F
	db $0D, $B8, $04	//iino
org $D27AA3
	db $0D, $B9, $04	//emary
org $D27AA8
	db $0D, $BA, $04	//quess
org $D27AAC
	db $0D, $BB, $04	//chan
org $D27AB1
	db $0D, $BC, $04	//kayra
org $D27AB5
	db $0D, $BD, $04	//hathaway
org $D27ABB
	db $0D, $BE, $04	//chris
org $D27ABF
	db $0D, $BF, $04	//berny
org $D27AC4
	db $0D, $C0, $04	//cecily
org $D27AC9
	db $0D, $C1, $04	//nina
org $D27ACC
	db $0D, $C2, $04	//gato
org $D27AD0
	db $0D, $C3, $04	//keith
org $D27AD4
	db $0D, $C4, $04	//monsha
org $D27AD9
	db $0D, $C5, $04	//sayaka
org $D27ADD
	db $0D, $C6, $04	//ramthus
org $D27AE2
	db $0D, $C7, $04	//boss
org $D27AE5
	db $0D, $C8, $04	//jun
org $D27AE9
	db $0D, $C9, $04	//maria
org $D27AED
	db $0D, $CA, $04	//hikaru
org $D27AF1
	db $0D, $CB, $04	//michiru
org $D27AF5
	db $0D, $CC, $04	//dangel
org $D27AFA
	db $0D, $CD, $04	//jinguji
org $D27B01
	db $0D, $CE, $04	//Asuka
org $D27B04
	db $0D, $CF, $04	//mari
org $D27B07
	db $0D, $D0, $04	//amuro
org $D27B0B
	db $0D, $D1, $04	//camille
org $D27B10
	db $0D, $D2, $04	//judau
org $D27B15
	db $0D, $D3, $04	//seabook
org $D27B1B
	db $0D, $D4, $04	//kou
org $D27B1E
	db $0D, $D5, $04	//kouji
org $D27B23
	db $0D, $D6, $04	//saemon
org $D27B2B
	db $0D, $D7, $04	//ume-e
org $D27B30
	db $0D, $D8, $04	//gengoro
org $D27B37
	db $0D, $D9, $04	//ichitarou
org $D27B3E
	db $0D, $DA, $04	//garison
org $D27B44
	db $0D, $DB, $04	//beauty
org $D27B4A
	db $0D, $DC, $04	//reika
org $D27B4E
	db $0D, $DD, $04	//toppo
org $D27B52
	db $0D, $DE, $04	//tetsuya
org $D27B57
	db $0D, $DF, $04	//kyoushirou
org $D27B5E
	db $0D, $E0, $04	//nana
org $D27B61
	db $0D, $E1, $04	//duke
org $D27B66
	db $0D, $E2, $04	//marvel
org $D27B6B
	db $0D, $E3, $04	//akira
org $D27B6E
	db $0D, $E4, $04	//nie
org $D27B71
	db $0D, $E5, $04	//keen
org $D27B75
	db $0D, $E6, $04	//ciela
org $D27B79
	db $0D, $E7, $04	//elle
org $D27B7C
	db $0D, $E8, $04	//rimul
org $D27B80
	db $0D, $E9, $04	//eve
org $D27B84
	db $0D, $EA, $04	//banjou
org $D27B89
	db $0D, $EB, $04	//kazuya
org $D27D49
	db $0D, $EC, $04	//heishi
org $D27B8E
	db $0D, $ED, $04	//tytti
org $D27B94
	db $0D, $EE, $04	//jumashougun
org $D27B9D
	db $0D, $EF, $04	//Burning
org $D27BA2
	db $0D, $F0, $04	//long
org $D27BA7
	db $0D, $F1, $04	//presia
org $D27BAC
	db $0D, $F2, $04	//mio
org $D27BAF
	db $0D, $F3, $04	//titans
org $D27BB6
	db $0D, $F4, $04	//monica
org $D27BBA
	db $0D, $F5, $04	//safine
org $D27BC0
	db $0D, $F6, $04	//gadem
org $D27BC4
	db $0D, $F7, $04	//ral
org $D27BC7
	db $0D, $F8, $04	//hamon
org $D27BCB
	db $0D, $F9, $04	//clamp
org $D27BD0
	db $0D, $FA, $04	//gaia
org $D27BD4
	db $0D, $FB, $04	//mash
org $D27BD9
	db $0D, $FC, $04	//ortega
org $D27BDE
	db $0D, $FD, $04	//challia
org $D27BE3
	db $0D, $FE, $04	//lalah
org $D27BE7
	db $0D, $FF, $04	//gadi
org $D27BEB
	db $0D, $00, $05	//kacricon
org $D27BF1
	db $0D, $01, $05	//sarah
org $D27BF4
	db $0D, $02, $05	//gates
org $D27BF8
	db $0D, $03, $05	//jerid
org $D27BFD
	db $0D, $04, $05	//jamaican
org $D27C04
	db $0D, $05, $05	//jamitov
org $D27C0A
	db $0D, $06, $05	//haman
org $D27C0F
	db $0D, $07, $05	//buran
org $D27C13
	db $0D, $08, $05	//ben
org $D27C16
	db $0D, $09, $05	//maur
org $D27C1B
	db $0D, $0A, $05	//mineva
org $D27C1F
	db $0D, $0B, $05	//lila
org $D27C23
	db $0D, $0C, $05	//yazan
org $D27C27
	db $0D, $0D, $05	//rosamia
org $D27C2C
	db $0D, $0E, $05	//mashymre
org $D27C32
	db $0D, $0F, $05	//illia
org $D27C36
	db $0D, $10, $05	//chara
org $D27C3A
	db $0D, $11, $05	//glemy
org $D27C3F
	db $0D, $12, $05	//gotton
org $D27C44
	db $0D, $13, $05	//nie
org $D27C47
	db $0D, $14, $05	//lance
org $D27C4B
	db $0D, $15, $05	//rakan
org $D27C4F
	db $0D, $16, $05	//gyunei
org $D27C54
	db $0D, $17, $05	//nanai
org $D27C58
	db $0D, $18, $05	//rezin
org $D27C5C
	db $0D, $19, $05	//zabine
org $D27C61
	db $0D, $1A, $05	//annamarie
org $D27C68
	db $0D, $1B, $05	//dorel
org $D27C6C
	db $0D, $1C, $05	//carozzo
org $D27C71
	db $0D, $1D, $05	//steiner
org $D27C78
	db $0D, $1E, $05	//cima
org $D27C7C
	db $0D, $1F, $05	//ashura
org $D27C81
	db $0D, $20, $05	//blocken
org $D27C87
	db $0D, $21, $05	//dr.hell
org $D27C8C
	db $0D, $22, $05	//sharkin
org $D27C92
	db $0D, $23, $05	//eugo hei
org $D27C99
	db $0D, $24, $05	//balao
org $D27C9D
	db $0D, $25, $05	//garuda
org $D27CA2
	db $0D, $26, $05	//mia
org $D27CA6
	db $0D, $27, $05	//orleana
org $D27CAB
	db $0D, $28, $05	//butcher
org $D27CB1
	db $0D, $29, $05	//korosu
org $D27CB5
	db $0D, $2A, $05	//don
org $D27CB8
	db $0D, $2B, $05	//richter
org $D27CBD
	db $0D, $2C, $05	//bulbous
org $D27CC2
	db $0D, $2D, $05	//lizer
org $D27CC6
	db $0D, $2E, $05	//izam
org $D27CCB
	db $0D, $2F, $05	//bundle
org $D27CD0
	db $0D, $30, $05	//cuttnal
org $D27CD6
	db $0D, $31, $05	//kernagol
org $D27CDD
	db $0D, $32, $05	//tod
org $D27CE1
	db $0D, $33, $05	//burne
org $D27CE5
	db $0D, $34, $05	//kokukishi
org $D27CEC
	db $0D, $35, $05	//drake
org $D27CF1
	db $0D, $36, $05	//shot
org $D27CF6
	db $0D, $37, $05	//bishot
org $D27CFC
	db $0D, $38, $05	//luther
org $D27D00
	db $0D, $39, $05	//musy
org $D27D06
	db $0D, $3A, $05	//Zet
org $D27D0A
	db $0D, $3B, $05	//torust
org $D27D11
	db $0D, $3C, $05	//jeryll
org $D27D16
	db $0D, $3D, $05	//allen
org $D27D1A
	db $0D, $3E, $05	//fay
org $D27D1E
	db $0D, $3F, $05	//garalia
org $D27D23
	db $0D, $40, $05	//galamity
org $D27D29
	db $0D, $41, $05	//daa
org $D27D2C
	db $0D, $42, $05	//het
org $D27D31
	db $0D, $43, $05	//ankoku
org $D27D3C
	db $0D, $44, $05	//hardias
org $D27D43
	db $0D, $45, $05	//dreiud
org $D27D4E
	db $0D, $46, $05	//elite hei
org $D27D55
	db $0D, $47, $05	//ai
org $D27D58
	db $0D, $48, $05	//ai kai
org $D27D5D
	db $0D, $49, $05	//totsugeki hei
org $D27D64
	db $0D, $4A, $05	//shineitai
org $D27D6D
	db $0D, $4B, $05	//poseidal hei
org $D27D75
	db $0D, $4C, $05	//delaz
org $D27D7A
	db $0D, $4D, $05	//daba
org $D27D7D
	db $0D, $4E, $05	//leccy
org $D27D82
	db $0D, $4F, $05	//kyao
org $D27D86
	db $0D, $50, $05	//amu
org $D27D89
	db $0D, $51, $05	//Hatchia
org $D27D8E
	db $0D, $52, $05	//gablae
org $D27D94
	db $0D, $53, $05	//amandara
org $D27D9A
	db $0D, $54, $05	//poseidal
org $D27DA0
	db $0D, $55, $05	//nei
org $D27DA3
	db $0D, $56, $05	//giwaza
org $D27DA7
	db $0D, $57, $05	//full
org $D27DAA
	db $0D, $58, $05	//olivie
org $D27DAF
	db $0D, $59, $05	//rockley
org $D27DB5
	db $0D, $5A, $05	//anton
org $D27DBA
	db $0D, $5B, $05	//heckler
org $D27DC0
	db $0D, $5C, $05	//lily
org $D27DC5
	db $0D, $5D, $05	//chai
org $D27DC9
	db $0D, $5E, $05	//wazan
org $D27DCD
	db $0D, $5F, $05	//mctomin
org $D27DD3
	db $0D, $60, $05	//barn gania
org $D27DDB
	db $0D, $61, $05	//ted
org $D27DDF
	db $0D, $62, $05	//glof
org $D27DE2
	db $0D, $63, $05	//sety
org $D27DE6
	db $0D, $64, $05	//zeb
org $D27DE9
	db $0D, $65, $05	//zezenan
org $D27DEF
	db $0D, $66, $05	//mechibos
org $D27DF4
	db $0D, $67, $05	//terius
org $D27DF9
	db $0D, $68, $05	//kyoukahei
org $D27E00
	db $0D, $69, $05	//miwa choukan
org $D27E09
	db $0D, $6A, $05	//chou AI
org $D286A4
	db $0D
	dw $0575		//real robot
org $D286AE
	db $0D
	dw $0576		//super robot
org $D286B9
	db $0D
	dw $0577	//otoko
	db $0D
	dw $0578		//onna
org $D28661
	db $0D
	dw $057B		//majime
org $D28672
	db $0D
	dw $057C		//rironka
org $D28684
	db $0D
	dw $057D	//henna seikaku
org $D28694
	db $0D
	dw $057E		//cool, nihil
org $D2890C
	db $0D
	dw $057F	//lenonjayce
org $D28913
	db $0D
	dw $0580	//patricia
org $D28919
	db $0D
	dw $0581	//imgard
org $D28920
	db $0D
	dw $0582	//Grace
org $D28925
	db $0D
	dw $0583	//hector
org $D2892B
	db $0D
	dw $0584	//mina
org $D2892F
	db $0D
	dw $0585	//arwynn
org $D28935
	db $0D
	dw $0586	//lin
org $D28938
	db $0D
	dw $0587	//starlord
org $D2893F
	db $0D
	dw $0588	//hackman
org $D28945
	db $0D
	dw $0589	//kazahara
org $D2894A
	db $0D
	dw $058A	//urigin
org $D2894F
	db $0D
	dw $058B	//madison
org $D28955
	db $0D
	dw $058C	//likering
org $D2895C
	db $0D
	dw $058D	//dorstein
org $D28963
	db $0D
	dw $058E	//mao
org $D28966
	db $0D
	dw $058F	//jayce
org $D2896A
	db $0D
	dw $0590	//pat
org $D2896E
	db $0D
	dw $0591	//irm
org $D28972
	db $0D
	dw $0582	//Grace
org $D28977
	db $0D
	dw $0583	//hector
org $D2897D
	db $0D
	dw $0584	//mina
org $D28981
	db $0D
	dw $0592	//wyn
org $D28985
	db $0D
	dw $0586	//lin

org $CC9877		//opening panel highlight
	db $F7, $04
	db $F9, $00
	db $F2, $88
	
org $CCAA41
	db $FD
	dw $FFFF
	db $F9, $00
	db $FA
	db $F7, $04
	db $FC, $01, $01
	db $F2, $88
	dw $FFFF
	db $F7, $02
	db $FC, $01, $FF
	db $F2, $84
	dw $FFFF
	db $F7, $02
	db $FC, $01, $FF
	db $F2, $84
	dw $FFFF
	db $F7, $06
	db $FC, $01, $FF
	db $F2, $8C
	dw $FFFF
	db $F7, $08
	db $FC, $01, $FF
	db $F2, $90
	dw $FFFF
	db $F7, $03
	db $FC, $01, $FF
	db $F2, $86
	dw $FFFF
	db $FE, $00
	db $FF
	
org $CCCAA1
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8B06
	db $F5
	dw $B100, $0605
	db $FE, $FF, $FE, $00
	db $FF
	db $FD
	dw $FFFF
	db $FC, $03, $01
	db $F7, $03
	db $F9, $00
	db $F2, $86
	dw $FFFF
	db $FA
	db $FE, $00
	db $FF
	
org $CCCBF0
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8B04
	db $F5
	dw $B100, $0A18
	db $FE, $00
	db $FF

	db $FD
	dw $FFFF
	db $FC
	dw $0105
	db $F7, $16
	db $F9, $00
	db $FA
	db $F2, $AC
	dw $FFFF
	db $F6
	db $F2, $AC
	dw $FFFF
	db $F6
	db $F2, $AC
	dw $FFFF
	db $F6
	db $F2, $AC
	dw $FFFF
	db $FE, $00
	db $FF
	
org $C4FE2E
	db $01	//press updown seikaku panel
	
org $CCCDE2
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $9305
	db $F5
	dw $B100
	dw $060A
	db $FE, $FF, $FE, $00
	db $FF
	
	db $FD
	dw $FFFF
	db $FC
	dw $0906
	db $F7, $08
	db $F9, $00
	db $F2, $90
	dw $FFFF
	db $FA
	db $FE, $00
	db $FF
	
org $CCAE75
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8D0A
	db $F5
	dw $B100, $040C
	db $FE, $00
	db $FF

org $CC9871
	db $FD
	dw $FFFF
	db $FC
	dw $0101
	db $F7, $04
	db $F9, $00
	db $F2, $88
	dw $FFFF
	db $FA
	db $FE, $00
	db $FF
	
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $FFFF
	db $F5
	dw $B200
	dw $0606
	db $FE, $00
	db $FF
	
org $CCCC78	//seinengappi box del
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $048B
	db $F5
	dw $B100, $0710
	db $FE, $00
	db $FF

//#######seinen gappi#########
org $82CAD3
	dw $0717
	db $00
	dw $0204
	db $01
	dw $0B0A
	db $01
	dw $011F
	db $03
	dw $0504
	db $03
	dw $0915
	db $00
	dw $0301
	db $02
	dw $040E
	db $02

	
//########Easy#############
org $809ADF
	JML move_again
org $CBD055
	dw $F900		//zeta beam iryoku
org $CBD0F5
	dw $F000 //zz map pow
org $82B6A3
	JML himitsu_botan
org $CBD115
	dw $A000		//fin funnel pow

	
org $CB019C
	dw $4000		//size
	dl (title1_chr)
org $C603B2
	incbin	"Data/title1.pal"
org $C60404
	incbin	"Data/title2.pal"
//$CB0115: title auto
	
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
	


//######EXP#######
org $80B881
	NOP #2

//######MONEY#######
org $828906
	LDA #$FFFF
	STA $1055
	
//#### No Dec Money ######
org $80C5E5
	//LDA $1055
	//ADC $00
	//SEC
	
//#######intro########
org $00EFB8
	JML new_wai