#!/usr/bin/make -f

THEME= siduction-onestepbeyond-lu-edition
BITMAPS= files background siduction

all: $(BITMAPS)

files:
	mkdir ./$(THEME)
	cp language.png $(THEME)/
	cp GdmGreeterTheme.desktop $(THEME)/
	cp session.png $(THEME)/
	cp system.png $(THEME)/
	cp siduction-onestepbeyond-lu-edition.xml $(THEME)/
	cp screenshot.png $(THEME)/

background:
	inkscape --without-gui --export-width=1920 --export-height=1200 \
		--export-png="./$(THEME)/$@.png" $@.svg

siduction:
	inkscape --without-gui --export-width=94 --export-height=100 \
		--export-png="./$(THEME)/$@.png" $@.svg

clean:
	$(RM) -r ./$(THEME)
