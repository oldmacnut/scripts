#!/bin/bash
cd ~/cm7sgt/device/samsung/galaxytabc
./kernel.sh defconfig
./kernel.sh modules
cd ~/cm7sgt
make -j24
cd ~/cm7sgt/device/samsung/galaxytabc
./kernel.sh kernel
cd ~/cm7sgt
make bacon
