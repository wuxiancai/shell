#!/bin/bash
#扩容linux根目录磁盘大小
fdisk /dev/sdb
echo  'n'
echo  'p'
echo -e '\n'
echo -e '\n'
echo -e '\n'
echo 't'
echo  '8e'
ceho  'w'
lsblk
pvcreate /dev/sdb1
vgextend ubuntu-vg /dev/sdb1
lvextend -l +100%FREE /dev/ubuntu-vg/ubuntu-lv
resize2fs /dev/ubuntu-vg/ubuntu-lv
lsblk
df -h


