#!/usr/bin/make -f

THEME= siduction-desperado
BITMAPS= files background-dark background-moon background footer

all: $(BITMAPS)

files:
	mkdir $(THEME)
	cp session.png $(THEME)
	cp system.png $(THEME)
	cp KdmGreeterTheme.desktop $(THEME)
	cp siduction-desperado.xml $(THEME)
	cp screenshot.png $(THEME)
	cp header.png $(THEME)

background-dark:
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="$(THEME)/background-dark.png" $@.svg
		
background-moon:
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="$(THEME)/background-moon.png" $@.svg

background:
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="$(THEME)/background.png" $@.svg

footer:
	inkscape --without-gui --export-width=1920 --export-height=107 \
		--export-png="$(THEME)/footer.png" $@.svg

clean:	
	rm -rf $(THEME)
