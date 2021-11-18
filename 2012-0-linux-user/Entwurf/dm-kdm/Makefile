#!/usr/bin/make -f

THEME= siduction-onestepbeyond-lu-edition
BITMAPS= files background-blue background #footer

all: $(BITMAPS)

files:
	mkdir $(THEME)
	cp session.png $(THEME)
	cp system.png $(THEME)
	cp KdmGreeterTheme.desktop $(THEME)
	cp siduction-onestepbeyond-lu-edition.xml $(THEME)
	cp screenshot.png $(THEME)
	cp header.png $(THEME)

background-blue:
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="$(THEME)/background-blue.png" background-blue.svg

background:
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="$(THEME)/background.png" $@.svg

# footer:
#	inkscape --without-gui --export-width=1920 --export-height=107 \
#		--export-png="$(THEME)/footer.png" $@.svg

clean:
	$(RM) -r $(THEME)
