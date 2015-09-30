#!/bin/bash
# update.sh
# Sébastien Malissard 28/09/2015
#
# Mise à jour des sources pour apt et installation des firmwares non libres pour les cartes réseaux

echo -e "deb http://ftp.fr.debian.org/debian jessie main contrib non-free\n\ndeb http://ftp.fr.debian.org/debian jessie-updates main\n\ndeb http://security.debian.org/ jessie/updates main" > /etc/apt/sources.list
apt-get update
apt-get install firmware-iwlwifi firmware-realtek
apt-get upgrade

