#!/bin/bash
sudo yum install lvm2 -y

sudo pvcreate /dev/sdb /dev/sdc /dev/sdd /dev/sde

sudo vgcreate vg01 /dev/sdb /dev/sdc
sudo vgcreate vg02 /dev/sdd /dev/sde

sudo lvcreate -n vol1 -l+100%FREE vg01
sudo lvcreate -n vol2 -l+100%FREE vg02

sudo mkfs.ext4 /dev/vg01/vol1
sudo mkfs.ext4 /dev/vg02/vol2

sudo blkid /dev/vg01/vol1
sudo blkid /dev/vg02/vol2

sudo mkdir /mnt/vol1
sudo mkdir /mnt/vol2

sudo mount /dev/vg01/vol1 /mnt/vol1
sudo mount /dev/vg02/vol2 /mnt/vol2