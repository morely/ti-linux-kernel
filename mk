#!/bin/sh
targetname="mcc335x-y-3.14.y"
dtbname="mcc335x-y-512m.dtb"
make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-  O=$targetname $dtbname
time make ARCH=arm CROSS_COMPILE=arm-linux-gnueabihf-  O=$targetname LOADADDR=0x80008000 uImage
#make ARCH=arm O=$targetname modules
#make ARCH=arm O=$targetname modules_install  INSTALL_MOD_PATH=../../../buildroot/board/am335x/rootfs
sudo cp $targetname/arch/arm/boot/uImage /media/share/mcc335x-y/
sudo cp $targetname/arch/arm/boot/dts/$dtbname /media/share/mcc335x-y/devicetree.dtb
