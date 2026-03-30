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
	
	db $0E
	dw $0800
	dw (blank)
	dw (blank>>16)
	dw $7400

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
	LDA #$0420
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
	JML [$F5FE]
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