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

# sed -i 's/KERNEL_PATCHVER:=6.12/KERNEL_PATCHVER:=6.6/' target/linux/qualcommax/Makefile

rm -rf feeds/packages/net/smartdns
rm -rf feeds/luci/applications/luci-app-smartdns


cd package
# git clone https://github.com/xiaorouji/openwrt-passwall-packages
# git clone https://github.com/xiaorouji/openwrt-passwall
git clone https://github.com/lwb1978/openwrt-gecoosac
git clone https://github.com/pymumu/smartdns
git clone https://github.com/pymumu/luci-app-smartdns
