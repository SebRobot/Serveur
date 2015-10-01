#!/bin/bash
# son.sh
# Sébastien Malissard 28/09/2015
#
# Configuration des sorties analogiques comme prioritaire et activation du son

echo -e "options snd-hda-intel index=0  model=auto vid=8086 pid=8ca0\noptions snd-hda-intel index=1  model=auto vid=8086 pid=0c0c" > /etc/modprobe.d/alsa-base.conf

# Après un redémarrage déactiver le mode muet
# apt-get install alsa-utils
# amixer set Master unmute
# alsamixer
