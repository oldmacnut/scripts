#!/bin/bash

DATE=$(date +%m%d)
TIME=$(date +%I%M)
CONFIG="config_name"
cd ~/kernel_dir

make mrproper
make clean

make ARCH=arm "$CONFIG"_defconfig
make -j16 CROSS_COMPILE=/path_to_toolchain/arm-2009q3/bin/arm-none-linux-gnueabi- \

cp arch/arm/boot/zImage /output_dir/"$DATE"_"$TIME"_"$CONFIG"_zImage

