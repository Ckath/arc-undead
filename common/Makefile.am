themedir        = $(datadir)/themes/Arc-Undead
ithemedir       = $(DESTDIR)$(themedir)

install-exec-hook:

install-data-local:
	$(MKDIR_P) $(ithemedir)
	cp $(srcdir)/index.theme $(ithemedir)

if ENABLE_GTK2
	$(MKDIR_P) $(ithemedir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		menubar-toolbar \
		*.rc \
		$(ithemedir)/gtk-2.0

	cd $(srcdir)/gtk-2.0 && cp -R \
		assets-dark \
		$(ithemedir)/gtk-2.0/assets

	cd $(srcdir)/gtk-2.0 && cp -R \
		gtkrc-dark \
	$(ithemedir)/gtk-2.0/gtkrc
endif # ENABLE_GTK2

if ENABLE_GTK3
	$(MKDIR_P) $(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0 && cp thumbnail.png $(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		assets \
		$(ithemedir)/gtk-3.0

	cd $(srcdir)/gtk-3.0/$(GNOME_VERSION) && cp -R \
		gtk-solid-dark.css \
		$(ithemedir)/gtk-3.0/gtk.css
endif # ENABLE_GTK3

uninstall-local:
	rm -rf $(ithemedir)

EXTRA_DIST = $(srcdir)/gtk-2.0 \
	     $(srcdir)/gtk-3.0 \
	     $(srcdir)/index.theme
