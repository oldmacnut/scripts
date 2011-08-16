#!/bin/bash
cd ~/cm7sgt
. build/envsetup.sh
lunch cyanogen_galaxytabc-eng
make -j24
make bacon

