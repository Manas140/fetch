BINDIR=/usr/local/bin
all:
	@echo Run \'make install\' to install fetch on your device

install:
	@sudo mkdir -p $(BINDIR)
	@sudo cp fetch $(BINDIR)/fetch
	@sudo chmod 755 $(BINDIR)/fetch
	@echo [*] fetch Installed.

uninstall:
	@sudo rm -rf $(BINDIR)/fetch
	@echo [*] fetch Uninstalled.
