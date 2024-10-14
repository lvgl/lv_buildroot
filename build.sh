#!/bin/bash
SCRIPTPATH="$( cd "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"

cd $SCRIPTPATH
mkdir -p output
cd buildroot
make defconfig O=../output BR2_DEFCONFIG=../resources/configs/raspberrypi4_lvgl_defconfig

cd ../output
make
