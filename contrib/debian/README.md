
Debian
====================
This directory contains files used to package korid/kori-qt
for Debian-based Linux systems. If you compile korid/kori-qt yourself, there are some useful files here.

## kori: URI support ##


kori-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install kori-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your kori-qt binary to `/usr/bin`
and the `../../share/pixmaps/kori128.png` to `/usr/share/pixmaps`

kori-qt.protocol (KDE)

