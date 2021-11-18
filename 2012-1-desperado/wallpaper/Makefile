#!/usr/bin/make -f

NAME= siduction-desperado
NAMEMEDIUM=$(NAME)-medium
NAMEWIDE= $(NAME)-wide
NAMEREALLYWIDE= $(NAME)-really-wide
NAMEGRUB= $(NAME)-grub
SIZES= 400x250 1024x768 1366x768 1280x800 1280x1024 1440x900 1600x1200 1920x1080 1920x1200 grub

all: $(SIZES)
	mkdir -p $(NAME)
	cp metadata.desktop $(NAME)/

400x250:
	mkdir -p $(NAME)/contents/
	$(RM) $(NAME)/contents/screenshot.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/screenshot.png" $(NAMEWIDE).svg

1280x1024:
	mkdir -p $(NAME)/contents/images/
	$(RM) $(NAME)/contents/images/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/images/$@.png" $(NAMEMEDIUM).svg

1024x768 1600x1200:
	mkdir -p $(NAME)/contents/images/
	$(RM) $(NAME)/contents/images/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/images/$@.png" $(NAME).svg

1280x800 1440x900 1920x1200:
	mkdir -p $(NAME)/contents/images/
	$(RM) $(NAME)/contents/images/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/images/$@.png" $(NAMEWIDE).svg

1366x768 1920x1080:
	mkdir -p $(NAME)/contents/images/
	$(RM) $(NAME)/contents/images/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAME)/contents/images/$@.png" $(NAMEREALLYWIDE).svg

grub:
	mkdir -p $(NAME)/grub/
	$(RM) $(NAME)/contents/images/$@*.png
	inkscape --without-gui --export-width=640 \
		 --export-height=480 \
		 --export-png="$(NAME)/grub/$@640.png" $(NAMEGRUB).svg
	inkscape --without-gui --export-width=800 \
		--export-height=600 \
		 --export-png="$(NAME)/grub/$@800.png" $(NAMEGRUB).svg



clean:
	$(RM) -r $(NAME)/
