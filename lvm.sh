#!/bin/bash
# lvm.sh
# Sébastien Malissard 01/10/2015
#
# Pour 2 disques formatés en ext4 sur SATA0 et SATA1

apt-get install lvm2

# Création 
# pvcreate /dev/sda1
# pvcreate /dev/sdb1
# vgcreate vg1 /dev/sda1 /dev/sdb1
# lvcreate -l 100%VG -n lv1 vg1
# mkfs -t ext4 /dev/mapper/vg1-lv1

# Récupération 
vgscan

# Montage automatique
mkdir /mnt/data
chmod 777 /mnt/data
echo "/dev/mapper/vg1-lv1                      /mnt/data/       ext4   auto            0     0" >> /etc/fstab
