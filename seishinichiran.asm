seishin_ichiran1:	
	db $F1, $00, $20
	db $F7, $00
//	db $FD, $0A, $80		//frame 1
//	db $11
//	db $F2, $0C, $19, $20
//	db $12
//	db $F6
//	db $F9, $02
//	db $1B
//	db $F2, $09, $28, $20
//	db $1C
//	db $F6
//	db $FA
//	db $13
//	db $F2, $09, $1A, $20
//	db $14
//	db $F6
	db $FD, $01, $80	//frame 2
	db $11
	db $F2, $1C, $19, $20
	db $12
	db $F6
	db $F9, $14
	db $1B
	db $F2, $1C, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $1C, $1A, $20
	db $14
	db $F6
	db $FD, $00, $96	//frame 3
	db $11
	db $F2, $1E, $19, $20
	db $12
	db $F6
	db $F9, $04
	db $1B
	db $F2, $1E, $28, $20
	db $1C
	db $F6
	db $FA
	db $13
	db $F2, $1E, $1A, $20
	db $14
	db $F6
	db $F7, $40
	db $FD, $02, $81	//frame 2 text
	db $F9, $04
	db $FB, $A9, $00
	db $FC, $0A, $FE
	db $FB, $A9, $00
	db $FC, $0A, $FE
	db $FB, $A9, $00
	db $FC, $EC, $00
	db $FA
	db $F7, $40
	db $FD, $02, $89
	db $F9, $03
	db $FB, $A9, $00
	db $FC, $0A, $FE
	db $FB, $A9, $00
	db $FC, $0A, $FE
	db $FB, $A9, $00
	db $FC, $EC, $00
	db $FA
	db $FD, $02, $8F
	db $F9, $03
	db $FB, $A9, $00
	db $FC, $0A, $FE
	db $FB, $A9, $00
	db $FC, $0A, $FE
	db $FB, $A9, $00
	db $FC, $EC, $00
	db $FA
	db $F7, $00
	db $F4, $04
	db $FE, $FF
	db $FE, $00
	db $FF
seishin_ichiran2:
	db $F7, $00
	db $F4, $FF
	db $F7, $40
	db $F6
	db $FF
seishin_ichiran3:
	db $FD, $FF, $FF
	db $FC, $01, $01
	db $F7, $08
	db $F9, $00
	db $FA
	db $F9, $0A
	db $F2, $90, $FF, $FF
	db $FC, $02, $FE
	db $F2, $90, $FF, $FF
	db $FC, $02, $FE
	db $F2, $90, $FF, $FF
	db $FC, $E4, $00
	db $FA
	db $FE, $00
	db $FE, $FF
	db $FF
seishin_ichiran4:	
	db $F1, $00, $20
	db $F7, $00
	db $FD, $01, $97
	db $F9, $04
	db $F2, $1E, $28, $20
	db $F6
	db $FA
	db $F7, $40
	db $FD, $01, $97
	db $F7, $00
	db $F7, $40
	db $FB, $FF, $00
	db $F7, $00
	db $FE, $FF
	db $FE, $00
	db $FF
	
clear_f3:
	STZ $0D66
	STZ $0D68
	STZ $0D6A
	STZ $0D6C
	LDA #$0000
	STA $7FFFFC
	RTS	

