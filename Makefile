FREQ=8000000
CC=xc8
BUILDDIR=build
CFLAGS=--chip=16f684 -D_XTAL_FREQ=$(FREQ) --outdir=$(BUILDDIR)/
SRC=main.c

.PHONY: all program clean

all: $(BUILDDIR)/main.hex

program: $(BUILDDIR)/main.hex
	../usb_pickit_1.6.2-dh/usb_pickit -p $<

$(BUILDDIR)/main.hex: $(SRC) Makefile | $(BUILDDIR)
	$(CC) $(CFLAGS) $(filter %.c, $<)

$(BUILDDIR):
	mkdir -p $@

clean:
	rm -rf $(BUILDDIR)
