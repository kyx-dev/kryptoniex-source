
Debian
====================
This directory contains files used to package kryptoniexd/kryptoniex-qt
for Debian-based Linux systems. If you compile kryptoniexd/kryptoniex-qt yourself, there are some useful files here.

## kryptoniex: URI support ##


kryptoniex-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install kryptoniex-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your kryptoniex-qt binary to `/usr/bin`
and the `../../share/pixmaps/kryptoniex128.png` to `/usr/share/pixmaps`

kryptoniex-qt.protocol (KDE)

