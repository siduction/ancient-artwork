#!/usr/bin/make -f

NAME= end-of-world
SIZES= 640x480 800x600 1024x600 1024x768 1152x864 1280x720 1280x800 1280x1024 \
       1366x768 1440x900 1440x1050 1600x1200 1680x1050 1920x1080 1920x1200

all: $(SIZES) 400x250
	mkdir -p $(NAME)

400x250:
	mkdir -p $(NAME)/contents/
	$(RM) $(NAME)/contents/screenshot.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/screenshot.png" 1920x1200.svg

$(SIZES):
	ln -sf ../SVG/wall-$@.svg $@.svg
	mkdir -p $(NAME)/contents/images/
	$(RM) $(NAME)/contents/images/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/images/$@.png" $@.svg

clean:
	$(RM) -r $(NAME)/
	$(RM) *.svg
