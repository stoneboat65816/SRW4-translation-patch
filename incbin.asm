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
blank:

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
	
org $F30000
buki_chr:
	incbin "Data/buki.chr"
org $F40000
buki2_chr:
	incbin "Data/buki2.chr"
panel_misc:
	incbin "Data/panel_misc.chr"
	
org $F40000
intro_chr:
	incbin "Data/Intro/srw.bin"
intro_map:
	incbin "Data/Intro/srw_map.bin"