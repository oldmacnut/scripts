#!/bin/bash
mkdir ~/cm7sgt
cd ~/cm7sgt
repo init -u git://github.com/cm7sgt/android.git -b gingerbread 
git init
git clone git://github.com/cm7sgt/android.git
rm -R .git
rm ~/cm7sgt/.repo/manifests/default.xml
mv ~/cm7sgt/android/default.xml ~/cm7sgt/.repo/manifests/
repo sync -j24

