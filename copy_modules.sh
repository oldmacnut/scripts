#!/bin/bash

find /kernel_dir -name '*.ko' -exec cp -v {} /initramfs_dir/lib/modules \;
echo "`find /kernel_dir -name '*.ko' | wc -l` module(s) copied"
