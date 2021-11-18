#!/usr/bin/make -f

THEME= siduction-dev
BITMAPS= files background foreground footer

all: $(BITMAPS)

files:
	mkdir $(THEME)
	cp session.png $(THEME)
	cp system.png $(THEME)
	cp KdmGreeterTheme.desktop $(THEME)
	cp siduction-dev.xml $(THEME)
	cp screenshot.png $(THEME)
	cp header.png $(THEME)

background:
	inkscape --without-gui --export-width=1600 --export-height=1200 \
		--export-png="$(THEME)/background.png" $@.svg
		
foreground:
	inkscape --without-gui --export-width=1600 --export-height=1200 \
		--export-png="$(THEME)/foreground.png" $@.svg


footer:
	inkscape --without-gui --export-width=1920 --export-height=107 \
		--export-png="$(THEME)/footer.png" $@.svg

clean:	
	rm -rf $(THEME)
