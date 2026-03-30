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