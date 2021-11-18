#!/usr/bin/make -f

DH_VERBOSE=1

THEME= siduction-desperado
CONTROLDIR= 1920x1200

all: prepare Preview background bullet

prepare:
	$(RM) -r $(THEME)

	mkdir -p $(THEME)/$(CONTROLDIR)
	mkdir -p $(THEME)/1920x1080
	mkdir -p $(THEME)/1600x1200
	mkdir -p $(THEME)/1280x1024

	cp Theme.rc $(THEME)/
	cp description.txt $(THEME)/$(CONTROLDIR)

	ln -s  ../$(CONTROLDIR)/description.txt $(THEME)/1920x1080/description.txt
	ln -s  ../$(CONTROLDIR)/description.txt $(THEME)/1600x1200/description.txt
	ln -s  ../$(CONTROLDIR)/description.txt $(THEME)/1280x1024/description.txt

Preview:
	inkscape --without-gui --export-width=300 --export-height=225 \
		--export-png="$(THEME)/$@.png" background.svg

background:
	inkscape --without-gui --export-width=1280 --export-height=1024 \
		--export-png="$(THEME)/1280x1024/$@.png" $@-medium.svg
	inkscape --without-gui --export-width=1600 --export-height=1200 \
		--export-png="$(THEME)/1600x1200/$@.png" $@.svg
	inkscape --without-gui --export-width=1920 --export-height=1080 \
		--export-png="$(THEME)/1920x1080/$@.png" $@-really-wide.svg
	inkscape --without-gui \
		--export-png="$(THEME)/$(CONTROLDIR)/$@.png" $@-wide.svg

bullet:
	inkscape --without-gui \
		--export-png="$(THEME)/$(CONTROLDIR)/1.png" 1.svg
	inkscape --without-gui \
		--export-png="$(THEME)/$(CONTROLDIR)/2.png" 2.svg
	inkscape --without-gui \
		--export-png="$(THEME)/$(CONTROLDIR)/3.png" 3.svg
	inkscape --without-gui \
		--export-png="$(THEME)/$(CONTROLDIR)/4.png" 4.svg

	ln -s  ../$(CONTROLDIR)/1.png $(THEME)/1920x1080/1.png
	ln -s  ../$(CONTROLDIR)/1.png $(THEME)/1600x1200/1.png
	ln -s  ../$(CONTROLDIR)/1.png $(THEME)/1280x1024/1.png

	ln -s  ../$(CONTROLDIR)/2.png $(THEME)/1920x1080/2.png
	ln -s  ../$(CONTROLDIR)/2.png $(THEME)/1600x1200/2.png
	ln -s  ../$(CONTROLDIR)/2.png $(THEME)/1280x1024/2.png

	ln -s  ../$(CONTROLDIR)/3.png $(THEME)/1920x1080/3.png
	ln -s  ../$(CONTROLDIR)/3.png $(THEME)/1600x1200/3.png
	ln -s  ../$(CONTROLDIR)/3.png $(THEME)/1280x1024/3.png

	ln -s  ../$(CONTROLDIR)/4.png $(THEME)/1920x1080/4.png
	ln -s  ../$(CONTROLDIR)/4.png $(THEME)/1600x1200/4.png
	ln -s  ../$(CONTROLDIR)/4.png $(THEME)/1280x1024/4.png

clean:
	$(RM) -r $(THEME)

