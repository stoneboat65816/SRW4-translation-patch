panel:
	db $F1, $00, $20
	db $F7, $00
panel_pos:
	db $FD, $FF, $FF
	db $11
	db $F2, $0F, $19, $20
	db $12
	db $F6
	db $F9, $10
	db $1B
	db $F2, $0F, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $0F, $1A, $20
	db $14
	db $F6
	db $F7, $40
	db $FC, $01, $EF
	db $0D, $30, $00		//turn end
	db $F6
	db $0D, $31, $00  //butai
	db $F6
	db $0D, $32, $00	//map
	db $F6
	db $0D, $33, $00	//seishin
	db $F6
	db $0D, $34, $00	//meirei
	db $F6
	db $0D, $35, $00 //system
	db $F6
	db $0D, $36, $00	//mokuteki
	db $F6
	db $0D, $37, $00	//save
	db $F7, $00
	db $FD, $FF, $FF
	db $11
	db $F2, $0A, $19, $20
	db $12
	db $F6
	db $F9, $04
	db $1B
	db $F2, $0A, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $0A, $1A, $20, $14
	db $F6
	db $F7, $40
	db $FC, $01, $FB
	db $0D, $38, $00, $F8, $83		//turn suu
	db $F6
	db $0D, $39, $00, $F8, $87, $FE, $FF, $FE, $00, $FF, $FD, $FF, $FF, $FC, $01, $01		//shikin
	db $F7, $06
	db $F9, $00
	db $F2, $8C, $FF, $FF
	db $FA
	db $FE, $00
	db $FF
