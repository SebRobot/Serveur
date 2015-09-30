#!/bin/bash
# wifi.sh
# Sébastien Malissard 28/09/2015
#
# Configuration de l'interface wifi, sans connexion à internet.

# Instalation manuel du firmware pour la carte wifi
# https://wiki.debian.org/iwlwifi
mkdir /lib/firmware
cp -r ./Sources/Wifi/iwlwifi/* /lib/firmware
modprobe -r iwlwifi
modprobe iwlwifi

# Connexion à un point d'accès wifi sécurisé par WPA
dpkg -i ./Sources/Wifi/libnl-3-200_3.2.24-2_amd64.deb ./Sources/Wifi/libnl-genl-3-200_3.2.24-2_amd64.deb ./Sources/Wifi/libpcsclite1_1.8.13-1_amd64.deb ./Sources/Wifi/wpasupplicant_2.3-1+deb8u1_amd64.deb
echo -e "\nauto wlan0\n    iface wlan0 inet dhcp\n    wpa-ssid xxxxx\n    wpa-psk xxxxx" >> /etc/network/interfaces
service networking restart
