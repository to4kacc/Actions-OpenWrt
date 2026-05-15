#!/bin/bash

# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate


# hlk7628n dts
mkdir -p target/linux/ramips/dts/
cp -f "$GITHUB_WORKSPACE/scripts/mt7628an_hilink_hlk-7628n.dts" "target/linux/ramips/dts/mt7628an_hilink_hlk-7628n.dts"


# hlk7628n (LEDs)
mkdir -p "target/linux/ramips/mt76x8/base-files/etc/board.d/"
cp -f "$GITHUB_WORKSPACE/scripts/01_leds" "target/linux/ramips/mt76x8/base-files/etc/board.d/01_leds"
