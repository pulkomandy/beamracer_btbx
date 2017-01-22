#testkernel makefile
NO_SDCARD=1

NAME = beamracer
GAME_C_FILES = $(NAME).c roadtex.c carsprite.c
GAME_C_OPTS = -DVGA_MODE=320
include $(BITBOX)/kernel/bitbox.mk

roadtex.c: nolines.png
	python mk_road.py $< > $@

carsprite.c: car.png
	python mk_sprite.py $< > $@
