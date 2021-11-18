#!/usr/bin/make -f

SIZE= 16 20 22 24 32 36 40 48 64 72 96 128 192 256
ICON=siduction
ICONRAZOR=siduction-razor
ICONBUG=chipsyBug
all:
	# requires inkscape and imagemagick to be installed
	@if [ ! -x /usr/bin/convert ]; then \
	    echo "ERROR: imagemagick not installed!" ; \
	    false ; \
	fi

	@if [ ! -x /usr/bin/inkscape ]; then \
	    echo "ERROR: inkscape not installed!" ; \
	    false ; \
	fi

	# create XDG compatible icons from SVG
	# ICON
	for i in ${SIZE}; do \
	    mkdir -p "hicolor/$${i}x$${i}/apps" ; \
	        inkscape --export-width=$${i} \
	            --export-height=$${i} \
	            --export-png="$(CURDIR)/hicolor/$${i}x$${i}/apps/${ICON}.png" \
	                $(CURDIR)/${ICON}.svg ; \
	done
	
	# ICONRAZOR
	for i in ${SIZE}; do \
	    mkdir -p "hicolor/$${i}x$${i}/apps" ; \
	        inkscape --export-width=$${i} \
	            --export-height=$${i} \
	            --export-png="$(CURDIR)/hicolor/$${i}x$${i}/apps/${ICONRAZOR}.png" \
	                $(CURDIR)/${ICONRAZOR}.svg ; \
	done

	# ICONBUG
	for i in ${SIZE}; do \
	    mkdir -p "hicolor/$${i}x$${i}/apps" ; \
	        inkscape --export-width=$${i} \
	            --export-height=$${i} \
	            --export-png="$(CURDIR)/hicolor/$${i}x$${i}/apps/${ICONBUG}.png" \
	                $(CURDIR)/${ICONBUG}.svg ; \
	done

	mkdir -p pixmaps
	# ICON
	convert hicolor/32x32/apps/${ICON}.png pixmaps/${ICON}.xpm
	convert hicolor/16x16/apps/${ICON}.png pixmaps/${ICON}-16.xpm
	
	#ICONRAZOR
	convert hicolor/32x32/apps/${ICONRAZOR}.png pixmaps/${ICONRAZOR}.xpm
	convert hicolor/16x16/apps/${ICONRAZOR}.png pixmaps/${ICONRAZOR}-16.xpm

	#ICONBUG
	convert hicolor/32x32/apps/${ICONBUG}.png pixmaps/${ICONBUG}.xpm
	convert hicolor/16x16/apps/${ICONBUG}.png pixmaps/${ICONBUG}-16.xpm

	mkdir -p hicolor/scalable
	cp ${ICON}.svg hicolor/scalable	
	cp ${ICONRAZOR}.svg hicolor/scalable
	cp ${ICONBUG}.svg hicolor/scalable

clean:
	$(RM) -r hicolor
	$(RM) -r pixmaps
