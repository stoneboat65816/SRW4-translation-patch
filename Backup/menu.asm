new_menu:
	LDA $C900D8,x
	STA $1A
	LDA $C900D9,x
	STA $1B
	LDA [$1A],y
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
	dw write_command_para1D7//South Burining
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
	
write_command_para0:
	LDA #(command1)	//idou
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1:
	LDA #(command1)	//seishin
	CLC
	ADC #$0080
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para2:
	LDA #(command1)	//nouryoku
	CLC
	ADC #$0100
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para3:
	LDA #(command1)	//kougeki
	CLC
	ADC #$0300
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para4:
	LDA #(command1)	//henkei
	CLC
	ADC #$0280
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para5:
	LDA #(command1)	//gattai
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para6:
	LDA #(command1)	//bunri
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para7:
	LDA #(command1)	//settoku
	CLC
	ADC #$0600
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para8:
	LDA #(command1)	//chichuu
	CLC
	ADC #$0400
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para9:
	LDA #(command1)	//suichuu
	CLC
	ADC #$0580
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraA:
	LDA #(command1)	//chijou
	CLC
	ADC #$0180
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraB:
	LDA #(command1)	//kuuchuu
	CLC
	ADC #$0200
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraC:
	LDA #(command1)	//taiki
	CLC
	ADC #$0380
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraD:
	LDA #(command1)	//part
	CLC
	ADC #$0480
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraE:
	LDA #(command1)	//hasshin
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraF:
	LDA #(command1)	//tousai
	CLC
	ADC #$0780
	STA $0D60
	LDA #$0006
	STA $0D62
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
	RTS
write_command_para11:
	LDA #(seishin_chr)
	CLC
	ADC #$0900	//dokonjou
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para12:
	LDA #(seishin_chr)
	CLC
	ADC #$0780	//hokyuu
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para13:
	LDA #(seishin_chr)
	CLC
	ADC #$0400	//yuujou
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para14:
	LDA #(seishin_chr)
	CLC
	ADC #$0380	//shinrai
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para15:
	LDA #(seishin_chr)
	CLC
	ADC #$0480	//hakuai
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para16:
	LDA #(seishin_chr)
	CLC
	ADC #$0B80	//gekido
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para17:
	LDA #(seishin_chr)
	CLC
	ADC #$0C80	//kiai
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para18:
	LDA #(seishin_chr)
	STA $0D60	//kasoku
	LDA #$0005
	STA $0D62
	RTS
write_command_para19:
	LDA #(seishin_chr)
	CLC
	ADC #$0080	//nekketsu
	STA $0D60
	LDA #$0008
	STA $0D62
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
	RTS
write_command_para1B:
	LDA #(seishin_chr)
	CLC
	ADC #$0300	//hirameki
	STA $0D60
	LDA #$0008
	STA $0D62
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
	RTS
write_command_para1D:
	LDA #(seishin_chr)
	CLC
	ADC #$0D00	//kakusei
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para1E:
	LDA #(seishin_chr)
	CLC
	ADC #$0A00	//i-atsu
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para1F:
	LDA #(seishin_chr)
	CLC
	ADC #$0180	//tekagen
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para20:
	LDA #(seishin_chr)
	CLC
	ADC #$0100	//shuuchuu
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para21:
	LDA #(seishin_chr)
	CLC
	ADC #$0600	//gekirei
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para22:
	LDA #(seishin_chr)
	CLC
	ADC #$0800	//saidou
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para23:
	LDA #(seishin_chr)
	CLC
	ADC #$0E80	//fukkatsu
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para24:
	LDA #(seishin_chr)
	CLC
	ADC #$0A80	//kakuremi
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para25:
	LDA #(seishin_chr)
	CLC
	ADC #$0C00	//datsuryoku
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para26:
	LDA #(seishin_chr)
	CLC
	ADC #$0D80	//jibaku
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para27:
	LDA #(seishin_chr)
	CLC
	ADC #$0980	//tansaku
	STA $0D60
	LDA #$0008
	STA $0D62
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
	RTS
write_command_para29:
	LDA #(seishin_chr)
	CLC
	ADC #$0580	//kakuran
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para2A:
	LDA #(seishin_chr)
	CLC
	ADC #$0500	//teisatsu
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para2B:
	LDA #(seishin_chr)
	CLC
	ADC #$0680	//teppeki
	STA $0D60
	LDA #$0007
	STA $0D62
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
	RTS
write_command_para2E:
	LDA #(seishin_chr)
	CLC
	ADC #$0F00	//seishin point
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para2F:
	LDA #(seishin_chr)
	CLC
	ADC #$0F80	//nazo
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para30:
	LDA #(panel_chr)	//turn end
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para31:
	LDA #(panel_chr)	//butai
	CLC
	ADC #$00D0
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_para32:
	LDA #(panel_chr)	//map
	CLC
	ADC #$01C0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para33:
	LDA #(panel_chr)	//seishin
	CLC
	ADC #$0290
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para34:
	LDA #(panel_chr)	//meirei
	CLC
	ADC #$0360
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para35:
	LDA #(panel_chr)	//system
	CLC
	ADC #$0440
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para36:
	LDA #(panel_chr)		//mokuteki
	CLC
	ADC #$0510
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para37:
	LDA #(panel_chr)	//save
	CLC
	ADC #$05E0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para38:
	LDA #(panel_chr)		//turn suu
	CLC
	ADC #$0660
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para39:
	LDA #(panel_chr)		//shikin
	CLC
	ADC #$06C0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para3A:
	LDA #(ability_chr)		//unit ability
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para3B:
	LDA #(ability_chr)		//pilot ability
	CLC
	ADC #$00A0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS	
write_command_para3C:
	LDA #(ability_chr)		//pilot ability
	CLC
	ADC #$0140
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para3D:
	LDA #(ability_chr)		//level
	CLC
	ADC #$0370
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para3E:
	LDA #(ability_chr)		//kiryoku
	CLC
	ADC #$0320
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para3F:
	LDA #(ability_chr)		//chikei
	CLC
	ADC #$0440
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para40:
	LDA #(ability_chr)		//type
	CLC
	ADC #$0190
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para41:
	LDA #(ability_chr)		//idou
	CLC
	ADC #$01C0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para42:
	LDA #(ability_chr)		//undou
	CLC
	ADC #$0220
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para43:
	LDA #(ability_chr)		//soukou
	CLC
	ADC #$0280
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para44:
	LDA #(ability_chr)		//genkai
	CLC
	ADC #$02C0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para45:
	LDA #(ability_chr)		//next level
	CLC
	ADC #$03B0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para46:
	LDA #(ability_chr)		//beam coat
	CLC
	ADC #$0480
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para47:
	LDA #(ability_chr)		//E-field
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para48:
	LDA #(ability_chr)		//Aura barrier
	CLC
	ADC #$0550
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para49:
	LDA #(ability_chr)		//Beam barrier
	CLC
	ADC #$05C0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para4A:
	LDA #(ability_chr)		//HP kaifuku
	CLC
	ADC #$0640
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para4B:
	LDA #(ability_chr)		//bunshin
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para4C:
	LDA #(ability_chr)		//henkei
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para4D:
	LDA #(ability_chr)		//gattai
	CLC
	ADC #$0760
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para4E:
	LDA #(ability_chr)		//bunri
	CLC
	ADC #$07B0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para4F:
	LDA #(unit_chr)		//bunri
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para50:
	LDA #(unit_chr)		//F-91
	CLC
	ADC #$0060
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para51:
	LDA #(unit_chr)		//NT Alex
	CLC
	ADC #$00A0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para52:
	LDA #(unit_chr)		//GP-01FB
	CLC
	ADC #$0110
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para53:
	LDA #(unit_chr)		//GP-02A
	CLC
	ADC #$0180
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para54:
	LDA #(unit_chr)		//GP-03 Dendrobium
	CLC
	ADC #$01E0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para55:
	LDA #(unit_chr)		//GP-03S Stamen
	CLC
	ADC #$02B0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para56:
	LDA #(unit_chr)		//Gun Cannon
	CLC
	ADC #$0360
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para57:
	LDA #(unit_chr)		//Gun Tank
	CLC
	ADC #$0F30
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para58:
	LDA #(unit_chr)		//Ball
	CLC
	ADC #$03E0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para59:
	LDA #(unit_chr)		//Nemo
	CLC
	ADC #$0410
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para5A:
	LDA #(unit_chr)		//GM II
	CLC
	ADC #$0450
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para5B:
	LDA #(unit_chr)		//Jegan
	CLC
	ADC #$0480
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para5C:
write_command_para5D:
	LDA #(unit_chr)		//Re-Gz
	CLC
	ADC #$04C0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para5E:
	LDA #(unit_chr)		//Getter1
	CLC
	ADC #$0F90
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para5F:
	LDA #(unit_chr)		//Getter2
	CLC
	ADC #$0510
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para60:
	LDA #(unit_chr)		//Getter3
	CLC
	ADC #$0570
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para61:
	LDA #(unit_chr)		//Getter Dragon
	CLC
	ADC #$05D0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para62:
	LDA #(unit_chr)		//Getter Liger
	CLC
	ADC #$0670
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para63:
	LDA #(unit_chr)		//Getter Dragon
	CLC
	ADC #$0700
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para64:
write_command_para65:
	LDA #(unit_chr)		//Mazinger Z
	CLC
	ADC #$07C0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para66:
	LDA #(unit_chr)		//Great Mazinger
	CLC
	ADC #$0840
	STA $0D60
	LDA #$000B
	STA $0D62
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
	RTS
write_command_para68:
	LDA #(unit_chr)		//Speizer
	CLC
	ADC #$0970
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para69:
	LDA #(unit_chr)		//Double Speizer
	CLC
	ADC #$09D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para6A:
	LDA #(unit_chr)		//Drill Speizer
	CLC
	ADC #$0A80
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para6B:
	LDA #(unit_chr)		//Marine Speizer
	CLC
	ADC #$0B10
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para6F:
	LDA #(unit_chr)		//Afrodite A
	CLC
	ADC #$0BC0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para70:
	LDA #(unit_chr)		//Diana A
	CLC
	ADC #$0C40
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para71:
	LDA #(unit_chr)		//Boss Borot
	CLC
	ADC #$0CA0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para72:
	LDA #(unit_chr)		//Venus A
	CLC
	ADC #$0D20
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para73:
	LDA #(unit_chr)		//Battle Jet
	CLC
	ADC #$0D80
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para74:
	LDA #(unit_chr)		//Battle Crusher
	CLC
	ADC #$0E00
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para75:
	LDA #(unit_chr)		//Battle Tank
	CLC
	ADC #$0EB0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para76:
	LDA #(unit_chr)		//Battle Marine
	CLC
	ADC #$1000
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para77:
	LDA #(unit_chr)		//Battle Craft
	CLC
	ADC #$10A0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para78:
	LDA #(unit_chr)		//Combattler V
	CLC
	ADC #$1130
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para79:
	LDA #(unit_chr)		//Raideen
	CLC
	ADC #$11C0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para7A:
	LDA #(unit_chr)		//Blueger
	CLC
	ADC #$1220
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para7B:
	LDA #(unit_chr)		//Daimos
	CLC
	ADC #$1270
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para7C:
	LDA #(unit_chr)		//Galver FX II
	CLC
	ADC #$2360
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para7D:
	LDA #(unit_chr)		//Daitarn 3
	CLC
	ADC #$12C0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para7E:
	LDA #(unit_chr)		//Dai Fighter
	CLC
	ADC #$1330
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para7F:
	LDA #(unit_chr)		//Daitank
	CLC
	ADC #$13C0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para80:
	LDA #(unit_chr)		//Zambird
	CLC
	ADC #$1420
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para81:
	LDA #(unit_chr)		//Zambo Ace
	CLC
	ADC #$1480
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para82:
	LDA #(unit_chr)		//Zambull
	CLC
	ADC #$1500
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para83:
	LDA #(unit_chr)		//Zambase
	CLC
	ADC #$1550
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para84:
	LDA #(unit_chr)		//Zambot3
	CLC
	ADC #$15B0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para85:
	LDA #(unit_chr)		//Dunbine
	CLC
	ADC #$1620
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para86:
	LDA #(unit_chr)		//Billbine
	CLC
	ADC #$1680
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para87:
	LDA #(unit_chr)		//Wing caliver
	CLC
	ADC #$16E0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para88:
	LDA #(unit_chr)		//Goshogun
	CLC
	ADC #$1770
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para89:
	LDA #(unit_chr)		//Dankuga
	CLC
	ADC #$17E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para8A:
	LDA #(unit_chr)		//Eagle Fighter N
	CLC
	ADC #$1840
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para8B:
	LDA #(unit_chr)		//Eagle Fighter A
	CLC
	ADC #$1900
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para8C:
	LDA #(unit_chr)		//Eagle Fighter H
	CLC
	ADC #$19B0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para8D:
	LDA #(unit_chr)		//Land Kuga N
	CLC
	ADC #$1A60
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para8E:
	LDA #(unit_chr)		//Land Kuga A
	CLC
	ADC #$1AE0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para8F:
	LDA #(unit_chr)		//Land Kuga H
	CLC
	ADC #$1B70
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para90:
	LDA #(unit_chr)		//Land Liger N
	CLC
	ADC #$1C00
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para91:
	LDA #(unit_chr)		//Land Liger A
	CLC
	ADC #$1C90
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para92:
	LDA #(unit_chr)		//Land Liger H
	CLC
	ADC #$1D20
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para93:
	LDA #(unit_chr)		//Big Moth N
	CLC
	ADC #$1DB0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para94:
	LDA #(unit_chr)		//Big Moth A
	CLC
	ADC #$1E30
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para95:
	LDA #(unit_chr)		//Big Moth H
	CLC
	ADC #$1EB0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para96:
	LDA #(unit_chr)		//Bloodtemple
	CLC
	ADC #$1F30
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para97:
	LDA #(unit_chr)		//Atol 5
	CLC
	ADC #$2400
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para98:
	LDA #(unit_chr)		//Godneros
	CLC
	ADC #$2000
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para99:
	LDA #(unit_chr)		//Psybuster
	CLC
	ADC #$2070
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para9A:
	LDA #(unit_chr)		//Psybird
	CLC
	ADC #$20E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para9B:
	LDA #(unit_chr)		//Granzon
	CLC
	ADC #$2140
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para9B:
	LDA #(unit_chr)		//Granzon
	CLC
	ADC #$2140
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para9C:
	LDA #(unit_chr)		//Neo Granzon
	CLC
	ADC #$21A0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para9D:
	LDA #(unit_chr)		//Valsione R
	CLC
	ADC #$2230
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para9E:
	LDA #(unit_chr)		//Zamzeed
	CLC
	ADC #$22A0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para9F:
	LDA #(unit_chr)		//Granvel
	CLC
	ADC #$2300
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraA0:
	LDA #(unit_chr)		//Gaddess
	CLC
	ADC #$2450
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraA1:
	LDA #(unit_chr)		//Wizol kai
	CLC
	ADC #$24A0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraA2:
	LDA #(unit_chr)		//Norus Rei
	CLC
	ADC #$2500
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraA3:
	LDA #(unit_chr)		//Gadifoul
	CLC
	ADC #$2570
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraA4:
	LDA #(unit_chr)		//Gespent
	CLC
	ADC #$3B70
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraA5:
	LDA #(unit_chr)		//Zaku kai
	CLC
	ADC #$2600
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraA6:
	LDA #(unit_chr)		//Dom
	CLC
	ADC #$25D0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_paraA7:
	LDA #(unit_chr)		//Elemes
	CLC
	ADC #$2660
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraA8:
	LDA #(unit_chr)		//Marasai
	CLC
	ADC #$26B0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraA9:
	LDA #(unit_chr)		//Barzam
	CLC
	ADC #$2710
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraAA:
write_command_paraAB:
	LDA #(unit_chr)		//Hambrabi
	CLC
	ADC #$2760
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraAC:
write_command_paraAD:
	LDA #(unit_chr)		//Asshimer
	CLC
	ADC #$27D0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraAE:
write_command_paraAF:
	LDA #(unit_chr)		//Psycho Gundam
	CLC
	ADC #$2840
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_paraB0:
	LDA #(unit_chr)		//Byarlant
	CLC
	ADC #$28E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraB1:
write_command_paraB2:
	LDA #(unit_chr)		//Gabthley
	CLC
	ADC #$2940
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraB3:
write_command_paraB4:
	LDA #(unit_chr)		//Baund Doc
	CLC
	ADC #$29A0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraB5:
write_command_paraB6:
	LDA #(unit_chr)		//Psycho Gundam mk2
	CLC
	ADC #$2A10
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_paraB7:
	LDA #(unit_chr)		//Hyakushiki
	CLC
	ADC #$2AE0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraB8:
write_command_paraB9:
	LDA #(unit_chr)		//Methuss
	CLC
	ADC #$2B50
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraBA:
	LDA #(unit_chr)		//Braw Bro
	CLC
	ADC #$2BB0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraBB:
	LDA #(unit_chr)		//Bigro
	CLC
	ADC #$2C20
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraBC:
	LDA #(unit_chr)		//Kempfer
	CLC
	ADC #$2C60
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraBD:
	LDA #(unit_chr)		//Val-waro
	CLC
	ADC #$2CC0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraBE:
	LDA #(unit_chr)		//Gerbera Tetra
	CLC
	ADC #$2D20
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_paraBF:
	LDA #(unit_chr)		//Neue Ziel
	CLC
	ADC #$2DC0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraC0:
	LDA #(unit_chr)		//Qubeley
	CLC
	ADC #$2E30
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraC1:
	LDA #(unit_chr)		//Qubeley mk2
	CLC
	ADC #$2E30
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraC2:
	LDA #(unit_chr)		//Garus J
	CLC
	ADC #$2F00
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraC3:
	LDA #(unit_chr)		//Zssa
	CLC
	ADC #$2F60
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraC4:
	LDA #(unit_chr)		//Hammer Hammer
	CLC
	ADC #$2FA0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_paraC5:
	LDA #(unit_chr)		//R Jarja
	CLC
	ADC #$3050
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraC6:
write_command_paraC7:
	LDA #(unit_chr)		//Bawoo
	CLC
	ADC #$30B0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraC8:
	LDA #(unit_chr)		//Dreissen
	CLC
	ADC #$3100
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraC9:
	LDA #(unit_chr)		//Quin Mantha
	CLC
	ADC #$3170
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_paraCA:
	LDA #(unit_chr)		//Doven Wolf
	CLC
	ADC #$3200
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraCB:
	LDA #(unit_chr)		//Geymalk
	CLC
	ADC #$3280
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraCC:
write_command_paraCD:
	LDA #(unit_chr)		//Geara Doga
	CLC
	ADC #$32D0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraCE:
write_command_paraCF:
	LDA #(unit_chr)		//Jadg Doga
	CLC
	ADC #$3350
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraD0:
	LDA #(unit_chr)		//Sazabi
	CLC
	ADC #$33C0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraD1:
	LDA #(unit_chr)		//Alpha Azieru
	CLC
	ADC #$3410
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraD2:
	LDA #(unit_chr)		//Vigna Ghina
	CLC
	ADC #$3470
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_paraD3:
	LDA #(unit_chr)		//Berga Giros
	CLC
	ADC #$3500
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_paraD4:
	LDA #(unit_chr)		//Raflessia
	CLC
	ADC #$3590
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraD5:
	LDA #(unit_chr)		//Mechasaurus Saki
	CLC
	ADC #$3600
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraD6:
	LDA #(unit_chr)		//Mechasaurus Bado
	CLC
	ADC #$36C0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_paraD7:
	LDA #(unit_chr)		//Mechasaurus Zai
	CLC
	ADC #$3790
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraD8:
	LDA #(unit_chr)		//Mechasaurus Zen 2
	CLC
	ADC #$3850
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_paraD9:
	LDA #(unit_chr)		//Mechasaurus Dai
	CLC
	ADC #$3920
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraDA:
	LDA #(unit_chr)		//Mechasaurus Sig
	CLC
	ADC #$39E0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraDB:
	LDA #(unit_chr)		//Dablas M2
	CLC
	ADC #$3AA0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_paraDC:
	LDA #(unit_chr)		//Garada K7
	CLC
	ADC #$3BD0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_paraDD:
	LDA #(unit_chr)		//Tros D7
	CLC
	ADC #$3CA0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraDE:
	LDA #(unit_chr)		//Rhine X1
	CLC
	ADC #$3D60
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraDF:
	LDA #(unit_chr)		//Jenova M9
	CLC
	ADC #$3DC0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_paraE0:
	LDA #(unit_chr)		//Spartan K5
	CLC
	ADC #$3E90
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_paraE1:
	LDA #(unit_chr)		//Abdra U5
	CLC
	ADC #$3F70
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_paraE2:
	LDA #(unit_chr)		//Goole
	CLC
	ADC #$4040
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraE3:
	LDA #(unit_chr)		//Bood
	CLC
	ADC #$4080
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraE4:
	LDA #(unit_chr)		//Gratonius
	CLC
	ADC #$40C0
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_paraE5:
	LDA #(unit_chr)		//Obelisk
	CLC
	ADC #$41B0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraE6:
	LDA #(unit_chr)		//Minifo
	CLC
	ADC #$4270
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraE7:
	LDA #(unit_chr)		//Mother barn
	ADC #$42C0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_paraE8:
	LDA #(unit_chr)		//Gilgil
	CLC
	ADC #$4350
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_paraE9:
	LDA #(unit_chr)		//Gosgos
	CLC
	ADC #$4400
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraEA:
	LDA #(unit_chr)		//Kingori
	CLC
	ADC #$44C0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_paraEB:
	LDA #(unit_chr)		//Picdron
	CLC
	ADC #$4580
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraEC:
	LDA #(unit_chr)		//Gilgilgun
	CLC
	ADC #$45E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraED:
	LDA #(unit_chr)		//Mecha Gilgilgun
	CLC
	ADC #$4640
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_paraEE:
	LDA #(unit_chr)		//Dragonsaurus
	CLC
	ADC #$46F0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_paraEF:
	LDA #(unit_chr)		//Valsion
	CLC
	ADC #$4790
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraF0:
	LDA #(unit_chr)		//Drumlo
	CLC
	ADC #$4CD0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraF1:
	LDA #(unit_chr)		//Leprechaun
	CLC
	ADC #$47E0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraF2:
	LDA #(unit_chr)		//Zwarth
	CLC
	ADC #$4860
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraF3:
	LDA #(unit_chr)		//Vierres
	CLC
	ADC #$48B0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraF4:
	LDA #(unit_chr)		//Wryneck
	CLC
	ADC #$4910
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_paraF5:
	LDA #(unit_chr)		//Bastole
	CLC
	ADC #$4970
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraF6:
	LDA #(unit_chr)		//Bubri
	CLC
	ADC #$49C0
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraF7:
	LDA #(unit_chr)		//Gallaba
	CLC
	ADC #$4A00
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraF8:
	LDA #(unit_chr)		//Gran-Garan
	CLC
	ADC #$4A50
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_paraF9:
	LDA #(unit_chr)		//Goraon
	CLC
	ADC #$4AD0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_paraFA:
	LDA #(unit_chr)		//Willwips
	CLC
	ADC #$4B20
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraFB:
	LDA #(unit_chr)		//Gyre Garing
	CLC
	ADC #$4B90
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_paraFC:
	LDA #(unit_chr)		//Spriggan
	CLC
	ADC #$4C20
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_paraFD:
	LDA #(unit_chr)		//Drome
	CLC
	ADC #$4C90
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraFE:
	LDA #(unit_chr)		//Gante
	CLC
	ADC #$4D20
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_paraFF:
	LDA #(unit_chr)		//Buston
	CLC
	ADC #$4D60
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para100:
	LDA #(unit_chr)		//Gildeen
	CLC
	ADC #$4E30
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para101:
	LDA #(unit_chr)		//Kyodai Sharking
	CLC
	ADC #$4EF0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para102:
	LDA #(unit_chr)		//Mechaboost Domira
	CLC
	ADC #$4FB0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para103:
write_command_para104:
	LDA #(unit_chr)		//Mechaboost Gavitan
	CLC
	ADC #$5080
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para105:
	LDA #(unit_chr)		//Descain
	CLC
	ADC #$5160
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para106:
	LDA #(unit_chr)		//Helldain
	CLC
	ADC #$5220
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para107:
	LDA #(unit_chr)		//Bundock
	CLC
	ADC #$52F0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para108:
	LDA #(unit_chr)		//Zonnekaiser
	CLC
	ADC #$5340
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_para109:
	LDA #(unit_chr)		//Gimeria
	CLC
	ADC #$5440
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_para10A:
	LDA #(unit_chr)		//God Amon
	CLC
	ADC #$5530
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_para10B:
	LDA #(unit_chr)		//Garumus
	CLC
	ADC #$5620
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para10C:
	LDA #(unit_chr)		//Demon
	CLC
	ADC #$56F0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para10D:
	LDA #(unit_chr)		//Big Garuda
	CLC
	ADC #$57A0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para10E:
	LDA #(unit_chr)		//Bundle
	CLC
	ADC #$5820
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para10F:
	LDA #(unit_chr)		//Cuttnal
	CLC
	ADC #$5890
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para110:
	LDA #(unit_chr)		//Kernagul
	CLC
	ADC #$5910
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para111:
	LDA #(unit_chr)		//Gornagool
	CLC
	ADC #$59A0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para112:
	LDA #(unit_chr)		//Zanzibar
	CLC
	ADC #$5A10
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para113:
	LDA #(unit_chr)		//Midea
	CLC
	ADC #$5A80
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para114:
	LDA #(unit_chr)		//Kernagul
	CLC
	ADC #$5AC0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para115:
	LDA #(unit_chr)		//Pazock
	CLC
	ADC #$5B20
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para116:
	LDA #(unit_chr)		//Gaw
	CLC
	ADC #$5B70
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para117:
	LDA #(unit_chr)		//Dabude
	CLC
	ADC #$5BA0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para118:
	LDA #(unit_chr)		//Troy Horse
	CLC
	ADC #$5BF0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para119:
	LDA #(unit_chr)		//Graf Zeppelin
	CLC
	ADC #$5C70
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para11A:
	LDA #(unit_chr)		//S Gundam
	CLC
	ADC #$5D10
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para11B:
	LDA #(unit_chr)		//G Cruiser
	CLC
	ADC #$5D70
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para11C:
	LDA #(unit_chr)		//Alexandria
	CLC
	ADC #$5DE0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para11D:
	LDA #(unit_chr)		//Musai kai
	CLC
	ADC #$5E60
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para11E:
	LDA #(unit_chr)		//Argama
	CLC
	ADC #$5ED0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para11F:
	LDA #(unit_chr)		//Irish
	CLC
	ADC #$5F20
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para120:
	LDA #(unit_chr)		//Ex-S Gundam
	CLC
	ADC #$5F60
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para121:
	LDA #(unit_chr)		//Nahel Argama
	CLC
	ADC #$5FF0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para122:
	LDA #(unit_chr)		//Endra
	CLC
	ADC #$6080
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para123:
	LDA #(unit_chr)		//Sadarahn
	CLC
	ADC #$60C0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para124:
	LDA #(unit_chr)		//Rewloola
	CLC
	ADC #$6130
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para125:
	LDA #(unit_chr)		//Ra Cailum
	CLC
	ADC #$6190
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para126:
	LDA #(unit_chr)		//Zamouth-Garr
	CLC
	ADC #$6200
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para127:
	LDA #(unit_chr)		//Garoica
	CLC
	ADC #$62A0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para128:
	LDA #(unit_chr)		//Kaleitsed
	CLC
	ADC #$6300
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para129:
	LDA #(unit_chr)		//Restrail
	CLC
	ADC #$6370
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para12A:
	LDA #(unit_chr)		//Glassidu-lu
	CLC
	ADC #$63D0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para12B:
	LDA #(unit_chr)		//Rest Gransh
	CLC
	ADC #$6450
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para12C:
	LDA #(unit_chr)		//Zeranio
	CLC
	ADC #$64D0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para12D:
	LDA #(unit_chr)		//Geios Glud
	CLC
	ADC #$6530
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para12E:
	LDA #(unit_chr)		//Liege Geios
	CLC
	ADC #$65A0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para12F:
	LDA #(unit_chr)		//Baran Schnile
	CLC
	ADC #$6620
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para130:
	LDA #(unit_chr)		//Gespenst mkII
	CLC
	ADC #$66C0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para131:
	LDA #(unit_chr)		//L-Gaim
	CLC
	ADC #$6750
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para132:
	LDA #(unit_chr)		//L-Gaim mkII
	CLC
	ADC #$6750
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para133:
	LDA #(unit_chr)		//Proller
	CLC
	ADC #$67D0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para134:
	LDA #(unit_chr)		//Dizard
	CLC
	ADC #$6820
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para135:
	LDA #(unit_chr)		//Auge
	CLC
	ADC #$6870
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para136:
	LDA #(unit_chr)		//Aug
	CLC
	ADC #$68B0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para137:
	LDA #(unit_chr)		//Ash Ra Tempel
	CLC
	ADC #$68E0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para138:
	LDA #(unit_chr)		//Calvary Tempel
	CLC
	ADC #$6970
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para139:
	LDA #(unit_chr)		//Bash
	CLC
	ADC #$6A10
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para13A:
	LDA #(unit_chr)		//Atol
	CLC
	ADC #$2400
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS	
write_command_para13B:
	LDA #(unit_chr)		//G-Roon
	CLC
	ADC #$6A50
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para13C:
	LDA #(unit_chr)		//Saloons
	CLC
	ADC #$6AA0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para13D:
	LDA #(unit_chr)		//Aaron
	CLC
	ADC #$6AF0
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para13E:
	LDA #(unit_chr)		//Shin Getter1
	CLC
	ADC #$6B30
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para13F:
	LDA #(unit_chr)		//Shin Getter2
	CLC
	ADC #$6BD0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para140:
	LDA #(unit_chr)		//Shin Getter3
	CLC
	ADC #$6C70
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para141:
	LDA #(unit_chr)		//Gayrahm
	CLC
	ADC #$6D10
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para142:
	LDA #(unit_chr)		//Gundam
	CLC
	ADC #$6D70
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para143:
	LDA #(unit_chr)		//Gundam mkII
	CLC
	ADC #$6D70
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para144:
	LDA #(unit_chr)		//G Defenser
	CLC
	ADC #$6DF0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para145:
	LDA #(unit_chr)		//Super Gundam
	CLC
	ADC #$7F80
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para146:
	LDA #(unit_chr)		//Nu Gundam
	CLC
	ADC #$7F20
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para147:
	LDA #(unit_chr)		//Kyuu Zaku
	CLC
	ADC #$6E70
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para148:
	LDA #(unit_chr)		//Sarbine
	CLC
	ADC #$6ED0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para149:
	LDA #(unit_chr)		//Zwauth
	CLC
	ADC #$6F30
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para14A:
	LDA #(unit_chr)		//Texas Mac
	CLC
	ADC #$6F80
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para14B:
	LDA #(unit_chr)		//Adzam
	CLC
	ADC #$6FF0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para14C:
	LDA #(unit_chr)		//Nise Psybuster
	CLC
	ADC #$7040
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para14D:
	LDA #(unit_chr)		//Nightingale
	CLC
	ADC #$70E0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para14E:
	LDA #(unit_chr)		//Nuvel Dizard
	CLC
	ADC #$7160
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para14F:
	LDA #(unit_chr)		//Ankoku Taishogun
	CLC
	ADC #$71F0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para150:
	LDA #(unit_chr)		//Hardias
	CLC
	ADC #$72A0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para151:
	LDA #(unit_chr)		//Dreiud
	CLC
	ADC #$7300
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para152:
	LDA #(unit_chr)		//Z Gundam
	CLC
	ADC #$7350
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para153:
	LDA #(unit_chr)		//Wave Rider
	CLC
	ADC #$73B0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para154:
	LDA #(unit_chr)		//ZZ Gundam
	CLC
	ADC #$7430
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para155:
	LDA #(unit_chr)		//G Fortress
	CLC
	ADC #$74A0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para156:
	LDA #(unit_chr)		//Enbanju Jinjin
	CLC
	ADC #$7520
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para157:
	LDA #(unit_chr)		//Enbanju Dekdek
	CLC
	ADC #$75D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para158:
	LDA #(unit_chr)		//Sentouju Dante
	CLC
	ADC #$7680
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para159:
	LDA #(unit_chr)		//Sentouju Zugahr
	CLC
	ADC #$7730
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para15A:
	LDA #(unit_chr)		//Juma Taishogun
	CLC
	ADC #$77F0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para15B:
	LDA #(unit_chr)		//Graydon
	CLC
	ADC #$78B0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para15C:
	LDA #(unit_chr)		//Garunrol
	CLC
	ADC #$7910
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para15D:
	LDA #(unit_chr)		//Greia
	CLC
	ADC #$7970
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para15E:
	LDA #(unit_chr)		//Mechasaurus Zu
	CLC
	ADC #$79D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para15F:
	LDA #(unit_chr)		//Botune
	CLC
	ADC #$7A80
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para160:
	LDA #(unit_chr)		//Dogosse Giar
	CLC
	ADC #$7AD0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para161:
	LDA #(unit_chr)		//Audhumla
	CLC
	ADC #$7B60
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para162:
	LDA #(unit_chr)		//Thudree
	CLC
	ADC #$7BC0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para163:
	LDA #(unit_chr)		//Hyper Leprechaun
	CLC
	ADC #$7C20
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para164:
	LDA #(unit_chr)		//Hyper Wryneck
	CLC
	ADC #$7CE0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para165:
	LDA #(unit_chr)		//Hyper Gallaba
	CLC
	ADC #$7D80
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para166:
	LDA #(unit_chr)		//Mobile Suit
	CLC
	ADC #$7E10
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para167:
	LDA #(unit_chr)		//Mobile Armor
	CLC
	ADC #$7E90
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
	
write_command_para168:
	LDA #(pilot_chr)		//Cham Faw
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para169:
	LDA #(pilot_chr)		//Belle Arl
	CLC
	ADC #$0070
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para16A:
	LDA #(pilot_chr)		//Ell Fino
	CLC
	ADC #$00D0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para16B:
	LDA #(pilot_chr)		//Lilith Faw
	CLC
	ADC #$0120
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para16C:
	LDA #(pilot_chr)		//Silky Mau
	CLC
	ADC #$0190
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para16D:
	LDA #(pilot_chr)		//Yousei6
	CLC
	ADC #$01F0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para16E:
	LDA #(pilot_chr)		//Jacking King
	CLC
	ADC #$0270
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para16F:
	LDA #(pilot_chr)		//Mary King
	CLC
	ADC #$02E0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para170:
	LDA #(pilot_chr)		//Nagare Hyoma
	CLC
	ADC #$0350
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para171:
	LDA #(pilot_chr)		//Jin Hayato
	CLC
	ADC #$03E0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para172:
	LDA #(pilot_chr)		//Kuruma Benkei
	CLC
	ADC #$0460
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para173:
	LDA #(pilot_chr)		//Hojo Shingo
	CLC
	ADC #$0500
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para174:
	LDA #(pilot_chr)		//Remy Shimada
	CLC
	ADC #$0580
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para175:
	LDA #(pilot_chr)		//Kily Gaglay
	CLC
	ADC #$0610
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para176:
	LDA #(pilot_chr)		//Jin Kappei
	CLC
	ADC #$0680
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para177:
	LDA #(pilot_chr)		//Kamie Uchuta
	CLC
	ADC #$0700
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para178:
	LDA #(pilot_chr)		//Kamikita Keiko
	CLC
	ADC #$0790
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para179:
	LDA #(pilot_chr)		//Fujiwara Shinobu
	CLC
	ADC #$0830
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para17A:
	LDA #(pilot_chr)		//Yuki Sara
	CLC
	ADC #$08F0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para17B:
	LDA #(pilot_chr)		//Shikibu Masato
	CLC
	ADC #$0960
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para17C:
	LDA #(pilot_chr)		//Shiba Ryou
	CLC
	ADC #$0A10
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para17D:
	LDA #(pilot_chr)		//Aoi Hyoma
	CLC
	ADC #$0A90
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para17E:
	LDA #(pilot_chr)		//Naniwa Juzo
	CLC
	ADC #$0B00
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para17F:
	LDA #(pilot_chr)		//Nishikawa Daisaku
	CLC
	ADC #$0B90
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para180:
	LDA #(pilot_chr)		//Namba Chizuru
	CLC
	ADC #$0C60
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para181:
	LDA #(pilot_chr)		//Kita Kosuke
	CLC
	ADC #$0D20
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para182:
	LDA #(pilot_chr)		//Gilliam Yeager
	CLC
	ADC #$0DA0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para183:
	LDA #(pilot_chr)		//Sho Zama
	CLC
	ADC #$0E40
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para184:
	LDA #(pilot_chr)		//Masaki Ando
	CLC
	ADC #$0EA0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para185:
	LDA #(pilot_chr)		//Ryune Zoldark
	CLC
	ADC #$0F30
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para186:
	LDA #(pilot_chr)		//Shu Shirakawa
	CLC
	ADC #$0FC0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para187:
	LDA #(pilot_chr)		//Quattro Vageena
	CLC
	ADC #$1060
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para188:
	LDA #(pilot_chr)		//Bright Noa
	CLC
	ADC #$1120
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para189:
	LDA #(pilot_chr)		//Hayato Kobayashi
	CLC
	ADC #$11A0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para18A:
	LDA #(pilot_chr)		//Kai Siden
	CLC
	ADC #$1260
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para18B:
	LDA #(pilot_chr)		//Matilda Ajan
	CLC
	ADC #$12E0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para18C:
	LDA #(pilot_chr)		//Sayla Mass
	CLC
	ADC #$1370
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para18D:
	LDA #(pilot_chr)		//Wackein
	CLC
	ADC #$13E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para18E:
	LDA #(pilot_chr)		//Tianem
	CLC
	ADC #$1440
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para18F:
	LDA #(pilot_chr)		//Emma Sheen
	CLC
	ADC #$1490
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para190:
	LDA #(pilot_chr)		//Torres
	CLC
	ADC #$1510
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para191:
	LDA #(pilot_chr)		//Fa Yuiri
	CLC
	ADC #$1560
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para192:
	LDA #(pilot_chr)		//Katsu Kobayashi
	CLC
	ADC #$15C0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para193:
	LDA #(pilot_chr)		//Fou Murasame
	CLC
	ADC #$1670
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para194:
	LDA #(pilot_chr)		//Beltorch Chika
	CLC
	ADC #$1720
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para195:
	LDA #(pilot_chr)		//Kely Layzner
	CLC
	ADC #$17A0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para196:
	LDA #(pilot_chr)		//Henken Beckener
	CLC
	ADC #$1830
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para197:
	LDA #(pilot_chr)		//Blex Forer
	CLC
	ADC #$18E0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para198:
	LDA #(pilot_chr)		//Roux Louka
	CLC
	ADC #$1950
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para199:
	LDA #(pilot_chr)		//Elpee Puru
	CLC
	ADC #$19D0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para19A:
	LDA #(pilot_chr)		//Purutz
	CLC
	ADC #$1A40
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para19B:
	LDA #(pilot_chr)		//Leina Ashta
	CLC
	ADC #$1A90
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para19C:
	LDA #(pilot_chr)		//Beecha Oleg
	CLC
	ADC #$1B20
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para19D:
	LDA #(pilot_chr)		//Mondo Agake
	CLC
	ADC #$1BA0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para19E:
	LDA #(pilot_chr)		//Elle Vianno
	CLC
	ADC #$1C30
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para19F:
	LDA #(pilot_chr)		//Iino Abbav
	CLC
	ADC #$1CB0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1A0:
	LDA #(pilot_chr)		//Emary Ounce
	CLC
	ADC #$1D30
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1A1:
	LDA #(pilot_chr)		//Quess Paraya
	CLC
	ADC #$1DC0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1A2:
	LDA #(pilot_chr)		//Chan Agi
	CLC
	ADC #$1E50
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para1A3:
	LDA #(pilot_chr)		//Kayra Su
	CLC
	ADC #$1EB0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para1A4:
	LDA #(pilot_chr)		//Hathaway Noa
	CLC
	ADC #$1F10
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1A5:
	LDA #(pilot_chr)		//Christina Mckenzie
	CLC
	ADC #$1FA0
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para1A6:
	LDA #(pilot_chr)		//Bernard Wiseman
	CLC
	ADC #$2080
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para1A7:
	LDA #(pilot_chr)		//Cecily Farchild
	CLC
	ADC #$2140
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1A8:
	LDA #(pilot_chr)		//Nina Purpleton
	CLC
	ADC #$21F0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1A9:
	LDA #(pilot_chr)		//Anavel Gato
	CLC
	ADC #$2290
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1AA:
	LDA #(pilot_chr)		//Chuck Keith
	CLC
	ADC #$2310
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1AB:
	LDA #(pilot_chr)		//Bernando Monsha
	CLC
	ADC #$2390
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1AC:
	LDA #(pilot_chr)		//Yumi Sayaka
	CLC
	ADC #$2440
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1AD:
	LDA #(pilot_chr)		//Ramthus Hatha
	CLC
	ADC #$24D0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1AE:
	LDA #(pilot_chr)		//Boss
	CLC
	ADC #$2570
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para1AF:
	LDA #(pilot_chr)		//Honoo Jun
	CLC
	ADC #$25B0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1B0:
	LDA #(pilot_chr)		//Maria Fleed
	CLC
	ADC #$2620
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1B1:
	LDA #(pilot_chr)		//Makiba Hikaru
	CLC
	ADC #$26A0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1B2:
	LDA #(pilot_chr)		//Saotome Michiru
	CLC
	ADC #$2740
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para1B3:
	LDA #(pilot_chr)		//Dangel Kupa
	CLC
	ADC #$2800
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1B4:
	LDA #(pilot_chr)		//Jinguji Chikara
	CLC
	ADC #$2890
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1B5:
	LDA #(pilot_chr)		//Asuka Rei
	CLC
	ADC #$2940
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1B6:
	LDA #(pilot_chr)		//Sakurano Mari
	CLC
	ADC #$29B0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1B7:
	LDA #(pilot_chr)		//Amuro Ray
	CLC
	ADC #$2A50
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1B8:
	LDA #(pilot_chr)		//Camille Vidan
	CLC
	ADC #$2AC0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1B9:
	LDA #(pilot_chr)		//Judau Ashta
	CLC
	ADC #$2B50
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1BA:
	LDA #(pilot_chr)		//Seebook Arno
	CLC
	ADC #$2BE0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1BB:
	LDA #(pilot_chr)		//Kou Uraki
	CLC
	ADC #$2C70
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para1BC:
	LDA #(pilot_chr)		//Kabuto Kouji
	CLC
	ADC #$2CD0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1BD:
	LDA #(pilot_chr)		//Kamikita Heizaemon
	CLC
	ADC #$2D50
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para1BE:
	LDA #(pilot_chr)		//Jin Umee
	CLC
	ADC #$2E30
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1BF:
	LDA #(pilot_chr)		//Jin Gengorou
	CLC
	ADC #$2EA0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1C0:
	LDA #(pilot_chr)		//Jin Ichitarou
	CLC
	ADC #$2F20
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1C1:
	LDA #(pilot_chr)		//Garison Tokita
	CLC
	ADC #$2FB0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1C2:
	LDA #(pilot_chr)		//Beautiful Tachibana
	CLC
	ADC #$3060
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para1C3:
	LDA #(pilot_chr)		//Sanjou Reika
	CLC
	ADC #$3140
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1C4:
	LDA #(pilot_chr)		//Toda Totta
	CLC
	ADC #$31C0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1C5:
	LDA #(pilot_chr)		//Tsurugi Tetsuya
	CLC
	ADC #$3240
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para1C6:
	LDA #(pilot_chr)		//Yuzuki Kyoshirou
	CLC
	ADC #$3300
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1C7:
	LDA #(pilot_chr)		//Izumi Nana
	CLC
	ADC #$33B0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1C8:
	LDA #(pilot_chr)		//Duke Fleed
	CLC
	ADC #$3430
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1C9:
	LDA #(pilot_chr)		//Marvel Frozen
	CLC
	ADC #$34A0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1CA:
	LDA #(pilot_chr)		//Hibiki Akira
	CLC
	ADC #$3540
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1CB:
	LDA #(pilot_chr)		//Nie Givun
	CLC
	ADC #$35D0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1CC:
	LDA #(pilot_chr)		//Keen Kiss
	CLC
	ADC #$3640
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1CD:
	LDA #(pilot_chr)		//Ciela Lapana
	CLC
	ADC #$36B0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1CE:
	LDA #(pilot_chr)		//Elle Hum
	CLC
	ADC #$3740
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para1CF:
	LDA #(pilot_chr)		//Rimul Luft
	CLC
	ADC #$37A0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1D0:
	LDA #(pilot_chr)		//Eve Tamari
	CLC
	ADC #$3810
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1D1:
	LDA #(pilot_chr)		//Haran Banjou
	CLC
	ADC #$3890
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1D2:
	LDA #(pilot_chr)		//Ryuzaki Kazuya
	CLC
	ADC #$3910
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1D3:
	LDA #(pilot_chr)		//Rempou Heishi
	CLC
	ADC #$39B0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1D4:
	LDA #(pilot_chr)		//Byston Well Heishi
	CLC
	ADC #$3A50
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1D5:
	LDA #(pilot_chr)		//Tytti Norback
	CLC
	ADC #$3B00
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1D6:
	LDA #(pilot_chr)		//Juma Shogun
	CLC
	ADC #$9000
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para1D7:
	LDA #(pilot_chr)		//South Burining
	CLC
	ADC #$90C0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1D8:
	LDA #(pilot_chr)		//Long
	CLC
	ADC #$3BA0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1D9:
	LDA #(pilot_chr)		//Presia Xenosakis
	CLC
	ADC #$3C50
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para1DA:
	LDA #(pilot_chr)		//Mio Sasuga
	CLC
	ADC #$3D10
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1DB:
	LDA #(pilot_chr)		//Titans Hei
	CLC
	ADC #$3D90
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1DC:
	LDA #(pilot_chr)		//Monica Bilsea
	CLC
	ADC #$3E10
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1DD:
	LDA #(pilot_chr)		//Safine Grace
	CLC
	ADC #$3EB0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1DE:
	LDA #(pilot_chr)		//Gadem
	CLC
	ADC #$3F40
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para1DF:
	LDA #(pilot_chr)		//Rambal Ral
	CLC
	ADC #$3F80
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para1E0:
	LDA #(pilot_chr)		//Crowley Hamon
	CLC
	ADC #$3FE0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1E1:
	LDA #(pilot_chr)		//Clamp
	CLC
	ADC #$4080
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para1E2:
	LDA #(pilot_chr)		//Gaia
	CLC
	ADC #$40E0
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para1E3:
	LDA #(pilot_chr)		//Mash
	CLC
	ADC #$4120
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para1E4:
	LDA #(pilot_chr)		//Ortega
	CLC
	ADC #$4160
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para1E5:
	LDA #(pilot_chr)		//Challia Bull
	CLC
	ADC #$41B0
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1E6:
	LDA #(pilot_chr)		//Lalah Sune
	CLC
	ADC #$4220
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1E7:
	LDA #(pilot_chr)		//Gadi Nkinze
	CLC
	ADC #$4290
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1E8:
	LDA #(pilot_chr)		//Kacricon Cacooler
	CLC
	ADC #$4310
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para1E9:
	LDA #(pilot_chr)		//Sara Zabiarov
	CLC
	ADC #$43D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para1EA:
	LDA #(pilot_chr)		//Gates Capa
	CLC
	ADC #$4480
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1EB:
	LDA #(pilot_chr)		//Jerid Messa
	CLC
	ADC #$4500
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1EC:
	LDA #(pilot_chr)		//Jamaican Daninghan
	CLC
	ADC #$4580
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para1ED:
	LDA #(pilot_chr)		//Jamitov Hymen
	CLC
	ADC #$4660
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1EE:
	LDA #(pilot_chr)		//Haman Karn
	CLC
	ADC #$4700
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1EF:
	LDA #(pilot_chr)		//Buran Blutach
	CLC
	ADC #$4780
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1F0:
	LDA #(pilot_chr)		//Ben Wooder
	CLC
	ADC #$4820
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1F1:
	LDA #(pilot_chr)		//Mauar Pharaoh
	CLC
	ADC #$48A0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1F2:
	LDA #(pilot_chr)		//Mineva Zabi
	CLC
	ADC #$4940
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1F3:
	LDA #(pilot_chr)		//Lila Milla Rira
	CLC
	ADC #$49D0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1F4:
	LDA #(pilot_chr)		//Yazan Gable
	CLC
	ADC #$4A70
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1F5:
	LDA #(pilot_chr)		//Rosamia Badam
	CLC
	ADC #$4AF0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1F6:
	LDA #(pilot_chr)		//Mashymre Cello
	CLC
	ADC #$4B90
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1F7:
	LDA #(pilot_chr)		//Illia Pazom
	CLC
	ADC #$4C30
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1F8:
	LDA #(pilot_chr)		//Chara Son
	CLC
	ADC #$4CA0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1F9:
	LDA #(pilot_chr)		//Glemy Toto
	CLC
	ADC #$4D20
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1FA:
	LDA #(pilot_chr)		//Gotton Go
	CLC
	ADC #$4D90
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para1FB:
	LDA #(pilot_chr)		//Nie Ghiren
	CLC
	ADC #$4E00
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para1FC:
	LDA #(pilot_chr)		//Lance Ghiren
	CLC
	ADC #$4E80
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1FD:
	LDA #(pilot_chr)		//Rakan Dahkaran
	CLC
	ADC #$4F10
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para1FE:
	LDA #(pilot_chr)		//Gyunei Guss
	CLC
	ADC #$4FB0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para1FF:
	LDA #(pilot_chr)		//Nanai Migel
	CLC
	ADC #$5040
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para200:
	LDA #(pilot_chr)		//Rezin Schneider
	CLC
	ADC #$50D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para201:
	LDA #(pilot_chr)		//Zabine Chareux
	CLC
	ADC #$5180
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para202:
	LDA #(pilot_chr)		//Annamarie Bourget
	CLC
	ADC #$5230
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para203:
	LDA #(pilot_chr)		//Dorel Ronah
	CLC
	ADC #$5300
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para204:
	LDA #(pilot_chr)		//Carozzo Ronah
	CLC
	ADC #$5380
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para205:
	LDA #(pilot_chr)		//Steiner
	CLC
	ADC #$5420
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para206:
	LDA #(pilot_chr)		//Cima Garahau
	CLC
	ADC #$54D0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para207:
	LDA #(pilot_chr)		//Ashura danshaku
	CLC
	ADC #$5560
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para208:
	LDA #(pilot_chr)		//Blocken hashaku
	CLC
	ADC #$5610
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para209:
	LDA #(pilot_chr)		//Dr.Hell
	CLC
	ADC #$56B0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para20A:
	LDA #(pilot_chr)		//Sharkin
	CLC
	ADC #$5700
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para20B:
	LDA #(pilot_chr)		//Aeug hei
	CLC
	ADC #$5760
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para20C:
	LDA #(pilot_chr)		//Balao
	CLC
	ADC #$5800
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para20D:
	LDA #(pilot_chr)		//Garuda
	CLC
	ADC #$5840
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para20E:
	LDA #(pilot_chr)		//Mia
	CLC
	ADC #$5890
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para20F:
	LDA #(pilot_chr)		//Orleana
	CLC
	ADC #$58D0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para210:
	LDA #(pilot_chr)		//Killer the Butcher
	CLC
	ADC #$5920
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para211:
	LDA #(pilot_chr)		//Korosu
	CLC
	ADC #$59E0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para212:
	LDA #(pilot_chr)		//Don Zauther
	CLC
	ADC #$5A30
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para213:
	LDA #(pilot_chr)		//Richter
	CLC
	ADC #$5AC0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para214:
	LDA #(pilot_chr)		//Bullbous
	CLC
	ADC #$5B20
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para215:
	LDA #(pilot_chr)		//Ryza
	CLC
	ADC #$5B70
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para216:
	LDA #(pilot_chr)		//Izam
	CLC
	ADC #$5BA0
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para217:
	LDA #(pilot_chr)		//Leonardo Bundle
	CLC
	ADC #$5BD0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para218:
	LDA #(pilot_chr)		//Suguni Cuttnal
	CLC
	ADC #$5C80
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para219:
	LDA #(pilot_chr)		//Yatat La Cuttnal
	CLC
	ADC #$5D20
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para21A:
	LDA #(pilot_chr)		//Todo Guinness
	CLC
	ADC #$5DD0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para21B:
	LDA #(pilot_chr)		//Burne Banning
	CLC
	ADC #$5E70
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para21C:
	LDA #(pilot_chr)		//Kokukishi
	CLC
	ADC #$5F20
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para21D:
	LDA #(pilot_chr)		//Drake Luft
	CLC
	ADC #$5F80
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para21E:
	LDA #(pilot_chr)		//Shot Weapon
	CLC
	ADC #$6000
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para21F:
	LDA #(pilot_chr)		//Bishot Hatta
	CLC
	ADC #$6090
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para220:
	LDA #(pilot_chr)		//Luther Luft
	CLC
	ADC #$6120
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para221:
	LDA #(pilot_chr)		//Musy Poe
	CLC
	ADC #$61A0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para222:
	LDA #(pilot_chr)		//Z Light
	CLC
	ADC #$6200
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para223:
	LDA #(pilot_chr)		//Torust Chesilenko
	CLC
	ADC #$6250
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para224:
	LDA #(pilot_chr)		//Jeryll Coochibie
	CLC
	ADC #$6320
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para225:
	LDA #(pilot_chr)		//Jeryll Coochibie
	CLC
	ADC #$63D0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para226:
	LDA #(pilot_chr)		//Fay Chenka
	CLC
	ADC #$6450
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para227:
	LDA #(pilot_chr)		//Garalia Nyamhee
	CLC
	ADC #$64D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para228:
	LDA #(pilot_chr)		//Galamity Mangan
	CLC
	ADC #$6580
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para229:
	LDA #(pilot_chr)		//Daa
	CLC
	ADC #$6630
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para22A:
	LDA #(pilot_chr)		//Het
	CLC
	ADC #$6660
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para22B:
	LDA #(pilot_chr)		//Ankoku Taishogun
	CLC
	ADC #$9160
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para22C:
	LDA #(pilot_chr)		//Akuryou Hardias
	CLC
	ADC #$6690
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para22D:
	LDA #(pilot_chr)		//Hachuu Dreiud
	CLC
	ADC #$6740
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para22E:
	LDA #(pilot_chr)		//DC heishi
	CLC
	ADC #$6820
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para22F:
	LDA #(pilot_chr)		//Elite hei
	CLC
	ADC #$6880
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para230:
	LDA #(pilot_chr)		//Jinkou chinou
	CLC
	ADC #$68F0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para231:
	LDA #(pilot_chr)		//Jinkou chinou kai
	CLC
	ADC #$68F0
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_para232:
	LDA #(pilot_chr)		//Guest hei
	CLC
	ADC #$6A00
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para233:
	LDA #(pilot_chr)		//Guest totsugeki hei
	CLC
	ADC #$6A80
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para234:
	LDA #(pilot_chr)		//Guest shineitai
	CLC
	ADC #$6B50
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para235:
	LDA #(pilot_chr)		//Poseidal hei
	CLC
	ADC #$6C10
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para236:
	LDA #(pilot_chr)		//Poseidal shineitai
	CLC
	ADC #$6CA0
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para237:
	LDA #(pilot_chr)		//Aiguille Delaz
	CLC
	ADC #$6D80
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para238:
	LDA #(pilot_chr)		//Daba Myroad
	CLC
	ADC #$6E10
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para239:
	LDA #(pilot_chr)		//Gawha Leccee
	CLC
	ADC #$6EA0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para23A:
	LDA #(pilot_chr)		//Mirau Kyao
	CLC
	ADC #$6F30
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para23B:
	LDA #(pilot_chr)		//Fannelia Amu
	CLC
	ADC #$6FB0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para23C:
	LDA #(pilot_chr)		//Hatchia Motchia
	CLC
	ADC #$7040
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para23D:
	LDA #(pilot_chr)		//Gavlet Gablae
	CLC
	ADC #$7100
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para23E:
	LDA #(pilot_chr)		//Amandara Kamandara
	CLC
	ADC #$7190
	STA $0D60
	LDA #$000E
	STA $0D62
	RTS
write_command_para23F:
	LDA #(pilot_chr)		//Oldona Poseidal
	CLC
	ADC #$7270
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para240:
	LDA #(pilot_chr)		//Nei Mo Han
	CLC
	ADC #$7320
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para241:
	LDA #(pilot_chr)		//Giwaza Lowaw
	CLC
	ADC #$7390
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para242:
	LDA #(pilot_chr)		//Full Flat
	CLC
	ADC #$7430
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para243:
	LDA #(pilot_chr)		//Kwasan Olivie
	CLC
	ADC #$7490
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para244:
	LDA #(pilot_chr)		//Rockley Ron
	CLC
	ADC #$7530
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para245:
	LDA #(pilot_chr)		//Anton Land
	CLC
	ADC #$75B0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para246:
	LDA #(pilot_chr)		//Heckler Mauze
	CLC
	ADC #$7630
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para247:
	LDA #(pilot_chr)		//Lily Hasshi
	CLC
	ADC #$76C0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para248:
	LDA #(pilot_chr)		//Lily Hasshi
	CLC
	ADC #$7740
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para249:
	LDA #(pilot_chr)		//Wazan Loon
	CLC
	ADC #$77B0
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para24A:
	LDA #(pilot_chr)		//Maph Mactomin
	CLC
	ADC #$7830
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para24B:
	LDA #(pilot_chr)		//Barn Gania Killas
	CLC
	ADC #$78D0
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para24C:
	LDA #(pilot_chr)		//Ted Dibilase
	CLC
	ADC #$7990
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para24D:
	LDA #(pilot_chr)		//Glofis Raclayne
	CLC
	ADC #$7A20
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para24E:
	LDA #(pilot_chr)		//Justine Shaflawas
	CLC
	ADC #$7AC0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para24F:
	LDA #(pilot_chr)		//Zebris Furszewa
	CLC
	ADC #$7B90
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para250:
	LDA #(pilot_chr)		//Tiniquet Zezenan
	CLC
	ADC #$7C60
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para251:
	LDA #(pilot_chr)		//Mechibos
	CLC
	ADC #$7D20
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para252:
	LDA #(pilot_chr)		//Terius Bilsea
	CLC
	ADC #$7D90
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para253:
	LDA #(pilot_chr)		//Kyouka hei
	CLC
	ADC #$7E30
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para254:
	LDA #(pilot_chr)		//Miwa Sakimori
	CLC
	ADC #$7ED0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para255:
	LDA #(pilot_chr)		//Chou jinkou chinou
	CLC
	ADC #$7F70
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para256:
	LDA #(ability_chr)		//kyouka part
	CLC
	ADC #$0800
	STA $0D60
	LDA #$000C
	STA $0D62
	RTS
write_command_para257:
	LDA #(ability_chr)		//kuu-riku-chichuu
	CLC
	ADC #$09C0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para258:
write_command_para25F:
	LDA #(ability_chr)		//Type riku
	CLC
	ADC #$0A60
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para259:
	LDA #(ability_chr)		//Type kuu-riku
	CLC
	ADC #$0A90
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para25A:
write_command_para263:
	LDA #(ability_chr)		//Type kuu
	CLC
	ADC #$0B00
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para25B:
	LDA #(ability_chr)		//Type sui-riku
	CLC
	ADC #$0B40
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para25C:
	LDA #(ability_chr)		//Type sui-riku-kuu
	CLC
	ADC #$0BA0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para25D:
	LDA #(ability_chr)		//Type riku-chichuu
	CLC
	ADC #$0C40
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para25E:
	LDA #(ability_chr)		//Type sui
	CLC
	ADC #$0C90
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para260:
	LDA #(ability_chr)		//Type uchuu
	CLC
	ADC #$0CC0
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para261:
	LDA #(ability_chr)		//Type kuu-chichuu
	CLC
	ADC #$0D00
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para262:
	LDA #(ability_chr)		//Type kuu-kai
	CLC
	ADC #$0D70
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para264:
	LDA #(ability_chr)		//kouseinou radar
	CLC
	ADC #$0DE0
	STA $0D60
	LDA #$000D
	STA $0D62
	RTS
write_command_para265:
	LDA #(ability_chr)		//Minovsky craft
	CLC
	ADC #$0EB0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para266:
	LDA #(ability_chr)		//Booster
	CLC
	ADC #$0F50
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para267:
	LDA #(ability_chr)		//Mega booster
	CLC
	ADC #$0FA0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para268:
	LDA #(ability_chr)		//Apogee motor
	CLC
	ADC #$1040
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para269:
	LDA #(ability_chr)		//Fatima
	CLC
	ADC #$10E0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para26A:
	LDA #(ability_chr)		//ALICE
	CLC
	ADC #$1130
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para26B:
	LDA #(ability_chr)		//Psycho frame
	CLC
	ADC #$1170
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para26C:
	LDA #(ability_chr)		//Bio Sensor
	CLC
	ADC #$1200
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para26D:
	LDA #(ability_chr)		//Magnet coating
	CLC
	ADC #$1270
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para26E:
	LDA #(ability_chr)		//I-field Generator
	CLC
	ADC #$1310
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para26F:
	LDA #(ability_chr)		//Chobham armor
	CLC
	ADC #$13B0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para270:
	LDA #(ability_chr)		//Hybrid armor
	CLC
	ADC #$1440
	STA $0D60
	LDA #$0007
	STA $0D62
	RTS
write_command_para271:
	LDA #(ability_chr)		//Barrier generator
	CLC
	ADC #$14B0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para272:
	LDA #(ability_chr)		//Anti Beam coating
	CLC
	ADC #$1560
	STA $0D60
	LDA #$000F
	STA $0D62
	RTS
write_command_para273:
	LDA #(ability_chr)		//Repair kit
	CLC
	ADC #$1650
	STA $0D60
	LDA #$0008
	STA $0D62
	RTS
write_command_para274:
	LDA #(ability_chr)		//Propellen tank
	CLC
	ADC #$16D0
	STA $0D60
	LDA #$0009
	STA $0D62
	RTS
write_command_para275:
	LDA #(ability_chr)		//Propellen tank S
	CLC
	ADC #$16D0
	STA $0D60
	LDA #$000A
	STA $0D62
	RTS
write_command_para276:
	LDA #(ability_chr)		//Tokushu nouryoku
	CLC
	ADC #$17D0
	STA $0D60
	LDA #$000B
	STA $0D62
	RTS
write_command_para277:
	LDA #(ability_chr)		//Size
	CLC
	ADC #$18C0
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para278:
	LDA #(ability_chr)		//Shield
	CLC
	ADC #$1880
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para279:
	LDA #(ability_chr)		//no Shield
	CLC
	ADC #$08C0
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para27A:
	LDA #(ability_chr)		//have Shield
	CLC
	ADC #$1940
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para27B:
	LDA #(ability_chr)		//Size S
	CLC
	ADC #$1960
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para27C:
	LDA #(ability_chr)		//Size M
	CLC
	ADC #$1990
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para27D:
	LDA #(ability_chr)		//Size L
	CLC
	ADC #$19D0
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para27E:
	LDA #(ability_chr)		//Size LL
	CLC
	ADC #$19F0
	STA $0D60
	LDA #$0005
	STA $0D62
	RTS
write_command_para27F:
	LDA #(ability_chr)		//Chikei
	CLC
	ADC #$18E0
	STA $0D60
	LDA #$0006
	STA $0D62
	RTS
write_command_para280:
	LDA #(ability_chr)		//Chikei: kuu
	CLC
	ADC #$08C0
	STA $0D60
	LDA #$0004
	STA $0D62
	RTS
write_command_para281:
	LDA #(ability_chr)		//Chikei: riku
	CLC
	ADC #$0950
	STA $0D60
	LDA #$0003
	STA $0D62
	RTS
write_command_para282:
	LDA #(ability_chr)		//Chikei: umi
	CLC
	ADC #$0930
	STA $0D60
	LDA #$0002
	STA $0D62
	RTS
write_command_para283:
	LDA #(ability_chr)		//Chikei: uchuu
	CLC
	ADC #$0CC0
	STA $0D60
	LDA #$0004
	STA $0D62
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
	