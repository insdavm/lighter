INSTALL = /usr/bin/install
INSTALLDATA = /usr/bin/install -m 644

bindir = /usr/bin

install:
	mkdir -p $(bindir)
	$(INSTALL) lighter.pl $(bindir)/lighter
	mkdir -p /etc/xdg/autostart/
	$(INSTALLDATA) lighter.desktop /etc/xdg/autostart/

uninstall:
	rm -rf $(bindir)/lighter
	rm -rf /etc/xdg/autostart/lighter.desktop

