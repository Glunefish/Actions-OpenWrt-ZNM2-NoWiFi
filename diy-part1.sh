#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#
# Uncomment a feed source
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

rm -rf package/kernel/nat46/Makefile
wget https://github.com/LiBwrt/openwrt-6.x/raw/refs/heads/kernel-6.12/package/kernel/nat46/Makefile -O package/kernel/nat46/Makefile

cd package
git clone https://github.com/xiaorouji/openwrt-passwall
git clone https://github.com/lwb1978/openwrt-gecoosac
git clone https://github.com/kenzok78/luci-app-adguardhome
