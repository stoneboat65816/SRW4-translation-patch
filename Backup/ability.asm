ability_menu1:	
	db $F0, $04, $20, $2C
	db $F1, $00, $20
	db $F7, $00
	db $FD, $00, $81
	db $11
	db $F2, $0A, $19, $20
	db $15
	db $F2, $0A, $19, $20
	db $15
	db $F2, $08, $19, $20
	db $12
	db $F6
	db $F9, $02
	db $1B
	db $F2, $0A, $28, $20
	db $1D
	db $F2, $0A, $28, $20
	db $1D
	db $F2, $08, $28, $20
	db $1C
	db $F6
	db $FA
	db $17
	db $F2, $0A, $1E, $20
	db $24
	db $1E, $1E, $1E, $23	
	db $F2, $06, $1E, $20
	db $24
	db $F2, $08, $1E, $20
	db $18
	db $F6
	db $F9, $02
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $1B
	db $F2, $0E, $10, $20
	db $25
	db $F2, $0F, $1E, $20
	db $18
	db $F6
	db $F9, $02
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $1B
	db $F2, $0E, $10, $20
	db $25, $1E, $1E, $1E, $1E, $23
	db $F2, $0A, $1E, $20
	db $18
	db $F6
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F3, $04, $F0, $28, $1D
	db $F2, $0A, $28, $20
	db $1C
	db $F6
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F3, $04, $F4, $28, $1D
	db $F2, $0A, $28, $20
	db $1C
	db $F6
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F3, $04, $F8, $28, $1D
	db $F2, $0A, $28, $20
	db $1C
	db $F6
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F3, $04
	db $FC, $28, $1D
	db $F2, $0A, $28, $20
	db $1C
	db $F6
	db $17
	db $F2, $0E, $1E, $20
	db $70
	db $1E, $1E, $1E, $1E, $24
	db $F2, $0A, $1E, $20
	db $18
	db $F6
	db $F9, $03
	db $1B
	db $F2, $0E, $28, $20
	db $1D
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $1B
	db $F2, $0E, $28, $20
	db $25
	db $F2, $0F, $1E, $20
	db $18
	db $F6
	db $F9, $04
	db $1B
	db $F2, $0E, $28, $20
	db $1D
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $1B
	db $F2, $0E, $28, $20
	db $25
	db $F2, $0F, $1E, $20
	db $18
	db $F6
	db $F9, $02
	db $1B
	db $F2, $0E, $28, $20
	db $1D
	db $F2, $0F, $28, $20
//	db $1D, $28, $28, $28, $28, $1C
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $0E, $1A, $20
	db $16
	db $F2, $0F, $1A, $20
	//db $16, $1A, $1A, $1A, $1A, $14
	db $14
	db $F6
	db $F7, $40
	db $FD, $01, $82
	db $0D, $3A, $00  //unit ABILITY
	db $FD, $0C, $82
	db $0D, $3B, $00  //pilot ability
	db $FD, $19, $82
	db $0D, $3C, $00	//buki seinou
	db $FD, $10, $85
	db $FB, $FF, $FF		//unit name
	db $FD, $10, $88
	db $F7, $FE, $03	//pilot name bank
	db $FB, $FF, $06	//pilot name
	db $F7, $FE, $02	//unit name bank
	db $FD, $15, $8B
	db $0D, $3D, $00	//level
	db $F6
	db $0D, $3E, $00	//kiryoku
	db $FD, $1C, $8B
	db $F8, $83
	db $F6
	db $F8, $83
	db $FB, $54, $00
	db $FD, $10, $99	//hitsuyou na exp
	db $FB, $FF, $00
	db $F7, $40
//	db $FD, $1B, $90
//	db $0D, $3F, $00	//chikei
//	db $FD, $1B, $93
//	db $F0, $B6		//sora
//	db $F6
//	db $F0, $F1	//rikuchi
//	db $F6
//	db $F0, $4F	//umi
//	db $F6
//	db $F4, $0D	//uchuu
//	db $FD, $1E, $93
//	db $FB, $FF, $0D
	db $F9, $04
	db $F7, $FE, $04	//waste 80864A
	//db $F6
	//db $FB, $FF, $0D
	//db $F6
	//db $FB, $FF, $0D
	//db $F6
	//db $FB, $FF, $0D
	db $FA
	db $FE, $FF
	db $FE, $00
	db $FF

unit_ability:	
	db $F0, $04, $28, $2C
	db $F1, $00, $20
	db $F7, $00
	db $FD, $00, $81
	db $11
	db $F2, $09, $19, $20
	db $15
	db $F2, $0A, $19, $20
	db $15
	db $F2, $09, $19, $20
	db $12
	db $F6
	db $F9, $02
	db $1B
	db $F2, $09, $2F, $20
	db $1D
	db $F2, $0A, $28, $20
	db $1D
	db $F2, $09, $2F, $20
	db $1C
	db $F6
	db $FA
	db $17
	db $F2, $09, $1E, $20
	db $24
	db $F2, $04, $1E, $20
	db $23
	db $F2, $05, $1E, $20
	db $24
	db $F2, $09, $1E, $20
	db $18
	db $F6
	db $F9, $02
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $1B
	db $F2, $0E, $10, $20
	db $25
	db $F2, $0F, $1E, $20
	db $18
	db $F6
	db $F9, $07
	db $1B
	db $F2, $0E, $10, $20
	db $1D
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $17
	db $F2, $0E, $1E, $20
	db $24, $23
	db $F2, $07, $1E, $20
	db $23
	db $F2, $06, $1E, $20
	db $18
	db $F6
	db $F9, $03
	db $1B
	db $F2, $0F, $28, $20
	db $1D
	db $F2, $07, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1C
	db $F6
	db $FA
	db $117
	db $F2, $0F, $1E, $20
	db $24, $23, $1E
	db $28, $28, $28, $28
	db $1E, $71
	db $F2, $06, $28, $20
	db $1C
	db $F6
	db $F9, $04
	db $1B
	db $F2, $10, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1C
	db $F6
	db $FA
	db $1B
	db $F2, $10, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1C
	db $F6
	db $F9, $02
	db $1B
	db $F2, $10, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1D
	db $F2, $06, $28, $20
	db $1C
	
	db $F6
	db $FA
	db $13
	db $F2, $10, $1A, $20
	db $16
	db $F2, $06, $1A, $20
	db $16
	db $F2, $06, $1A, $20
	db $14
	db $F6
	db $F7, $40
	db $FD, $04, $94
	db $0D, $76, $02	//tokushu nouryoku
	
	db $FD, $0B, $82
	db $0D, $3A, $00 //UNIT nouryoku
	db $FD, $10, $85
	db $FB, $FF, $FF
	db $FD, $10, $88
	db $0D, $56, $02 //kyouka part
	db $FD, $10, $8B	//kyouka part pos
	db $FB, $FF, $0D
	db $F6
	db $FB, $FF, $0D
	//db $FB, $54, $00

	db $F7, $FE, $04		//waste
	db $F7, $FE, $06	//waste variable: idou
	db $F7, $FE, $06	//waste variable: undou
	db $F7, $FE, $06	//waste variable: soukou
	db $F7, $FE, $06	//waste variable: 	genkai

	db $F7, $FE, $05	//redraw2nd_unit_panel
	db $FD, $13, $92
	db $0D, $78, $02	//shield
	
	db $FD, $14, $94	//shield umu pos
	db $F7, $FE, $07	//text_pos_bichousei_tateumu
	db $FB, $FF, $0D	//shield umu
	db $FD, $14, $97	//size pos
	db $0D, $77, $02 //'size'
	db $FD, $13, $99
	db $F7, $FE, $07	//text_pos_bichousei_size
	db $FB, $FF, $0D	//size variable
	db $FD, $19, $90
	db $0D, $7F, $02	//chikei
	db $FD, $19, $93
	db $0D, $80, $02		//sora
	db $F6
	db $0D, $81, $02	//riku
	db $F6
	db $0D, $82, $02 //umi
	db $F6
	db $0D, $83, $02	//uchu
	db $FD, $1E, $93
	db $FB, $FF, $0D
	db $F6
	db $FB, $FF, $0D
	db $F6
	db $FB, $FF, $0D
	db $F6
	db $FB, $FF, $0D
	db $FE, $FF
	db $FE, $00
	db $FF	
