new_menu:
	LDA $C900D8,x
	STA $1A
	LDA $C900D9,x
	STA $1B
	LDA [$1A],y
	CMP #$A975
	BNE +
	LDA #(opening_panel2)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel2>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$91D8
	BNE +
	LDA #(textbox1)
	STA $1A
	SEP #$20
	LDA.b #(textbox1>>16)
	STA $1C
	LDA #$11
	STA $0383
	REP #$20
	LDA #$0000
	STA $7FFFFE
	JML $8183EA
+
	CMP #$91F4
	BNE +
	LDA #(textbox2)
	STA $1A
	SEP #$20
	LDA.b #(textbox2>>16)
	STA $1C
	LDA #$11
	STA $0383
	REP #$20
	LDA #$0000
	STA $7FFFFE
	JML $8183EA
+
	CMP #$AE3A
	BNE +
	LDA #(opening_panel8)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel8>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$A2B3
	BNE +
	LDA #(pilot_panel)
	STA $1A
	SEP #$20
	LDA.b #(pilot_panel>>16)
	STA $1C
	LDA.b #(pilot_chr>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$CD69
	BNE +
	LDA #(opening_panel10)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel10>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$CC27
	BNE +
	LDA #(opening_panel11)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel11>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$9839
	BNE +
	LDA #(opening_panel9)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel9>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$CBAD
	BNE +
	LDA #(opening_panel6)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel6>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$CD9C
	BNE +
	LDA #(opening_panel7)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel7>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA		
+	
	CMP #$CA70
	BNE +
	LDA #(opening_panel5)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel5>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA		
+
	CMP #$A9B6
	BNE +
	LDA #(opening_panel3)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel3>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA		
+
	CMP #$AA29
	BNE +
	LDA #(opening_panel4)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel4>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA		
+
	CMP #$966E
	BNE +
	LDA #(menu_frame1)
	STA $1A
	SEP #$20
	LDA.b #(menu_frame1>>16)
	STA $1C
	LDA.b #(command1>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$96B9
	BNE +
	LDA #(menu_frame2)
	STA $1A
	SEP #$20
	LDA.b #(menu_frame2>>16)
	STA $1C
	REP #$20
	JML $8183EA	
+
	CMP #$96A7
	BNE +
	LDA #(menu_hightlight1)
	STA $1A
	SEP #$20
	LDA.b #(menu_hightlight1>>16)
	STA $1C
	REP #$20
	JML $8183EA	
+
	CMP #$9D4B
	BNE +
	LDA #(seishin_frame)
	STA $1A
	SEP #$20
	LDA.b #(seishin_frame>>16)
	STA $1C
	LDA.b #(seishin_chr>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$9DDF
	BNE +
	LDA #(seishin_hightlight)
	STA $1A
	SEP #$20
	LDA.b #(seishin_hightlight>>16)
	STA $1C
	REP #$20
	LDA #$0000
	STA $7FFFFE
	JML $8183EA
+
	CMP #$A809
	BNE +
	LDA #(opening_panel)
	STA $1A
	SEP #$20
	LDA.b #(opening_panel>>16)
	STA $1C
	LDA.b #(panel_misc>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$B480
	BNE +
	LDA #(seishin_ichiran1)
	STA $1A
	SEP #$20
	LDA.b #(seishin_ichiran1>>16)
	STA $1C
	LDA.b #(seishin_chr>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$B514
	BNE +
	LDA #(seishin_ichiran2)
	STA $1A
	SEP #$20
	LDA.b #(seishin_ichiran2>>16)
	STA $1C
	REP #$20
	LDA #$0000
	STA $7FFFFE
	JML $8183EA
+
	CMP #$B51F
	BNE +
	LDA #(seishin_ichiran3)
	STA $1A
	SEP #$20
	LDA.b #(seishin_ichiran3>>16)
	STA $1C
	REP #$20
	LDA #$0000
	STA $7FFFFE
	JML $8183EA
+
	CMP #$B553
	BNE +
	LDA #(seishin_ichiran4)
	STA $1A
	SEP #$20
	LDA.b #(seishin_ichiran4>>16)
	STA $1C
	REP #$20
	JML $8183EA
+
	CMP #$95C9
	BNE +
	LDA #(panel)
	STA $1A
	SEP #$20
	LDA.b #(panel>>16)
	STA $1C
	LDA.b #(seishin_chr>>16)
	STA $0D64
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA
+
	CMP #$9F59
	BNE +
	LDA #(ability_menu1)
	STA $1A
	SEP #$20
	LDA.b #(ability_menu1>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$A15A
	BNE +
	LDA #(unit_ability)
	STA $1A
	SEP #$20
	LDA.b #(unit_ability>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$A510
	BNE +
	LDA #(buki_panel)
	STA $1A
	SEP #$20
	LDA.b #(buki_panel>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA		
+
	CMP #$A684
	BNE +
	LDA #(buki_name)
	STA $1A
	SEP #$20
	LDA.b #(buki_name>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA			
+
	CMP #$B99B
	BNE +
	LDA #(attack_panel)
	STA $1A
	SEP #$20
	LDA.b #(attack_panel>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA	
+
	CMP #$B3E0
	BNE +
	LDA #(chara_sub_panel)
	STA $1A
	SEP #$20
	LDA.b #(chara_sub_panel>>16)
	STA $1C
	REP #$20
	LDA #$0001
	STA $7FFFFE
	JML $8183EA		
+
	LDA #$0000
	STA $7FFFFE
	JML $8183E6

menu_write:
	STA $26
	CMP #$000D
	BEQ +
	CMP #$0100
	BCS _846B
	JML $81845D
_846B:
	JML $81846B
+
	LDA [$1A],y
	ASL
	TAX
	JSR (menuwrite_para,x)
	LDY $26
	LDA $7FFFFE
	ASL
	TAX
	JMP (write_map_tile,x)
	
write_map_tile:
	dw write_original
	dw writebg1
	dw writebg3
	
menuwrite_para:
	dw write_command_para0
	dw write_command_para1
	dw write_command_para2
	dw write_command_para3
	dw write_command_para4
	dw write_command_para5
	dw write_command_para6
	dw write_command_para7
	dw write_command_para8
	dw write_command_para9
	dw write_command_paraA
	dw write_command_paraB
	dw write_command_paraC
	dw write_command_paraD
	dw write_command_paraE
	dw write_command_paraF
	dw write_command_para10
	dw write_command_para11
	dw write_command_para12
	dw write_command_para13
	dw write_command_para14
	dw write_command_para15
	dw write_command_para16
	dw write_command_para17
	dw write_command_para18
	dw write_command_para19
	dw write_command_para1A
	dw write_command_para1B
	dw write_command_para1C
	dw write_command_para1D
	dw write_command_para1E
	dw write_command_para1F
	dw write_command_para20
	dw write_command_para21
	dw write_command_para22
	dw write_command_para23
	dw write_command_para24
	dw write_command_para25
	dw write_command_para26
	dw write_command_para27
	dw write_command_para28
	dw write_command_para29
	dw write_command_para2A
	dw write_command_para2B
	dw write_command_para2C
	dw write_command_para2D
	dw write_command_para2E
	dw write_command_para2F
	dw write_command_para30	//turn end
	dw write_command_para31	//butai
	dw write_command_para32	//map
	dw write_command_para33	//seishin
	dw write_command_para34	//meirei
	dw write_command_para35	//system
	dw write_command_para36	//mokuteki
	dw write_command_para37	//save
	dw write_command_para38	//turn suu
	dw write_command_para39	//shikin
	dw write_command_para3A	//unit ability
	dw write_command_para3B	//pilot ability
	dw write_command_para3C	//buki seinou
	dw write_command_para3D	//level
	dw write_command_para3E	//kiryoku
	dw write_command_para3F //chikei
	dw write_command_para40 //type
	dw write_command_para41 //idou
	dw write_command_para42 //undou
	dw write_command_para43 //soukou
	dw write_command_para44 //genkai
	dw write_command_para45 //next level
	dw write_command_para46 //beam coat
	dw write_command_para47 //E-field
	dw write_command_para48 //Aura barrier
	dw write_command_para49 //Beam barrier
	dw write_command_para4A //HP kaifuku
	dw write_command_para4B //bunshin
	dw write_command_para4C //henkei
	dw write_command_para4D //gattai
	dw write_command_para4E //bunri
	dw write_command_para4F //nu gundam
	dw write_command_para50 //F-91
	dw write_command_para51 //NT Alex
	dw write_command_para52 //GP-01FB
	dw write_command_para53 //GP-02A
	dw write_command_para54 //GP-03 Dendrobium
	dw write_command_para55 //GP-03S Stamen
	dw write_command_para56 //Gun Cannon
	dw write_command_para57 //Gun Tank
	dw write_command_para58 //Ball
	dw write_command_para59 //Nemo
	dw write_command_para5A //GM II
	dw write_command_para5B //Jegan
	dw write_command_para5C //Re-Gz
	dw write_command_para5D //Re-Gz
	dw write_command_para5E //Getter1
	dw write_command_para5F //Getter2
	dw write_command_para60 //Getter3
	dw write_command_para61 //Getter Dragon
	dw write_command_para62 //Getter Liger
	dw write_command_para63 //Getter Poisedon
	dw write_command_para64 //Mazinger Z
	dw write_command_para65 //Mazinger Z
	dw write_command_para66 //Great Mazinger
	dw write_command_para67 //Grendizer
	dw write_command_para68 //Speizer
	dw write_command_para69 //Double Speizer
	dw write_command_para6A //Drill Speizer
	dw write_command_para6B //Marine Speizer
	dw write_command_para6C //Grendizer
	dw write_command_para6D //Grendizer
	dw write_command_para6E //Grendizer
	dw write_command_para6F //Afrodite A
	dw write_command_para70 //Diana A
	dw write_command_para71 //Boss Borot
	dw write_command_para72 //Venus A
	dw write_command_para73 //Battle Jet
	dw write_command_para74 //Battle Crusher
	dw write_command_para75 //Battle Tank
	dw write_command_para76 //Battle Marine
	dw write_command_para77 //Battle Craft
	dw write_command_para78 //Combattler V
	dw write_command_para79 //Raideen
	dw write_command_para7A //Blueger
	dw write_command_para7B //Daimos
	dw write_command_para7C //Galver FX II
	dw write_command_para7D //Daitarn 3
	dw write_command_para7E //Dai Fighter
	dw write_command_para7F //Dai tank
	dw write_command_para80 //Zambird
	dw write_command_para81 //Zambo ace
	dw write_command_para82 //Zambull
	dw write_command_para83 //Zambase
	dw write_command_para84 //Zambot 3
	dw write_command_para85 //Dunbine
	dw write_command_para86 //Billbine
	dw write_command_para87 //Wing Caliver
	dw write_command_para88 //Goshogun
	dw write_command_para89 //Dankuga
	dw write_command_para8A //Eagle Fighter N
	dw write_command_para8B //Eagle Fighter A
	dw write_command_para8C //Eagle Fighter H
	dw write_command_para8D //Land Kuga N
	dw write_command_para8E //Land Kuga A
	dw write_command_para8F //Land Kuga H
	dw write_command_para90 //Land Liger N
	dw write_command_para91 //Land Liger A
	dw write_command_para92 //Land Liger H
	dw write_command_para93 //Big moth N
	dw write_command_para94 //Big moth A
	dw write_command_para95 //Big moth H
	dw write_command_para96 //Bloodtemple
	dw write_command_para97 //Atol 5
	dw write_command_para98 //Godneros
	dw write_command_para99 //Psybuster
	dw write_command_para9A //Psybird
	dw write_command_para9B //Ganzon
	dw write_command_para9C //Neo Granzon
	dw write_command_para9D //Valsione R
	dw write_command_para9E //Zamzeed
	dw write_command_para9F //Granvel
	dw write_command_paraA0 //Gaddess
	dw write_command_paraA1 //Wizol kai
	dw write_command_paraA2 //Norus Rei
	dw write_command_paraA3 //Gadifoul
	dw write_command_paraA4 //Gespent
	dw write_command_paraA5 //Zaku kai
	dw write_command_paraA6 //Dom
	dw write_command_paraA7 //Elemes
	dw write_command_paraA8 //Marasai
	dw write_command_paraA9 //Barzam
	dw write_command_paraAA //Hambrabi
	dw write_command_paraAB //Hambrabi
	dw write_command_paraAC //Asshimer
	dw write_command_paraAD //Asshimer
	dw write_command_paraAE //Psycho Gundam
	dw write_command_paraAF //Psycho Gundam
	dw write_command_paraB0 //Byarlant
	dw write_command_paraB1 //Gabthley
	dw write_command_paraB2 //Gabthley
	dw write_command_paraB3 //Baund Doc
	dw write_command_paraB4 //Baund Doc
	dw write_command_paraB5 //Psycho Gundam mk2
	dw write_command_paraB6 //Psycho Gundam mk2
	dw write_command_paraB7 //Hyakushiki
	dw write_command_paraB8 //Methuss
	dw write_command_paraB9 //Methuss
	dw write_command_paraBA //Braw Bro
	dw write_command_paraBB //Bigro
	dw write_command_paraBC //Kempfer
	dw write_command_paraBD //Valwaro
	dw write_command_paraBE //Gerbera Tetra
	dw write_command_paraBF //Neue Ziel
	dw write_command_paraC0 //Qubeley
	dw write_command_paraC1 //Qubeley mk2
	dw write_command_paraC2 //Garus J
	dw write_command_paraC3 //Zssa
	dw write_command_paraC4 //Hammer Hammer
	dw write_command_paraC5 //R Jarja
	dw write_command_paraC6 //Bawoo
	dw write_command_paraC7 //Bawoo
	dw write_command_paraC8 //Dreissen
	dw write_command_paraC9 //Quin Mantha
	dw write_command_paraCA //Doven Wolf
	dw write_command_paraCB //Geymalk
	dw write_command_paraCC //Geara Doga
	dw write_command_paraCD //Geara Doga
	dw write_command_paraCE //Jadg Doga
	dw write_command_paraCF //Jadg Doga
	dw write_command_paraD0 //Sazabi
	dw write_command_paraD1 //Alpha Azieru
	dw write_command_paraD2 //Vigna Ghina
	dw write_command_paraD3 //Berga Giros
	dw write_command_paraD4 //Raflessia
	dw write_command_paraD5 //Mechasaurus Saki
	dw write_command_paraD6 //Mechasaurus Bado
	dw write_command_paraD7 //Mechasaurus Zai
	dw write_command_paraD8 //Mechasaurus Zen2
	dw write_command_paraD9 //Mechasaurus Dai
	dw write_command_paraDA //Mechasaurus Sig
	dw write_command_paraDB //Dablas M2
	dw write_command_paraDC //Garada K7
	dw write_command_paraDD //Tros D7
	dw write_command_paraDE //Rhine X1
	dw write_command_paraDF//Jenova M9
	dw write_command_paraE0 //Spartan K5
	dw write_command_paraE1 //Abdra U6
	dw write_command_paraE2 //Goole
	dw write_command_paraE3 //Bood
	dw write_command_paraE4 //Gratonius
	dw write_command_paraE5 //Obelisk
	dw write_command_paraE6 //Minifo
	dw write_command_paraE7 //Mother Barn
	dw write_command_paraE8 //Gilgil
	dw write_command_paraE9 //Gosgos
	dw write_command_paraEA //Kingori
	dw write_command_paraEB //Picdron
	dw write_command_paraEC //Gilgilgun
	dw write_command_paraED //Mecha Gilgilgun
	dw write_command_paraEE //Dragonsaurus
	dw write_command_paraEF //Valsion
	dw write_command_paraF0 //Drumlo
	dw write_command_paraF1 //Leprechaun
	dw write_command_paraF2 //Zwarth
	dw write_command_paraF3 //Vierres
	dw write_command_paraF4 //Wryneck
	dw write_command_paraF5 //Bastole
	dw write_command_paraF6 //Bubri
	dw write_command_paraF7 //Gallaba
	dw write_command_paraF8 //Gran-Garan
	dw write_command_paraF9 //Goraon
	dw write_command_paraFA //Willwips
	dw write_command_paraFB //Gyre Garing
	dw write_command_paraFC //Spriggan
	dw write_command_paraFD //Drome
	dw write_command_paraFE //Gante
	dw write_command_paraFF //Buston
	dw write_command_para100 //Gildeen
	dw write_command_para101 //Kyodai Sharking
	dw write_command_para102 //Mechaboost Domira
	dw write_command_para103 //Mechaboost Gavitan
	dw write_command_para104 //Mechaboost Gavitan
	dw write_command_para105 //Descain
	dw write_command_para106 //Helldain
	dw write_command_para107 //Bundock
	dw write_command_para108 //Zonnekaiser
	dw write_command_para109 //Gimeria
	dw write_command_para10A //God Amon
	dw write_command_para10B //Garumus
	dw write_command_para10C //Demon
	dw write_command_para10D //Big Garuda
	dw write_command_para10E //Bundle
	dw write_command_para10F //Cuttnal
	dw write_command_para110 //Kernagul
	dw write_command_para111 //Gornagool
	dw write_command_para112 //Zanzibar
	dw write_command_para113 //Midea
	dw write_command_para114 //Columbus
	dw write_command_para115 //Pazock
	dw write_command_para116 //Gaw
	dw write_command_para117 //Dabude
	dw write_command_para118 //Troy Horse
	dw write_command_para119 //Graf Zeppelin
	dw write_command_para11A //S Gundam
	dw write_command_para11B //G Cruiser
	dw write_command_para11C //Alexandria
	dw write_command_para11D //Musai kai
	dw write_command_para11E //Argama
	dw write_command_para11F //Irish
	dw write_command_para120//Ex-S Gundam
	dw write_command_para121//Nahel Argama
	dw write_command_para122//Endra
	dw write_command_para123//Sadarahn
	dw write_command_para124//Rewloola
	dw write_command_para125//Ra Cailum
	dw write_command_para126//Zamouth-Garr
	dw write_command_para127//Garoica
	dw write_command_para128//Kaleitsed
	dw write_command_para129//Restrail
	dw write_command_para12A//Glassidu-lu
	dw write_command_para12B//Rest Gransh
	dw write_command_para12C//Zeranio
	dw write_command_para12D//Geios Glud
	dw write_command_para12E//Liege Geios
	dw write_command_para12F//Baran Schnile
	dw write_command_para130//Gespenst mkII
	dw write_command_para131//L-Gaim
	dw write_command_para132//L-Gaim mkII
	dw write_command_para133//Proller
	dw write_command_para134//Dizard
	dw write_command_para135//Auge
	dw write_command_para136//Aug
	dw write_command_para137//Ash Ra Tempel
	dw write_command_para138//Calvary Tempel
	dw write_command_para139//Bash
	dw write_command_para13A//Atorl
	dw write_command_para13B//G-Roon
	dw write_command_para13C //Saloons
	dw write_command_para13D//Aaron
	dw write_command_para13E//Shin Getter1
	dw write_command_para13F//Shin Getter2
	dw write_command_para140//Shin Getter3
	dw write_command_para141//Gayrahm
	dw write_command_para142//Gundam
	dw write_command_para143//Gundam mkII
	dw write_command_para144//G Defenser
	dw write_command_para145//Super Gundam
	dw write_command_para146//Nu Gundam
	dw write_command_para147//Kyuu Zaku
	dw write_command_para148//Sarbine
	dw write_command_para149//Zwauth
	dw write_command_para14A//Texas Mac
	dw write_command_para14B//Adzam
	dw write_command_para14C//Nise Psybuster
	dw write_command_para14D//Nightingale
	dw write_command_para14E//Nuvel Dizard
	dw write_command_para14F//Ankoku Taishogun
	dw write_command_para150//Hardias
	dw write_command_para151//Dreiud
	dw write_command_para152//Z Gundam
	dw write_command_para153//Wave Rider
	dw write_command_para154//ZZ Gundam
	dw write_command_para155//G Fortress
	dw write_command_para156//Enbanju Jinjin
	dw write_command_para157//Enbanju Dekdek
	dw write_command_para158//Sentouju Dante
	dw write_command_para159//Sentouju Zugahr
	dw write_command_para15A//Juma Taishogun
	dw write_command_para15B//Graydon
	dw write_command_para15C//Garunrol
	dw write_command_para15D//Greia
	dw write_command_para15E//Mechasaurus Zu
	dw write_command_para15F//Botune
	dw write_command_para160//Dogosse Giar
	dw write_command_para161//Audhumla
	dw write_command_para162//Thudree
	dw write_command_para163//Hyper Leprechaun
	dw write_command_para164//Hyper Wryneck
	dw write_command_para165//Hyper Gallaba
	dw write_command_para166//Mobile Suit
	dw write_command_para167//Mobile Armor
	
	dw write_command_para168//Cham Faw
	dw write_command_para169//Belle Arl
	dw write_command_para16A//Ell Fino
	dw write_command_para16B//Lilith Faw
	dw write_command_para16C//Silky Mau
	dw write_command_para16D//Yousei6
	dw write_command_para16E//Jack King
	dw write_command_para16F//Mary King
	dw write_command_para170//Nagare Hyoma
	dw write_command_para171//Jin Hayato
	dw write_command_para172//Kuruma Benkei
	dw write_command_para173//Hojo Shingo
	dw write_command_para174//Remy Shimada
	dw write_command_para175//Kily Gaglay
	dw write_command_para176//Jin Kappei
	dw write_command_para177//Kamie Uchuta
	dw write_command_para178//Kamikita Keiko
	dw write_command_para179//Fujiwara Shinobu
	dw write_command_para17A//Yuki Sara
	dw write_command_para17B//Shikibu Masato
	dw write_command_para17C//Shiba Ryou
	dw write_command_para17D//Aoi Hyoma
	dw write_command_para17E//Naniwa Juzo
	dw write_command_para17F//Nishikawa Daisaku
	dw write_command_para180//Namba Chizuru
	dw write_command_para181//Kita Kosuke
	dw write_command_para182//Gilliam Yeager
	dw write_command_para183//Sho Zama
	dw write_command_para184//Masaki Ando
	dw write_command_para185//Ryune Zoldark
	dw write_command_para186//Shu Shirakawa
	dw write_command_para187//Quattro Vageena
	dw write_command_para188//Bright Noa
	dw write_command_para189//Hayato Kobayashi
	dw write_command_para18A//Kai Siden
	dw write_command_para18B//Matilda Ajan
	dw write_command_para18C//Sayla Mass
	dw write_command_para18D//Wackein
	dw write_command_para18E//Tianem
	dw write_command_para18F//Emma Sheen
	dw write_command_para190//Torres
	dw write_command_para191//Fa Yuiri
	dw write_command_para192//Katsu Kobayashi
	dw write_command_para193//Fou Murasame
	dw write_command_para194//Beltorch Chika
	dw write_command_para195//Kely Layzner
	dw write_command_para196//Henken Beckener
	dw write_command_para197//Blex Forer
	dw write_command_para198//Roux Louka
	dw write_command_para199//Elpee Puru
	dw write_command_para19A//Purutz
	dw write_command_para19B//Leina Ashta
	dw write_command_para19C//Beecha Oleg
	dw write_command_para19D//Mondo Agake
	dw write_command_para19E//Elle Vianno
	dw write_command_para19F//Iino Abbav
	dw write_command_para1A0//Emary Ounce
	dw write_command_para1A1//Quess Paraya
	dw write_command_para1A2//Chan Agi
	dw write_command_para1A3//Kayra Su
	dw write_command_para1A4//Hathaway Noa
	dw write_command_para1A5//Christina Mckenzie
	dw write_command_para1A6//Bernard Wiseman
	dw write_command_para1A7//Cecily Farchild
	dw write_command_para1A8//Nina Purpleton
	dw write_command_para1A9//Anavel Gato
	dw write_command_para1AA//Chuck Keith
	dw write_command_para1AB//Bernando Monsha
	dw write_command_para1AC//Yumi Sayaka
	dw write_command_para1AD//Ramthus Hatha
	dw write_command_para1AE//Boss
	dw write_command_para1AF//Honoo Jun
	dw write_command_para1B0//Maria Fleed
	dw write_command_para1B1//Makiba Hikaru
	dw write_command_para1B2//Saotome Michiru
	dw write_command_para1B3//Dangel Kupa
	dw write_command_para1B4//Jinguji Chikara
	dw write_command_para1B5//Asuka Rei
	dw write_command_para1B6//Sakurano Mari
	dw write_command_para1B7//Amuro Ray
	dw write_command_para1B8//Camille Vidan
	dw write_command_para1B9//Judau Ashta
	dw write_command_para1BA//Seebook Arno
	dw write_command_para1BB//Kou Uraki
	dw write_command_para1BC//Kabuto Kouji
	dw write_command_para1BD//Kamikita Heizaemon
	dw write_command_para1BE//Jin Umee
	dw write_command_para1BF//Jin Gengorou
	dw write_command_para1C0//Jin Ichitarou
	dw write_command_para1C1//Garison Tokita
	dw write_command_para1C2//Beautiful Tachibana
	dw write_command_para1C3//Sanjou Reika
	dw write_command_para1C4//Toda Totta
	dw write_command_para1C5//Tsurugi Tetsuya
	dw write_command_para1C6//Yuzuki Kyoshirou
	dw write_command_para1C7//Izumi Nana
	dw write_command_para1C8//Duke Fleed
	dw write_command_para1C9//Marvel Frozen
	dw write_command_para1CA//Hibiki Akira
	dw write_command_para1CB//Nie Givun
	dw write_command_para1CC//Keen Kiss
	dw write_command_para1CD//Ciela Lapana
	dw write_command_para1CE//Elle Hum
	dw write_command_para1CF//Rimul Luft
	dw write_command_para1D0//Eve Tamari
	dw write_command_para1D1//Haran Banjou
	dw write_command_para1D2//Ryuzaki Kazuya
	dw write_command_para1D3//Rempou Heishi
	dw write_command_para1D4//Byston Well Heishi
	dw write_command_para1D5//Tytti Norback
	dw write_command_para1D6//Juma Shogun
	dw write_command_para1D7//South Burning
	dw write_command_para1D8//Long
	dw write_command_para1D9//Presia Xenosakis
	dw write_command_para1DA//Mio Sasuga
	dw write_command_para1DB//Titans Hei
	dw write_command_para1DC//Monica Bilsea
	dw write_command_para1DD//Safine Grace
	dw write_command_para1DE//Gadem
	dw write_command_para1DF//Rambal Ral
	dw write_command_para1E0//Crowley Hamon
	dw write_command_para1E1//Clamp
	dw write_command_para1E2//Gaia
	dw write_command_para1E3//Mash
	dw write_command_para1E4//Ortega
	dw write_command_para1E5//Challia Bull
	dw write_command_para1E6//Lalah Sune
	dw write_command_para1E7//Gadi Nkinze
	dw write_command_para1E8//Kacricon Cacooler
	dw write_command_para1E9//Sara Zabiarov
	dw write_command_para1EA//Gates Capa
	dw write_command_para1EB//Jerid Messa
	dw write_command_para1EC//Jamaican Daninghan
	dw write_command_para1ED//Jamitov Hymen
	dw write_command_para1EE//Haman Karn
	dw write_command_para1EF//Buran Blutach
	dw write_command_para1F0//Ben Wooder
	dw write_command_para1F1//Mauar Pharaoh
	dw write_command_para1F2//Mineva Zabi
	dw write_command_para1F3//Lila Milla Rira
	dw write_command_para1F4//Yazan Gable
	dw write_command_para1F5//Rosamia Badam
	dw write_command_para1F6//Mashymre Cello
	dw write_command_para1F7//Illia Pazom
	dw write_command_para1F8//Chara Son
	dw write_command_para1F9//Glemy Toto
	dw write_command_para1FA//Gotton Go
	dw write_command_para1FB//Nie Ghiren
	dw write_command_para1FC//Lance Ghiren
	dw write_command_para1FD//Rakan Dahkaran
	dw write_command_para1FE//Gyunei Guss
	dw write_command_para1FF//Nanai Migel
	dw write_command_para200//Rezin Schneider
	dw write_command_para201//Zabine Chareux
	dw write_command_para202//Annamarie Bourget
	dw write_command_para203//Dorel Ronah
	dw write_command_para204//Carozzo Ronah
	dw write_command_para205//Steiner
	dw write_command_para206//Cima Garahau
	dw write_command_para207//Ashura danshaku
	dw write_command_para208//Blocken hashaku
	dw write_command_para209//Dr.Hell
	dw write_command_para20A//Sharkin
	dw write_command_para20B//Aeug hei
	dw write_command_para20C//Balao
	dw write_command_para20D//Garuda
	dw write_command_para20E//Mia
	dw write_command_para20F//Orleana
	dw write_command_para210//Killer the Butcher
	dw write_command_para211//Korosu
	dw write_command_para212//Don Zauther
	dw write_command_para213//Richter
	dw write_command_para214//Bullbous
	dw write_command_para215//Ryza
	dw write_command_para216//Izam
	dw write_command_para217//Leonardo Bundle
	dw write_command_para218//Suguni Cuttnal
	dw write_command_para219//Yatat La Cuttnal
	dw write_command_para21A//Todo Guinness
	dw write_command_para21B//Burne Banning
	dw write_command_para21C//Kokukishi
	dw write_command_para21D//Drake Luft
	dw write_command_para21E//Shot Weapon
	dw write_command_para21F//Bishot Hatta
	dw write_command_para220//Luther Luft
	dw write_command_para221//Musy Poe
	dw write_command_para222//Z Light
	dw write_command_para223//Torust Chesilenko
	dw write_command_para224//Jeryll Coochibie
	dw write_command_para225//Jeryll Coochibie
	dw write_command_para226//Fay Chenka
	dw write_command_para227//Garalia Nyamhee
	dw write_command_para228//Galamity Mangan
	dw write_command_para229//Daa
	dw write_command_para22A//Het
	dw write_command_para22B//Ankoku Taishogun
	dw write_command_para22C//Akuryou Hardias
	dw write_command_para22D//Hachuu Dreiud
	dw write_command_para22E//DC heishi
	dw write_command_para22F//Elite hei
	dw write_command_para230//Jinkou chinou
	dw write_command_para231//Jinkou chinou kai
	dw write_command_para232//Guest hei
	dw write_command_para233//Guest totsugeki hei
	dw write_command_para234//Guest shineitai
	dw write_command_para235//Poseidal hei
	dw write_command_para236//Poseidal shineitai
	dw write_command_para237//Aiguille Delaz
	dw write_command_para238//Daba Myroad
	dw write_command_para239//Gawha Leccee
	dw write_command_para23A//Mirau Kyao
	dw write_command_para23B//Fannelia Amu
	dw write_command_para23C//Hatchia Motchia
	dw write_command_para23D//Gavlet Gablae
	dw write_command_para23E//Amandara Kamandara
	dw write_command_para23F//Oldona Poseidal
	dw write_command_para240//Nei Mo Han
	dw write_command_para241//Giwaza Lowaw
	dw write_command_para242//Full Flat
	dw write_command_para243//Kwasan Olivie
	dw write_command_para244//Rockley Ron
	dw write_command_para245//Anton Land
	dw write_command_para246//Heckler Mauze
	dw write_command_para247//Lily Hasshi
	dw write_command_para248//Lily Hasshi
	dw write_command_para249//Wazan Loon
	dw write_command_para24A//Maph Mactomin
	dw write_command_para24B//Barn Gania Killas
	dw write_command_para24C//Ted Dibilase
	dw write_command_para24D//Glofis Raclayne
	dw write_command_para24E//Justine Shaflawas
	dw write_command_para24F//Zebris Furszewa
	dw write_command_para250//Tiniquet Zezenan
	dw write_command_para251//Mechibos
	dw write_command_para252//Terius Bilsea
	dw write_command_para253//Kyouka hei
	dw write_command_para254//Miwa Sakimori
	dw write_command_para255//Chou jinkou chinou
	dw write_command_para256  //kyouka part
	dw write_command_para257  //kuu-riku-chichuu
	dw write_command_para258	//Type riku
	dw write_command_para259	//Type kuu-riku
	dw write_command_para25A	//Type kuu
	dw write_command_para25B	//Type sui-riku
	dw write_command_para25C	//Type sui-riku-kuu
	dw write_command_para25D	//Type riku-chichuu
	dw write_command_para25E	//Type sui
	dw write_command_para25F	//Type riku
	dw write_command_para260	//Type uchuu
	dw write_command_para261	//Type kuu-chichuu
	dw write_command_para262	//Type kuu-kai
	dw write_command_para263	//Type kuu
	dw write_command_para264	//kouseinou radar
	dw write_command_para265	//Minovsky craft
	dw write_command_para266	//Booster
	dw write_command_para267	//Mega booster
	dw write_command_para268	//Apogee motor
	dw write_command_para269	//Fatima
	dw write_command_para26A	//ALICE
	dw write_command_para26B	//Psycho frame
	dw write_command_para26C	//Bio Sensor
	dw write_command_para26D	//Magnet coating
	dw write_command_para26E	//I-field Generator
	dw write_command_para26F	//Chobham armor
	dw write_command_para270	//Hybrid armor
	dw write_command_para271	//Barrier generator
	dw write_command_para272	//Anti Beam coating
	dw write_command_para273	//Repair kit
	dw write_command_para274	//Propellen tank
	dw write_command_para275	//Propellen tank S
	dw write_command_para276	//tokushu nouryoku
	dw write_command_para277	//size
	dw write_command_para278	//shield
	dw write_command_para279	//no shield
	dw write_command_para27A	//have shield
	dw write_command_para27B	//Size S
	dw write_command_para27C	//Size M
	dw write_command_para27D	//Size L
	dw write_command_para27E	//Size LL
	dw write_command_para27F		//chikei
	dw write_command_para280		//chikei: kuu
	dw write_command_para281		//chikei: riku
	dw write_command_para282		//chikei: umi
	dw write_command_para283		//chikei: uchuu
	dw write_command_para284		//Huckebein
	dw write_command_para285		//Grungust
	dw write_command_para286		//Wing Gust
	dw write_command_para287		//Gust Lander
	dw write_command_para288 		//bukipanel: bukimei
	dw write_command_para289 		//bukipanel: iryoku
	dw write_command_para28A 		//bukipanel: shatei
	dw write_command_para28B 		//bukipanel: meichuu
	dw write_command_para28C 		//bukipanel: zandan
	dw write_command_para28D 		//bukipanel: chikei
	dw write_command_para28E 		//bukipanel: hitsuyou kiryoku
	dw write_command_para28F 		//bukipanel: shouhi EN
	dw write_command_para290 		//bukipanel: hitsuyou ginou
	dw write_command_para291 		//bukipanel: critical hosei
	dw write_command_para292		//bukipanel: kuu
	dw write_command_para293		//bukipanel: riku
	dw write_command_para294		//bukipanel: riku
	dw write_command_para295		//bukipanel: kuu
	dw write_command_para296	//buki: beam saber
	dw write_command_para297	//buki: beam riffle B
	dw write_command_para298	//buki: vulcan
	dw write_command_para299	//buki: hyper bazooka
	dw write_command_para29A	//buki: hyper hammer
	dw write_command_para29B	//buki: missile launcher
	dw write_command_para29C	//buki: long riffle B
	dw write_command_para29D	//buki: long beam saber
	dw write_command_para29E	//buki: grenade launcher
	dw write_command_para29F	//buki: hyper mega launcher B
	dw write_command_para2A0	//buki: beam gun B
	dw write_command_para2A1	//buki: smash beam
	dw write_command_para2A2	//buki: double vulcan
	dw write_command_para2A3	//buki: double beam riffle B
	dw write_command_para2A4	//buki: double cannon
	dw write_command_para2A5	//buki: hyper beam saber
	dw write_command_para2A6	//buki: hyper mega cannon MAP
	dw write_command_para2A7	//buki: beam cannon
	dw write_command_para2A8	//buki: fin funnel
	dw write_command_para2A9	//buki: missle
	dw write_command_para2AA	//buki: mega machine cannon
	dw write_command_para2AB	//buki: vesper B
	dw write_command_para2AC	//buki: gatling gun
	dw write_command_para2AD	//buki: atomic bazooka MAP
	dw write_command_para2AE	//buki: mega beam hou B
	dw write_command_para2AF	//buki: big beam saber
	dw write_command_para2B0	//buki: folding bazooka
	dw write_command_para2B1	//buki: bakudousaku
	dw write_command_para2B2	//buki: shusoku missile
	dw write_command_para2B3	//buki: micro missle MAP
	dw write_command_para2B4	//buki: 24mili cannon
	dw write_command_para2B5	//buki: 120mili cannon
	dw write_command_para2B6	//buki: bop missile
	dw write_command_para2B7	//buki: kogata missile
	dw write_command_para2B8	//buki: hakai kousen
	dw write_command_para2B9	//buki: vegatron beam
	dw write_command_para2BA	//buki: hand grenade P
	dw write_command_para2BB	//buki: rose cutter
	dw write_command_para2BC	//buki: getter laser
	dw write_command_para2BD	//buki: getter tomahawk
	dw write_command_para2BE	//buki: tomahawk boomeran P
	dw write_command_para2BF	//buki: getter beam
	dw write_command_para2C0	//buki: getter arm
	dw write_command_para2C1	//buki: getter drill
	dw write_command_para2C2	//buki: drill storm
	dw write_command_para2C3	//buki: drill punch
	dw write_command_para2C4	//buki: kakutou
	dw write_command_para2C5	//buki: getter missile
	dw write_command_para2C6	//buki: spin cutter
	dw write_command_para2C7	//buki: double tomahawk
	dw write_command_para2C8	//buki: double tomahawk boomerang P
	dw write_command_para2C9	//buki: shine spark
	dw write_command_para2CA	//buki: drill arm
	dw write_command_para2CB	//buki: liger missile
	dw write_command_para2CC	//buki: chain attack
	dw write_command_para2CD	//buki: getter cyclone
	dw write_command_para2CE	//buki: strong missile
	dw write_command_para2CF 	//buki: reitou beam
	dw write_command_para2D0	//buki: koushiryoku beam
	dw write_command_para2D1	//buki: rocket punch P
	dw write_command_para2D2	//buki: iron cutter P
	dw write_command_para2D3	//buki: double missile
	dw write_command_para2D4	//buki: afrodite missile
	dw write_command_para2D5	//buki: drill missile
	dw write_command_para2D6	//buki: rust hurricane
	dw write_command_para2D7	//buki: breast fire
	dw write_command_para2D8	//buki: scrander cutter
	dw write_command_para2D9	//buki: southern cross knife P
	dw write_command_para2DA	//buki: knee impulse kick
	dw write_command_para2DB	//buki: back spin kick
	dw write_command_para2DC	//buki: mazinger blade
	dw write_command_para2DD	//buki: scramble cutter
	dw write_command_para2DE	//buki: navel missile
	dw write_command_para2DF	//buki: great typhoon
	dw write_command_para2E0	//buki: great boomerang
	dw write_command_para2E1	//buki: atomic punch P
	dw write_command_para2E2	//buki: drill pressure punch P
	dw write_command_para2E3	//buki: breast burn
	dw write_command_para2E4	//buki: thunder break
	dw write_command_para2E5	//buki: hand beam B
	dw write_command_para2E6	//buki: shoulder boomerang 
	dw write_command_para2E7	//buki: han juryoku storm
	dw write_command_para2E8	//buki: double haken
	dw write_command_para2E9	//buki: screw crusher P
	dw write_command_para2EA	//buki: space thunder
	dw write_command_para2EB	//buki: spin saucer
	dw write_command_para2EC	//buki: spin drill
	dw write_command_para2ED	//buki: melt shower
	dw write_command_para2EE	//buki: cyclone beam B
	dw write_command_para2EF	//buki: double cutter
	dw write_command_para2F0		//buki: spark bomber B
	dw write_command_para2F1		//buki: drill attack
	dw write_command_para2F2		//buki: marine missile
	dw write_command_para2F3		//buki: marine cutter
	dw write_command_para2F4		//buki: diana missile
	dw write_command_para2F5		//buki: scarlet beam
	dw write_command_para2F6		//buki: borot puch
	dw write_command_para2F7		//buki: special borot punch
	dw write_command_para2F8		//buki: special dx borot punch
	dw write_command_para2F9		//buki: koushiryoku missile
	dw write_command_para2FA		//buki: finger missile P
	dw write_command_para2FB		//buki: 30mili machine gun
	dw write_command_para2FC		//buki: sky ripper P
	dw write_command_para2FD		//buki: doth pressure
	dw write_command_para2FE	//buki: magnet laser
	dw write_command_para2FF		//buki: rock fighter
	dw write_command_para300		//buki: electro dart
	dw write_command_para301		//buki: magnet claw
	dw write_command_para302		//buki: atomic burner
	dw write_command_para303		//buki: ancho nunckle
	dw write_command_para304		//buki: 380mili sensha hou
	dw write_command_para305		//buki: mechanic fixer
	dw write_command_para306		//buki: bakurai
	dw write_command_para307		//buki: craft drill
	dw write_command_para308		//buki: battle return P
	dw write_command_para309		//buki: battle garegga
	dw write_command_para30A		//buki: choudenji crane
	dw write_command_para30B		//buki: spring crusher
	dw write_command_para30C		//buki: choudenji yoyo
	dw write_command_para30D		//buki: twin lancer
	dw write_command_para30E		//buki: V laser
	dw write_command_para30F		//buki: battle chainsaw
	dw write_command_para310		//buki: big blast
	dw write_command_para311		//buki: big blast divider
	dw write_command_para312		//buki: choudenji spark
	dw write_command_para313	//buki: choudenji spin
	dw write_command_para314		//buki: god breaker
	dw write_command_para315		//buki: god missile
	dw write_command_para316		//buki: god boomrang P
	dw write_command_para317		//buki: god thunder
	dw write_command_para318		//buki: god arrow
	dw write_command_para319		//buki: god gun
	dw write_command_para31A		//buki: god pressure
	dw write_command_para31B		//buki: gogan sword
	dw write_command_para31C		//buki: energy cutter
	dw write_command_para31D		//buki: god alpha P
	dw write_command_para31E		//buki: god bird
	dw write_command_para31F		//buki: god voice
	dw write_command_para320		//buki: 20mili vulcan
	dw write_command_para321		//buki: foot cutter
	dw write_command_para322		//buki: shinkuu mawashi geri
	dw write_command_para323		//buki: snake lock P
	dw write_command_para324		//buki: five shooter P
	dw write_command_para325		//buki: cross boomerang P
	dw write_command_para326		//buki: dymo gun
	dw write_command_para327		//buki: dynamo shaft
	dw write_command_para328		//buki: drill ancho
	dw write_command_para329		//buki: sanryuukon
	dw write_command_para32A		//buki: souryuuken
	dw write_command_para32B		//buki: hissatsu reppuu seiken
	dw write_command_para32C		//buki: daiturn zamber
	dw write_command_para32D		//buki: daiturn hammer
	dw write_command_para32E		//buki: daiturn web P
	dw write_command_para32F			//buki: big web
	dw write_command_para330		//buki: daiturn missile
	dw write_command_para331		//buki: daiturn cannon
	dw write_command_para332		//buki: sun laser
	dw write_command_para333		//buki: sun attack
	dw write_command_para334		//buki: rocket hou
	dw write_command_para335		//buki: daiturn missile
	dw write_command_para336		//buki: bakudan
	dw write_command_para337		//buki: bird gun
	dw write_command_para338		//buki: oogata missile
	dw write_command_para339		//buki: tremble horn
	dw write_command_para33A		//buki: zambo magnum
	dw write_command_para33B		//buki: zambo riffle
	dw write_command_para33C		//buki: crusher drill
	dw write_command_para33D		//buki: arm punch P
	dw write_command_para33E		//buki: big cannon
	dw write_command_para33F			//buki: bull missile
	dw write_command_para340		//buki: big missile
	dw write_command_para341		//buki: base laser
	dw write_command_para342		//buki: nessenhou
	dw write_command_para343		//buki: base missile
	dw write_command_para344		//buki: zambot glap
	dw write_command_para345		//buki: zambot blow
	dw write_command_para346		//buki: zambot buster P
	dw write_command_para347		//buki: zambot cutter
	dw write_command_para348		//buki: buster missile
	dw write_command_para349		//buki: moon attack
	dw write_command_para34A		//buki: Ion hou
	dw write_command_para34B		//buki: wire claw
	dw write_command_para34C		//buki: dry strahl
	dw write_command_para34D		//buki: elemental fusion
	dw write_command_para34E		//buki: aura sword
	dw write_command_para34F		//buki: blast knuckle P
	dw write_command_para350		//buki: aura shot
	dw write_command_para351		//buki: evil eye
	dw write_command_para352		//buki: aura giri
	dw write_command_para353		//buki: hyper aura giri
	dw write_command_para354		//buki: aura cannon
	dw write_command_para355		//buki: sandan bazooka
	dw write_command_para356		//buki: aura beam sword
	dw write_command_para357		//buki: aura sword riffle
	dw write_command_para358		//buki: cosmo beam B
	dw write_command_para359		//buki: neo plasma cutter
	dw write_command_para35A		//buki: red impulse
	dw write_command_para35B		//buki: holster beam B
	dw write_command_para35C		//buki: mega beam riffle B
	dw write_command_para35D		//buki: slash ripper
	dw write_command_para35E		//buki: go saber
	dw write_command_para35F		//buki: go stick P
	dw write_command_para360		//buki: space bazooka
	dw write_command_para361		//buki: go flasher
	dw write_command_para362		//buki: pulse laser
	dw write_command_para363		//buki: beam launcher B
	dw write_command_para364		//buki: rensou cannon hou
	dw write_command_para365		//buki: dankuuhou
	dw write_command_para366		//buki: dankuuken
	dw write_command_para367		//buki: 27mili kikanhou
	dw write_command_para368		//buki: 4ren missile
	dw write_command_para369		//buki: totsugeki
	dw write_command_para36A		//buki: cannon hou
	dw write_command_para36B		//buki: koushusoku rensha beam B
	dw write_command_para36C		//buki: 5ren missile launcher
	dw write_command_para36D		//buki: kamitsuki
	dw write_command_para36E		//buki: 105mili riffle hou
	dw write_command_para36F		//buki: 200mili ryudanhou
	dw write_command_para370		//buki: 4ren daikoukeihou
	dw write_command_para371		//buki: 4ren taikuu pulse laser
	dw write_command_para372		//buki: rocket launcher
	dw write_command_para373		//buki: kiba
	dw write_command_para374		//buki: Giga Sword Cannon
	dw write_command_para375		//buki: beam cannon
	dw write_command_para376		//buki: mega beam cannon
	dw write_command_para377		//buki: linear rail gun
	dw write_command_para378		//buki: dis cutter
	dw write_command_para379		//buki: caloric missile
	dw write_command_para37A		//buki: psyflash MAP
	dw write_command_para37B		//buki: high familia
	dw write_command_para37C		//buki: acaxis buster
	dw write_command_para37D		//buki: cosmo nova
	dw write_command_para37E		//buki: gran worm sword
	dw write_command_para37F		//buki: graviton cannon MAP
	dw write_command_para380		//buki: worm smasher
	dw write_command_para381		//buki: blackhole cluster
	dw write_command_para382		//buki: shukutaihou
	dw write_command_para383		//buki: divine arm
	dw write_command_para384		//buki: psycho blast MAP
	dw write_command_para385		//buki: cross saucer
	dw write_command_para386		//buki: Hyper beam cannon B
	dw write_command_para387		//buki: cross smasher
	dw write_command_para388		//buki: chousindouken
	dw write_command_para389		//buki: taikuu missile
	dw write_command_para38A		//buki: resonance quake MAP
	dw write_command_para38B		//buki: flame cutter
	dw write_command_para38C		//buki: chuuseishi laser
	dw write_command_para38D		//buki: carolic smash
	dw write_command_para38E		//buki: megid flame MAP P
	dw write_command_para38F		//buki: gungnir
	dw write_command_para390		//buki: high drop pressure
	dw write_command_para391		//buki: linear rail gun
	dw write_command_para392		//buki: pulse laser
	dw write_command_para393		//buki: kelvin blizzard MAP
	dw write_command_para394		//buki: plasma cutter
	dw write_command_para395		//buki: split missile
	dw write_command_para396		//buki: neutron beam
	dw write_command_para397		//buki: heat hawk
	dw write_command_para398		//buki: zaku bazooka
	dw write_command_para399		//buki: 120mm machine gun
	dw write_command_para39A		//buki: hand grenade P
	dw write_command_para39B		//buki: sturm faust
	dw write_command_para39C		//buki: heat saber
	dw write_command_para39D		//buki: kakusan beam B
	dw write_command_para39E		//buki: giant bazu
	dw write_command_para39F		//buki: sturm faust
	dw write_command_para3A0		//buki: mega ryushi hou B
	dw write_command_para3A1		//buki: bit
	dw write_command_para3A2		//buki: umi hebi
	dw write_command_para3A3		//buki: big beam riffle B
	dw write_command_para3A4		//buki: beam hou B
	dw write_command_para3A5		//buki: godneros punch
	dw write_command_para3A6		//buki: small megabeam hou B
	dw write_command_para3A7		//buki: kakusan mega ryushi hou B
	dw write_command_para3A8		//buki: fadein riffle B
	dw write_command_para3A9		//buki: claw arm
	dw write_command_para3AA		//buki: reflector bit
	dw write_command_para3AB		//buki: psycommu beam sword
	dw write_command_para3AC		//buki: clay bazooka
	dw write_command_para3AD		//buki: mega bazooka launcher MAP B
	dw write_command_para3AE		//buki: arm beam gun B
	dw write_command_para3AF		//buki: shuri souchi
	dw write_command_para3B0		//buki: shot gun
	dw write_command_para3B1		//buki: giant bazu
	dw write_command_para3B2		//buki: 60mili kikanhou
	dw write_command_para3B3		//buki: panzer faust
	dw write_command_para3B4		//buki: 110mili vulcan
	dw write_command_para3B5		//buki: missile pod
	dw write_command_para3B6		//buki: big mega ryushi hou B
	dw write_command_para3B7		//buki: plasma reader MAP
	dw write_command_para3B8		//buki: psycommu mega ryushi hou
	dw write_command_para3B9		//buki: 110mili kikan hou
	dw write_command_para3BA		//buki: henkou mega ryushi hou B
	dw write_command_para3BB		//buki: yuusen claw arm
	dw write_command_para3BC		//buki: big missile launcher
	dw write_command_para3BD		//buki: small missile launcher
	dw write_command_para3BE		//buki: mega cannon hou B
	dw write_command_para3BF		//buki: funnel 
	dw write_command_para3C0		//buki: finger launcher
	dw write_command_para3C1		//buki: energy gun B
	dw write_command_para3C2		//buki: yuusen beam hou
	dw write_command_para3C3		//buki: beam tomahawk
	dw write_command_para3C4		//buki: tryblade P
	dw write_command_para3C5		//buki: beam cannon B
	dw write_command_para3C6		//buki: beam cannon B
	dw write_command_para3C7		//buki: taikan missile
	dw write_command_para3C8		//buki: incom
	dw write_command_para3C9		//buki: mega launcher B
	dw write_command_para3CA		//buki: mega beam cannon B
	dw write_command_para3CB		//buki: hyper mega ryuushi hou B
	dw write_command_para3CC		//buki: beam sword axe
	dw write_command_para3CD		//buki: beam machine gun B
	dw write_command_para3CE		//buki: storm faust
	dw write_command_para3CF		//buki: mega gatling gun
	dw write_command_para3D0		//buki: beam assault riffle B
	dw write_command_para3D1		//buki: handgun
	dw write_command_para3D2		//buki: beam shot riffle B
	dw write_command_para3D3		//buki: yuusen siki mega arm hou
	dw write_command_para3D4		//buki: shot lancer
	dw write_command_para3D5		//buki: tentacle claw
	dw write_command_para3D6		//buki: bug
	dw write_command_para3D7		//buki: claw
	dw write_command_para3D8		//buki: mini missile
	dw write_command_para3D9		//buki: magma dan
	dw write_command_para3DA		//buki: tai atari
	dw write_command_para3DB		//buki: hand sord
	dw write_command_para3DC		//buki: rocket dan
	dw write_command_para3DD		//buki: taihou
	dw write_command_para3DE		//buki: laser
	dw write_command_para3DF		//buki: boomerang
	dw write_command_para3E0		//buki: kama
	dw write_command_para3E1		//buki: muchi
	dw write_command_para3E2		//buki: pistol
	dw write_command_para3E3		//buki: riffle
	dw write_command_para3E4		//buki: spear
	dw write_command_para3E5		//buki: hurricane
	dw write_command_para3E6		//buki: jiryoku kousen
	dw write_command_para3E7		//buki: shock beam
	dw write_command_para3E8		//buki: uzumaki
	dw write_command_para3E9		//buki: ring kousen
	dw write_command_para3EA		//buki: gyo rai
	dw write_command_para3EB		//buki: drill
	dw write_command_para3EC		//buki: shindouha
	dw write_command_para3ED		//buki: kuchibashi
	dw write_command_para3EE		//buki: vegatron beam
	dw write_command_para3EF		//buki: beam vulcan B
	dw write_command_para3F0		//buki: kyodai vegatron beam hou
	dw write_command_para3F1		//buki: spin attack
	dw write_command_para3F2		//buki: kaen
	dw write_command_para3F3		//buki: denji mori
	dw write_command_para3F4		//buki: reitou kousen
	dw write_command_para3F5		//buki: lightning arrow
	dw write_command_para3F6		//buki: iron claw
	dw write_command_para3F7		//buki: graviton wave
	dw write_command_para3F8		//buki: chou hakai kousen
	dw write_command_para3F9		//buki: mega graviton wave
	dw write_command_para3FA		//buki: shokushu
	dw write_command_para3FB		//buki: chouonpa
	dw write_command_para3FC		//buki: marine vortex
	dw write_command_para3FD		//buki: flame bomb P
	dw write_command_para3FE		//buki: aura shot arm
	dw write_command_para3FF		//buki: aura nova hou MAP
	dw write_command_para400		//buki: gante missile
	dw write_command_para401		//buki: ceramic sword
	dw write_command_para402		//buki: gil sword
	dw write_command_para403		//buki: gil arrow
	dw write_command_para404		//buki: youma saber
	dw write_command_para405		//buki: nessen
	dw write_command_para406		//buki: reitou gas
	dw write_command_para407		//buki: kagizume
	dw write_command_para408		//buki: scimitar
	dw write_command_para409		//buki: shield beam B
	dw write_command_para40A		//buki: lancer
	dw write_command_para40B		//buki: space missile
	dw write_command_para40C		//buki: bundock hou
	dw write_command_para40D		//buki: wing sword
	dw write_command_para40E		//buki: big bow
	dw write_command_para40F		//buki: homing missile
	dw write_command_para410		//buki: flasher beam B
	dw write_command_para411		//buki: ram
	dw write_command_para412		//buki: saber
	dw write_command_para413		//buki: bazooka
	dw write_command_para414		//buki: han isalon ryuushi
	dw write_command_para415		//buki: high mega ryuushi hou B
	dw write_command_para416		//buki: hyper mega ryuushi hou MAP B
	dw write_command_para417		//buki: savior
	dw write_command_para418		//buki: S mine P
	dw write_command_para419		//power launcher B
	dw write_command_para41A		//buki: buster launcher MAP B
	dw write_command_para41B		//buki: slow lancer P
	dw write_command_para41C		//buki: size 
	dw write_command_para41D		//buki: hand launcher B
	dw write_command_para41E		//buki: reversed bommer
	dw write_command_para41F		//buki: energy bomber
	dw write_command_para420		//buki: sash
	dw write_command_para421		//buki: frogger
	dw write_command_para422		//buki: long spear
	dw write_command_para423		//buki: houden
	dw write_command_para424		//buki: hammer
	dw write_command_para425		//buki: beam lance
	dw write_command_para426		//buki: lance missile
	dw write_command_para427		//buki: battle spear
	dw write_command_para428		//buki: dai setsuzan oroshi
	dw write_command_para429		//buki: hokyu souchi
	dw write_command_para42A		//buki: grandassher
	dw write_command_para42B		//buki: hissatsu reppu seiken kai
	dw write_command_para42C		//buki: mega kakusan beam B
	
	dw write_command_para42D		//buki: mega beam launcher B
	dw write_command_para42E		//buki: marine beam
	dw write_command_para42F		//buki: aura vulcan
	dw write_command_para430		//buki: hair missile
	dw write_command_para431		//buki: youma kousen
	dw write_command_para432		//buki: 60mili kijuu
	dw write_command_para433		//buki: main mega ryuushi hou B
	dw write_command_para434		//buki: sub mega ryuushi hou B
	dw write_command_para435		//buki: 120mili kijuu
	dw write_command_para436		//buki: 30mili kijuu
	dw write_command_para437		//buki: taikuu kikanhou
	dw write_command_para438		//buki: 12 rensou missile launcher
	dw write_command_para439		//buki: 15 rensou missile launcher
	dw write_command_para43A		//buki: 90mili kijuu
	dw write_command_para43B		//buki: keito ragou ken
	dw write_command_para43C		//buki: 140mili kijuu
	dw write_command_para43D		//buki: 160mili kijuu
	dw write_command_para43E		//buki: 180mili kijuu
	dw write_command_para43F		//buki: 20 rensou missile launcher
	dw write_command_para440		//buki: great booster
	dw write_command_para441		//buki: chain mine
	dw write_command_para442		//buki: hyper aura cannon
	dw write_command_para443		//buki: laser vulcan
	dw write_command_para444		//buki: gatling beam B
	dw write_command_para445		//buki: laser sword
	dw write_command_para446		//buki: spread missile
	dw write_command_para447		//buki: daikoukei beam hou B
	dw write_command_para448		//buki: dual laser sword
	dw write_command_para449		//buki: laser gun
	dw write_command_para44A		//buki: double cannon
	dw write_command_para44B		//buki: driver cannon
	dw write_command_para44C		//buki: Ion hou beam B
	dw write_command_para44D		//buki: mass driver cannon
	dw write_command_para44E		//buki: twin laser sword
	dw write_command_para44F		//buki: launcher missile
	dw write_command_para450		//buki: laser cannon
	dw write_command_para451		//buki: kaden ryuushi beam B
	dw write_command_para452		//buki: 60mili vulcan
	dw write_command_para453		//buki: plasma sword
	dw write_command_para454		//buki: 4 ren missile launcher
	dw write_command_para455		//buki: roche savior
	dw write_command_para456		//buki: leap slasher
	dw write_command_para457		//buki: blackhole cannon
	dw write_command_para458		//buki: boost knuckle P
	dw write_command_para459		//buki: omega laser
	dw write_command_para45A		//buki: break cross P
	dw write_command_para45B		//buki: laser spear
	dw write_command_para45C		//buki: keito ragou ankensatsu
	dw write_command_para45D		//buki: double omega laser
	dw write_command_para45E		//buki: texas sword
	dw write_command_para45F		//buki: spiral attack
	dw write_command_para460		//buki: omega cannon
	dw write_command_para461		//buki: mac revolver
	dw write_command_para462		//buki: mac riot
	dw write_command_para463		//buki: mac riffle
	dw write_command_para464		//buki: 2 ren mega ryuushi hou B
	dw write_command_para465		//buki: adzam reader MAP
	dw write_command_para466		//buki: dark saber
	dw write_command_para467		//buki: evil size
	dw write_command_para468		//buki: hell fire
	dw write_command_para469		//buki: noroi
	dw write_command_para46A		//buki: fire breath
	dw write_command_para46B		//buki: slide shield
	dw write_command_para46C		//buki: shield boomerang
	dw write_command_para46D		//buki: evil ring
	dw write_command_para46E		//buki: kai kousen
	dw write_command_para46F		//buki: shita 
	dw write_command_para470		//buki: daikaen
	dw write_command_para471		//buki: mirage drill
	dw write_command_para472		//buki: drill tempest
	dw write_command_para473		//buki: hammer punch
	dw write_command_para474		//buki: daisetuzan oroshi 2dan gaeshi
	dw write_command_para475		//buki: shippo
	dw write_command_para476		//buki: drill breath
	dw write_command_para477		//buki: corona barrier
	dw write_command_para478		//buki: long laser sword
	dw write_command_para479		//buki: giga blaster
	dw write_command_para47A		//buki: giga driver cannon
	dw write_command_para47B		//buki: reflector incom
	dw write_command_para47C		//buki: bigbang wave MAP
	dw write_command_para47D		//buki: beam smart gun B
	dw write_command_para47E		//meichuuritsu
	dw write_command_para47F		//hangeki funou
	dw write_command_para480		//LV
	
	dw write_command_para481	//cham
	dw write_command_para482	//belle
	dw write_command_para483	//elle
	dw write_command_para484	//lilith
	dw write_command_para485	//silky
	dw write_command_para486	//yousei6
	dw write_command_para487	//jack
	dw write_command_para488	//marry
	dw write_command_para489	//ryou
	dw write_command_para48A	//hayato
	dw write_command_para48B	//benkei
	dw write_command_para48C	//shingo
	dw write_command_para48D	//remy
	dw write_command_para48E	//kily
	dw write_command_para48F		//kappei
	dw write_command_para490	//uchuta
	dw write_command_para491	//keiko
	dw write_command_para492	//shinobu
	dw write_command_para493	//sara
	dw write_command_para494	//masato
	dw write_command_para495	//ryou
	dw write_command_para496	//hyouma
	dw write_command_para497	//juuzou
	dw write_command_para498	//daisaku
	dw write_command_para499	//chizuru
	dw write_command_para49A	//kosuke
	dw write_command_para49B	//gilliam
	dw write_command_para49C	//shou
	dw write_command_para49D	//masaki
	dw write_command_para49E	//ryune
	dw write_command_para49F		//shuu
	dw write_command_para4A0	//quatro
	dw write_command_para4A1	//bright
	dw write_command_para4A2	//hayato
	dw write_command_para4A3	//kai
	dw write_command_para4A4	//matilda
	dw write_command_para4A5	//sayla
	dw write_command_para4A6	//wakkein
	dw write_command_para4A7	//tianem
	dw write_command_para4A8	//emma
	dw write_command_para4A9	//torres
	dw write_command_para4AA	//fa
	dw write_command_para4AB	//katsu
	dw write_command_para4AC	//four
	dw write_command_para4AD	//beltorchika
	dw write_command_para4AE	//kelly
	dw write_command_para4AF	//henken
	dw write_command_para4B0	//blex
	dw write_command_para4B1	//roux
	dw write_command_para4B2	//puru
	dw write_command_para4B3	//purutz
	dw write_command_para4B4	//leina
	dw write_command_para4B5	//beecha
	dw write_command_para4B6	//mondo
	dw write_command_para4B7	//elle
	dw write_command_para4B8	//iino
	dw write_command_para4B9	//emary
	dw write_command_para4BA	//quess
	dw write_command_para4BB	//chan
	dw write_command_para4BC	//kayra
	dw write_command_para4BD	//hathaway
	dw write_command_para4BE	//chris
	dw write_command_para4BF	//berny
	dw write_command_para4C0	//cecily
	dw write_command_para4C1	//nina
	dw write_command_para4C2	//gato
	dw write_command_para4C3	//keith
	dw write_command_para4C4	//monsha
	dw write_command_para4C5	//sayaka
	dw write_command_para4C6	//ramthus
	dw write_command_para4C7	//boss
	dw write_command_para4C8	//jun
	dw write_command_para4C9	//maria
	dw write_command_para4CA	//hikaru
	dw write_command_para4CB	//michiru
	dw write_command_para4CC	//dangel
	dw write_command_para4CD	//jinguji
	dw write_command_para4CE	//Asuka
	dw write_command_para4CF	//mary
	dw write_command_para4D0	//amuro
	dw write_command_para4D1	//camille
	dw write_command_para4D2	//judau
	dw write_command_para4D3	//seabook
	dw write_command_para4D4	//kou
	dw write_command_para4D5	//kouji
	dw write_command_para4D6	//saemon
	dw write_command_para4D7	//ume-e
	dw write_command_para4D8	//gengoro
	dw write_command_para4D9	//ichitarou
	dw write_command_para4DA	//garrison
	dw write_command_para4DB	//beauty
	dw write_command_para4DC	//reika
	dw write_command_para4DD	//toppo
	dw write_command_para4DE	//tetsuya
	dw write_command_para4DF	//kyoushirou
	dw write_command_para4E0	//nana
	dw write_command_para4E1	//duke
	dw write_command_para4E2	//marvel
	dw write_command_para4E3	//akira
	dw write_command_para4E4	//nie
	dw write_command_para4E5	//keen
	dw write_command_para4E6	//ciela
	dw write_command_para4E7	//elle
	dw write_command_para4E8	//rimul
	dw write_command_para4E9	//eve
	dw write_command_para4EA	//banjou
	dw write_command_para4EB	//kazuya
	dw write_command_para4EC	//heishi
	dw write_command_para4ED	//tytti
	dw write_command_para4EE	//jumashougun
	dw write_command_para4EF	//Burning
	dw write_command_para4F0	//long
	dw write_command_para4F1	//presia
	dw write_command_para4F2	//mio
	dw write_command_para4F3	//titans
	dw write_command_para4F4	//monica
	dw write_command_para4F5	//safine
	dw write_command_para4F6	//gadem
	dw write_command_para4F7	//ral
	dw write_command_para4F8	//hamon
	dw write_command_para4F9	//clamp
	dw write_command_para4FA	//gaia
	dw write_command_para4FB	//mash
	dw write_command_para4FC	//ortega
	dw write_command_para4FD	//challia
	dw write_command_para4FE	//lalah
	dw write_command_para4FF	//gadi
	dw write_command_para500	//kacricon
	dw write_command_para501	//sarah
	dw write_command_para502	//gates
	dw write_command_para503	//jerid
	dw write_command_para504	//jamaican
	dw write_command_para505	//jamitov
	dw write_command_para506	//haman
	dw write_command_para507	//buran
	dw write_command_para508	//ben
	dw write_command_para509	//maur
	dw write_command_para50A	//mineva
	dw write_command_para50B	//lila
	dw write_command_para50C	//yazan
	dw write_command_para50D	//rosamia
	dw write_command_para50E	//mashymre
	dw write_command_para50F	//illia
	dw write_command_para510	//chara
	dw write_command_para511	//glemy
	dw write_command_para512	//gotton
	dw write_command_para513	//nie
	dw write_command_para514	//lance
	dw write_command_para515	//rakan
	dw write_command_para516	//gyunei
	dw write_command_para517	//nanai
	dw write_command_para518	//rezin
	dw write_command_para519	//zabine
	dw write_command_para51A	//annamarie
	dw write_command_para51B	//dorel
	dw write_command_para51C	//carozzo
	dw write_command_para51D	//steiner
	dw write_command_para51E	//cima
	dw write_command_para51F	//ashura
	dw write_command_para520	//blocken
	dw write_command_para521	//dr.hell
	dw write_command_para522	//sharkin
	dw write_command_para523	//eugo hei
	dw write_command_para524	//balao
	dw write_command_para525	//garuda
	dw write_command_para526	//meea
	dw write_command_para527	//orleana
	dw write_command_para528	//butcher
	dw write_command_para529	//korosu
	dw write_command_para52A	//don
	dw write_command_para52B	//richter
	dw write_command_para52C	//bulbous
	dw write_command_para52D	//ryza
	dw write_command_para52E	//izam
	dw write_command_para52F	//bundle
	dw write_command_para530	//cuttnal
	dw write_command_para531	//kernagol
	dw write_command_para532	//tod
	dw write_command_para533	//burne
	dw write_command_para534	//kokukishi
	dw write_command_para535	//drake
	dw write_command_para536	//shot
	dw write_command_para537	//bishot
	dw write_command_para538	//luther
	dw write_command_para539	//musy
	dw write_command_para53A	//Zet
	dw write_command_para53B	//torust
	dw write_command_para53C	//jeryll
	dw write_command_para53D	//allen
	dw write_command_para53E	//fay
	dw write_command_para53F	//garalia
	dw write_command_para540	//galamity
	dw write_command_para541	//daa
	dw write_command_para542	//het
	dw write_command_para543	//ankoku
	dw write_command_para544	//hardias
	dw write_command_para545	//dreiud
	dw write_command_para546	//elite hei
	dw write_command_para547	//ai
	dw write_command_para548	//ai kai
	dw write_command_para549	//totsugeki hei
	dw write_command_para54A	//shineitai
	dw write_command_para54B	//poseidal hei
	dw write_command_para54C	//delaz
	dw write_command_para54D	//daba
	dw write_command_para54E	//leccee
	dw write_command_para54F	//kyao
	dw write_command_para550	//amu
	dw write_command_para551	//hatchia
	dw write_command_para552	//gablae
	dw write_command_para553	//amandara
	dw write_command_para554	//poseidal
	dw write_command_para555	//nei
	dw write_command_para556	//giwaza
	dw write_command_para557	//full
	dw write_command_para558	//olivie
	dw write_command_para559	//rockley
	dw write_command_para55A	//anton
	dw write_command_para55B	//heckler
	dw write_command_para55C	//lily
	dw write_command_para55D	//chai
	dw write_command_para55E	//wazan
	dw write_command_para55F	//mctomin
	dw write_command_para560	//barn gania
	dw write_command_para561	//ted
	dw write_command_para562	//glof
	dw write_command_para563	//sety
	dw write_command_para564	//zeb
	dw write_command_para565	//zezenan
	dw write_command_para566	//mechibos
	dw write_command_para567	//terius
	dw write_command_para568	//kyoukahei
	dw write_command_para569	//miwa choukan
	dw write_command_para56A	//chou AI
	dw write_command_para56B	//opening panel: jinbutsu settei
	dw write_command_para56C	//opening panel: type
	dw write_command_para56D	//opening panel: name
	dw write_command_para56E	//opening panel: sex
	dw write_command_para56F	//opening panel: face
	dw write_command_para570	//opening panel: personality
	dw write_command_para571	//opening panel: birthday
	dw write_command_para572	//opening panel: sex2
	dw write_command_para573	//opening panel: aishou
	dw write_command_para574	//opening panel: ketsueki
	dw write_command_para575	//opening panel: real robot
	dw write_command_para576	//opening panel: super robot
	dw write_command_para577	//opening panel: otoko
	dw write_command_para578	//opening panel: onna
	dw write_command_para579	//opening panel: day
	dw write_command_para57A	//opening panel: month
	dw write_command_para57B	//opening panel: majime
	dw write_command_para57C	//opening panel: rironka
	dw write_command_para57D	//opening panel: henna seikaku
	dw write_command_para57E	//opening panel: cool nihil
	dw write_command_para57F	//opening panel: lenonjayce
	dw write_command_para580	//opening panel: patricia
	dw write_command_para581	//opening panel: imgard
	dw write_command_para582	//opening panel: grace
	dw write_command_para583	//opening panel: hector
	dw write_command_para584	//opening panel: mina
	dw write_command_para585	//opening panel: arwynn
	dw write_command_para586	//opening panel: lin
	dw write_command_para587	//opening panel: starlord
	dw write_command_para588	//opening panel: hackman
	dw write_command_para589	//opening panel: kazahara
	dw write_command_para58A	//opening panel: urigin
	dw write_command_para58B	//opening panel: madison
	dw write_command_para58C	//opening panel: likering
	dw write_command_para58D	//opening panel: dorstein
	dw write_command_para58E	//opening panel: mao
	dw write_command_para58F	//opening panel: jayce
	dw write_command_para590	//opening panel: pat
	dw write_command_para591	//opening panel: irm
	dw write_command_para592	//opening panel: wyn
	dw write_command_para593	//opening panel: change chara
	dw write_command_para594	//opening panel: yes
	dw write_command_para595	//opening panel: no
	dw write_command_para596	//opening panel: korede yoika
	dw write_command_para597	//opening panel: ok
	dw write_command_para598	//opening panel: kettei
	dw write_command_para599	//opening panel: torikesi
	dw write_command_para59A	//pilot panel: kin kougeki
	dw write_command_para59B	//pilot panel: en kougeki
	dw write_command_para59C	//pilot panel: kaihi
	dw write_command_para59D	//pilot panel: meichu
	dw write_command_para59E	//pilot panel: chokkan
	dw write_command_para59F	//pilot panel: giryo
	dw write_command_para5A0	//pilot panel: seishin
	dw write_command_para5A1	//pilot panel: tokushu ginou
	dw write_command_para5A2	//pilot panel: gekiha
	dw write_command_para5A3	//pilot panel: tokushu ginou2
	
write_command_para0:
	LDA #(command1)	//idou
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	SEP #$20
	STZ $0383
	REP #$20
	RTS
write_command_para1:
	LDA #(command1)	//seishin
	CLC
	ADC #$0080
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para2:
	LDA #(command1)	//nouryoku
	CLC
	ADC #$0100
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para3:
	LDA #(command1)	//kougeki
	CLC
	ADC #$0300
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para4:
	LDA #(command1)	//henkei
	CLC
	ADC #$0280
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para5:
	LDA #(command1)	//gattai
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para6:
	LDA #(command1)	//bunri
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para7:
	LDA #(command1)	//settoku
	CLC
	ADC #$0600
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para8:
	LDA #(command1)	//chichuu
	CLC
	ADC #$0400
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_para9:
	LDA #(command1)	//suichuu
	CLC
	ADC #$0580
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_paraA:
	LDA #(command1)	//chijou
	CLC
	ADC #$0180
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_paraB:
	LDA #(command1)	//kuuchuu
	CLC
	ADC #$0200
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_paraC:
	LDA #(command1)	//taiki
	CLC
	ADC #$0380
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_paraD:
	LDA #(command1)	//part
	CLC
	ADC #$0480
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_paraE:
	LDA #(command1)	//hasshin
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	RTS
write_command_paraF:
	LDA #(command1)	//tousai
	CLC
	ADC #$0780
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(command1>>16)
	STA $0D64
	LDA #$0001
	STA $7FFFFE
	RTS
write_command_para10:
	LDA #(seishin_chr)
	CLC
	ADC #$0880	//konjou
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para11:
	LDA #(seishin_chr)
	CLC
	ADC #$0900	//dokonjou
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para12:
	LDA #(seishin_chr)
	CLC
	ADC #$0780	//hokyuu
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para13:
	LDA #(seishin_chr)
	CLC
	ADC #$0400	//yuujou
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para14:
	LDA #(seishin_chr)
	CLC
	ADC #$0380	//shinrai
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para15:
	LDA #(seishin_chr)
	CLC
	ADC #$0480	//hakuai
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para16:
	LDA #(seishin_chr)
	CLC
	ADC #$0B80	//gekido
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para17:
	LDA #(seishin_chr)
	CLC
	ADC #$0C80	//kiai
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para18:
	LDA #(seishin_chr)
	STA $0D60	//kasoku
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para19:
	LDA #(seishin_chr)
	CLC
	ADC #$0080	//nekketsu
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	LDA #$DEAD
	STA $7FFFFC
	RTS
write_command_para1A:
	LDA #(seishin_chr)
	CLC
	ADC #$0200	//hitchuu
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para1B:
	LDA #(seishin_chr)
	CLC
	ADC #$0300	//hirameki
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	LDA #$DEAD
	STA $7FFFFC
	RTS
write_command_para1C:
	LDA #(seishin_chr)
	CLC
	ADC #$0700	//koun
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para1D:
	LDA #(seishin_chr)
	CLC
	ADC #$0D00	//kakusei
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para1E:
	LDA #(seishin_chr)
	CLC
	ADC #$0A00	//i-atsu
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para1F:
	LDA #(seishin_chr)
	CLC
	ADC #$0180	//tekagen
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para20:
	LDA #(seishin_chr)
	CLC
	ADC #$0100	//shuuchuu
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para21:
	LDA #(seishin_chr)
	CLC
	ADC #$0600	//gekirei
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para22:
	LDA #(seishin_chr)
	CLC
	ADC #$0800	//saidou
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para23:
	LDA #(seishin_chr)
	CLC
	ADC #$0E80	//fukkatsu
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para24:
	LDA #(seishin_chr)
	CLC
	ADC #$0A80	//kakuremi
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para25:
	LDA #(seishin_chr)
	CLC
	ADC #$0C00	//datsuryoku
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para26:
	LDA #(seishin_chr)
	CLC
	ADC #$0D80	//jibaku
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para27:
	LDA #(seishin_chr)
	CLC
	ADC #$0980	//tansaku
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	LDA #$DEAD
	STA $7FFFFC
	RTS
write_command_para28:
	LDA #(seishin_chr)
	CLC
	ADC #$0B00	//ashikase
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para29:
	LDA #(seishin_chr)
	CLC
	ADC #$0580	//kakuran
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para2A:
	LDA #(seishin_chr)
	CLC
	ADC #$0500	//teisatsu
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para2B:
	LDA #(seishin_chr)
	CLC
	ADC #$0680	//teppeki
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para2C:
	LDA #(seishin_chr)
	CLC
	ADC #$0280	//tamashii
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para2D:
	LDA #(seishin_chr)
	CLC
	ADC #$0E00	//kiseki
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para2E:
	LDA #(seishin_chr)
	CLC
	ADC #$0F00	//seishin point
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para2F:
	LDA #(seishin_chr)
	CLC
	ADC #$0F80	//nazo
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(seishin_chr>>16)
	STA $0D64
	RTS
write_command_para30:
	LDA #(panel_chr)	//turn end
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para31:
	LDA #(panel_chr)	//butai
	CLC
	ADC #$00D0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para32:
	LDA #(panel_chr)	//map
	CLC
	ADC #$01C0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para33:
	LDA #(panel_chr)	//seishin
	CLC
	ADC #$0290
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para34:
	LDA #(panel_chr)	//meirei
	CLC
	ADC #$0360
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para35:
	LDA #(panel_chr)	//system
	CLC
	ADC #$0440
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para36:
	LDA #(panel_chr)		//mokuteki
	CLC
	ADC #$0510
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para37:
	LDA #(panel_chr)	//save
	CLC
	ADC #$05E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para38:
	LDA #(panel_chr)		//turn suu
	CLC
	ADC #$0660
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para39:
	LDA #(panel_chr)		//shikin
	CLC
	ADC #$06C0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(panel_chr>>16)
	STA $0D64
	RTS
write_command_para3A:
	LDA #(ability_chr)		//unit ability
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para3B:
	LDA #(ability_chr)		//pilot ability
	CLC
	ADC #$00A0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS	
write_command_para3C:
	LDA #(ability_chr)		//pilot ability
	CLC
	ADC #$0140
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para3D:
	LDA #(ability_chr)		//level
	CLC
	ADC #$0370
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para3E:
	LDA #(ability_chr)		//kiryoku
	CLC
	ADC #$0320
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para3F:
	LDA #(ability_chr)		//chikei
	CLC
	ADC #$0440
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para40:
	LDA #(ability_chr)		//type
	CLC
	ADC #$0190
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para41:
	LDA #(ability_chr)		//idou
	CLC
	ADC #$01C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para42:
	LDA #(ability_chr)		//undou
	CLC
	ADC #$1FA0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para43:
	LDA #(ability_chr)		//soukou
	CLC
	ADC #$0280
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para44:
	LDA #(ability_chr)		//genkai
	CLC
	ADC #$02C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para45:
	LDA #(ability_chr)		//next level
	CLC
	ADC #$03B0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para46:
	LDA #(ability_chr)		//beam coat
	CLC
	ADC #$0480
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para47:
	LDA #(ability_chr)		//E-field
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para48:
	LDA #(ability_chr)		//Aura barrier
	CLC
	ADC #$0550
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para49:
	LDA #(ability_chr)		//Beam barrier
	CLC
	ADC #$05C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para4A:
	LDA #(ability_chr)		//HP kaifuku
	CLC
	ADC #$0640
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para4B:
	LDA #(ability_chr)		//bunshin
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para4C:
	LDA #(ability_chr)		//henkei
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para4D:
	LDA #(ability_chr)		//gattai
	CLC
	ADC #$0760
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para4E:
	LDA #(ability_chr)		//bunri
	CLC
	ADC #$07B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para4F:
	LDA #(unit_chr)		//bunri
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para50:
	LDA #(unit_chr)		//F-91
	CLC
	ADC #$0060
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para51:
	LDA #(unit_chr)		//NT Alex
	CLC
	ADC #$00A0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para52:
	LDA #(unit_chr)		//GP-01FB
	CLC
	ADC #$0110
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para53:
	LDA #(unit_chr)		//GP-02A
	CLC
	ADC #$0180
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para54:
	LDA #(unit_chr)		//GP-03 Dendrobium
	CLC
	ADC #$01E0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para55:
	LDA #(unit_chr)		//GP-03S Stamen
	CLC
	ADC #$02B0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para56:
	LDA #(unit_chr)		//Gun Cannon
	CLC
	ADC #$0360
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para57:
	LDA #(unit_chr)		//Gun Tank
	CLC
	ADC #$0F30
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para58:
	LDA #(unit_chr)		//Ball
	CLC
	ADC #$03E0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para59:
	LDA #(unit_chr)		//Nemo
	CLC
	ADC #$0410
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para5A:
	LDA #(unit_chr)		//GM II
	CLC
	ADC #$0450
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para5B:
	LDA #(unit_chr)		//Jegan
	CLC
	ADC #$0480
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para5C:
write_command_para5D:
	LDA #(unit_chr)		//Re-Gz
	CLC
	ADC #$04C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para5E:
	LDA #(unit_chr)		//Getter1
	CLC
	ADC #$0F90
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para5F:
	LDA #(unit_chr)		//Getter2
	CLC
	ADC #$0510
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para60:
	LDA #(unit_chr)		//Getter3
	CLC
	ADC #$0570
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para61:
	LDA #(unit_chr)		//Getter Dragon
	CLC
	ADC #$05D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para62:
	LDA #(unit_chr)		//Getter Liger
	CLC
	ADC #$0670
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para63:
	LDA #(unit_chr)		//Getter Dragon
	CLC
	ADC #$0700
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para64:
write_command_para65:
	LDA #(unit_chr)		//Mazinger Z
	CLC
	ADC #$07C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para66:
	LDA #(unit_chr)		//Great Mazinger
	CLC
	ADC #$0840
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para67:
write_command_para6C:
write_command_para6D:
write_command_para6E:
	LDA #(unit_chr)		//Grendizer
	CLC
	ADC #$0900
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para68:
	LDA #(unit_chr)		//Speizer
	CLC
	ADC #$0970
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para69:
	LDA #(unit_chr)		//Double Speizer
	CLC
	ADC #$09D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para6A:
	LDA #(unit_chr)		//Drill Speizer
	CLC
	ADC #$0A80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para6B:
	LDA #(unit_chr)		//Marine Speizer
	CLC
	ADC #$0B10
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para6F:
	LDA #(unit_chr)		//Afrodite A
	CLC
	ADC #$0BC0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para70:
	LDA #(unit_chr)		//Diana A
	CLC
	ADC #$0C40
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para71:
	LDA #(unit_chr)		//Boss Borot
	CLC
	ADC #$0CA0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para72:
	LDA #(unit_chr)		//Venus A
	CLC
	ADC #$0D20
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para73:
	LDA #(unit_chr)		//Battle Jet
	CLC
	ADC #$0D80
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para74:
	LDA #(unit_chr)		//Battle Crusher
	CLC
	ADC #$0E00
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para75:
	LDA #(unit_chr)		//Battle Tank
	CLC
	ADC #$0EB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para76:
	LDA #(unit_chr)		//Battle Marine
	CLC
	ADC #$1000
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para77:
	LDA #(unit_chr)		//Battle Craft
	CLC
	ADC #$10A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para78:
	LDA #(unit_chr)		//Combattler V
	CLC
	ADC #$1130
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para79:
	LDA #(unit_chr)		//Raideen
	CLC
	ADC #$11C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para7A:
	LDA #(unit_chr)		//Blueger
	CLC
	ADC #$1220
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para7B:
	LDA #(unit_chr)		//Daimos
	CLC
	ADC #$1270
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para7C:
	LDA #(unit_chr)		//Galver FX II
	CLC
	ADC #$2360
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para7D:
	LDA #(unit_chr)		//Daitarn 3
	CLC
	ADC #$12C0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para7E:
	LDA #(unit_chr)		//Dai Fighter
	CLC
	ADC #$1330
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para7F:
	LDA #(unit_chr)		//Daitank
	CLC
	ADC #$13C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para80:
	LDA #(unit_chr)		//Zambird
	CLC
	ADC #$1420
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para81:
	LDA #(unit_chr)		//Zambo Ace
	CLC
	ADC #$1480
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para82:
	LDA #(unit_chr)		//Zambull
	CLC
	ADC #$1500
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para83:
	LDA #(unit_chr)		//Zambase
	CLC
	ADC #$1550
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para84:
	LDA #(unit_chr)		//Zambot3
	CLC
	ADC #$15B0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para85:
	LDA #(unit_chr)		//Dunbine
	CLC
	ADC #$1620
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para86:
	LDA #(unit_chr)		//Billbine
	CLC
	ADC #$1680
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para87:
	LDA #(unit_chr)		//Wing caliver
	CLC
	ADC #$16E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para88:
	LDA #(unit_chr)		//Goshogun
	CLC
	ADC #$1770
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para89:
	LDA #(unit_chr)		//Dankuga
	CLC
	ADC #$17E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para8A:
	LDA #(unit_chr)		//Eagle Fighter N
	CLC
	ADC #$1840
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para8B:
	LDA #(unit_chr)		//Eagle Fighter A
	CLC
	ADC #$1900
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para8C:
	LDA #(unit_chr)		//Eagle Fighter H
	CLC
	ADC #$19B0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para8D:
	LDA #(unit_chr)		//Land Kuga N
	CLC
	ADC #$1A60
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para8E:
	LDA #(unit_chr)		//Land Kuga A
	CLC
	ADC #$1AE0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para8F:
	LDA #(unit_chr)		//Land Kuga H
	CLC
	ADC #$1B70
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para90:
	LDA #(unit_chr)		//Land Liger N
	CLC
	ADC #$1C00
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para91:
	LDA #(unit_chr)		//Land Liger A
	CLC
	ADC #$1C90
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para92:
	LDA #(unit_chr)		//Land Liger H
	CLC
	ADC #$1D20
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para93:
	LDA #(unit_chr)		//Big Moth N
	CLC
	ADC #$1DB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para94:
	LDA #(unit_chr)		//Big Moth A
	CLC
	ADC #$1E30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para95:
	LDA #(unit_chr)		//Big Moth H
	CLC
	ADC #$1EB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para96:
	LDA #(unit_chr)		//Bloodtemple
	CLC
	ADC #$1F30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para97:
	LDA #(unit_chr)		//Atol 5
	CLC
	ADC #$2400
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para98:
	LDA #(unit_chr)		//Godneros
	CLC
	ADC #$2000
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para99:
	LDA #(unit_chr)		//Psybuster
	CLC
	ADC #$2070
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9A:
	LDA #(unit_chr)		//Psybird
	CLC
	ADC #$20E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9B:
	LDA #(unit_chr)		//Granzon
	CLC
	ADC #$2140
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9B:
	LDA #(unit_chr)		//Granzon
	CLC
	ADC #$2140
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9C:
	LDA #(unit_chr)		//Neo Granzon
	CLC
	ADC #$21A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9D:
	LDA #(unit_chr)		//Valsione R
	CLC
	ADC #$2230
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9E:
	LDA #(unit_chr)		//Zamzeed
	CLC
	ADC #$22A0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para9F:
	LDA #(unit_chr)		//Granvel
	CLC
	ADC #$2300
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA0:
	LDA #(unit_chr)		//Gaddess
	CLC
	ADC #$2450
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA1:
	LDA #(unit_chr)		//Wizol kai
	CLC
	ADC #$24A0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA2:
	LDA #(unit_chr)		//Norus Rei
	CLC
	ADC #$2500
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA3:
	LDA #(unit_chr)		//Gadifoul
	CLC
	ADC #$2570
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA4:
	LDA #(unit_chr)		//Gespent
	CLC
	ADC #$3B70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA5:
	LDA #(unit_chr)		//Zaku kai
	CLC
	ADC #$2600
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA6:
	LDA #(unit_chr)		//Dom
	CLC
	ADC #$25D0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA7:
	LDA #(unit_chr)		//Elemes
	CLC
	ADC #$2660
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA8:
	LDA #(unit_chr)		//Marasai
	CLC
	ADC #$26B0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraA9:
	LDA #(unit_chr)		//Barzam
	CLC
	ADC #$2710
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraAA:
write_command_paraAB:
	LDA #(unit_chr)		//Hambrabi
	CLC
	ADC #$2760
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraAC:
write_command_paraAD:
	LDA #(unit_chr)		//Asshimer
	CLC
	ADC #$27D0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraAE:
write_command_paraAF:
	LDA #(unit_chr)		//Psycho Gundam
	CLC
	ADC #$2840
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraB0:
	LDA #(unit_chr)		//Byarlant
	CLC
	ADC #$28E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraB1:
write_command_paraB2:
	LDA #(unit_chr)		//Gabthley
	CLC
	ADC #$2940
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraB3:
write_command_paraB4:
	LDA #(unit_chr)		//Baund Doc
	CLC
	ADC #$29A0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraB5:
write_command_paraB6:
	LDA #(unit_chr)		//Psycho Gundam mk2
	CLC
	ADC #$2A10
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraB7:
	LDA #(unit_chr)		//Hyakushiki
	CLC
	ADC #$2AE0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraB8:
write_command_paraB9:
	LDA #(unit_chr)		//Methuss
	CLC
	ADC #$2B50
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraBA:
	LDA #(unit_chr)		//Braw Bro
	CLC
	ADC #$2BB0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraBB:
	LDA #(unit_chr)		//Bigro
	CLC
	ADC #$2C20
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraBC:
	LDA #(unit_chr)		//Kempfer
	CLC
	ADC #$2C60
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraBD:
	LDA #(unit_chr)		//Val-waro
	CLC
	ADC #$2CC0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraBE:
	LDA #(unit_chr)		//Gerbera Tetra
	CLC
	ADC #$2D20
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraBF:
	LDA #(unit_chr)		//Neue Ziel
	CLC
	ADC #$2DC0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC0:
	LDA #(unit_chr)		//Qubeley
	CLC
	ADC #$2E30
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC1:
	LDA #(unit_chr)		//Qubeley mk2
	CLC
	ADC #$2E30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC2:
	LDA #(unit_chr)		//Garus J
	CLC
	ADC #$2F00
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC3:
	LDA #(unit_chr)		//Zssa
	CLC
	ADC #$2F60
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC4:
	LDA #(unit_chr)		//Hammer Hammer
	CLC
	ADC #$2FA0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC5:
	LDA #(unit_chr)		//R Jarja
	CLC
	ADC #$3050
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC6:
write_command_paraC7:
	LDA #(unit_chr)		//Bawoo
	CLC
	ADC #$30B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC8:
	LDA #(unit_chr)		//Dreissen
	CLC
	ADC #$3100
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraC9:
	LDA #(unit_chr)		//Quin Mantha
	CLC
	ADC #$3170
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraCA:
	LDA #(unit_chr)		//Doven Wolf
	CLC
	ADC #$3200
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraCB:
	LDA #(unit_chr)		//Geymalk
	CLC
	ADC #$3280
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraCC:
write_command_paraCD:
	LDA #(unit_chr)		//Geara Doga
	CLC
	ADC #$32D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraCE:
write_command_paraCF:
	LDA #(unit_chr)		//Jadg Doga
	CLC
	ADC #$3350
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD0:
	LDA #(unit_chr)		//Sazabi
	CLC
	ADC #$33C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD1:
	LDA #(unit_chr)		//Alpha Azieru
	CLC
	ADC #$3410
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD2:
	LDA #(unit_chr)		//Vigna Ghina
	CLC
	ADC #$3470
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD3:
	LDA #(unit_chr)		//Berga Giros
	CLC
	ADC #$3500
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD4:
	LDA #(unit_chr)		//Raflessia
	CLC
	ADC #$3590
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD5:
	LDA #(unit_chr)		//Mechasaurus Saki
	CLC
	ADC #$3600
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD6:
	LDA #(unit_chr)		//Mechasaurus Bado
	CLC
	ADC #$36C0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD7:
	LDA #(unit_chr)		//Mechasaurus Zai
	CLC
	ADC #$3790
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD8:
	LDA #(unit_chr)		//Mechasaurus Zen 2
	CLC
	ADC #$3850
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraD9:
	LDA #(unit_chr)		//Mechasaurus Dai
	CLC
	ADC #$3920
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraDA:
	LDA #(unit_chr)		//Mechasaurus Sig
	CLC
	ADC #$39E0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraDB:
	LDA #(unit_chr)		//Dablas M2
	CLC
	ADC #$3AA0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraDC:
	LDA #(unit_chr)		//Garada K7
	CLC
	ADC #$3BD0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraDD:
	LDA #(unit_chr)		//Tros D7
	CLC
	ADC #$3CA0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraDE:
	LDA #(unit_chr)		//Rhine X1
	CLC
	ADC #$3D60
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraDF:
	LDA #(unit_chr)		//Jenova M9
	CLC
	ADC #$3DC0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE0:
	LDA #(unit_chr)		//Spartan K5
	CLC
	ADC #$3E90
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE1:
	LDA #(unit_chr)		//Abdra U5
	CLC
	ADC #$3F70
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE2:
	LDA #(unit_chr)		//Goole
	CLC
	ADC #$4040
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE3:
	LDA #(unit_chr)		//Bood
	CLC
	ADC #$4080
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE4:
	LDA #(unit_chr)		//Gratonius
	CLC
	ADC #$40C0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE5:
	LDA #(unit_chr)		//Obelisk
	CLC
	ADC #$41B0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE6:
	LDA #(unit_chr)		//Minifo
	CLC
	ADC #$4270
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE7:
	LDA #(unit_chr)		//Mother barn
	ADC #$42C0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE8:
	LDA #(unit_chr)		//Gilgil
	CLC
	ADC #$4350
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraE9:
	LDA #(unit_chr)		//Gosgos
	CLC
	ADC #$4400
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraEA:
	LDA #(unit_chr)		//Kingori
	CLC
	ADC #$44C0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraEB:
	LDA #(unit_chr)		//Picdron
	CLC
	ADC #$4580
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraEC:
	LDA #(unit_chr)		//Gilgilgun
	CLC
	ADC #$45E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraED:
	LDA #(unit_chr)		//Mecha Gilgilgun
	CLC
	ADC #$4640
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraEE:
	LDA #(unit_chr)		//Dragonsaurus
	CLC
	ADC #$46F0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraEF:
	LDA #(unit_chr)		//Valsion
	CLC
	ADC #$4790
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF0:
	LDA #(unit_chr)		//Drumlo
	CLC
	ADC #$4CD0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF1:
	LDA #(unit_chr)		//Leprechaun
	CLC
	ADC #$47E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF2:
	LDA #(unit_chr)		//Zwarth
	CLC
	ADC #$4860
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF3:
	LDA #(unit_chr)		//Vierres
	CLC
	ADC #$48B0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF4:
	LDA #(unit_chr)		//Wryneck
	CLC
	ADC #$4910
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF5:
	LDA #(unit_chr)		//Bastole
	CLC
	ADC #$4970
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF6:
	LDA #(unit_chr)		//Bubri
	CLC
	ADC #$49C0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF7:
	LDA #(unit_chr)		//Gallaba
	CLC
	ADC #$4A00
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF8:
	LDA #(unit_chr)		//Gran-Garan
	CLC
	ADC #$4A50
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraF9:
	LDA #(unit_chr)		//Goraon
	CLC
	ADC #$4AD0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraFA:
	LDA #(unit_chr)		//Willwips
	CLC
	ADC #$4B20
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraFB:
	LDA #(unit_chr)		//Gyre Garing
	CLC
	ADC #$4B90
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraFC:
	LDA #(unit_chr)		//Spriggan
	CLC
	ADC #$4C20
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraFD:
	LDA #(unit_chr)		//Drome
	CLC
	ADC #$4C90
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraFE:
	LDA #(unit_chr)		//Gante
	CLC
	ADC #$4D20
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_paraFF:
	LDA #(unit_chr)		//Buston
	CLC
	ADC #$4D60
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para100:
	LDA #(unit_chr)		//Gildeen
	CLC
	ADC #$4E30
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para101:
	LDA #(unit_chr)		//Kyodai Sharking
	CLC
	ADC #$4EF0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para102:
	LDA #(unit_chr)		//Mechaboost Domira
	CLC
	ADC #$4FB0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para103:
write_command_para104:
	LDA #(unit_chr)		//Mechaboost Gavitan
	CLC
	ADC #$5080
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para105:
	LDA #(unit_chr)		//Descain
	CLC
	ADC #$5160
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para106:
	LDA #(unit_chr)		//Helldain
	CLC
	ADC #$5220
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para107:
	LDA #(unit_chr)		//Bundock
	CLC
	ADC #$52F0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para108:
	LDA #(unit_chr)		//Zonnekaiser
	CLC
	ADC #$5340
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para109:
	LDA #(unit_chr)		//Gimeria
	CLC
	ADC #$5440
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para10A:
	LDA #(unit_chr)		//God Amon
	CLC
	ADC #$5530
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para10B:
	LDA #(unit_chr)		//Garumus
	CLC
	ADC #$5620
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para10C:
	LDA #(unit_chr)		//Demon
	CLC
	ADC #$56F0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para10D:
	LDA #(unit_chr)		//Big Garuda
	CLC
	ADC #$57A0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para10E:
	LDA #(unit_chr)		//Bundle
	CLC
	ADC #$5820
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para10F:
	LDA #(unit_chr)		//Cuttnal
	CLC
	ADC #$5890
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para110:
	LDA #(unit_chr)		//Kernagul
	CLC
	ADC #$5910
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para111:
	LDA #(unit_chr)		//Gornagool
	CLC
	ADC #$59A0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para112:
	LDA #(unit_chr)		//Zanzibar
	CLC
	ADC #$5A10
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para113:
	LDA #(unit_chr)		//Midea
	CLC
	ADC #$5A80
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para114:
	LDA #(unit_chr)		//Kernagul
	CLC
	ADC #$5AC0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para115:
	LDA #(unit_chr)		//Pazock
	CLC
	ADC #$5B20
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para116:
	LDA #(unit_chr)		//Gaw
	CLC
	ADC #$5B70
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para117:
	LDA #(unit_chr)		//Dabude
	CLC
	ADC #$5BA0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para118:
	LDA #(unit_chr)		//Troy Horse
	CLC
	ADC #$5BF0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para119:
	LDA #(unit_chr)		//Graf Zeppelin
	CLC
	ADC #$5C70
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para11A:
	LDA #(unit_chr)		//S Gundam
	CLC
	ADC #$5D10
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para11B:
	LDA #(unit_chr)		//G Cruiser
	CLC
	ADC #$5D70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para11C:
	LDA #(unit_chr)		//Alexandria
	CLC
	ADC #$5DE0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para11D:
	LDA #(unit_chr)		//Musai kai
	CLC
	ADC #$5E60
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para11E:
	LDA #(unit_chr)		//Argama
	CLC
	ADC #$5ED0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para11F:
	LDA #(unit_chr)		//Irish
	CLC
	ADC #$5F20
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para120:
	LDA #(unit_chr)		//Ex-S Gundam
	CLC
	ADC #$5F60
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para121:
	LDA #(unit_chr)		//Nahel Argama
	CLC
	ADC #$5FF0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para122:
	LDA #(unit_chr)		//Endra
	CLC
	ADC #$6080
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para123:
	LDA #(unit_chr)		//Sadarahn
	CLC
	ADC #$60C0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para124:
	LDA #(unit_chr)		//Rewloola
	CLC
	ADC #$6130
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para125:
	LDA #(unit_chr)		//Ra Cailum
	CLC
	ADC #$6190
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para126:
	LDA #(unit_chr)		//Zamouth-Garr
	CLC
	ADC #$6200
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para127:
	LDA #(unit_chr)		//Garoica
	CLC
	ADC #$62A0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para128:
	LDA #(unit_chr)		//Kaleitsed
	CLC
	ADC #$6300
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para129:
	LDA #(unit_chr)		//Restrail
	CLC
	ADC #$6370
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para12A:
	LDA #(unit_chr)		//Glassidu-lu
	CLC
	ADC #$63D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para12B:
	LDA #(unit_chr)		//Rest Gransh
	CLC
	ADC #$6450
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para12C:
	LDA #(unit_chr)		//Zeranio
	CLC
	ADC #$64D0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para12D:
	LDA #(unit_chr)		//Geios Glud
	CLC
	ADC #$6530
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para12E:
	LDA #(unit_chr)		//Liege Geios
	CLC
	ADC #$65A0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para12F:
	LDA #(unit_chr)		//Baran Schnile
	CLC
	ADC #$6620
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para130:
	LDA #(unit_chr)		//Gespenst mkII
	CLC
	ADC #$66C0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para131:
	LDA #(unit_chr)		//L-Gaim
	CLC
	ADC #$6750
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para132:
	LDA #(unit_chr)		//L-Gaim mkII
	CLC
	ADC #$6750
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para133:
	LDA #(unit_chr)		//Proller
	CLC
	ADC #$67D0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para134:
	LDA #(unit_chr)		//Dizard
	CLC
	ADC #$6820
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para135:
	LDA #(unit_chr)		//Auge
	CLC
	ADC #$6870
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para136:
	LDA #(unit_chr)		//Aug
	CLC
	ADC #$68B0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para137:
	LDA #(unit_chr)		//Ash Ra Tempel
	CLC
	ADC #$68E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para138:
	LDA #(unit_chr)		//Calvary Tempel
	CLC
	ADC #$6970
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para139:
	LDA #(unit_chr)		//Bash
	CLC
	ADC #$6A10
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para13A:
	LDA #(unit_chr)		//Atol
	CLC
	ADC #$2400
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS	
write_command_para13B:
	LDA #(unit_chr)		//G-Roon
	CLC
	ADC #$6A50
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para13C:
	LDA #(unit_chr)		//Saloons
	CLC
	ADC #$6AA0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para13D:
	LDA #(unit_chr)		//Aaron
	CLC
	ADC #$6AF0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para13E:
	LDA #(unit_chr)		//Shin Getter1
	CLC
	ADC #$6B30
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para13F:
	LDA #(unit_chr)		//Shin Getter2
	CLC
	ADC #$6BD0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para140:
	LDA #(unit_chr)		//Shin Getter3
	CLC
	ADC #$6C70
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para141:
	LDA #(unit_chr)		//Gayrahm
	CLC
	ADC #$6D10
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para142:
	LDA #(unit_chr)		//Gundam
	CLC
	ADC #$6D70
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para143:
	LDA #(unit_chr)		//Gundam mkII
	CLC
	ADC #$6D70
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para144:
	LDA #(unit_chr)		//G Defenser
	CLC
	ADC #$6DF0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para145:
	LDA #(unit_chr)		//Super Gundam
	CLC
	ADC #$7F80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para146:
	LDA #(unit_chr)		//Nu Gundam
	CLC
	ADC #$7F20
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para147:
	LDA #(unit_chr)		//Kyuu Zaku
	CLC
	ADC #$6E70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para148:
	LDA #(unit_chr)		//Sarbine
	CLC
	ADC #$6ED0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para149:
	LDA #(unit_chr)		//Zwauth
	CLC
	ADC #$6F30
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para14A:
	LDA #(unit_chr)		//Texas Mac
	CLC
	ADC #$6F80
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para14B:
	LDA #(unit_chr)		//Adzam
	CLC
	ADC #$6FF0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para14C:
	LDA #(unit_chr)		//Nise Psybuster
	CLC
	ADC #$7040
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para14D:
	LDA #(unit_chr)		//Nightingale
	CLC
	ADC #$70E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para14E:
	LDA #(unit_chr)		//Nuvel Dizard
	CLC
	ADC #$7160
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para14F:
	LDA #(unit_chr)		//Ankoku Taishogun
	CLC
	ADC #$71E0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para150:
	LDA #(unit_chr)		//Hardias
	CLC
	ADC #$72A0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para151:
	LDA #(unit_chr)		//Dreiud
	CLC
	ADC #$7300
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para152:
	LDA #(unit_chr)		//Z Gundam
	CLC
	ADC #$7350
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para153:
	LDA #(unit_chr)		//Wave Rider
	CLC
	ADC #$73B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para154:
	LDA #(unit_chr)		//ZZ Gundam
	CLC
	ADC #$7430
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para155:
	LDA #(unit_chr)		//G Fortress
	CLC
	ADC #$74A0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para156:
	LDA #(unit_chr)		//Enbanju Jinjin
	CLC
	ADC #$7520
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para157:
	LDA #(unit_chr)		//Enbanju Dekdek
	CLC
	ADC #$75D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para158:
	LDA #(unit_chr)		//Sentouju Dante
	CLC
	ADC #$7680
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para159:
	LDA #(unit_chr)		//Sentouju Zugahr
	CLC
	ADC #$7730
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para15A:
	LDA #(unit_chr)		//Juma Taishogun
	CLC
	ADC #$77F0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para15B:
	LDA #(unit_chr)		//Graydon
	CLC
	ADC #$78B0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para15C:
	LDA #(unit_chr)		//Garunrol
	CLC
	ADC #$7910
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para15D:
	LDA #(unit_chr)		//Greia
	CLC
	ADC #$7970
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para15E:
	LDA #(unit_chr)		//Mechasaurus Zu
	CLC
	ADC #$79D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para15F:
	LDA #(unit_chr)		//Botune
	CLC
	ADC #$7A80
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para160:
	LDA #(unit_chr)		//Dogosse Giar
	CLC
	ADC #$7AD0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para161:
	LDA #(unit_chr)		//Audhumla
	CLC
	ADC #$7B60
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para162:
	LDA #(unit_chr)		//Thudree
	CLC
	ADC #$7BC0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para163:
	LDA #(unit_chr)		//Hyper Leprechaun
	CLC
	ADC #$7C20
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para164:
	LDA #(unit_chr)		//Hyper Wryneck
	CLC
	ADC #$7CE0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para165:
	LDA #(unit_chr)		//Hyper Gallaba
	CLC
	ADC #$7D80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para166:
	LDA #(unit_chr)		//Mobile Suit
	CLC
	ADC #$7E10
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para167:
	LDA #(unit_chr)		//Mobile Armor
	CLC
	ADC #$7E90
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
	
write_command_para168:
	LDA #(pilot_chr)		//Cham Faw
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para169:
	LDA #(pilot_chr)		//Belle Arl
	CLC
	ADC #$0070
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para16A:
	LDA #(pilot_chr)		//Ell Fino
	CLC
	ADC #$00D0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para16B:
	LDA #(pilot_chr)		//Lilith Faw
	CLC
	ADC #$0120
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para16C:
	LDA #(pilot_chr)		//Silky Mau
	CLC
	ADC #$0190
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para16D:
	LDA #(pilot_chr)		//Yousei6
	CLC
	ADC #$01F0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para16E:
	LDA #(pilot_chr)		//Jacking King
	CLC
	ADC #$0270
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para16F:
	LDA #(pilot_chr)		//Mary King
	CLC
	ADC #$02E0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para170:
	LDA #(pilot_chr)		//Nagare Hyoma
	CLC
	ADC #$0350
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para171:
	LDA #(pilot_chr)		//Jin Hayato
	CLC
	ADC #$03E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para172:
	LDA #(pilot_chr)		//Kuruma Benkei
	CLC
	ADC #$0460
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para173:
	LDA #(pilot_chr)		//Hojo Shingo
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para174:
	LDA #(pilot_chr)		//Remy Shimada
	CLC
	ADC #$0580
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para175:
	LDA #(pilot_chr)		//Kily Gaglay
	CLC
	ADC #$0610
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para176:
	LDA #(pilot_chr)		//Jin Kappei
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para177:
	LDA #(pilot_chr)		//Kamie Uchuta
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para178:
	LDA #(pilot_chr)		//Kamikita Keiko
	CLC
	ADC #$0790
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para179:
	LDA #(pilot_chr)		//Fujiwara Shinobu
	CLC
	ADC #$0830
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para17A:
	LDA #(pilot_chr)		//Yuki Sara
	CLC
	ADC #$08F0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para17B:
	LDA #(pilot_chr)		//Shikibu Masato
	CLC
	ADC #$0960
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para17C:
	LDA #(pilot_chr)		//Shiba Ryou
	CLC
	ADC #$0A10
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para17D:
	LDA #(pilot_chr)		//Aoi Hyoma
	CLC
	ADC #$0A90
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para17E:
	LDA #(pilot_chr)		//Naniwa Juzo
	CLC
	ADC #$0B00
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para17F:
	LDA #(pilot_chr)		//Nishikawa Daisaku
	CLC
	ADC #$0B90
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para180:
	LDA #(pilot_chr)		//Namba Chizuru
	CLC
	ADC #$0C60
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para181:
	LDA #(pilot_chr)		//Kita Kosuke
	CLC
	ADC #$0D20
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para182:
	LDA #(pilot_chr)		//Gilliam Yeager
	CLC
	ADC #$0DA0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para183:
	LDA #(pilot_chr)		//Sho Zama
	CLC
	ADC #$0E40
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para184:
	LDA #(pilot_chr)		//Masaki Ando
	CLC
	ADC #$0EA0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para185:
	LDA #(pilot_chr)		//Ryune Zoldark
	CLC
	ADC #$0F30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para186:
	LDA #(pilot_chr)		//Shu Shirakawa
	CLC
	ADC #$0FC0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para187:
	LDA #(pilot_chr)		//Quattro Vageena
	CLC
	ADC #$1060
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para188:
	LDA #(pilot_chr)		//Bright Noa
	CLC
	ADC #$1120
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para189:
	LDA #(pilot_chr)		//Hayato Kobayashi
	CLC
	ADC #$11A0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para18A:
	LDA #(pilot_chr)		//Kai Siden
	CLC
	ADC #$1260
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para18B:
	LDA #(pilot_chr)		//Matilda Ajan
	CLC
	ADC #$12E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para18C:
	LDA #(pilot_chr)		//Sayla Mass
	CLC
	ADC #$1370
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para18D:
	LDA #(pilot_chr)		//Wackein
	CLC
	ADC #$13E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para18E:
	LDA #(pilot_chr)		//Tianem
	CLC
	ADC #$1440
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para18F:
	LDA #(pilot_chr)		//Emma Sheen
	CLC
	ADC #$1490
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para190:
	LDA #(pilot_chr)		//Torres
	CLC
	ADC #$1510
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para191:
	LDA #(pilot_chr)		//Fa Yuiri
	CLC
	ADC #$1560
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para192:
	LDA #(pilot_chr)		//Katsu Kobayashi
	CLC
	ADC #$15C0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para193:
	LDA #(pilot_chr)		//Fou Murasame
	CLC
	ADC #$1670
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para194:
	LDA #(pilot_chr)		//Beltorch Chika
	CLC
	ADC #$1720
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para195:
	LDA #(pilot_chr)		//Kely Layzner
	CLC
	ADC #$17A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para196:
	LDA #(pilot_chr)		//Henken Beckener
	CLC
	ADC #$1830
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para197:
	LDA #(pilot_chr)		//Blex Forer
	CLC
	ADC #$18E0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para198:
	LDA #(pilot_chr)		//Roux Louka
	CLC
	ADC #$1950
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para199:
	LDA #(pilot_chr)		//Elpee Puru
	CLC
	ADC #$19D0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para19A:
	LDA #(pilot_chr)		//Purutz
	CLC
	ADC #$1A40
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para19B:
	LDA #(pilot_chr)		//Leina Ashta
	CLC
	ADC #$1A90
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para19C:
	LDA #(pilot_chr)		//Beecha Oleg
	CLC
	ADC #$1B20
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para19D:
	LDA #(pilot_chr)		//Mondo Agake
	CLC
	ADC #$1BA0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para19E:
	LDA #(pilot_chr)		//Elle Vianno
	CLC
	ADC #$1C30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para19F:
	LDA #(pilot_chr)		//Iino Abbav
	CLC
	ADC #$1CB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A0:
	LDA #(pilot_chr)		//Emary Ounce
	CLC
	ADC #$1D30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A1:
	LDA #(pilot_chr)		//Quess Paraya
	CLC
	ADC #$1DC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A2:
	LDA #(pilot_chr)		//Chan Agi
	CLC
	ADC #$1E50
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A3:
	LDA #(pilot_chr)		//Kayra Su
	CLC
	ADC #$1EB0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A4:
	LDA #(pilot_chr)		//Hathaway Noa
	CLC
	ADC #$1F10
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A5:
	LDA #(pilot_chr)		//Christina Mckenzie
	CLC
	ADC #$1FA0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A6:
	LDA #(pilot_chr)		//Bernard Wiseman
	CLC
	ADC #$2080
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A7:
	LDA #(pilot_chr)		//Cecily Farchild
	CLC
	ADC #$2140
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A8:
	LDA #(pilot_chr)		//Nina Purpleton
	CLC
	ADC #$21F0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1A9:
	LDA #(pilot_chr)		//Anavel Gato
	CLC
	ADC #$2290
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1AA:
	LDA #(pilot_chr)		//Chuck Keith
	CLC
	ADC #$2310
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1AB:
	LDA #(pilot_chr)		//Bernando Monsha
	CLC
	ADC #$2390
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1AC:
	LDA #(pilot_chr)		//Yumi Sayaka
	CLC
	ADC #$2440
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1AD:
	LDA #(pilot_chr)		//Ramthus Hatha
	CLC
	ADC #$24D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1AE:
	LDA #(pilot_chr)		//Boss
	CLC
	ADC #$2570
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1AF:
	LDA #(pilot_chr)		//Honoo Jun
	CLC
	ADC #$25B0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B0:
	LDA #(pilot_chr)		//Maria Fleed
	CLC
	ADC #$2620
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B1:
	LDA #(pilot_chr)		//Makiba Hikaru
	CLC
	ADC #$26A0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B2:
	LDA #(pilot_chr)		//Saotome Michiru
	CLC
	ADC #$2740
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B3:
	LDA #(pilot_chr)		//Dangel Kupa
	CLC
	ADC #$2800
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B4:
	LDA #(pilot_chr)		//Jinguji Chikara
	CLC
	ADC #$2890
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B5:
	LDA #(pilot_chr)		//Asuka Rei
	CLC
	ADC #$2940
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B6:
	LDA #(pilot_chr)		//Sakurano Mari
	CLC
	ADC #$29B0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B7:
	LDA #(pilot_chr)		//Amuro Ray
	CLC
	ADC #$2A50
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B8:
	LDA #(pilot_chr)		//Camille Vidan
	CLC
	ADC #$2AC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1B9:
	LDA #(pilot_chr)		//Judau Ashta
	CLC
	ADC #$2B50
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1BA:
	LDA #(pilot_chr)		//Seebook Arno
	CLC
	ADC #$2BE0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1BB:
	LDA #(pilot_chr)		//Kou Uraki
	CLC
	ADC #$2C70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1BC:
	LDA #(pilot_chr)		//Kabuto Kouji
	CLC
	ADC #$2CD0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1BD:
	LDA #(pilot_chr)		//Kamikita Heizaemon
	CLC
	ADC #$2D50
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1BE:
	LDA #(pilot_chr)		//Jin Umee
	CLC
	ADC #$2E30
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1BF:
	LDA #(pilot_chr)		//Jin Gengorou
	CLC
	ADC #$2EA0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C0:
	LDA #(pilot_chr)		//Jin Ichitarou
	CLC
	ADC #$2F20
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C1:
	LDA #(pilot_chr)		//Garison Tokita
	CLC
	ADC #$2FB0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C2:
	LDA #(pilot_chr)		//Beautiful Tachibana
	CLC
	ADC #$3060
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C3:
	LDA #(pilot_chr)		//Sanjou Reika
	CLC
	ADC #$3140
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C4:
	LDA #(pilot_chr)		//Toda Totta
	CLC
	ADC #$31C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C5:
	LDA #(pilot_chr)		//Tsurugi Tetsuya
	CLC
	ADC #$3240
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C6:
	LDA #(pilot_chr)		//Yuzuki Kyoshirou
	CLC
	ADC #$3300
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C7:
	LDA #(pilot_chr)		//Izumi Nana
	CLC
	ADC #$33B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C8:
	LDA #(pilot_chr)		//Duke Fleed
	CLC
	ADC #$3430
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1C9:
	LDA #(pilot_chr)		//Marvel Frozen
	CLC
	ADC #$34A0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1CA:
	LDA #(pilot_chr)		//Hibiki Akira
	CLC
	ADC #$3540
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1CB:
	LDA #(pilot_chr)		//Nie Givun
	CLC
	ADC #$35D0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1CC:
	LDA #(pilot_chr)		//Keen Kiss
	CLC
	ADC #$3640
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1CD:
	LDA #(pilot_chr)		//Ciela Lapana
	CLC
	ADC #$36B0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1CE:
	LDA #(pilot_chr)		//Elle Hum
	CLC
	ADC #$3740
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1CF:
	LDA #(pilot_chr)		//Rimul Luft
	CLC
	ADC #$37A0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D0:
	LDA #(pilot_chr)		//Eve Tamari
	CLC
	ADC #$3810
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D1:
	LDA #(pilot_chr)		//Haran Banjou
	CLC
	ADC #$3890
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D2:
	LDA #(pilot_chr)		//Ryuzaki Kazuya
	CLC
	ADC #$3910
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D3:
	LDA #(pilot_chr)		//Rempou Heishi
	CLC
	ADC #$39B0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D4:
	LDA #(pilot_chr)		//Byston Well Heishi
	CLC
	ADC #$3A50
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D5:
	LDA #(pilot_chr)		//Tytti Norback
	CLC
	ADC #$3B00
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D6:
	LDA #(pilot_chr)		//Juma Shogun
	CLC
	ADC #$9000
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D7:
	LDA #(pilot_chr)		//South Burining
	CLC
	ADC #$90C0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D8:
	LDA #(pilot_chr)		//Long
	CLC
	ADC #$3BA0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1D9:
	LDA #(pilot_chr)		//Presia Xenosakis
	CLC
	ADC #$3C50
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1DA:
	LDA #(pilot_chr)		//Mio Sasuga
	CLC
	ADC #$3D10
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1DB:
	LDA #(pilot_chr)		//Titans Hei
	CLC
	ADC #$3D90
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1DC:
	LDA #(pilot_chr)		//Monica Bilsea
	CLC
	ADC #$3E10
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1DD:
	LDA #(pilot_chr)		//Safine Grace
	CLC
	ADC #$3EB0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1DE:
	LDA #(pilot_chr)		//Gadem
	CLC
	ADC #$3F40
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1DF:
	LDA #(pilot_chr)		//Rambal Ral
	CLC
	ADC #$3F80
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E0:
	LDA #(pilot_chr)		//Crowley Hamon
	CLC
	ADC #$3FE0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E1:
	LDA #(pilot_chr)		//Clamp
	CLC
	ADC #$4080
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E2:
	LDA #(pilot_chr)		//Gaia
	CLC
	ADC #$40E0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E3:
	LDA #(pilot_chr)		//Mash
	CLC
	ADC #$4120
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E4:
	LDA #(pilot_chr)		//Ortega
	CLC
	ADC #$4160
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E5:
	LDA #(pilot_chr)		//Challia Bull
	CLC
	ADC #$41B0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E6:
	LDA #(pilot_chr)		//Lalah Sune
	CLC
	ADC #$4220
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E7:
	LDA #(pilot_chr)		//Gadi Nkinze
	CLC
	ADC #$4290
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E8:
	LDA #(pilot_chr)		//Kacricon Cacooler
	CLC
	ADC #$4310
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1E9:
	LDA #(pilot_chr)		//Sara Zabiarov
	CLC
	ADC #$43D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1EA:
	LDA #(pilot_chr)		//Gates Capa
	CLC
	ADC #$4480
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1EB:
	LDA #(pilot_chr)		//Jerid Messa
	CLC
	ADC #$4500
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1EC:
	LDA #(pilot_chr)		//Jamaican Daninghan
	CLC
	ADC #$4580
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1ED:
	LDA #(pilot_chr)		//Jamitov Hymen
	CLC
	ADC #$4660
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1EE:
	LDA #(pilot_chr)		//Haman Karn
	CLC
	ADC #$4700
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1EF:
	LDA #(pilot_chr)		//Buran Blutach
	CLC
	ADC #$4780
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F0:
	LDA #(pilot_chr)		//Ben Wooder
	CLC
	ADC #$4820
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F1:
	LDA #(pilot_chr)		//Mauar Pharaoh
	CLC
	ADC #$48A0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F2:
	LDA #(pilot_chr)		//Mineva Zabi
	CLC
	ADC #$4940
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F3:
	LDA #(pilot_chr)		//Lila Milla Rira
	CLC
	ADC #$49D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F4:
	LDA #(pilot_chr)		//Yazan Gable
	CLC
	ADC #$4A70
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F5:
	LDA #(pilot_chr)		//Rosamia Badam
	CLC
	ADC #$4AF0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F6:
	LDA #(pilot_chr)		//Mashymre Cello
	CLC
	ADC #$4B90
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F7:
	LDA #(pilot_chr)		//Illia Pazom
	CLC
	ADC #$4C30
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F8:
	LDA #(pilot_chr)		//Chara Son
	CLC
	ADC #$4CA0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1F9:
	LDA #(pilot_chr)		//Glemy Toto
	CLC
	ADC #$4D20
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1FA:
	LDA #(pilot_chr)		//Gotton Go
	CLC
	ADC #$4D90
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1FB:
	LDA #(pilot_chr)		//Nie Ghiren
	CLC
	ADC #$4E00
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1FC:
	LDA #(pilot_chr)		//Lance Ghiren
	CLC
	ADC #$4E80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1FD:
	LDA #(pilot_chr)		//Rakan Dahkaran
	CLC
	ADC #$4F10
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1FE:
	LDA #(pilot_chr)		//Gyunei Guss
	CLC
	ADC #$4FB0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para1FF:
	LDA #(pilot_chr)		//Nanai Migel
	CLC
	ADC #$5040
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para200:
	LDA #(pilot_chr)		//Rezin Schneider
	CLC
	ADC #$50D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para201:
	LDA #(pilot_chr)		//Zabine Chareux
	CLC
	ADC #$5180
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para202:
	LDA #(pilot_chr)		//Annamarie Bourget
	CLC
	ADC #$5230
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para203:
	LDA #(pilot_chr)		//Dorel Ronah
	CLC
	ADC #$5300
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para204:
	LDA #(pilot_chr)		//Carozzo Ronah
	CLC
	ADC #$5380
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para205:
	LDA #(pilot_chr)		//Steiner
	CLC
	ADC #$5420
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para206:
	LDA #(pilot_chr)		//Cima Garahau
	CLC
	ADC #$54D0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para207:
	LDA #(pilot_chr)		//Ashura danshaku
	CLC
	ADC #$5560
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para208:
	LDA #(pilot_chr)		//Blocken hashaku
	CLC
	ADC #$5610
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para209:
	LDA #(pilot_chr)		//Dr.Hell
	CLC
	ADC #$56B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para20A:
	LDA #(pilot_chr)		//Sharkin
	CLC
	ADC #$5700
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para20B:
	LDA #(pilot_chr)		//Aeug hei
	CLC
	ADC #$5760
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para20C:
	LDA #(pilot_chr)		//Balao
	CLC
	ADC #$5800
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para20D:
	LDA #(pilot_chr)		//Garuda
	CLC
	ADC #$5840
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para20E:
	LDA #(pilot_chr)		//Mia
	CLC
	ADC #$5890
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para20F:
	LDA #(pilot_chr)		//Orleana
	CLC
	ADC #$58D0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para210:
	LDA #(pilot_chr)		//Killer the Butcher
	CLC
	ADC #$5920
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para211:
	LDA #(pilot_chr)		//Korosu
	CLC
	ADC #$59E0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para212:
	LDA #(pilot_chr)		//Don Zauther
	CLC
	ADC #$5A30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para213:
	LDA #(pilot_chr)		//Richter
	CLC
	ADC #$5AC0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para214:
	LDA #(pilot_chr)		//Bullbous
	CLC
	ADC #$5B20
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para215:
	LDA #(pilot_chr)		//Ryza
	CLC
	ADC #$5B70
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para216:
	LDA #(pilot_chr)		//Izam
	CLC
	ADC #$5BA0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para217:
	LDA #(pilot_chr)		//Leonardo Bundle
	CLC
	ADC #$5BD0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para218:
	LDA #(pilot_chr)		//Suguni Cuttnal
	CLC
	ADC #$5C80
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para219:
	LDA #(pilot_chr)		//Yatat La Cuttnal
	CLC
	ADC #$5D20
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para21A:
	LDA #(pilot_chr)		//Todo Guinness
	CLC
	ADC #$5DD0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para21B:
	LDA #(pilot_chr)		//Burne Banning
	CLC
	ADC #$5E70
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para21C:
	LDA #(pilot_chr)		//Kokukishi
	CLC
	ADC #$5F20
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para21D:
	LDA #(pilot_chr)		//Drake Luft
	CLC
	ADC #$5F80
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para21E:
	LDA #(pilot_chr)		//Shot Weapon
	CLC
	ADC #$6000
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para21F:
	LDA #(pilot_chr)		//Bishot Hatta
	CLC
	ADC #$6090
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para220:
	LDA #(pilot_chr)		//Luther Luft
	CLC
	ADC #$6120
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para221:
	LDA #(pilot_chr)		//Musy Poe
	CLC
	ADC #$61A0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para222:
	LDA #(pilot_chr)		//Z Light
	CLC
	ADC #$6200
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para223:
	LDA #(pilot_chr)		//Torust Chesilenko
	CLC
	ADC #$6250
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para224:
	LDA #(pilot_chr)		//Jeryll Coochibie
	CLC
	ADC #$6320
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para225:
	LDA #(pilot_chr)		//Jeryll Coochibie
	CLC
	ADC #$63D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para226:
	LDA #(pilot_chr)		//Fay Chenka
	CLC
	ADC #$6450
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para227:
	LDA #(pilot_chr)		//Garalia Nyamhee
	CLC
	ADC #$64D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para228:
	LDA #(pilot_chr)		//Galamity Mangan
	CLC
	ADC #$6580
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para229:
	LDA #(pilot_chr)		//Daa
	CLC
	ADC #$6630
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para22A:
	LDA #(pilot_chr)		//Het
	CLC
	ADC #$6660
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para22B:
	LDA #(unit_chr)		//Ankoku Taishogun
	CLC
	ADC #$71F0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para22C:
	LDA #(pilot_chr)		//Akuryou Hardias
	CLC
	ADC #$6690
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para22D:
	LDA #(pilot_chr)		//Hachuu Dreiud
	CLC
	ADC #$6740
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para22E:
	LDA #(pilot_chr)		//DC heishi
	CLC
	ADC #$6820
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para22F:
	LDA #(pilot_chr)		//Elite hei
	CLC
	ADC #$6880
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para230:
	LDA #(pilot_chr)		//Jinkou chinou
	CLC
	ADC #$68F0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para231:
	LDA #(pilot_chr)		//Jinkou chinou kai
	CLC
	ADC #$68F0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para232:
	LDA #(pilot_chr)		//Guest hei
	CLC
	ADC #$6A00
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para233:
	LDA #(pilot_chr)		//Guest totsugeki hei
	CLC
	ADC #$6A80
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para234:
	LDA #(pilot_chr)		//Guest shineitai
	CLC
	ADC #$6B50
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para235:
	LDA #(pilot_chr)		//Poseidal hei
	CLC
	ADC #$6C10
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para236:
	LDA #(pilot_chr)		//Poseidal shineitai
	CLC
	ADC #$6CA0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para237:
	LDA #(pilot_chr)		//Aiguille Delaz
	CLC
	ADC #$6D80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para238:
	LDA #(pilot_chr)		//Daba Myroad
	CLC
	ADC #$6E10
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para239:
	LDA #(pilot_chr)		//Gawha Leccee
	CLC
	ADC #$6EA0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para23A:
	LDA #(pilot_chr)		//Mirau Kyao
	CLC
	ADC #$6F30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para23B:
	LDA #(pilot_chr)		//Fannelia Amu
	CLC
	ADC #$6FB0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para23C:
	LDA #(pilot_chr)		//Hatchia Motchia
	CLC
	ADC #$7040
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para23D:
	LDA #(pilot_chr)		//Gavlet Gablae
	CLC
	ADC #$7100
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para23E:
	LDA #(pilot_chr)		//Amandara Kamandara
	CLC
	ADC #$7190
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para23F:
	LDA #(pilot_chr)		//Oldona Poseidal
	CLC
	ADC #$7270
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para240:
	LDA #(pilot_chr)		//Nei Mo Han
	CLC
	ADC #$7320
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para241:
	LDA #(pilot_chr)		//Giwaza Lowaw
	CLC
	ADC #$7390
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para242:
	LDA #(pilot_chr)		//Full Flat
	CLC
	ADC #$7430
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para243:
	LDA #(pilot_chr)		//Kwasan Olivie
	CLC
	ADC #$7490
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para244:
	LDA #(pilot_chr)		//Rockley Ron
	CLC
	ADC #$7530
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para245:
	LDA #(pilot_chr)		//Anton Land
	CLC
	ADC #$75B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para246:
	LDA #(pilot_chr)		//Heckler Mauze
	CLC
	ADC #$7630
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para247:
	LDA #(pilot_chr)		//Lily Hasshi
	CLC
	ADC #$76C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para248:
	LDA #(pilot_chr)		//Lily Hasshi
	CLC
	ADC #$7740
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para249:
	LDA #(pilot_chr)		//Wazan Loon
	CLC
	ADC #$77B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para24A:
	LDA #(pilot_chr)		//Maph Mactomin
	CLC
	ADC #$7830
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para24B:
	LDA #(pilot_chr)		//Barn Gania Killas
	CLC
	ADC #$78D0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para24C:
	LDA #(pilot_chr)		//Ted Dibilase
	CLC
	ADC #$7990
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para24D:
	LDA #(pilot_chr)		//Glofis Raclayne
	CLC
	ADC #$7A20
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para24E:
	LDA #(pilot_chr)		//Justine Shaflawas
	CLC
	ADC #$7AC0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para24F:
	LDA #(pilot_chr)		//Zebris Furszewa
	CLC
	ADC #$7B90
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para250:
	LDA #(pilot_chr)		//Tiniquet Zezenan
	CLC
	ADC #$7C60
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para251:
	LDA #(pilot_chr)		//Mechibos
	CLC
	ADC #$7D20
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para252:
	LDA #(pilot_chr)		//Terius Bilsea
	CLC
	ADC #$7D90
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para253:
	LDA #(pilot_chr)		//Kyouka hei
	CLC
	ADC #$7E30
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para254:
	LDA #(pilot_chr)		//Miwa Sakimori
	CLC
	ADC #$7ED0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para255:
	LDA #(pilot_chr)		//Chou jinkou chinou
	CLC
	ADC #$7F70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para256:
	LDA #(ability_chr)		//kyouka part
	CLC
	ADC #$0800
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para257:
	LDA #(ability_chr)		//kuu-riku-chichuu
	CLC
	ADC #$09C0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para258:
write_command_para25F:
	LDA #(ability_chr)		//Type riku
	CLC
	ADC #$0A60
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para259:
	LDA #(ability_chr)		//Type kuu-riku
	CLC
	ADC #$0A90
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para25A:
write_command_para263:
	LDA #(ability_chr)		//Type kuu
	CLC
	ADC #$0B00
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para25B:
	LDA #(ability_chr)		//Type sui-riku
	CLC
	ADC #$0B40
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para25C:
	LDA #(ability_chr)		//Type sui-riku-kuu
	CLC
	ADC #$0BA0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para25D:
	LDA #(ability_chr)		//Type riku-chichuu
	CLC
	ADC #$0C40
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para25E:
	LDA #(ability_chr)		//Type sui
	CLC
	ADC #$0C90
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para260:
	LDA #(ability_chr)		//Type uchuu
	CLC
	ADC #$0CC0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para261:
	LDA #(ability_chr)		//Type kuu-chichuu
	CLC
	ADC #$0D00
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para262:
	LDA #(ability_chr)		//Type kuu-kai
	CLC
	ADC #$0D70
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para264:
	LDA #(ability_chr)		//kouseinou radar
	CLC
	ADC #$0DE0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para265:
	LDA #(ability_chr)		//Minovsky craft
	CLC
	ADC #$0EB0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para266:
	LDA #(ability_chr)		//Booster
	CLC
	ADC #$0F50
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para267:
	LDA #(ability_chr)		//Mega booster
	CLC
	ADC #$0FA0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para268:
	LDA #(ability_chr)		//Apogee motor
	CLC
	ADC #$1040
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para269:
	LDA #(ability_chr)		//Fatima
	CLC
	ADC #$10E0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para26A:
	LDA #(ability_chr)		//ALICE
	CLC
	ADC #$1130
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para26B:
	LDA #(ability_chr)		//Psycho frame
	CLC
	ADC #$1170
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para26C:
	LDA #(ability_chr)		//Bio Sensor
	CLC
	ADC #$1200
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para26D:
	LDA #(ability_chr)		//Magnet coating
	CLC
	ADC #$1270
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para26E:
	LDA #(ability_chr)		//I-field Generator
	CLC
	ADC #$1310
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para26F:
	LDA #(ability_chr)		//Chobham armor
	CLC
	ADC #$13B0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para270:
	LDA #(ability_chr)		//Hybrid armor
	CLC
	ADC #$1440
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para271:
	LDA #(ability_chr)		//Barrier generator
	CLC
	ADC #$14B0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para272:
	LDA #(ability_chr)		//Anti Beam coating
	CLC
	ADC #$1560
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para273:
	LDA #(ability_chr)		//Repair kit
	CLC
	ADC #$1650
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para274:
	LDA #(ability_chr)		//Propellen tank
	CLC
	ADC #$16D0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para275:
	LDA #(ability_chr)		//Propellen tank S
	CLC
	ADC #$16D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para276:
	LDA #(ability_chr)		//Tokushu nouryoku
	CLC
	ADC #$17D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para277:
	LDA #(ability_chr)		//Size
	CLC
	ADC #$18C0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para278:
	LDA #(ability_chr)		//Shield
	CLC
	ADC #$1880
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para279:
	LDA #(ability_chr)		//no Shield
	CLC
	ADC #$08C0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para27A:
	LDA #(ability_chr)		//have Shield
	CLC
	ADC #$1940
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para27B:
	LDA #(ability_chr)		//Size S
	CLC
	ADC #$1960
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para27C:
	LDA #(ability_chr)		//Size M
	CLC
	ADC #$1990
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para27D:
	LDA #(ability_chr)		//Size L
	CLC
	ADC #$19D0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para27E:
	LDA #(ability_chr)		//Size LL
	CLC
	ADC #$19F0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para27F:
	LDA #(ability_chr)		//Chikei
	CLC
	ADC #$18E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para280:
	LDA #(ability_chr)		//Chikei: kuu
	CLC
	ADC #$08C0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para281:
	LDA #(ability_chr)		//Chikei: riku
	CLC
	ADC #$0950
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para282:
	LDA #(ability_chr)		//Chikei: umi
	CLC
	ADC #$0930
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para283:
	LDA #(ability_chr)		//Chikei: uchuu
	CLC
	ADC #$0CC0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para284:
	LDA #(unit_chr)		//Huckebein
	CLC
	ADC #$8810
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para285:
	LDA #(unit_chr)		//Grungust
	CLC
	ADC #$8880
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para286:
	LDA #(unit_chr)		//Wing Gust
	CLC
	ADC #$88F0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para287:
	LDA #(unit_chr)		//Gust Lander
	CLC
	ADC #$8960
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(unit_chr>>16)
	STA $0D64
	RTS
write_command_para288:
	LDA #(ability_chr)		//bukipanel: bukimei
	CLC
	ADC #$1A40
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para289:
	LDA #(ability_chr)		//bukipanel: bukimei
	CLC
	ADC #$1AB0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para28A:
	LDA #(ability_chr)		//bukipanel: shatei
	CLC
	ADC #$1AF0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para28B:
	LDA #(ability_chr)		//bukipanel: meichuu
	CLC
	ADC #$1B20
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para28C:
	LDA #(ability_chr)		//bukipanel: zandan
	CLC
	ADC #$1B60
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para28D:
	LDA #(ability_chr)		//bukipanel: chikei
	CLC
	ADC #$1BB0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para28E:
	LDA #(ability_chr)		//bukipanel: chikei
	CLC
	ADC #$1C00
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para28F:
	LDA #(ability_chr)		//bukipanel: shouhi EN
	CLC
	ADC #$1C70
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para290:
	LDA #(ability_chr)		//bukipanel: hitsuyou ginou
	CLC
	ADC #$1CC0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para291:
	LDA #(ability_chr)		//bukipanel: critical hosei
	CLC
	ADC #$1D40
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para292:
	LDA #(ability_chr)		//bukipanel: kuu
	CLC
	ADC #$1D90
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para293:
	LDA #(ability_chr)		//bukipanel: riku
	CLC
	ADC #$1DB0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para294:
	LDA #(ability_chr)		//bukipanel: umi
	CLC
	ADC #$1DD0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para295:
	LDA #(ability_chr)		//bukipanel: kuu
	CLC
	ADC #$1DF0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para296:
	LDA #(buki_chr)		//buki: beam saber
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para297:
	LDA #(buki_chr)		//buki: beam riffle B
	CLC
	ADC #$0070
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para298:
	LDA #(buki_chr)		//buki: vulcan
	CLC
	ADC #$0100
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para299:
	LDA #(buki_chr)		//buki: hyper bazooka
	CLC
	ADC #$0150
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para29A:
	LDA #(buki_chr)		//buki: hyper hammer
	CLC
	ADC #$01E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para29B:
	LDA #(buki_chr)		//buki: missile launcher
	CLC
	ADC #$0270
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para29C:
	LDA #(buki_chr)		//buki: long riffle B
	CLC
	ADC #$0320
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para29D:
	LDA #(buki_chr)		//buki:long beam saber
	CLC
	ADC #$03A0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para29E:
	LDA #(buki_chr)		//buki: grenade launcher
	CLC
	ADC #$0450
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para29F:
	LDA #(buki_chr)		//buki: hyper mega launcher B
	CLC
	ADC #$0510
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A0:
	LDA #(buki_chr)		//buki: beam gun B
	CLC
	ADC #$05F0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A1:
	LDA #(buki_chr)		//buki: smash beam
	CLC
	ADC #$0650
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A2:
	LDA #(buki_chr)		//buki: double vulcan
	CLC
	ADC #$06D0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A3:
	LDA #(buki_chr)		//buki: double beam riffle B
	CLC
	ADC #$0760
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A4:
	LDA #(buki_chr)		//buki: double cannon B
	CLC
	ADC #$0830
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A5:
	LDA #(buki_chr)		//buki: hyper beam saber
	CLC
	ADC #$08D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A6:
	LDA #(buki_chr)		//buki: hyper mega cannon MAP
	CLC
	ADC #$09D0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A7:
	LDA #(buki_chr)		//buki: beam cannon B
	CLC
	ADC #$7EE0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A8:
	LDA #(buki_chr)		//buki: fin funnel
	CLC
	ADC #$0B20
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2A9:
	LDA #(buki_chr)		//buki: missile
	CLC
	ADC #$0980
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2AA:
	LDA #(buki_chr)		//buki: mega machine cannon
	CLC
	ADC #$0B90
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2AB:
	LDA #(buki_chr)		//buki: vesper B
	CLC
	ADC #$0C70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2AC:
	LDA #(buki_chr)		//buki: gatling gun
	CLC
	ADC #$0CD0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2AD:
	LDA #(buki_chr)		//buki: atomic bazooka MAP
	CLC
	ADC #$0D50
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2AE:
	LDA #(buki_chr)		//buki: mega beam hou B
	CLC
	ADC #$0E10
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2AF:
	LDA #(buki_chr)		//buki: big beam saber
	CLC
	ADC #$0EC0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B0:
	LDA #(buki_chr)		//buki: folding bazooka
	CLC
	ADC #$0F80
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B1:
	LDA #(buki_chr)		//buki: bakudousaku
	CLC
	ADC #$1020
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B2:
	LDA #(buki_chr)		//buki: shusoku missile
	CLC
	ADC #$10D0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B3:
	LDA #(buki_chr)		//buki: micro missle MAP
	CLC
	ADC #$1160
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B4:
	LDA #(buki_chr)		//buki: 24mili cannon
	CLC
	ADC #$1200
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B5:
	LDA #(buki_chr)		//buki: 120mili cannon
	CLC
	ADC #$12A0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B6:
	LDA #(buki_chr)		//buki: bop missile
	CLC
	ADC #$1340
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B7:
	LDA #(buki_chr)		//buki: kogata missile
	CLC
	ADC #$13B0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B8:
	LDA #(buki_chr)		//buki: hakai kousen
	CLC
	ADC #$1450
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2B9:
	LDA #(buki_chr)		//buki: vegatron beam
	CLC
	ADC #$1530
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2BA:
write_command_para39A:
	LDA #(buki_chr)		//buki: hand grenade P
	CLC
	ADC #$15D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2BB:
	LDA #(buki_chr)		//buki: rose cutter
	CLC
	ADC #$1670
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2BC:
	LDA #(buki_chr)		//buki: getter laser
	CLC
	ADC #$16F0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2BD:
	LDA #(buki_chr)		//buki: getter tomahawk
	CLC
	ADC #$1780
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2BE:
	LDA #(buki_chr)		//buki: tomahawk boomeran P
	CLC
	ADC #$1830
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2BF:
	LDA #(buki_chr)		//buki: getter beam
	CLC
	ADC #$1920
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C0:
	LDA #(buki_chr)		//buki: getter arm
	CLC
	ADC #$19A0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C1:
	LDA #(buki_chr)		//buki: getter drill
	CLC
	ADC #$1A10
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C2:
	LDA #(buki_chr)		//buki: drill storm
	CLC
	ADC #$1A90
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C3:
	LDA #(buki_chr)		//buki: drill punch
	CLC
	ADC #$1B00
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C4:
	LDA #(buki_chr)		//buki: kakutou
	CLC
	ADC #$1B70
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C5:
	LDA #(buki_chr)		//buki: getter missile
	CLC
	ADC #$1BC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C6:
	LDA #(buki_chr)		//buki: spin cutter
	CLC
	ADC #$1C50
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C7:
	LDA #(buki_chr)		//buki: double tomahawk
	CLC
	ADC #$1CD0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C8:
	LDA #(buki_chr)		//buki: double tomahawk boomerang P
	CLC
	ADC #$1D80
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2C9:
	LDA #(buki_chr)		//buki: shine spark
	CLC
	ADC #$1E60
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2CA:
	LDA #(buki_chr)		//buki: drill arm
	CLC
	ADC #$1ED0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2CB:
	LDA #(buki_chr)		//buki: liger missile
	CLC
	ADC #$1F30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2CC:
	LDA #(buki_chr)		//buki: chain attack
	CLC
	ADC #$1FB0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2CD:
	LDA #(buki_chr)		//buki: getter cyclone
	CLC
	ADC #$2040
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2CE:
	LDA #(buki_chr)		//buki: strong missile
	CLC
	ADC #$20E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2CF:
	LDA #(buki_chr)		//buki: reitou beam
	CLC
	ADC #$2170
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D0:
	LDA #(buki_chr)		//buki: koushiryoku beam
	CLC
	ADC #$2200
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D1:
	LDA #(buki_chr)		//buki: rocket punch
	CLC
	ADC #$3FE0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D2:
	LDA #(buki_chr)		//buki: iron cutter P
	CLC
	ADC #$2350
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D3:
	LDA #(buki_chr)		//buki: double missile
	CLC
	ADC #$23E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D4:
	LDA #(buki_chr)		//buki: afrodite missile
	CLC
	ADC #$2470
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D5:
	LDA #(buki_chr)		//buki: drill missile
	CLC
	ADC #$2510
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D6:
	LDA #(buki_chr)		//buki: rust hurricane
	CLC
	ADC #$2590
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D7:
	LDA #(buki_chr)		//buki: breast fire
	CLC
	ADC #$2630
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D8:
	LDA #(buki_chr)		//buki: scrander cutter
	CLC
	ADC #$26A0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2D9:
	LDA #(buki_chr)		//buki: southern cross knife P
	CLC
	ADC #$2750
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2DA:
	LDA #(buki_chr)		//buki: knee impulse kick
	CLC
	ADC #$2830
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2DB:
	LDA #(buki_chr)		//buki: back spin kick
	CLC
	ADC #$28F0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2DC:
	LDA #(buki_chr)		//buki: mazinger blade
	CLC
	ADC #$2980
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2DD:
	LDA #(buki_chr)		//buki: scramble cutter
	CLC
	ADC #$2A20
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2DE:
	LDA #(buki_chr)		//buki: navel missile
	CLC
	ADC #$2AD0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2DF:
	LDA #(buki_chr)		//buki: great typhoon
	CLC
	ADC #$2B50
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2E0:
	LDA #(buki_chr)		//buki: great boomerang
	CLC
	ADC #$2BF0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2E1:
	LDA #(buki_chr)		//buki: atomic punch P
	CLC
	ADC #$2CA0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2E2:
	LDA #(buki_chr)		//buki: drill pressure punch P
	CLC
	ADC #$2D40
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E3:
	LDA #(buki_chr)		//buki: breast burn
	CLC
	ADC #$2E20
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E4:
	LDA #(buki_chr)		//buki: thunder break
	CLC
	ADC #$2EA0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E5:
	LDA #(buki_chr)		//buki: hand beam B
	CLC
	ADC #$2F30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E6:
	LDA #(buki_chr)		//buki: shoulder boomerang 
	CLC
	ADC #$2FB0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E7:
	LDA #(buki_chr)		//buki: han juryoku storm
	CLC
	ADC #$3080
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E8:
	LDA #(buki_chr)		//buki: double haken
	CLC
	ADC #$3140
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2E9:
	LDA #(buki_chr)		//buki: screw crusher P
	CLC
	ADC #$31D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2EA:
	LDA #(buki_chr)		//buki: space thunder
	CLC
	ADC #$3270
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2EB:
	LDA #(buki_chr)		//buki: spin saucer
	CLC
	ADC #$3300
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2EC:
	LDA #(buki_chr)		//buki: spin drill
	CLC
	ADC #$3380
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2ED:
	LDA #(buki_chr)		//buki: melt shower
	CLC
	ADC #$33E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2EE:
	LDA #(buki_chr)		//buki: cyclone beam B
	CLC
	ADC #$3460
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2EF:
	LDA #(buki_chr)		//buki: double cutter
	CLC
	ADC #$3500
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2F0:
	LDA #(buki_chr)		//buki: spark bomber B
	CLC
	ADC #$3590
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para2F1:
	LDA #(buki_chr)		//buki: drill attack
	CLC
	ADC #$3630
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F2:
	LDA #(buki_chr)		//buki: marine missile
	CLC
	ADC #$36B0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F3:
	LDA #(buki_chr)		//buki: marine cutter
	CLC
	ADC #$3740
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F4:
	LDA #(buki_chr)		//buki: diana missile
	CLC
	ADC #$37D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F5:
	LDA #(buki_chr)		//buki: scarlet beam
	CLC
	ADC #$3850
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F6:
	LDA #(buki_chr)		//buki:  borot puch
	CLC
	ADC #$38F0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F7:
	LDA #(buki_chr)		//buki:  special borot punch
	CLC
	ADC #$3970
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F8:
	LDA #(buki_chr)		//buki:  special dx borot punch
	CLC
	ADC #$3A40
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2F9:
	LDA #(buki_chr)		//buki: koushiryoku missile
	CLC
	ADC #$3B30
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2FA:
	LDA #(buki_chr)		//buki: finger missile P
	CLC
	ADC #$3C00
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2FB:
	LDA #(buki_chr)		//buki: 30mili machine gun
	CLC
	ADC #$3CA0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2FC:
	LDA #(buki_chr)		//buki: sky ripper P
	CLC
	ADC #$3D40
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2FD:
	LDA #(buki_chr)		//buki: doth pressure
	CLC
	ADC #$3DC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2FE:
	LDA #(buki_chr)		//buki: magnet laser
	CLC
	ADC #$3E50
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para2FF:
	LDA #(buki_chr)		//buki:  rock fighter
	CLC
	ADC #$3EE0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para300:
	LDA #(buki_chr)		//buki: electro dart
	CLC
	ADC #$3F60
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para301:
	LDA #(buki_chr)		//buki: magnet claw
	CLC
	ADC #$4080
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para302:
	LDA #(buki_chr)		//buki: atomic burner
	CLC
	ADC #$22C0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para303:
	LDA #(buki_chr)		//buki: ancho nunckle
	CLC
	ADC #$4100
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para304:
	LDA #(buki_chr)		//buki: 380mili sensha hou
	CLC
	ADC #$4190
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para305:
	LDA #(buki_chr)		//buki: mechanic fixer
	CLC
	ADC #$4270
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para306:
	LDA #(buki_chr)		//buki: bakurai
	CLC
	ADC #$4310
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para307:
	LDA #(buki_chr)		//buki: craft drill
	CLC
	ADC #$4360
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para308:
	LDA #(buki_chr)		//buki: battle return P
	CLC
	ADC #$43D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para309:
	LDA #(buki_chr)		//buki: battle garegga
	CLC
	ADC #$4470
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para30A:
	LDA #(buki_chr)		//buki: choudenji crane
	CLC
	ADC #$4510
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para30B:
	LDA #(buki_chr)		//buki: spring crusher
	CLC
	ADC #$45E0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para30C:
	LDA #(buki_chr)		//buki: choudenji yoyo
	CLC
	ADC #$4680
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para30D:
	LDA #(buki_chr)		//buki: twin lancer
	CLC
	ADC #$4740
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para30E:
	LDA #(buki_chr)		//buki: V laser
	CLC
	ADC #$47C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para30F:
	LDA #(buki_chr)		//buki: battle chainsaw
	CLC
	ADC #$4810
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para310:
	LDA #(buki_chr)		//buki: big blast
	CLC
	ADC #$48C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para311:
	LDA #(buki_chr)		//buki: big blast divider
	CLC
	ADC #$4920
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para312:
	LDA #(buki_chr)		//buki: choudenji spark
	CLC
	ADC #$49D0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para313:
	LDA #(buki_chr)		//buki: choudenji spin
	CLC
	ADC #$4A90
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para314:
	LDA #(buki_chr)		//buki: god breaker
	CLC
	ADC #$4B40
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para315:
	LDA #(buki_chr)		//buki: god missile
	CLC
	ADC #$4BC0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para316:
	LDA #(buki_chr)		//buki: god boomrang P
	CLC
	ADC #$4C30
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para317:
	LDA #(buki_chr)		//buki: god thunder
	CLC
	ADC #$4CE0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para318:
	LDA #(buki_chr)		//buki: god arrow
	CLC
	ADC #$4D60
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para319:
	LDA #(buki_chr)		//buki: god gun
	CLC
	ADC #$4DD0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para31A:
	LDA #(buki_chr)		//buki: god pressure
	CLC
	ADC #$4E20
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para31B:
	LDA #(buki_chr)		//buki: gogan sword
	CLC
	ADC #$4EB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para31C:
	LDA #(buki_chr)		//buki: energy cutter
	CLC
	ADC #$4F30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para31D:
	LDA #(buki_chr)		//buki: god alpha P
	CLC
	ADC #$4FC0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para31E:
	LDA #(buki_chr)		//buki: god bird
	CLC
	ADC #$5030
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para31F:
	LDA #(buki_chr)		//buki: god voice
	CLC
	ADC #$5090
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para320:
	LDA #(buki_chr)		//buki: 20mili vulcan
	CLC
	ADC #$50F0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para321:
	LDA #(buki_chr)		//buki: foot cutter
	CLC
	ADC #$5180
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para322:
	LDA #(buki_chr)		//buki: shinkuu mawashi geri
	CLC
	ADC #$5200
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para323:
	LDA #(buki_chr)		//buki: snake lock P
	CLC
	ADC #$52F0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para324:
	LDA #(buki_chr)		//buki: five shooter P
	CLC
	ADC #$5370
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para325:
	LDA #(buki_chr)		//buki: cross boomerang P
	CLC
	ADC #$5400
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para326:
	LDA #(buki_chr)		//buki: dymo gun
	CLC
	ADC #$54C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para327:
	LDA #(buki_chr)		//buki: dynamo shaft
	CLC
	ADC #$5520
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para328:
	LDA #(buki_chr)		//buki: drill ancho
	CLC
	ADC #$5590
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para329:
	LDA #(buki_chr)		//buki: sanryuukon
	CLC
	ADC #$5600
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para32A:
	LDA #(buki_chr)		//buki: souryuuken
	CLC
	ADC #$5690
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para32B:
	LDA #(buki_chr)		//buki: hissatsu reppuu seiken
	CLC
	ADC #$57D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para32C:
	LDA #(buki_chr)		//buki: daiturn zamber
	CLC
	ADC #$5730
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para32D:
	LDA #(buki_chr)		//buki: daiturn hammer
	CLC
	ADC #$58D0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para32E:
	LDA #(buki_chr)		//buki: daiturn web P
	CLC
	ADC #$5970
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para32F:
	LDA #(buki_chr)		//buki: big web
	CLC
	ADC #$5A00
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para330:
write_command_para335:
	LDA #(buki_chr)		//buki: daiturn missile
	CLC
	ADC #$5AA0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para331:
	LDA #(buki_chr)		//buki: daiturn cannon
	CLC
	ADC #$5B40
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para332:
	LDA #(buki_chr)		//buki: sun laser
	CLC
	ADC #$5BE0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para333:
	LDA #(buki_chr)		//buki: sun attack
	CLC
	ADC #$5C40
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para334:
	LDA #(buki_chr)		//buki: rocket hou
	CLC
	ADC #$5CB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para336:
	LDA #(buki_chr)		//buki: bakudan
	CLC
	ADC #$5A50
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para337:
	LDA #(buki_chr)		//buki: bird gun
	CLC
	ADC #$5D30
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para338:
	LDA #(buki_chr)		//buki: oogata missile
	CLC
	ADC #$5D90
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para339:
	LDA #(buki_chr)		//buki: tremble horn
	CLC
	ADC #$5E30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para33A:
	LDA #(buki_chr)		//buki: zambo magnum
	CLC
	ADC #$5EC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para33B:
	LDA #(buki_chr)		//buki: zambo riffle
	CLC
	ADC #$5F50
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para33C:
	LDA #(buki_chr)		//buki: crusher drill
	CLC
	ADC #$5FD0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para33D:
	LDA #(buki_chr)		//buki: arm punch P
	CLC
	ADC #$6050
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para33E:
	LDA #(buki_chr)		//buki: big cannon
	CLC
	ADC #$60D0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para33F:
	LDA #(buki_chr)		//buki: bull missile
	CLC
	ADC #$6140
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para340:
	LDA #(buki_chr)		//buki: big missile
	CLC
	ADC #$61B0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para341:
	LDA #(buki_chr)		//buki: base laser
	CLC
	ADC #$6220
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para342:
	LDA #(buki_chr)		//buki: nessenhou
	CLC
	ADC #$6290
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para343:
	LDA #(buki_chr)		//buki: base missile
	CLC
	ADC #$6340
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para344:
	LDA #(buki_chr)		//buki: zambot glap
	CLC
	ADC #$63C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para345:
	LDA #(buki_chr)		//buki: zambot blow
	CLC
	ADC #$6440
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para346:
	LDA #(buki_chr)		//buki: zambot buster P
	CLC
	ADC #$64C0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para347:
	LDA #(buki_chr)		//buki: zambot cutter
	CLC
	ADC #$6570
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para348:
	LDA #(buki_chr)		//buki: buster missile
	CLC
	ADC #$6610
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para349:
	LDA #(buki_chr)		//buki: moon attack
	CLC
	ADC #$66B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para34A:
	LDA #(buki_chr)		//buki: Ion hou
	CLC
	ADC #$6730
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para34B:
	LDA #(buki_chr)		//buki: wire claw
	CLC
	ADC #$6790
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para34C:
	LDA #(buki_chr)		//buki: dry strahl
	CLC
	ADC #$67F0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para34D:
	LDA #(buki_chr)		//buki: elemental fusion
	CLC
	ADC #$6860
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para34E:
	LDA #(buki_chr)		//buki:  aura sword
	CLC
	ADC #$6910
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para34F:
	LDA #(buki_chr)		//buki: blast knuckle P
	CLC
	ADC #$6980
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para350:
	LDA #(buki_chr)		//buki: aura shot
	CLC
	ADC #$6A20
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para351:
	LDA #(buki_chr)		//buki: evil eye
	CLC
	ADC #$6A80
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para352:
	LDA #(buki_chr)		//buki: aura giri
	CLC
	ADC #$6AD0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para353:
	LDA #(buki_chr)		//buki: hyper aura giri
	CLC
	ADC #$6B40
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para354:
	LDA #(buki_chr)		//buki: aura cannon
	CLC
	ADC #$6BF0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para355:
	LDA #(buki_chr)		//buki: sandan bazooka
	CLC
	ADC #$6C70
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para356:
	LDA #(buki_chr)		//buki: aura beam sword
	CLC
	ADC #$6D20
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para357:
	LDA #(buki_chr)		//buki: aura sword riffle
	CLC
	ADC #$6DD0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para358:
	LDA #(buki_chr)		//buki: cosmo beam B
	CLC
	ADC #$6E80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para359:
	LDA #(buki_chr)		//buki: neo plasma cutter
	CLC
	ADC #$6F10
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para35A:
	LDA #(buki_chr)		//buki: red impulse
	CLC
	ADC #$6FD0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para35B:
	LDA #(buki_chr)		//buki: holster beam B
	CLC
	ADC #$7050
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para35C:
	LDA #(buki_chr)		//buki: mega beam riffle B
	CLC
	ADC #$70F0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para35D:
	LDA #(buki_chr)		//buki: slash ripper
	CLC
	ADC #$71B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para35E:
	LDA #(buki_chr)		//buki: go saber
	CLC
	ADC #$7230
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para35F:
	LDA #(buki_chr)		//buki: go stick P
	CLC
	ADC #$7290
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para360:
	LDA #(buki_chr)		//buki: space bazooka
	CLC
	ADC #$72E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para361:
	LDA #(buki_chr)		//buki: go flasher
	CLC
	ADC #$7370
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para362:
	LDA #(buki_chr)		//buki: pulse laser
	CLC
	ADC #$73E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para363:
	LDA #(buki_chr)		//buki: beam launcher B
	CLC
	ADC #$7460
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para364:
	LDA #(buki_chr)		//buki: rensou cannon hou
	CLC
	ADC #$7510
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para365:
	LDA #(buki_chr)		//buki: dankuuhou
	CLC
	ADC #$75B0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para366:
	LDA #(buki_chr)		//buki: dankuuken
	CLC
	ADC #$7660
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para367:
	LDA #(buki_chr)		//buki:  27mili kikanhou
	CLC
	ADC #$7710
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para368:
	LDA #(buki_chr)		//buki: 4ren missile
	CLC
	ADC #$77E0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para369:
	LDA #(buki_chr)		//buki: totsugeki
	CLC
	ADC #$7880
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para36A:
	LDA #(buki_chr)		//buki: cannon hou
	CLC
	ADC #$78E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para36B:
	LDA #(buki_chr)		//buki: koushusoku rensha beam B
	CLC
	ADC #$7960
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para36C:
	LDA #(buki_chr)		//buki: 5ren missile launcher
	CLC
	ADC #$7A30
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para36D:
	LDA #(buki_chr)		//buki: kamitsuki
	CLC
	ADC #$7AE0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para36E:
	LDA #(buki_chr)		//buki: 105mili riffle hou
	CLC
	ADC #$7B10
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para36F:
	LDA #(buki_chr)		//buki: 200mili ryudanhou
	CLC
	ADC #$8150
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para370:
	LDA #(buki_chr)		//buki: 4ren daikoukeihou
	CLC
	ADC #$7BD0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para371:
	LDA #(buki_chr)		//buki: 4ren taikuu pulse laser
	CLC
	ADC #$7CB0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para372:
	LDA #(buki_chr)		//buki: rocket launcher
	CLC
	ADC #$7D90
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para373:
	LDA #(buki_chr)		//buki: kiba
	CLC
	ADC #$7E40
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para374:
	LDA #(buki_chr)		//buki: Giga Sword Cannon
	CLC
	ADC #$7E70
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para375:
	LDA #(buki_chr)		//buki: beam cannon
	CLC
	ADC #$7EE0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para376:
	LDA #(buki_chr)		//buki: mega beam cannon
	CLC
	ADC #$7F80
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para377:
write_command_para391:
	LDA #(buki_chr)		//buki: linear rail gun
	CLC
	ADC #$8040
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para378:
	LDA #(buki_chr)		//buki: dis cutter
	CLC
	ADC #$80E0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para379:
	LDA #(buki_chr)		//buki: caloric missile
	CLC
	ADC #$8230
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para37A:
	LDA #(buki_chr)		//buki:  psyflash MAP
	CLC
	ADC #$0AA0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para37B:
	LDA #(buki_chr)		//buki: high familia
	CLC
	ADC #$82D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para37C:
	LDA #(buki_chr)		//buki: acaxis buster
	CLC
	ADC #$8350
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para37D:
	LDA #(buki_chr)		//buki: cosmo nova
	CLC
	ADC #$83E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para37E:
	LDA #(buki_chr)		//buki:  gran worm sword
	CLC
	ADC #$8460
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para37F:
	LDA #(buki_chr)		//buki: graviton cannon MAP
	CLC
	ADC #$8510
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para380:
	LDA #(buki_chr)		//buki: worm smasher
	CLC
	ADC #$85E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para381:
	LDA #(buki_chr)		//buki: blackhole cluster
	CLC
	ADC #$8670
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para382:
	LDA #(buki_chr)		//buki: shukutaihou
	CLC
	ADC #$8730
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para383:
	LDA #(buki_chr)		//buki: divine arm
	CLC
	ADC #$87C0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para384:
	LDA #(buki_chr)		//buki: psycho blast MAP
	CLC
	ADC #$8830
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para385:
	LDA #(buki_chr)		//buki: cross saucer
	CLC
	ADC #$8900
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para386:
	LDA #(buki_chr)		//buki: Hyper beam cannon B
	CLC
	ADC #$8980
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para387:
	LDA #(buki_chr)		//buki: cross smasher
	CLC
	ADC #$8A40
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para388:
	LDA #(buki_chr)		//buki: chousindouken
	CLC
	ADC #$8AC0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para389:
	LDA #(buki_chr)		//buki: taikuu missile
	CLC
	ADC #$8BA0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para38A:
	LDA #(buki_chr)		//buki: resonance quake MAP
	CLC
	ADC #$8C60
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para38B:
	LDA #(buki_chr)		//buki: flame cutter
	CLC
	ADC #$8D30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para38C:
	LDA #(buki_chr)		//buki: chuuseishi laser
	CLC
	ADC #$8DC0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para38D:
	LDA #(buki_chr)		//buki: carolic smash
	CLC
	ADC #$8E90
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para38E:
	LDA #(buki_chr)		//buki: megid flame MAP P
	CLC
	ADC #$CA50
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para38F:
	LDA #(buki_chr)		//buki: gungnir
	CLC
	ADC #$8FC0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para390:
	LDA #(buki_chr)		//buki: high drop pressure
	CLC
	ADC #$9010
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para392:
	LDA #(buki_chr)		//buki: pulse laser
	CLC
	ADC #$CB00
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para393:
	LDA #(buki_chr)		//buki: kelvin blizzard MAP
	CLC
	ADC #$CB80
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para394:
	LDA #(buki_chr)		//buki: plasma cutter
	CLC
	ADC #$9170
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para395:
	LDA #(buki_chr)		//buki: split missile
	CLC
	ADC #$9200
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para396:
	LDA #(buki_chr)		//buki: neutron beam
	CLC
	ADC #$9280
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para397:
	LDA #(buki_chr)		//buki: heat hawk
	CLC
	ADC #$9310
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para398:
	LDA #(buki_chr)		//buki: zaku bazooka
	CLC
	ADC #$9380
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para399:
	LDA #(buki_chr)		//buki: 120mm machine gun
	CLC
	ADC #$9410
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para39B:
write_command_para39F:
write_command_para3CE:
	LDA #(buki_chr)		//buki: sturm faust
	CLC
	ADC #$94C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para39C:
	LDA #(buki_chr)		//buki: heat saber
	CLC
	ADC #$9540
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para39D:
	LDA #(buki_chr)		//buki: kakusan beam B
	CLC
	ADC #$95B0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para39E:
	LDA #(buki_chr)		//buki: giant bazu
	CLC
	ADC #$9670
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A0:
	LDA #(buki_chr)		//buki: mega ryushi hou B
	CLC
	ADC #$96F0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A1:
	LDA #(buki_chr)		//buki: bit
	CLC
	ADC #$58B0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A2:
	LDA #(buki_chr)		//buki: umi hebi
	CLC
	ADC #$97B0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A3:
	LDA #(buki_chr)		//buki: big beam riffle B
	CLC
	ADC #$9810
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A4:
	LDA #(buki_chr)		//buki: beam hou B
	CLC
	ADC #$98E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A5:
	LDA #(buki_chr)		//buki: godneros punch
	CLC
	ADC #$9960
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A6:
	LDA #(buki_chr)		//buki: small megabeam hou B
	CLC
	ADC #$9A10
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A7:
	LDA #(buki_chr)		//buki: kakusan mega ryushi hou B
	CLC
	ADC #$9B70
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A8:
	LDA #(buki_chr)		//buki: fadein riffle B
	CLC
	ADC #$9AD0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3A9:
	LDA #(buki_chr)		//buki: claw arm
	CLC
	ADC #$9C60
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3AA:
	LDA #(buki_chr)		//buki: reflector bit
	CLC
	ADC #$9CC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3AB:
	LDA #(buki_chr)		//buki: psycommu beam sword
	CLC
	ADC #$9D50
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3AC:
	LDA #(buki_chr)		//buki: clay bazooka
	CLC
	ADC #$9E30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3AD:
	LDA #(buki_chr)		//buki: mega bazooka launcher MAP B
	CLC
	ADC #$9EC0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3AE:
	LDA #(buki_chr)		//buki: arm beam gun B
	CLC
	ADC #$9F80
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3AF:
	LDA #(buki_chr)		//buki: shuri souchi
	CLC
	ADC #$A020
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B0:
	LDA #(buki_chr)		//buki: shot gun
	CLC
	ADC #$A0E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B1:
	LDA #(buki_chr)		//buki: giant bazu
	CLC
	ADC #$9670
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B2:
	LDA #(buki_chr)		//buki: 60mili kikanhou
	CLC
	ADC #$A140
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B3:
	LDA #(buki_chr)		//buki: panzer faust
	CLC
	ADC #$A210
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B4:
	LDA #(buki_chr)		//buki: 110mili vulcan
	CLC
	ADC #$A2A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B5:
	LDA #(buki_chr)		//buki: missile pod
	CLC
	ADC #$A330
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B6:
	LDA #(buki_chr)		//buki: big mega ryushi hou B
	CLC
	ADC #$A3A0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B7:
	LDA #(buki_chr)		//buki: plasma reader MAP
	CLC
	ADC #$A470
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B8:
	LDA #(buki_chr)		//buki: psycommu mega ryushi hou
	CLC
	ADC #$A520
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3B9:
	LDA #(buki_chr)		//buki: 110mili kikan hou
	CLC
	ADC #$A600
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3BA:
	LDA #(buki_chr)		//buki: henkou mega ryushi hou B
	CLC
	ADC #$A7A0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3BB:
	LDA #(buki_chr)		//buki: yuusen claw arm
	CLC
	ADC #$A6D0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3BC:
	LDA #(buki_chr)		//buki: big missile launcher
	CLC
	ADC #$A880
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3BD:
	LDA #(buki_chr)		//buki: small missile launcher
	CLC
	ADC #$A970
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3BE:
	LDA #(buki_chr)		//buki: mega cannon hou B
	CLC
	ADC #$AA60
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3BF:
	LDA #(buki_chr)		//buki: funnel 
	CLC
	ADC #$AB20
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C0:
	LDA #(buki_chr)		//buki: finger launcher
	CLC
	ADC #$AB60
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C1:
	LDA #(buki_chr)		//buki: energy gun B
	CLC
	ADC #$AC10
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C2:
	LDA #(buki_chr)		//buki: yuusen beam hou
	CLC
	ADC #$AC90
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C3:
	LDA #(buki_chr)		//buki: beam tomahawk
	CLC
	ADC #$AD70
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C4:
	LDA #(buki_chr)		//buki: tryblade P
	CLC
	ADC #$AE70
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C5:
write_command_para3C6:
	LDA #(buki_chr)		//buki: beam cannon B
	CLC
	ADC #$7EE0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C7:
	LDA #(buki_chr)		//buki: taikan missile
	CLC
	ADC #$AEE0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C8:
	LDA #(buki_chr)		//buki: incom
	CLC
	ADC #$AF80
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3C9:
	LDA #(buki_chr)		//buki: mega launcher B
	CLC
	ADC #$AFC0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3CA:
	LDA #(buki_chr)		//buki: mega beam cannon B
	CLC
	ADC #$B070
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3CB:
	LDA #(buki_chr)		//buki: hyper mega ryuushi hou B
	CLC
	ADC #$B140
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3CC:
	LDA #(buki_chr)		//buki: beam sword axe
	CLC
	ADC #$B210
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3CD:
	LDA #(buki_chr)		//buki: beam machine gun B
	CLC
	ADC #$B2B0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3CF:
	LDA #(buki_chr)		//buki: mega gatling gun
	CLC
	ADC #$B380
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D0:
	LDA #(buki_chr)		//buki: beam assault riffle B
	CLC
	ADC #$B430
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D1:
	LDA #(buki_chr)		//buki: hand gun
	CLC
	ADC #$AE10
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D2:
	LDA #(buki_chr)		//buki: beam shot riffle B
	CLC
	ADC #$B510
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D3:
	LDA #(buki_chr)		//buki: yuusen siki mega arm hou
	CLC
	ADC #$B5D0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D4:
	LDA #(buki_chr)		//buki: shot lancer
	CLC
	ADC #$B6A0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D5:
	LDA #(buki_chr)		//buki: tentacle claw
	CLC
	ADC #$B720
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D6:
	LDA #(buki_chr)		//buki: bug
	CLC
	ADC #$B7B0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D7:
	LDA #(buki_chr)		//buki: claw
	CLC
	ADC #$B7E0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D8:
	LDA #(buki_chr)		//buki: mini missile
	CLC
	ADC #$B810
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3D9:
	LDA #(buki_chr)		//buki: magma dan
	CLC
	ADC #$B880
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3DA:
	LDA #(buki_chr)		//buki: tai atari
	CLC
	ADC #$90D0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3DB:
	LDA #(buki_chr)		//buki: hand sord
	CLC
	ADC #$B910
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3DC:
	LDA #(buki_chr)		//buki: rocket dan
	CLC
	ADC #$B970
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3DD:
	LDA #(buki_chr)		//buki: taihou
	CLC
	ADC #$B9E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3DE:
	LDA #(buki_chr)		//buki:  laser
	CLC
	ADC #$BA40
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3DF:
	LDA #(buki_chr)		//buki: boomerang
	CLC
	ADC #$BAA0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E0:
	LDA #(buki_chr)		//buki: kama
	CLC
	ADC #$CC40
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E1:
	LDA #(buki_chr)		//buki: muchi
	CLC
	ADC #$BB10
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E2:
	LDA #(buki_chr)		//buki: pistol
	CLC
	ADC #$BB30
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E3:
	LDA #(buki_chr)		//buki: riffle
	CLC
	ADC #$BB70
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E4:
	LDA #(buki_chr)		//buki: spear
	CLC
	ADC #$BBB0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E5:
	LDA #(buki_chr)		//buki: hurricane
	CLC
	ADC #$BBF0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E6:
	LDA #(buki_chr)		//buki: jiryoku kousen
	CLC
	ADC #$BC60
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E7:
	LDA #(buki_chr)		//buki:  shock beam
	CLC
	ADC #$BD30
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E8:
	LDA #(buki_chr)		//buki: uzumaki
	CLC
	ADC #$BDA0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3E9:
	LDA #(buki_chr)		//buki: ring kousen
	CLC
	ADC #$BDF0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3EA:
	LDA #(buki_chr)		//buki: gyo rai
	CLC
	ADC #$BEB0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3EB:
	LDA #(buki_chr)		//buki: drill
	CLC
	ADC #$BF00
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3EC:
	LDA #(buki_chr)		//buki: shindouha
	CLC
	ADC #$BF30
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3ED:
	LDA #(buki_chr)		//buki: kuchibashi
	CLC
	ADC #$BFD0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3EE:
	LDA #(buki_chr)		//buki: vegatron beam
	CLC
	ADC #$BFF0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3EF:
	LDA #(buki_chr)		//buki: beam vulcan B
	CLC
	ADC #$C0C0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F0:
	LDA #(buki_chr)		//buki: kyodai vegatron beam hou
	CLC
	ADC #$C150
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F1:
	LDA #(buki_chr)		//buki: spin attack
	CLC
	ADC #$C230
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F2:
	LDA #(buki_chr)		//buki: kaen
	CLC
	ADC #$C2B0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F3:
	LDA #(buki_chr)		//buki: denji mori
	CLC
	ADC #$C310
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F4:
	LDA #(buki_chr)		//buki: reitou kousen
	CLC
	ADC #$C3A0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F5:
	LDA #(buki_chr)		//buki: lightning arrow
	CLC
	ADC #$C490
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F6:
	LDA #(buki_chr)		//buki: iron claw
	CLC
	ADC #$C540
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F7:
	LDA #(buki_chr)		//buki: graviton wave
	CLC
	ADC #$C5A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F8:
	LDA #(buki_chr)		//buki: chou hakai kousen
	CLC
	ADC #$CCA0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3F9:
	LDA #(buki_chr)		//buki: mega graviton wave
	CLC
	ADC #$C710
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3FA:
	LDA #(buki_chr)		//buki: shokushu
	CLC
	ADC #$C7E0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3FB:
	LDA #(buki_chr)		//buki: chouonpa
	CLC
	ADC #$C820
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3FC:
	LDA #(buki_chr)		//buki: marine vortex
	CLC
	ADC #$C8A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3FD:
	LDA #(buki_chr)		//buki: flame bomb P
	CLC
	ADC #$C930
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3FE:
	LDA #(buki_chr)		//buki: aura shot arm
	CLC
	ADC #$C9C0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para3FF:
	LDA #(buki_chr)		//buki: aura nova hou MAP
	CLC
	ADC #$CD50
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS	
write_command_para400:
	LDA #(buki_chr)		//buki: gante missile
	CLC
	ADC #$CE10
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para401:
	LDA #(buki_chr)		//buki: ceramic sword
	CLC
	ADC #$CEA0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para402:
	LDA #(buki_chr)		//buki: gil sword
	CLC
	ADC #$CF30
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para403:
	LDA #(buki_chr)		//buki: gil arrow
	CLC
	ADC #$CF90
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para404:
	LDA #(buki_chr)		//buki: youma saber
	CLC
	ADC #$CFF0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para405:
	LDA #(buki_chr)		//buki: nessen
	CLC
	ADC #$D070
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para406:
	LDA #(buki_chr)		//buki: reitou gas
	CLC
	ADC #$D0D0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para407:
	LDA #(buki_chr)		//buki: kagizume
	CLC
	ADC #$D160
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para408:
	LDA #(buki_chr)		//buki: scimitar
	CLC
	ADC #$D1D0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para409:
	LDA #(buki_chr)		//buki: shield beam B
	CLC
	ADC #$D230
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para40A:
	LDA #(buki_chr)		//buki: lancer
	CLC
	ADC #$D2C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para40B:
	LDA #(buki_chr)		//buki: space missile
	CLC
	ADC #$D310
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para40C:
	LDA #(buki_chr)		//buki: bundock hou
	CLC
	ADC #$D3A0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para40D:
	LDA #(buki_chr)		//buki: wing sword
	CLC
	ADC #$D430
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para40E:
	LDA #(buki_chr)		//buki: big bow
	CLC
	ADC #$D4A0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para40F:
	LDA #(buki_chr)		//buki: homing missile
	CLC
	ADC #$D4F0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para410:
	LDA #(buki_chr)		//buki: flasher beam B
	CLC
	ADC #$8F20
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para411:
	LDA #(buki_chr)		//buki:  ram
	CLC
	ADC #$9100
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para412:
	LDA #(buki_chr)		//buki: saber
	CLC
	ADC #$9130
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para413:
	LDA #(buki_chr)		//buki: bazooka
	CLC
	ADC #$0190
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para414:
	LDA #(buki_chr)		//buki: han isalon ryuushi
	CLC
	ADC #$D600
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para415:
	LDA #(buki_chr)		//buki: high mega ryuushi hou B
	CLC
	ADC #$D6C0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para416:
	LDA #(buki_chr)		//buki: hyper mega ryuushi hou MAP B
	CLC
	ADC #$D7A0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para417:
	LDA #(buki_chr)		//buki: savior
	CLC
	ADC #$D890
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para418:
	LDA #(buki_chr)		//buki: S mine P
	CLC
	ADC #$D8D0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para419:
	LDA #(buki_chr)		//buki: power launcher B
	CLC
	ADC #$D930
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para41A:
	LDA #(buki_chr)		//buki: buster launcher MAP B
	CLC
	ADC #$D9E0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para41B:
	LDA #(buki_chr)		//buki: slow lancer P
	CLC
	ADC #$DAC0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para41C:
	LDA #(buki_chr)		//buki: size 
	CLC
	ADC #$DB40
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para41D:
	LDA #(buki_chr)		//buki: hand launcher B
	CLC
	ADC #$DB70
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para41E:
	LDA #(buki_chr)		//buki: reversed bommer
	CLC
	ADC #$DC10
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para41F:
	LDA #(buki_chr)		//buki: energy bomber
	CLC
	ADC #$DCC0
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para420:
	LDA #(buki_chr)		//buki: sash
	CLC
	ADC #$DD60
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para421:
	LDA #(buki_chr)		//buki: frogger
	CLC
	ADC #$DD90
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para422:
	LDA #(buki_chr)		//buki: long spear
	CLC
	ADC #$DDE0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para423:
	LDA #(buki_chr)		//buki: houden
	CLC
	ADC #$DE50
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para424:
	LDA #(buki_chr)		//buki: hammer
	CLC
	ADC #$DEC0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para425:
	LDA #(buki_chr)		//buki: beam lance
	CLC
	ADC #$DEF0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para426:
	LDA #(buki_chr)		//buki: lance missile
	CLC
	ADC #$DF70
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para427:
	LDA #(buki_chr)		//buki: battle spear
	CLC
	ADC #$E000
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para428:
	LDA #(buki_chr)		//buki: dai setsuzan oroshi
	CLC
	ADC #$C630
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para429:
	LDA #(buki_chr)		//buki: hokyu souchi
	CLC
	ADC #$E080
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para42A:
	LDA #(buki_chr)		//buki: grandassher
	CLC
	ADC #$E120
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para42B:
	LDA #(buki_chr)		//buki: hissatsu reppu seiken kai
	CLC
	ADC #$E1A0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para42C:
	LDA #(buki_chr)		//buki: mega kakusan beam B
	CLC
	ADC #$E280
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
	
write_command_para42D:
	LDA #(buki_chr)		//buki: mega beam launcher B
	CLC
	ADC #$E370
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para42E:
	LDA #(buki_chr)		//buki: marine beam
	CLC
	ADC #$E450
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para42F:
	LDA #(buki_chr)		//buki: aura vulcan
	CLC
	ADC #$E4D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para430:
	LDA #(buki_chr)		//buki: hair missile
	CLC
	ADC #$E550
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para431:
	LDA #(buki_chr)		//buki: youma kousen
	CLC
	ADC #$E5C0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para432:
	LDA #(buki_chr)		//buki: 60mili kijuu
	CLC
	ADC #$E690
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para433:
	LDA #(buki_chr)		//buki: main mega ryuushi hou B
	CLC
	ADC #$E760
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para434:
	LDA #(buki_chr)		//buki: sub mega ryuushi hou B
	CLC
	ADC #$E850
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para435:
	LDA #(buki_chr)		//buki: 120mili kijuu
	CLC
	ADC #$E930
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para436:
	LDA #(buki_chr)		//buki: 30mili kijuu
	CLC
	ADC #$EA10
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para437:
	LDA #(buki_chr)		//buki: taikuu kikanhou
	CLC
	ADC #$EAE0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para438:
	LDA #(buki_chr)		//buki: 12 rensou missile launcher
	CLC
	ADC #$EBD0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para439:
	LDA #(buki_chr)		//buki: 15 rensou missile launcher
	CLC
	ADC #$ECC0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para43A:
	LDA #(buki_chr)		//buki:  90mili kijuu
	CLC
	ADC #$EDB0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para43B:
	LDA #(buki_chr)		//buki: keito ragou ken
	CLC
	ADC #$EE80
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para43C:
	LDA #(buki_chr)		//buki: 140mili kijuu
	CLC
	ADC #$EF40
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para43D:
	LDA #(buki_chr)		//buki: 160mili kijuu
	CLC
	ADC #$F020
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para43E:
	LDA #(buki_chr)		//buki: 180mili kijuu
	CLC
	ADC #$F100
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para43F:
	LDA #(buki_chr)		//buki: 20 rensou missile launcher
	CLC
	ADC #$F270
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para440:
	LDA #(buki_chr)		//buki: great booster
	CLC
	ADC #$F1E0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para441:
	LDA #(buki_chr)		//buki: chain mine
	CLC
	ADC #$F360
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para442:
	LDA #(buki_chr)		//buki: hyper aura cannon
	CLC
	ADC #$F3E0
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para443:
	LDA #(buki_chr)		//buki: laser vulcan
	CLC
	ADC #$F4A0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para444:
	LDA #(buki2_chr)		//buki: gatling beam B
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para445:
	LDA #(buki_chr)		//buki: laser sword
	CLC
	ADC #$F5B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para446:
	LDA #(buki_chr)		//buki: spread missile
	CLC
	ADC #$F630
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para447:
	LDA #(buki_chr)		//buki: daikoukei beam hou B
	CLC
	ADC #$F6C0
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para448:
	LDA #(buki_chr)		//buki: dual laser sword
	CLC
	ADC #$F790
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para449:
	LDA #(buki_chr)		//buki: laser gun
	CLC
	ADC #$F840
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para44A:
	LDA #(buki_chr)		//buki: double cannon
	CLC
	ADC #$0830
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para44B:
	LDA #(buki_chr)		//buki: driver cannon
	CLC
	ADC #$FBC0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para44C:
	LDA #(buki2_chr)		//buki: Ion hou beam B
	CLC
	ADC #$00A0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para44D:
	LDA #(buki_chr)		//buki: mass driver cannon
	CLC
	ADC #$F910
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para44E:
	LDA #(buki_chr)		//buki: twin laser sword
	CLC
	ADC #$F9D0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para44F:
	LDA #(buki_chr)		//buki:  launcher missile
	CLC
	ADC #$FA80
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para450:
	LDA #(buki_chr)		//buki: laser cannon
	CLC
	ADC #$FB30
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para451:
	LDA #(buki_chr)		//buki: kaden ryuushi beam B
	CLC
	ADC #$FC50
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para452:
	LDA #(buki_chr)		//buki: 60mili vulcan
	CLC
	ADC #$FD40
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para453:
	LDA #(buki_chr)		//buki: plasma sword
	CLC
	ADC #$FDD0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para455:
	LDA #(buki_chr)		//buki: 4 ren missile launcher
	CLC
	ADC #$FE60
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para454:
	LDA #(buki_chr)		//buki: roche savior
	CLC
	ADC #$FEE0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para456:
	LDA #(buki_chr)		//buki: leap slasher
	CLC
	ADC #$D580
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para457:
	LDA #(buki2_chr)		//buki: blackhole cannon
	CLC
	ADC #$0150
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para458:
	LDA #(buki_chr)		//buki: boost knuckle P
	CLC
	ADC #$F520
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki_chr>>16)
	STA $0D64
	RTS
write_command_para459:
	LDA #(buki2_chr)		//buki:  omega laser
	CLC
	ADC #$0210
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para45A:
	LDA #(buki2_chr)		//buki: break cross P
	CLC
	ADC #$0290
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para45B:
	LDA #(buki2_chr)		//buki: laser spear
	CLC
	ADC #$0310
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para45C:
	LDA #(buki2_chr)		//buki: keito ragou ankensatsu
	CLC
	ADC #$0460
	STA $0D60
	LDA #$0010
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para45D:
	LDA #(buki2_chr)		//buki: double omega laser
	CLC
	ADC #$0390
	STA $0D60
	LDA #$000D
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para45E:
	LDA #(buki2_chr)		//buki: texas sword
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para45F:
	LDA #(buki2_chr)		//buki: spiral attack
	CLC
	ADC #$0560
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para460:
	LDA #(buki2_chr)		//buki: omega cannon
	CLC
	ADC #$05F0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para461:
	LDA #(buki2_chr)		//buki: mac revolver
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para462:
	LDA #(buki2_chr)		//buki: mac riot
	CLC
	ADC #$0790
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para463:
	LDA #(buki2_chr)		//buki: mac riffle
	CLC
	ADC #$07F0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para464:
	LDA #(buki2_chr)		//buki: 2 ren mega ryuushi hou B
	CLC
	ADC #$0860
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para465:
	LDA #(buki2_chr)		//buki: adzam reader MAP
	CLC
	ADC #$0940
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para466:
	LDA #(buki2_chr)		//buki: dark saber
	CLC
	ADC #$09F0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para467:
	LDA #(buki_chr)		//buki: evil size
	CLC
	ADC #$F8B0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para468:
	LDA #(buki2_chr)		//buki: hell fire
	CLC
	ADC #$0A60
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para469:
	LDA #(buki2_chr)		//buki: noroi
	CLC
	ADC #$0AC0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para46A:
	LDA #(buki2_chr)		//buki: fire breath
	CLC
	ADC #$0B30
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para46B:
	LDA #(buki2_chr)		//buki:  slide shield
	CLC
	ADC #$0BB0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para46C:
	LDA #(buki2_chr)		//buki: shield boomerang
	CLC
	ADC #$0C30
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para46D:
	LDA #(buki2_chr)		//buki: evil ring
	CLC
	ADC #$0CE0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para46E:
	LDA #(buki2_chr)		//buki: kai kousen
	CLC
	ADC #$0D40
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para46F:
	LDA #(buki_chr)		//buki: shita 
	CLC
	ADC #$FFC0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para470:
	LDA #(buki2_chr)		//buki: daikaen
	CLC
	ADC #$0E00
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para471:
	LDA #(buki2_chr)		//buki: mirage drill
	CLC
	ADC #$0F20
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para472:
	LDA #(buki2_chr)		//buki: drill tempest
	CLC
	ADC #$0FA0
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para473:
	LDA #(buki2_chr)		//buki: hammer punch
	CLC
	ADC #$1030
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para474:
	LDA #(buki2_chr)		//buki: daisetuzan oroshi 2dan gaeshi
	CLC
	ADC #$10C0
	STA $0D60
	LDA #$000F
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para475:
	LDA #(buki2_chr)		//buki: shippo
	CLC
	ADC #$11B0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para476:
	LDA #(buki2_chr)		//buki: drill breath
	CLC
	ADC #$11E0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para477:
	LDA #(buki2_chr)		//buki: corona barrier
	CLC
	ADC #$1260
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para478:
	LDA #(buki2_chr)		//buki: long laser sword
	CLC
	ADC #$1300
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para479:
	LDA #(buki2_chr)		//buki: giga blaster
	CLC
	ADC #$13B0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para47A:
	LDA #(buki2_chr)		//buki:  giga driver cannon
	CLC
	ADC #$1430
	STA $0D60
	LDA #$000C
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para47B:
	LDA #(buki2_chr)		//buki: reflector incom
	CLC
	ADC #$15A0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para47C:
	LDA #(buki2_chr)		//buki: bigbang wave MAP
	CLC
	ADC #$14F0
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para47D:
	LDA #(buki2_chr)		//buki: beam smart gun B
	CLC
	ADC #$1650
	STA $0D60
	LDA #$000B
	STA $0D62
	LDA #(buki2_chr>>16)
	STA $0D64
	RTS
write_command_para47E:	
	LDA #(ability_chr)		//meichuu ritsu
	CLC
	ADC #$1E10
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para47F:
	LDA #(ability_chr)		//meichuu ritsu
	CLC
	ADC #$1EA0
	STA $0D60
	LDA #$000E
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
write_command_para480:
	LDA #(ability_chr)		//meichuu ritsu
	CLC
	ADC #$1F80
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(ability_chr>>16)
	STA $0D64
	RTS
	
	
write_command_para481:
	LDA #(pilot_chr)		//cham
	CLC
	ADC #$5480
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para482:
	LDA #(pilot_chr)		//belle
	CLC
	ADC #$0070
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para483:
	LDA #(pilot_chr)		//elle
	CLC
	ADC #$7FD0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para484:
	LDA #(pilot_chr)		//lilith
	CLC
	ADC #$0120
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para485:
	LDA #(pilot_chr)		//silky
	CLC
	ADC #$7FF0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para486:
	LDA #(pilot_chr)		//yousei6
	CLC
	ADC #$01F0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para487:
	LDA #(pilot_chr)		//jack
	CLC
	ADC #$0270
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para488:
	LDA #(pilot_chr)		//marry
	CLC
	ADC #$8030
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para489:
	LDA #(pilot_chr)		//ryou
	CLC
	ADC #$8070
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para48A:
	LDA #(pilot_chr)		//hayato
	CLC
	ADC #$80A0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para48B:
	LDA #(pilot_chr)		//benkei
	CLC
	ADC #$04B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para48C:
	LDA #(pilot_chr)		//shingo
	CLC
	ADC #$80F0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para48D:
	LDA #(pilot_chr)		//remy
	CLC
	ADC #$8140
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para48E:
	LDA #(pilot_chr)		//kily
	CLC
	ADC #$8180
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para48F:
	LDA #(pilot_chr)		//kappei
	CLC
	ADC #$81B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para490:
	LDA #(pilot_chr)		//uchuta
	CLC
	ADC #$8200
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para491:
	LDA #(pilot_chr)		//keiko
	CLC
	ADC #$8250
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para492:
	LDA #(pilot_chr)		//shinobu
	CLC
	ADC #$8290
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para493:
	LDA #(pilot_chr)		//sara
	CLC
	ADC #$82F0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para494:
	LDA #(pilot_chr)		//masato
	CLC
	ADC #$8330
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para495:
	LDA #(pilot_chr)		//ryou
	CLC
	ADC #$8380
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para496:
	LDA #(pilot_chr)		//hyouma
	CLC
	ADC #$0AC0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para497:
	LDA #(pilot_chr)		//juuzou
	CLC
	ADC #$83C0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para498:
	LDA #(pilot_chr)		//daisaku
	CLC
	ADC #$83F0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para499:
	LDA #(pilot_chr)		//chizuru
	CLC
	ADC #$8450
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para49A:
	LDA #(pilot_chr)		//kosuke
	CLC
	ADC #$84B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para49B:
	LDA #(pilot_chr)		//gilliam
	CLC
	ADC #$8500
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para49C:
	LDA #(pilot_chr)		//shou
	CLC
	ADC #$8550
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para49D:
	LDA #(pilot_chr)		//masaki
	CLC
	ADC #$8580
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para49E:
	LDA #(pilot_chr)		//ryune
	CLC
	ADC #$0F30
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para49F:
	LDA #(pilot_chr)		//shuu
	CLC
	ADC #$85D0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A0:
	LDA #(pilot_chr)		//quatro
	CLC
	ADC #$8600
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A1:
	LDA #(pilot_chr)		//bright
	CLC
	ADC #$1120
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A2:
	LDA #(pilot_chr)		//hayato
	CLC
	ADC #$11A0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A3:
	LDA #(pilot_chr)		//kai
	CLC
	ADC #$8660
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A4:
	LDA #(pilot_chr)		//matilda
	CLC
	ADC #$12E0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A5:
	LDA #(pilot_chr)		//sayla
	CLC
	ADC #$8690
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A6:
	LDA #(pilot_chr)		//wakkein
	CLC
	ADC #$13E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A7:
	LDA #(pilot_chr)		//tianem
	CLC
	ADC #$1440
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A8:
	LDA #(pilot_chr)		//emma
	CLC
	ADC #$86D0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4A9:
	LDA #(pilot_chr)		//torres
	CLC
	ADC #$1510
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4AA:
	LDA #(pilot_chr)		//fa
	CLC
	ADC #$1560
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4AB:
	LDA #(pilot_chr)		//katsu
	CLC
	ADC #$15C0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4AC:
	LDA #(pilot_chr)		//four
	CLC
	ADC #$8710
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4AD:
	LDA #(pilot_chr)		//beltorchika
	CLC
	ADC #$1720
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4AE:
	LDA #(pilot_chr)		//kelly
	CLC
	ADC #$17A0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4AF:
	LDA #(pilot_chr)		//henken
	CLC
	ADC #$8750
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B0:
	LDA #(pilot_chr)		//blex
	CLC
	ADC #$18E0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B1:
	LDA #(pilot_chr)		//roux
	CLC
	ADC #$87A0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B2:
	LDA #(pilot_chr)		//puru
	CLC
	ADC #$8970
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B3:
	LDA #(pilot_chr)		//purutz
	CLC
	ADC #$1A40
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B4:
	LDA #(pilot_chr)		//leina
	CLC
	ADC #$1A90
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B5:
	LDA #(pilot_chr)		//beecha
	CLC
	ADC #$1B20
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B6:
	LDA #(pilot_chr)		//mondo
	CLC
	ADC #$1BA0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B7:
	LDA #(pilot_chr)		//elle
	CLC
	ADC #$8800
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B8:
	LDA #(pilot_chr)		//iino
	CLC
	ADC #$1CB0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4B9:
	LDA #(pilot_chr)		//emary
	CLC
	ADC #$1D30
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4BA:
	LDA #(pilot_chr)		//quess
	CLC
	ADC #$1DC0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4BB:
	LDA #(pilot_chr)		//chan
	CLC
	ADC #$8830
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4BC:
	LDA #(pilot_chr)		//kayra
	CLC
	ADC #$1EB0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4BD:
	LDA #(pilot_chr)		//hathaway
	CLC
	ADC #$8870
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4BE:
	LDA #(pilot_chr)		//chris
	CLC
	ADC #$1FA0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4BF:
	LDA #(pilot_chr)		//berny
	CLC
	ADC #$88E0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C0:
	LDA #(pilot_chr)		//cecily
	CLC
	ADC #$8920
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C1:
	LDA #(pilot_chr)		//nina
	CLC
	ADC #$21F0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C2:
	LDA #(pilot_chr)		//gato
	CLC
	ADC #$89A0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C3:
	LDA #(pilot_chr)		//keith
	CLC
	ADC #$89E0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C4:
	LDA #(pilot_chr)		//monsha
	CLC
	ADC #$9200
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C5:
	LDA #(pilot_chr)		//sayaka
	CLC
	ADC #$9250
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C6:
	LDA #(pilot_chr)		//ramthus
	CLC
	ADC #$8A20
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C7:
	LDA #(pilot_chr)		//boss
	CLC
	ADC #$2570
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C8:
	LDA #(pilot_chr)		//jun
	CLC
	ADC #$92A0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4C9:
	LDA #(pilot_chr)		//maria
	CLC
	ADC #$2620
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4CA:
	LDA #(pilot_chr)		//hikaru
	CLC
	ADC #$92D0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4CB:
	LDA #(pilot_chr)		//michiru
	CLC
	ADC #$9320
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4CC:
	LDA #(pilot_chr)		//dangel
	CLC
	ADC #$9380
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4CD:
	LDA #(pilot_chr)		//jinguji
	CLC
	ADC #$93D0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4CE:
	LDA #(pilot_chr)		//Asuka
	CLC
	ADC #$2940
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4CF:
	LDA #(pilot_chr)		//mary
	CLC
	ADC #$9430
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D0:
	LDA #(pilot_chr)		//amuro
	CLC
	ADC #$9470
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D1:
	LDA #(pilot_chr)		//camille
	CLC
	ADC #$94C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D2:
	LDA #(pilot_chr)		//judau
	CLC
	ADC #$2B50
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D3:
	LDA #(pilot_chr)		//seabook
	CLC
	ADC #$9510
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D4:
	LDA #(pilot_chr)		//kou
	CLC
	ADC #$9570
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D5:
	LDA #(pilot_chr)		//kouji
	CLC
	ADC #$9590
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D6:
	LDA #(pilot_chr)		//saemon
	CLC
	ADC #$95C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D7:
	LDA #(pilot_chr)		//ume-e
	CLC
	ADC #$9610
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D8:
	LDA #(pilot_chr)		//gengoro
	CLC
	ADC #$9660
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4D9:
	LDA #(pilot_chr)		//ichitarou
	CLC
	ADC #$96C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4DA:
	LDA #(pilot_chr)		//garrison
	CLC
	ADC #$9720
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4DB:
	LDA #(pilot_chr)		//beauty
	CLC
	ADC #$9790
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4DC:
	LDA #(pilot_chr)		//reika
	CLC
	ADC #$3180
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4DD:
	LDA #(pilot_chr)		//toppo
	CLC
	ADC #$97E0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4DE:
	LDA #(pilot_chr)		//tetsuya
	CLC
	ADC #$9820
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4DF:
	LDA #(pilot_chr)		//kyoushirou
	CLC
	ADC #$9880
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E0:
	LDA #(pilot_chr)		//nana
	CLC
	ADC #$33F0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E1:
	LDA #(pilot_chr)		//duke
	CLC
	ADC #$3430
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E2:
	LDA #(pilot_chr)		//marvel
	CLC
	ADC #$98E0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E3:
	LDA #(pilot_chr)		//akira
	CLC
	ADC #$3590
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E4:
	LDA #(pilot_chr)		//nie
	CLC
	ADC #$9930
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E5:
	LDA #(pilot_chr)		//keen
	CLC
	ADC #$9960
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E6:
	LDA #(pilot_chr)		//ciela
	CLC
	ADC #$9990
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E7:
	LDA #(pilot_chr)		//elle
	CLC
	ADC #$99D0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E8:
	LDA #(pilot_chr)		//rimul
	CLC
	ADC #$9A00
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4E9:
	LDA #(pilot_chr)		//eve
	CLC
	ADC #$9A40
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4EA:
	LDA #(pilot_chr)		//banjou
	CLC
	ADC #$9A70
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4EB:
	LDA #(pilot_chr)		//kazuya
	CLC
	ADC #$9AB0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4EC:
	LDA #(pilot_chr)		//heishi
	CLC
	ADC #$9B00
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4ED:
	LDA #(pilot_chr)		//tytti
	CLC
	ADC #$3B00
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4EE:
	LDA #(pilot_chr)		//jumashougun
	CLC
	ADC #$9B60
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4EF:
	LDA #(pilot_chr)		//Burning
	CLC
	ADC #$9BB0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F0:
	LDA #(pilot_chr)		//long
	CLC
	ADC #$9C10
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F1:
	LDA #(pilot_chr)		//presia
	CLC
	ADC #$9C80
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F2:
	LDA #(pilot_chr)		//mio
	CLC
	ADC #$9CD0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F3:
	LDA #(pilot_chr)		//titans
	CLC
	ADC #$9D00
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F4:
	LDA #(pilot_chr)		//monica
	CLC
	ADC #$3E10
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F5:
	LDA #(pilot_chr)		//safine
	CLC
	ADC #$3EB0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F6:
	LDA #(pilot_chr)		//gadem
	CLC
	ADC #$3F40
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F7:
	LDA #(pilot_chr)		//ral
	CLC
	ADC #$40C0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F8:
	LDA #(pilot_chr)		//hamon
	CLC
	ADC #$9D50
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4F9:
	LDA #(pilot_chr)		//clamp
	CLC
	ADC #$4080
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4FA:
	LDA #(pilot_chr)		//gaia
	CLC
	ADC #$40E0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4FB:
	LDA #(pilot_chr)		//mash
	CLC
	ADC #$4120
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4FC:
	LDA #(pilot_chr)		//ortega
	CLC
	ADC #$4160
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4FD:
	LDA #(pilot_chr)		//challia
	CLC
	ADC #$9D90
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4FE:
	LDA #(pilot_chr)		//lalah
	CLC
	ADC #$9DE0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para4FF:
	LDA #(pilot_chr)		//gadi
	CLC
	ADC #$9E20
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para500:
	LDA #(pilot_chr)		//kacricon
	CLC
	ADC #$4310
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para501:
	LDA #(pilot_chr)		//sarah
	CLC
	ADC #$43D0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para502:
	LDA #(pilot_chr)		//gates
	CLC
	ADC #$4480
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para503:
	LDA #(pilot_chr)		//jerid
	CLC
	ADC #$4500
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para504:
	LDA #(pilot_chr)		//jamaican
	CLC
	ADC #$9E60
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para505:
	LDA #(pilot_chr)		//jamitov
	CLC
	ADC #$9ED0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para506:
	LDA #(pilot_chr)		//haman
	CLC
	ADC #$4700
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para507:
	LDA #(pilot_chr)		//buran
	CLC
	ADC #$4780
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para508:
	LDA #(pilot_chr)		//ben
	CLC
	ADC #$9F30
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para509:
	LDA #(pilot_chr)		//maur
	CLC
	ADC #$48A0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para50A:
	LDA #(pilot_chr)		//mineva
	CLC
	ADC #$4940
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para50B:
	LDA #(pilot_chr)		//lila
	CLC
	ADC #$9F60
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para50C:
	LDA #(pilot_chr)		//yazan
	CLC
	ADC #$4A70
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para50D:
	LDA #(pilot_chr)		//rosamia
	CLC
	ADC #$9F90
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para50E:
	LDA #(pilot_chr)		//mashymre
	CLC
	ADC #$9FF0
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para50F:
	LDA #(pilot_chr)		//illia
	CLC
	ADC #$4C30
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para510:
	LDA #(pilot_chr)		//chara
	CLC
	ADC #$4CA0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para511:
	LDA #(pilot_chr)		//glemy
	CLC
	ADC #$A060
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para512:
	LDA #(pilot_chr)		//gotton
	CLC
	ADC #$4D90
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para513:
	LDA #(pilot_chr)		//nie
	CLC
	ADC #$A0A0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para514:
	LDA #(pilot_chr)		//lance
	CLC
	ADC #$4E80
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para515:
	LDA #(pilot_chr)		//rakan
	CLC
	ADC #$4F10
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para516:
	LDA #(pilot_chr)		//gyunei
	CLC
	ADC #$4FB0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para517:
	LDA #(pilot_chr)		//nanai
	CLC
	ADC #$5040
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para518:
	LDA #(pilot_chr)		//rezin
	CLC
	ADC #$50D0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para519:
	LDA #(pilot_chr)		//zabine
	CLC
	ADC #$5180
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para51A:
	LDA #(pilot_chr)		//annamarie
	CLC
	ADC #$A0D0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para51B:
	LDA #(pilot_chr)		//dorel
	CLC
	ADC #$A150
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para51C:
	LDA #(pilot_chr)		//carozzo
	CLC
	ADC #$A190
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para51D:
	LDA #(pilot_chr)		//steiner
	CLC
	ADC #$5420
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para51E:
	LDA #(pilot_chr)		//cima
	CLC
	ADC #$A1F0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para51F:
	LDA #(pilot_chr)		//ashura
	CLC
	ADC #$55C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para520:
	LDA #(pilot_chr)		//blocken
	CLC
	ADC #$5660
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para521:
	LDA #(pilot_chr)		//dr.hell
	CLC
	ADC #$56B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS	
write_command_para522:
	LDA #(pilot_chr)		//sharkin
	CLC
	ADC #$5700
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para523:
	LDA #(pilot_chr)		//eugo hei
	CLC
	ADC #$5790
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para524:
	LDA #(pilot_chr)		//balao
	CLC
	ADC #$5800
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para525:
	LDA #(pilot_chr)		//garuda
	CLC
	ADC #$5840
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para526:
	LDA #(pilot_chr)		//meea
	CLC
	ADC #$5890
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para527:
	LDA #(pilot_chr)		//orleana
	CLC
	ADC #$58D0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para528:
	LDA #(pilot_chr)		//butcher
	CLC
	ADC #$A230
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para529:
	LDA #(pilot_chr)		//korosu
	CLC
	ADC #$59E0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para52A:
	LDA #(pilot_chr)		//don
	CLC
	ADC #$A290
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para52B:
	LDA #(pilot_chr)		//richter
	CLC
	ADC #$5AC0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para52C:
	LDA #(pilot_chr)		//bulbous
	CLC
	ADC #$5B20
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para52D:
	LDA #(pilot_chr)		//ryza
	CLC
	ADC #$5B70
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para52E:
	LDA #(pilot_chr)		//izam
	CLC
	ADC #$5BA0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para52F:
	LDA #(pilot_chr)		//bundle
	CLC
	ADC #$5C30
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para530:
	LDA #(pilot_chr)		//cuttnal
	CLC
	ADC #$5CD0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para531:
	LDA #(pilot_chr)		//kernagol
	CLC
	ADC #$5D70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para532:
	LDA #(pilot_chr)		//tod
	CLC
	ADC #$A2C0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para533:
	LDA #(pilot_chr)		//burne
	CLC
	ADC #$5E70
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para534:
	LDA #(pilot_chr)		//kokukishi
	CLC
	ADC #$5F20
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para535:
	LDA #(pilot_chr)		//drake
	CLC
	ADC #$5F80
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para536:
	LDA #(pilot_chr)		//shot
	CLC
	ADC #$A2F0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para537:
	LDA #(pilot_chr)		//bishot
	CLC
	ADC #$6090
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para538:
	LDA #(pilot_chr)		//luther
	CLC
	ADC #$A330
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para539:
	LDA #(pilot_chr)		//musy
	CLC
	ADC #$A380
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para53A:
	LDA #(pilot_chr)		//Zet
	CLC
	ADC #$A3C0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para53B:
	LDA #(pilot_chr)		//torust
	CLC
	ADC #$6250
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para53C:
	LDA #(pilot_chr)		//jeryll
	CLC
	ADC #$A3F0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para53D:
	LDA #(pilot_chr)		//allen
	CLC
	ADC #$63D0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para53E:
	LDA #(pilot_chr)		//fay
	CLC
	ADC #$A430
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para53F:
	LDA #(pilot_chr)		//garalia
	CLC
	ADC #$64D0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para540:
	LDA #(pilot_chr)		//galamity
	CLC
	ADC #$6580
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para541:
	LDA #(pilot_chr)		//daa
	CLC
	ADC #$6630
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para542:
	LDA #(pilot_chr)		//het
	CLC
	ADC #$6660
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para543:
	LDA #(pilot_chr)		//ankoku
	CLC
	ADC #$A630
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para544:
	LDA #(pilot_chr)		//hardias
	CLC
	ADC #$66E0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para545:
	LDA #(pilot_chr)		//dreiud
	CLC
	ADC #$A460
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para546:
	LDA #(pilot_chr)		//elite hei
	CLC
	ADC #$6880
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para547:
	LDA #(pilot_chr)		//ai
	CLC
	ADC #$69E0
	STA $0D60
	LDA #$0002
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para548:
	LDA #(pilot_chr)		//ai kai
	CLC
	ADC #$A4B0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para549:
	LDA #(pilot_chr)		//totsugeki hei
	CLC
	ADC #$6A80
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para54A:
	LDA #(pilot_chr)		//shineitai
	CLC
	ADC #$A560
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para54B:
	LDA #(pilot_chr)		//poseidal hei
	CLC
	ADC #$6C10
	STA $0D60
	LDA #$0009
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para54C:
	LDA #(pilot_chr)		//delaz
	CLC
	ADC #$A5B0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para54D:
	LDA #(pilot_chr)		//daba
	CLC
	ADC #$A5F0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para54E:
	LDA #(pilot_chr)		//leccee
	CLC
	ADC #$6EF0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para54F:
	LDA #(pilot_chr)		//kyao
	CLC
	ADC #$6F70
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para550:
	LDA #(pilot_chr)		//amu
	CLC
	ADC #$7010
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para551:
	LDA #(pilot_chr)		//hatchia
	CLC
	ADC #$A500
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para552:
	LDA #(pilot_chr)		//gablae
	CLC
	ADC #$A6C0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para553:
	LDA #(pilot_chr)		//amandara
	CLC
	ADC #$A710
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para554:
	LDA #(pilot_chr)		//poseidal
	CLC
	ADC #$72C0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para555:
	LDA #(pilot_chr)		//nei
	CLC
	ADC #$A780
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para556:
	LDA #(pilot_chr)		//giwaza
	CLC
	ADC #$7390
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para557:
	LDA #(pilot_chr)		//full
	CLC
	ADC #$A7B0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para558:
	LDA #(pilot_chr)		//olivie
	CLC
	ADC #$74E0
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para559:
	LDA #(pilot_chr)		//rockley
	CLC
	ADC #$7530
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para55A:
	LDA #(pilot_chr)		//anton
	CLC
	ADC #$75B0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para55B:
	LDA #(pilot_chr)		//heckler
	CLC
	ADC #$7630
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para55C:
	LDA #(pilot_chr)		//lily
	CLC
	ADC #$A7E0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para55D:
	LDA #(pilot_chr)		//chai
	CLC
	ADC #$A810
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para55E:
	LDA #(pilot_chr)		//wazan
	CLC
	ADC #$77B0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para55F:
	LDA #(pilot_chr)		//mctomin
	CLC
	ADC #$A850
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para560:
	LDA #(pilot_chr)		//barn gania
	CLC
	ADC #$A8C0
	STA $0D60
	LDA #$0008
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para561:
	LDA #(pilot_chr)		//ted
	CLC
	ADC #$A940
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para562:
	LDA #(pilot_chr)		//glof
	CLC
	ADC #$A970
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para563:
	LDA #(pilot_chr)		//sety
	CLC
	ADC #$A9A0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para564:
	LDA #(pilot_chr)		//zeb
	CLC
	ADC #$A9E0
	STA $0D60
	LDA #$0003
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para565:
	LDA #(pilot_chr)		//zezenan
	CLC
	ADC #$AA10
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para566:
	LDA #(pilot_chr)		//mechibos
	CLC
	ADC #$7D20
	STA $0D60
	LDA #$0007
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para567:
	LDA #(pilot_chr)		//terius
	CLC
	ADC #$7D90
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para568:
	LDA #(pilot_chr)		//kyoukahei
	CLC
	ADC #$7E30
	STA $0D60
	LDA #$000A
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para569:
	LDA #(pilot_chr)		//miwa choukan
	CLC
	ADC #$AA70
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para56A:
	LDA #(pilot_chr)		//chou AI
	CLC
	ADC #$7F70
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(pilot_chr>>16)
	STA $0D64
	RTS
write_command_para56B:
	LDA #(panel_misc)		//jinbtsu settei
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para56C:
	LDA #(panel_misc)		//opening_panel: type
	CLC
	ADC #$00D0	
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para56D:
	LDA #(panel_misc)		//opening_panel: name
	CLC
	ADC #$0100
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para56E:
	LDA #(panel_misc)		//opening_panel: sex
	CLC
	ADC #$0140
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para56F:
	LDA #(panel_misc)		//opening_panel: face
	CLC
	ADC #$0160
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para570:
	LDA #(panel_misc)		//opening_panel: personality
	CLC
	ADC #$0180
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para571:
	LDA #(panel_misc)		//opening_panel: birthday
	CLC
	ADC #$01E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para572:
	LDA #(panel_misc)		//opening_panel: sex2
	CLC
	ADC #$0240
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para573:
	LDA #(panel_misc)		//opening_panel: aishou
	CLC
	ADC #$02A0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para574:
	LDA #(panel_misc)		//opening_panel: ketsueki
	CLC
	ADC #$0300
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para575:
	LDA #(panel_misc)		//opening_panel: real robot
	CLC
	ADC #$0360
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para576:
	LDA #(panel_misc)		//opening_panel: super robot
	CLC
	ADC #$0450
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para577:
	LDA #(panel_misc)		//opening_panel: otoko
	CLC
	ADC #$04D0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para578:
	LDA #(panel_misc)		//opening_panel: onna
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para579:
	LDA #(panel_misc)		//opening_panel: day
	CLC
	ADC #$0520
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para57A:
	LDA #(panel_misc)		//opening_panel: month
	CLC
	ADC #$0560
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para57B:
	LDA #(panel_misc)		//opening_panel: majime
	CLC
	ADC #$05A0
	STA $0D60
	LDA #$0010
	STA $0D62
	RTS
write_command_para57C:
	LDA #(panel_misc)		//opening_panel: rironka
	CLC
	ADC #$06A0
	STA $0D60
	LDA #$0015
	STA $0D62
	RTS
write_command_para57D:
	LDA #(panel_misc)		//opening_panel: henna seikaku
	CLC
	ADC #$0800
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para57E:
	LDA #(panel_misc)		//opening_panel: cool nihil
	CLC
	ADC #$08B0
	STA $0D60
	LDA #$0015
	STA $0D62
	RTS
write_command_para57F:
	LDA #(panel_misc)		//opening_panel: lenonjayce
	CLC
	ADC #$0A00
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para580:
	LDA #(panel_misc)		//opening_panel: patricia
	CLC
	ADC #$0A80
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para581:
	LDA #(panel_misc)		//opening_panel: Imgard
	CLC
	ADC #$0AE0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para582:
	LDA #(panel_misc)		//opening_panel: grace
	CLC
	ADC #$0B30
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para583:
	LDA #(panel_misc)		//opening_panel: hector
	CLC
	ADC #$0B70
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para584:
	LDA #(panel_misc)		//opening_panel: mina
	CLC
	ADC #$0BC0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para585:
	LDA #(panel_misc)		//opening_panel: arwynn
	CLC
	ADC #$0BF0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para586:
	LDA #(panel_misc)		//opening_panel: lin
	CLC
	ADC #$0C40
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para587:
	LDA #(panel_misc)		//opening_panel: starlord
	CLC
	ADC #$0C60
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para588:
	LDA #(panel_misc)		//opening_panel: hackman
	CLC
	ADC #$0CC0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para589:
	LDA #(panel_misc)		//opening_panel: kazahara
	CLC
	ADC #$0D20
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para58A:
	LDA #(panel_misc)		//opening_panel: urigin
	CLC
	ADC #$0D80
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para58B:
	LDA #(panel_misc)		//opening_panel: madison
	CLC
	ADC #$0DC0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para58C:
	LDA #(panel_misc)		//opening_panel: likering
	CLC
	ADC #$0E10
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para58D:
	LDA #(panel_misc)		//opening_panel: dorstein
	CLC
	ADC #$0E70
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para58E:
	LDA #(panel_misc)		//opening_panel: mao
	CLC
	ADC #$0ED0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para58F:
	LDA #(panel_misc)		//opening_panel: jayce
	CLC
	ADC #$0F00
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para590:
	LDA #(panel_misc)		//opening_panel: pat
	CLC
	ADC #$0F40
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para591:
	LDA #(panel_misc)		//opening_panel: irm
	CLC
	ADC #$0F70
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para592:
	LDA #(panel_misc)		//opening_panel: wyn
	CLC
	ADC #$0F90
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS	
write_command_para593:
	LDA #(panel_misc)		//opening_panel: change chara
	CLC
	ADC #$0FC0
	STA $0D60
	LDA #$0014
	STA $0D62
	RTS
write_command_para594:
	LDA #(panel_misc)		//opening_panel: yes
	CLC
	ADC #$1100
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para595:
	LDA #(panel_misc)		//opening_panel: no
	CLC
	ADC #$1120
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para596:
	LDA #(panel_misc)		//opening_panel: korede yoika
	CLC
	ADC #$1160
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para597:
	LDA #(panel_misc)		//opening_panel: ok
	CLC
	ADC #$1200
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para598:
	LDA #(panel_misc)		//opening_panel: kettei
	CLC
	ADC #$1220
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para599:
	LDA #(panel_misc)		//opening_panel: torikeshi
	CLC
	ADC #$1260
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para59A:
	LDA #(panel_misc)		//pilot_panel: kin kougeki
	CLC
	ADC #$1290
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para59B:
	LDA #(panel_misc)		//pilot_panel: en kougeki
	CLC
	ADC #$12F0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para59C:
	LDA #(panel_misc)		//pilot_panel: kaihi
	CLC
	ADC #$1350
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para59D:
	LDA #(panel_misc)		//pilot_panel: meichu
	CLC
	ADC #$13A0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para59E:
	LDA #(panel_misc)		//pilot_panel: chokkan
	CLC
	ADC #$1400
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para59F:
	LDA #(panel_misc)		//pilot_panel: giryou
	CLC
	ADC #$1460
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para5A0:
	LDA #(panel_misc)		//pilot_panel: seishin
	CLC
	ADC #$14B0
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para5A1:
	LDA #(panel_misc)		//pilot_panel: tokushu ginou1
	CLC
	ADC #$1510
	STA $0D60
	LDA #$0005
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para5A2:
	LDA #(panel_misc)		//pilot_panel: gekiha
	CLC
	ADC #$15C0
	STA $0D60
	LDA #$0004
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
write_command_para5A3:
	LDA #(panel_misc)		//pilot_panel: tokushu ginou2
	CLC
	ADC #$1560
	STA $0D60
	LDA #$0006
	STA $0D62
	LDA #(panel_misc>>16)
	STA $0D64
	RTS
	
writebg1:
	LDA $0D62
	STA $00
	JSR writebg1map
	JSR writebg1tile
end_write:
	PHB
	SEP #$30
	LDA #$80
	PHA
	PLB
	LDA $14
	BEQ +
	SEC
	SBC #$03
	STA $14
	TAX
	LDA $0E00,x
	STA $1A
	LDA $0E01,x
	STA $1B
	LDA $0E02,x
	STA $1C
	REP #$30
	PLB
	JML $8183FB
+
	PLB
	REP #$30
	LDA $1A
	CLC
	ADC #$0002
	STA $1A
	JML $8183FB

write_original:
	LDA $26
	CMP #$0100
	BCS +
	JML $81845D
+
	JML $81846B
	
writebg3:
	LDA $0D62
	STA $00
	JSR writebg1map
	JSR writebg3tile
	JMP end_write

writebg3tile:
	PHP
	PHB
	LDA $0D60
	TAY
	LDA $D0
	ASL #4
	TAX
	SEP #$20
	LDA $0D64
	PHA
	PLB
	LDA #$08
	STA $02
-
	LDA $0000,y
	STA $7F8000,x
	LDA $0008,y
	STA $7F8020,x
	LDA #$00
	STA $7F8001,x
	STA $7F8021,x
	INY
	INX #2
	DEC $02
	BNE -
	REP #$20
	TXA
	CLC
	ADC #$0020
	TAX
	TYA
	CLC
	ADC #$0008
	TAY
	LDA $D0
	INC #2
	AND #$03FF
	STA $D0	
	SEP #$20
	LDA #$08
	STA $02
	DEC $00
	BNE -
	PLB
	PLP
	RTS	
	
writebg1map:
	LDX $18
	LDA $D0
	CLC
	ADC $0E18
	AND #$03FF
	CLC
	ADC $2E
-
	STA $7E8000,x
	CLC
	ADC #$0001
	STA $7E8040,x
	INX #2
	CLC
	ADC #$0001
	DEC $00
	BNE -
	LDA $0D62
	STA $00
	STX $18
	RTS
	
writebg1tile:
	PHP
	PHB
	LDA $0D60
	TAY
	LDA $D0
	ASL #5
	TAX
	SEP #$20
	LDA $0D64
	PHA
	PLB
	LDA #$08
	STA $02
-
	LDA $0000,y
	STA $7F8000,x
	LDA $0008,y
	STA $7F8020,x
	LDA $FD
	STA $7F8001,x
	STA $7F8021,x
	REP #$20
	LDA $FE
	STA $7F8010,x
	STA $7F8030,x
	INY
	INX #2
	SEP #$20
	DEC $02
	BNE -
	REP #$20
	TXA
	CLC
	ADC #$0030
	TAX
	TYA
	CLC
	ADC #$0008
	TAY
	LDA $D0
	INC #2
	AND #$03FF
	STA $D0
	SEP #$20
	LDA #$08
	STA $02
	DEC $00
	BNE -
	PLB
	PLP
	RTS
	
nmi_dma:
	SEP #$30
	STZ $420C
	STZ $2121
	LDA $03BB
	STA $420B
	LDA $7FFFF0
	CMP #$FF
	BEQ +
	JML $80F809
+
	LDA #$80
	STA $2115
	REP #$20
	LDA #$1801
	STA $4300
	LDA $0D66
	STA $2116
	LDA $0D68
	STA $4305
	LDA $0D6A
	STA $4302
	SEP #$30
	LDA $0D6C
	STA $4304
	LDA #$01
	STA $420B
	LDA #$00
	STA $7FFFF0
	JML $80F87A
	
	
menu_frame1:
	db $F1, $00, $20
	db $F7, $00
menu1start:
	db $FD, $FF, $FF
	db $11
	db $F2, $08, $19, $20
	db $12
	db $F6
	db $F9, $00
	db $1B
	db $F2, $08, $28, $20
	db $1C
	db $F6
	db $1B
	db $F2, $08, $28, $20
	db $1C
	db $F6
	db $F7, $40
	db $FC, $01, $FE
	db $FB, $FF, $0D
	db $FC, $F7, $02
	db $F7, $00
	db $FA
	db $13
	db $F2, $08, $1A, $20
	db $14
	db $F6
	db $FE, $00 //dma tilemap
	db $FE, $FF  //dma tileset
	db $FF
	
menu_hightlight1:
	db $FD, $FF, $FF
	db $FC, $01, $01
	db $F7, $08
	db $F9, $00
	db $F2, $90, $FF, $FF
	db $FA
	db $FE, $00
	db $FF
	
menu_frame2:		//tousai
	db $F1, $00, $20
	db $F7, $00
write_tousai:
	db $FD, $FF, $FF
	db $11
	db $F2, $06, $19, $20
	db $12
	db $F6
	db $F9, $02
	db $1B
	db $F2, $06, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $06, $1A, $20
	db $14
	db $F6
	db $F7, $40
	db $FC, $01, $FD
	db $0D, $0F, $00	//tousai
	db $FE, $FF
	db $FE, $00
	db $FF
	
seishin_frame:
	db $F1, $00, $20
	db $F7, $00
	db $FD, $00, $81
	db $11
	db $F2, $1E, $19, $20
	db $12
	db $F6
	db $F9, $04, $1B
	db $F2, $1E, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $1E, $1A, $20
	db $14
	db $F6
	
	db $FD, $00, $94
	db $11
	db $F2, $15, $19, $20
	db $12
	db $F6
	db $F9, $06, $1B
	db $F2, $15, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $15, $1A, $20
	db $14
	db $F6
	
	db $FD, $17, $94
	db $11
	db $F2, $07, $19, $20
	db $12
	db $F6
	db $F9, $04, $1B
	db $F2, $07, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $07, $1A, $20
	db $14
	db $F6
	db $F7, $40
	db $FD, $18, $95
_point:
	db $0D, $2E, $00	//seisin point
	db $FD, $18, $97
	db $F8, $83
	db $0F
	db $F8, $00
	db $FD, $01, $95
	db $FB, $FF, $00
	db $FD, $0C, $95
	db $FB, $FF, $00
	db $FD, $01, $97
	db $FB, $FF, $00
	db $FD, $0C, $97
	db $FB, $FF, $00
	db $FD, $01, $99
	db $FB, $FF, $00
	db $FD, $0C, $99
	db $FB, $FF, $00
	db $FE, $FF
	db $FE, $00
	db $FF

seishin_hightlight:
	db $FD, $FF, $FF
	db $FC, $03, $01
	db $F9, $00, $FA
	db $F7, $0A
	db $FD, $01, $95
	db $F2, $94, $FF, $FF
	db $F7, $0A
	db $FD, $0C, $95
	db $F2, $94, $FF, $FF
	db $F7, $0A
	db $FD, $01, $97
	db $F2, $94, $FF, $FF
	db $F7, $0A
	db $FD, $0C, $97
	db $F2, $94, $FF, $FF
	db $F7, $0A
	db $FD, $01, $99
	db $F2, $94, $FF, $FF
	db $F7, $0A
	db $FD, $0C, $99
	db $F2, $94, $FF, $FF
	db $FE, $00
	db $FF
	db $F1, $00, $20
	db $F7, $00
	db $FD, $01, $82
	db $F9, $04
	db $F2, $1E, $28, $20
	db $F6
	db $FA
	db $F7, $40
	db $FD, $01, $82
	db $FB, $FF, $00
	db $FE, $FF
	db $FE, $00
	db $FF
	
	db $F7, $00
	db $F4, $FF
	db $F7, $40
	db $FB, $FF, $0D
	db $F6
	db $FC, $05, $FE
	db $F8, $83
	db $F7, $00
	db $F4, $04
	db $F7, $40
	db $FF
	db $14
	db $14
	db $14
	db $14
	db $00
	db $14
	db $14
	db $14
	db $FF
	
opening_panel:
	db $F1, $00, $20
	db $F7, $00, $FD
	db $08, $83, $11
	db $F2
	db $0D, $19, $20, $12
	db $F6, $F9
	db $02, $1B
	db $F2, $0D, $28, $20, $1C
	db $F6, $FA
	db $13
	db $F2, $0D, $1A, $20, $14
	db $F6
	db $FD, $00, $87
	db $11, $19, $19, $19, $19, $15, $19, $19, $15, $19, $19, $15, $19
	db $19, $19, $19, $19, $19, $15
	db $F2, $08, $19, $20, $15, $19, $19, $19, $12
	db $F6
	db $F9, $02, $1B, $28, $28, $28, $28, $1D, $28, $28, $1D, $28, $28, $1D
	db $F2, $06, $28, $20, $1D
	db $F2, $08, $28, $20, $1D, $28, $28, $28, $1C
	db $F6, $FA
	db $17, $1E, $1E, $1E, $1E, $27, $1E, $1E, $24
	db $1E, $1E, $24, $1E, $1E, $1E, $1E, $1E, $1E, $24, $F2, $07, $1E, $20
	db $1E, $24, $1E, $1E, $1E, $18
	db $F6
	db $1B
	db $F3
	db $04
	db $F0
	db $28, $1D
	db $F2
	db $19, $28, $20, $1C
	db $F6
	db $1B
	db $F3
	db $04
	db $F4
	db $28, $1D
	db $F2
	db $19, $28, $20, $1C
	db $F6, $1B
	db $F3, $04
	db $F8
	db $28, $1D
	db $F2
	db $19, $28, $20, $1C
	db $F6, $1B, $F3, $04
	db $FC
	db $28, $1D
	db $F2
	db $19, $28, $20, $1C
	db $F6, $17, $1E, $1E, $1E, $1E, $24
	db $F2, $19, $1E, $20, $18
	db $F6, $F9
	db $02, $1B
	db $F2
	db $1E, $28, $20, $1C
	db $F6, $FA
	db $17
	db $F2
	db $1E, $1E, $20, $18
	db $F6, $F9
	db $02, $1B
	db $F2
	db $1E, $28, $20, $1C
	db $F6, $FA
	db $17
	db $F2
	db $1E, $1E, $20, $18
	db $F6, $F9
	db $02, $1B
	db $F2
	db $1E, $28, $20, $1C
	db $F6, $FA
	db $13
	db $F2
	db $1E, $1A, $20, $14
	db $F6, $F7
	db $01
	db $FD, $15, $A4
	db $F2
	db $83, $00, $18
	db $F7, $00
	db $FD, $01, $B9, $F2
	db $9F, $00, $18
	db $F7
	db $40
	db $FD, $09, $84
	db $0D, $6B, $05
	db $FD, $01, $88
	db $0D
	dw $056D	
	db $FD, $06, $88
	db $0D
	dw $056E
	db $FD, $09, $88
	db $0D
	dw $056F
	db $FD, $0C, $88
	db $0D
	dw $0570
	db $FD, $14, $88
	db $0D
	dw $0571
	db $FD, $1C, $88
	db $0D
	dw $056C
	db $FD, $06, $8B
	db $0D
	dw $056D
	db $F6
	db $0D
	dw $0573
	db $FD, $16, $8D
	db $0D
	dw $0572
	db $FD, $01, $90
	db $0D
	dw $0570
	db $FD, $01, $93
	db $0D
	dw $0571
	db $FD, $16, $93
	db $0D
	dw $0574
	db $FD, $01, $96
	db $0D
	dw $056C	
	db $FE, $FF, $FE, $00
	db $FF

opening_panel2:
	db $F1
	dw $2000
	db $F7, $40
	db $FD, $0D, $8B
	db $FB, $12, $80
	db $FB, $18, $80
	db $F6
	db $FB, $1E, $80
	db $FD, $1C, $8D
	db $FB, $FF, $FF
	db $FD, $08, $90
	db $FB, $FF, $FF
	db $FD, $07, $93
	db $0D
	dw $0579
	db $F8, $82
	db $0D
	dw $057A
	db $F8, $82
	db $FD, $1D, $93
	db $FB, $FF, $FF	
	db $FD, $06, $96
	db $FB, $FF, $FF
	db $FE, $FF, $FE, $00, $FE, $01
	db $FF
	
new_space:
	LDA $1A
	CMP #$9E48
	BNE +
	LDA $16
	CLC
	ADC #$0084	//menu seishin
-
	STA $18
	STA $16
	JML $8183FB
+
	LDA $16
	CLC
	ADC #$0080
	BRA -

menu_pos:
	STA $02
	PHA
	LDA $1A
	CMP #(menu_hightlight1)+1
	BNE +
	BRA _dec
+
	CMP #(menu1start)+1
	BNE +
	BRA _dec
+
	CMP #(panel_pos)+1
	BNE +
	BRA _dec2
+
	CMP #(panel_hightlight_pos)+1
	BNE +
	BRA _dec2
+
	CMP #(write_tousai)+1
	BNE +
	BRA _dec
+
_nodec:
	PLA
	AND #$007F
	JML $818F07
_dec:
	PLA
	AND #$007F
	CMP #$0017
	BCC +
	SEC
	SBC #$0005
+
	JML $818F07
	
_dec2:
	PLA
	AND #$007F
	CMP #$0011
	BCC +
	SEC
	SBC #$0009
+
	JML $818F07

	
override_seishin_tile:
	PHA
	LDA $7FFFFC
	CMP #$DEAD
	BNE +
	PLA
	SEC
	SBC #$0002
	STA $7E8000,x
	CLC
	ADC #$0001
	STA $7E8040,x
	INX #2
	LDA #$0000
	STA $7FFFFC
	JML $8184E0
+
	PLA
	STA $7E8000,x
	CLC
	ADC #$0001
	STA $7E8040,x
	JML $8184C9
	
menu_panel_pos:
	LDA #$1208
	JSL $818FD5
	PHA
	AND #$FF00
	CMP #$0700
	BCC +
	PLA
	ORA #$8000
	JML $838113
+
	PLA
	ORA #$8600
	JML $838113
	
new_f7:
	SEP #$30
	LDY #$00
	LDA [$1A],y
	CMP #$FE
	BEQ +
	JML $818D20
+
	REP #$30
	INY
	LDA [$1A],y
	AND #$00FF
	ASL
	TAX
	JSR (execute_f7,x)
	REP #$30
	LDA $1A
	CLC
	ADC #$0002
	STA $1A
	JML $8183FB
	
execute_f7:
	dw save_14
	dw restore_14
	dw unit_name_bank
	dw pilot_name_bank
	dw waste_80864A
	dw redraw2nd_unit_panel
	dw waste_80864A_variable
	dw text_pos_bichousei
	dw buki_name_bank
	dw ability_bank
	
save_14:
	SEP #$20
	LDA $14
	STA $0D70
	STZ $14
	RTS
restore_14:
	SEP #$20
	LDA $0D70
	STA $14
	STZ $0D70
	RTS
unit_name_bank:
	SEP #$20
	LDA.b #(unit_chr>>16)
	STA $0D64
	RTS
pilot_name_bank:
	SEP #$20
	LDA.b #(pilot_chr>>16)
	STA $0D64
	RTS
waste_80864A:
	SEP #$30
	JSL $80864A
	RTS
redraw2nd_unit_panel:
	SEP #$30
	LDA $14
	CLC
	ADC #$03
	STA $14
	TAX
	LDA $1C
	STA $0DFF,x
	REP #$20
	LDA $1A
	CLC
	ADC #$0002
	STA $0DFD,x
	SEP #$30
	LDA.b #(new_unit_panel>>16)
	STA $1C
	REP #$30
	LDA #(new_unit_panel)
	DEC
	DEC
	STA $1A
	RTS
waste_80864A_variable:
	SEP #$30
	LDA $00
	PHA
	JSL $80864A
	STA $00
-
	JSL $80864A
	DEC $00
	BNE -
	PLA
	STA $00
	RTS
text_pos_bichousei:
	PHP
	SEP #$20
	REP #$10
	LDY $8A
	LDA $0100,y
	CMP #$B0  //no shield
	BNE +
	REP #$20
	LDA $18
	DEC #2
	STA $18
	BRA end_bichousei
+
	CMP #$B2	//size S
	BNE +
	REP #$20
	LDA $18
	INC #2
	STA $18
	BRA end_bichousei
+
	CMP #$B4	//size L
	BNE end_bichousei
	REP #$20
	LDA $18
	INC #2
	STA $18
end_bichousei:
	PLP
	RTS
buki_name_bank:
	SEP #$20
	LDA.b #(buki_chr>>16)
	STA $0D64
	RTS
ability_bank:
	SEP #$20
	LDA.b #(ability_chr>>16)
	STA $0D64
	RTS

incsrc "seishinichiran.asm"
incsrc "menu_panel.asm"
incsrc "ability.asm"

new_unit_panel:
	db $F7, $00
	db $FD, $01, $90	//HP pos
	db $5A, $5B, $28	//HP
	db $F8, $85
	db $4F
	db $F8, $00		//HP variable
	db $F6
	db $28, $28, $28
	db $F8, $0B
	db $F6
	db $5C, $5D, $28	//EN
	db $F8
	db $83, $4F
	db $F8, $00
	db $FD, $07, $92
	db $F8, $04
	db $F7, $40
	db $FD, $01, $97
	db $FB, $FF, $0D	//skill1
	db $FD, $09, $97
	db $FB, $FF, $0D	//skill2
	db $FD, $01, $99
	db $FB, $FF, $0D	//skill3
	db $FD, $09, $99
	db $FB, $FF, $0D	//skill4
	db $FF
	
opening_panel3:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8A06
	db $F5, $00, $B0, $16, $84		//del
	db $FC, $00
	db $FC, $11
	db $F2, $14
	dw $2019
	db $12
	db $F6
	db $F9, $02, $1B
	db $F2, $14
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $14
	dw $201A
	db $14
	db $F6
	db $FD
	dw $8E0E
	db $F5, $B0, $B0, $06, $86	//del
	db $FC, $00
	db $FA, $11
	db $F2, $04
	dw $2019
	db $12
	db $F6
	db $F9, $04, $1B
	db $F2, $04
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $04
	dw $201A
	db $14
	db $F6
	db $F7, $40
	db $FD
	dw $8B07
	db $0D
	dw $0593
	db $FD
	dw $8F0F
	db $0D
	dw $0594
	db $F6
	db $0D
	dw $0595
	db $FE, $FF, $FE, $00
	db $FF
	
opening_panel4:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8A06
	db $F5, $00, $B0, $16, $04		//del panel
	db $FD
	dw $8E0E
	db $F5, $B0, $B0, $06, $06
	db $FE, $00, $FF
	db $FD
	dw $FFFF
	db $F9, $00
	db $FA
	db $F7, $03
	db $FC, $01, $01
	db $F2, $86
	dw $FFFF
	db $F7, $03
	db $FC, $01, $FF
	db $F2, $86
	dw $FFFF
	db $F7, $02
	db $FC, $01, $FF
	db $F2, $84
	dw $FFFF
	db $F7, $03
	db $FC, $01, $FF
	db $F2, $84
	dw $FFFF
	db $F7, $0A
	db $FC, $01, $FF
	db $F2, $94
	dw $FFFF
	db $F7, $04
	db $FC, $01, $FF
	db $F2, $88
	dw $FFFF
	db $FE, $00
	db $FF

opening_panel5:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8B06
	db $F5
	dw $B100, $8605
	db $FD
	dw $8B06
	db $11, $19, $19, $19, $12
	db $F6
	db $F9, $04
	db $1B, $28, $28, $28, $1C
	db $F6
	db $FA, $13
	db $1A, $1A, $1A, $14
	db $F6
	db $F7, $40
	db $FD
	dw $8C07
	db $0D
	dw $0577		//otoko
	db $F6
	db $0D
	dw $0578
	db $FE, $00, $FE, $FF
	db $FF
	
opening_panel6:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8B04
	db $F5
	dw $B100, $8A18
	db $FD
	dw $8B04
	db $11
	db $F2, $16
	dw $2019
	db $12
	db $F6
	db $F9, $08, $1B
	db $F2, $16
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $16
	dw $201A
	db $14
	db $F6
	db $F7, $40
	db $FD
	dw $8C06
	db $FB, $84, $0D
	db $F6
	db $FB, $86, $0D
	db $F6
	db $FB, $85, $0D
	db $F6
	db $FB, $87, $0D
	db $FE, $FF, $FE, $00
	db $FF
	
opening_panel7:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $9305
	db $F5
	dw $B100
	dw $860A
	db $FD
	dw $9305
	db $11
	db $F2, $08
	dw $2019
	db $12
	db $F6
	db $F9, $04, $1B
	db $F2, $08
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $08
	dw $201A
	db $14
	db $F6
	db $F7, $40
	db $FD
	dw $9406
	db $0D
	dw $0575
	db $F6
	db $0D
	dw $0576
	db $FE, $FF, $FE, $00
	db $FF
	
opening_panel8:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8D0A
	db $F5
	dw $B100
	dw $840C
	db $FD
	dw $8D0A
	db $11
	db $F2, $0A
	dw $2019
	db $12
	db $F6
	db $F9, $02, $1B
	db $F2, $0A
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $0A
	dw $201A
	db $14
	db $F6
	db $F7, $40
	db $FD
	dw $8E0B
	db $0D
	dw $0596
	db $FE, $FF, $FE, $00
	db $FF
	
opening_panel9:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $FFFF
	db $F5
	dw $B200, $8606
	db $FC, $00
	db $FA, $11
	db $F2, $04
	dw $2019
	db $12
	db $F6
	db $F9, $04, $1B
	db $F2, $04
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $04
	dw $201A
	db $14
	db $F6
	db $F7, $40
	db $FC, $01, $FB
	db $0D
	dw $0597
	db $F6
	db $0D
	dw $0595
	db $FE, $FF, $FE, $00
	db $FF
	
opening_panel10:		//seinengappi suchi pos
	db $F1
	dw $2000
	db $F7, $40
	db $FD
	dw $9311
	db $F8, $82
	db $FD
	dw $930B
	db $F8, $82
	db $FD
	dw $931D	//ketsueki pos
	db $FB
	dw $FFFF
	db $F7, $03
	db $FD
	dw $9308	//hi
	db $F2, $86
	dw $FFFF
	db $F6
	db $FD
	dw $930D
	db $F2, $84
	dw $FFFF
	db $FD
	dw $931B
	db $F2, $84
	dw $FFFF
	db $FE, $FF, $FE, $00
	db $FF

opening_panel11:		//seinengappi box
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8B04
	db $F5
	dw $B100, $8710
	db $FD
	dw $8B04
	db $11
	db $F2, $0E
	dw $2019
	db $12
	db $F6
	db $F9, $05, $1B
	db $F2, $0E
	dw $2028
	db $1C
	db $F6
	db $FA, $13
	db $F2, $0E
	dw $201A
	db $14
	db $F6
	db $F7, $40
	db $FD
	dw $8C05
	db $31, $00, $32, $00, $33, $00, $34, $00, $35, $00
	db $0D
	dw $0598
	db $FD
	dw $8F05
	db $36, $00, $37, $00, $38, $00, $39, $00, $30, $00
	db $0D
	dw $0599
	db $FE, $FF, $FE, $00
	db $FF
	
pilot_panel:
	db $F0
	dw $2804
	db $2C
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8100
	db $11
	db $F2, $09
	dw $2019
	db $15
	db $F2, $0A
	dw $2019
	db $15
	db $F2, $09
	dw $2019
	db $12
	db $F6
	db $F9, $02, $1B
	db $F2, $09
	dw $202F
	db $1D
	db $F2, $0A
	dw $2028
	db $1D
	db $F2, $09
	dw $202F
	db $1C
	db $F6
	db $FA, $17
	db $F2, $04
	dw $201E
	db $23
	db $F2, $04
	dw $201E
	db $24
	db $F2, $0A
	dw $201E
	db $24
	db $F2, $09
	dw $201E
	db $18
	db $F6
	db $1B
	db $F3, $04
	db $F0
	dw $1D28
	db $F2, $19
	dw $2028
	db $1C
	db $F6
	db $1B
	db $F3, $04
	db $F4, $28, $1D
	db $F2, $19
	dw $2028
	db $1C
	db $F6
	db $1B
	db $F3, $04
	db $F8, $28, $1D
	db $F2, $19
	dw $2028
	db $1C
	db $F6
	db $1B
	db $F3, $04
	db $FC, $28, $1D
	db $F2, $19
	dw $2028
	db $1C
	db $F6
	db $17
	db $F2, $04
	dw $201E
	db $22
	db $F2, $19
	dw $2028
	db $1C
	db $F6
	db $F9, $05, $1B
	db $F2, $1E
	dw $2028
	db $1C
	db $F6
	db $FA, $17
	db $F2, $0A
	dw $201E
	db $23
	db $F2, $08
	dw $201E
	db $23
	db $F2, $05
	dw $201E
	db $23, $1E, $1E, $1E, $1E, $18
	db $F6
	db $F9, $02, $1B
	db $F2, $0A
	dw $2028
	db $1D
	db $F2, $08
	dw $2028
	db $1D
	db $F2, $05
	dw $2028
	db $1D, $28, $28, $28, $28, $1C
	db $F6
	db $FA, $17
	db $F2, $0A
	dw $201E
	db $26
	db $F2, $08
	dw $2028
	db $1D
	db $F2, $05
	dw $2028
	db $1D, $28, $28, $28, $28, $1C
	db $F6
	db $F9, $05, $1B
	db $F2, $0A
	dw $2028
	db $1D
	db $F2, $08
	dw $2028
	db $1D
	db $F2, $05
	dw $2028
	db $1D, $28, $28, $28, $28, $1C
	db $F6
	db $FA, $1B
	db $F2, $0A
	dw $2028
	db $25
	db $F2, $08
	db $1E, $20, $24
	db $F2, $05
	db $1E, $20, $26, $28, $28, $28, $28, $1C
	db $F6
	db $F9, $02, $1B
	db $F2, $0A
	dw $2028
	db $1D
	db $F2, $0E
	dw $2028
	db $1D, $28, $28, $28, $28, $1C
	db $F6
	db $FA, $13
	db $F2, $0A
	dw $201A
	db $16
	db $F2, $0E
	db $1A, $20, $16, $1A, $1A, $1A, $1A, $14
	db $F6
	db $F7, $40
	db $FD
	dw $820B
	db $0D
	dw $003B	//pilot ability
	db $FD
	dw $8506
	db $FB
	dw $06FF
	db $F6
	db $FB
	dw $0DFF
	db $FD
	dw $8517
	db $0D		//Level
	dw $003D
	db $F8, $83
	db $F6
	db $0D		//Kiryoku
	dw $003E
	db $F8, $83
	db $FD
	dw $8A01
	db $0D	//Kin kougeki
	dw $059A
	db $F2, $FF
	db $F8, $83
	db $F6
	db $0D		//En kougeki
	dw $059B
	db $F2, $FF
	db $F8, $83
	db $FD
	dw $8A0C
	db $F7, $00
	db $F4, $FF
	db $F7, $40
	db $0D		//Kaihi
	dw $059C
	db $00
	db $F8, $83
	db $10
	db $F8, $00
	db $F6
	db $F7, $00
	db $F4, $FF
	db $F7, $40
	db $0D		//Meichu
	dw $059D
	db $00
	db $F8, $83
	db $10
	db $F8, $00
	db $F7, $00
	db $F4, $04
	db $F7, $40
	db $FD
	dw $188A
	db $0D		//Chokkan
	dw $059E
	//db $00
	db $F8, $83
	db $F6
	db $0D		//Giryo
	dw $059F
	//db $00
	db $F8, $83
	db $FD
	dw $9001
	db $28, $25, $00		//sp
	db $F8, $83, $0F
	db $F8, $00
	db $FD
	dw $9301
	db $0D		//Seishin komand
	dw $05A0
	db $F6
	db $FD
	dw $9501
	db $FB
	dw $0DFF
	db $FD
	dw $9507
	db $FB
	dw $0DFF
	db $FD
	dw $9701
	db $FB
	dw $0DFF
	db $FD
	dw $9707
	db $FB
	dw $0DFF
	db $FD
	dw $9901
	db $FB
	dw $0DFF
	db $FD
	dw $9907
	db $FB
	dw $0DFF
	db $FD
	dw $900C
	db $0D		//Tokushu gino
	dw $05A1
	db $F6
	db $0D		//Tokushu gino2
	dw $05A3
	db $F6
	db $FB
	dw $10FF
	db $F6
	db $FB
	dw $10FF
	db $F6
	db $FB
	dw $10FF
	db $FD
	dw $9015
	db $0D		//Gekiha su
	dw $05A2
	db $F6
	db $F7, $05
	db $F1
	dw $3400
	db $FD
	dw $9215
	db $F8, $1E
	db $F1
	dw $2000
	db $FD
	dw $990C
	db $FB
	dw $00FF
	db $F7, $40
	db $FD
	dw $901B
	db $0D		//Chikei
	dw $028D
	db $FD
	dw $931B
	db $0D	//Sora
	dw $0292
	db $F6
	db $0D		//Riku
	dw $0293
	db $F6
	db $0D		//Umi
	dw $0294
	db $F6
	db $0D		//Uchu
	dw $0295
	db $FD
	dw $931E
	db $FB
	dw $0DFF
	db $F6
	db $FB
	dw $0DFF
	db $F6
	db $FB
	dw $0DFF
	db $F6
	db $FB
	dw $0DFF
	db $FE, $FF, $FE, $00
	db $FF	
	
textbox1:
	db $F1
	dw $2000
	db $F7, $00
	db $FD
	dw $8100
	db $FB
	dw $0002
	db $FE, $00
	db $FF
textbox2:
	db $F1
	dw $2100
	db $F7, $00
	db $FD
	dw $9300
	db $FB
	dw $0002
	db $FE, $00
	db $FF
	
new_wai:
	PHP
	REP #$30
	LDA #$0000
	STA $2181
	SEP #$20
	LDA #$7E
	STA $2183
	LDA #$80
	STA $2110
	LDX #$0000
	LDA #$00
-
	STA $2180
	INX
	CPX #$0200
	BNE -
	LDX #$1801
	STX $4300
	LDA.b #(blank>>16)
	STA $4304
	LDX #(blank)
	STX $4302
	LDX #$0800
	STX $4305
	LDX #$5000
	STX $2116
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	LDX #$3000
	STX $2116
	LDA #$01
	STA $420B	
	
	LDA.b #(intro_chr)>>16
	STA $4304
	LDX #(intro_chr)
	STX $4302
	LDX #$1600
	STX $4305
	LDX #$1801
	STX $4300
	LDX #$0000
	STX $2116
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	STA $2105
	LDX #$1000
	STX $2116
	LDA.b #(intro_map)>>16
	STA $4304
	LDX #(intro_map)
	STX $4302
	LDX #$0800
	STX $4305
	LDX #$1801
	STX $4300
	LDA #$80
	STA $2115
	LDA #$01
	STA $420B
	
	LDA #$10
	STA $2109
	LDA #$50
	STA $2107
	LDA #$30
	STA $2108
	STZ $210C
	LDA #$42
	STA $210B
	LDA #$04
	STA $212C
	STZ $212D
	STZ $210D
	STZ $210D
	STZ $210E
	STZ $210E
	STZ $210F
	STZ $210F
	STZ $2110
	STZ $2110
	STZ $2111
	STZ $2111
	STZ $2112
	STZ $2112
	
	LDX #$0000
	STZ $2121
-
	LDA intro_col,x
	STA $2122
	INX
	CPX #$0006
	BNE -
	STZ $00
	LDA #$05
	STA $01
	STA $02
-
	JSR waitblanking
	DEC $01
	BNE -
	LDA $02
	STA $01
	INC $00
	LDA $00
	STA $2100
	CMP #$0F
	BNE -
	LDX #$00C0
	TXY
-
	JSR waitblanking
	DEX
	BNE -

-
	JSR waitblanking
	DEC $01
	BNE -
	LDA $02
	STA $01
	DEC $00
	LDA $00
	STA $2100
	BNE -
	LDA #$80
	STA $2100
	PLP
	JML $80EFBC
	
intro_col:
	dw $0000, $0FDC, $76A0
waitblanking:
	BIT $4212
	BMI waitblanking
-
	BIT $4212
	BPL -
	RTS
	
