#!/usr/bin/make -f

THEME= siduction-desperado
BITMAPS= logo.png
SVG= logo.svg


all: $(BITMAPS)

logo.png:
	mkdir -p $(THEME)/balou
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="$(THEME)/balou/$@" $(SVG)
	cp themerc $(THEME)/balou/
clean:
	$(RM) -r $(THEME)/
