FREQ=8000000
AS=gpasm
LD=gplink
BUILDDIR=build
SRC=main.asm

.PHONY: all program clean

all: $(BUILDDIR)/main.hex

program: $(BUILDDIR)/main.hex
	../usb_pickit_1.6.2-dh/usb_pickit -p $<

$(BUILDDIR)/main.hex: $(BUILDDIR)/main.o Makefile | $(BUILDDIR)
	$(LD) $(filter %.o, $<) -o $@

$(BUILDDIR)/main.o: $(SRC) Makefile | $(BUILDDIR)
	$(AS) -c $(filter %.asm, $<) -o $@

$(BUILDDIR):
	mkdir -p $@

clean:
	rm -rf $(BUILDDIR)
