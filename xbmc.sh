#!/bin/bash
# xbmc.sh
# Sébastien Malissard 30/09/2015
#
# Instalation et script de lancement automatique

apt-get install xorg xbmc

# Pour lancer xbmc manuelement:
# startx xbmc

# Login automatique au démarrage sur tty1
# http://memo-linux.com/debian-8-systemd-autologin-sans-display-manager/
# https://doc.ubuntu-fr.org/mingetty
# FIXME Problème de sécurité : créer un utilisateur avec les droits minimaux
mkdir -pv /etc/systemd/system/getty@tty1.service.d/
touch /etc/systemd/system/getty@tty1.service.d/autologin.conf
echo -e "[Service]\nExecStart=\nExecStart=-/sbin/agetty --autologin seb --noclear %I 38400 linux" > /etc/systemd/system/getty@tty1.service.d/autologin.conf

# Lancement automatique au démarrage de XBMC sur tty1
echo -e "# Lancement de XBMC\nif [ -z "$DISPLAY" ] && [ $(tty) == /dev/tty1 ]; then\n   startx xbmc\nfi" >> /home/seb/.profile
