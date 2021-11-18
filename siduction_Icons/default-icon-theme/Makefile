#!/usr/bin/make -f

NAME= siduction
NAMEFOLDER= default.$(NAME)
SIZES= 8x8 16x16 22x22 24x24 32x32 48x48 64x64 72x72 96x96 128x128 256x256

all: $(SIZES)
	mkdir -p $(NAMEFOLDER)
	mkdir -p $(NAMEFOLDER)/scalable
	cp $(NAME).svg $(NAMEFOLDER)/scalable/

8x8:
	mkdir -p $(NAMEFOLDER)/8x8/
	$(RM) $(NAMEFOLDER)/8x8/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/8x8/$(NAME).png" $(NAME).svg

16x16:
	mkdir -p $(NAMEFOLDER)/16x16/
	$(RM) $(NAMEFOLDER)/16x16/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/16x16/$(NAME).png" $(NAME).svg

22x22:
	mkdir -p $(NAMEFOLDER)/22x22/
	$(RM) $(NAMEFOLDER)/22x22/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/22x22/$(NAME).png" $(NAME).svg		

24x24:
	mkdir -p $(NAMEFOLDER)/24x24/
	$(RM) $(NAMEFOLDER)/24x24/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/24x24/$(NAME).png" $(NAME).svg		

32x32:
	mkdir -p $(NAMEFOLDER)/32x32/
	$(RM) $(NAMEFOLDER)/32x32/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/32x32/$(NAME).png" $(NAME).svg
		
48x48:
	mkdir -p $(NAMEFOLDER)/48x48/
	$(RM) $(NAMEFOLDER)/48x48/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/48x48/$(NAME).png" $(NAME).svg
		
64x64:
	mkdir -p $(NAMEFOLDER)/64x64/
	$(RM) $(NAMEFOLDER)/64x64/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/64x64/$(NAME).png" $(NAME).svg
		
72x72:
	mkdir -p $(NAMEFOLDER)/72x72/
	$(RM) $(NAMEFOLDER)/72x72/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/72x72/$(NAME).png" $(NAME).svg
		
96x96:
	mkdir -p $(NAMEFOLDER)/96x96/
	$(RM) $(NAMEFOLDER)/96x96/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/96x96/$(NAME).png" $(NAME).svg
		
128x128:
	mkdir -p $(NAMEFOLDER)/128x128/
	$(RM) $(NAMEFOLDER)/128x128/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/128x128/$(NAME).png" $(NAME).svg

256x256:
	mkdir -p $(NAMEFOLDER)/256x256/
	$(RM) $(NAMEFOLDER)/256x256/$@.png
	inkscape --without-gui --export-width=$(firstword $(subst x, ,$@ )) \
		--export-height=$(lastword $(subst x, ,$@ )) \
		--export-png="$(NAMEFOLDER)/256x256/$(NAME).png" $(NAME).svg

clean:
	$(RM) -r $(NAMEFOLDER)/
