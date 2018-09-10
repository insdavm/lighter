DESTDIR?=/
SHELL = /bin/sh
INSTALL = /usr/bin/install
INSTALLDATA = /usr/bin/install -m 644

prefix = $(DESTDIR)
bindir = $(prefix)/usr/bin

install:
	mkdir -p $(bindir)
	$(INSTALL) lighter.pl $(bindir)/lighter
	mkdir -p $(prefix)/etc/xdg/autostart/
	$(INSTALLDATA) lighter.desktop $(prefix)/etc/xdg/autostart/

uninstall:
	rm -rf $(bindir)/lighter
	rm -rf $(prefix)/etc/xdg/autostart/lighter.desktop

