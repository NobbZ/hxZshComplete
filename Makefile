NEKO=neko
HAXE=haxe

SRCPATH=tool/src/
BINPATH=tool/bin/

CLASSES=zshcompletion/Main

SRCFILES=$(CLASSES:%=$(SRCPATH)%.hx)

BINFILE=$(BINPATH)zshcomplete

all: $(BINFILE)

$(BINFILE): $(BINFILE:%=%.n)
	nekotools boot $<

$(BINFILE:%=%.n): $(SRCFILES) tool/build.hxml
	mkdir -p $(BINPATH)
	cd tool && haxe build.hxml

clean:
	rm -rf $(BINPATH)

install: all
	@echo "You have to run this command as root!"
	ln -s $(BINFILE) $(BINFILE:$(BINPATH)%=/usr/bin/%)