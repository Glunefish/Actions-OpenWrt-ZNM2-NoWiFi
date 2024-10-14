#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
sed -i 's/LiBwrt/OpenWrt/g' include/version.mk
sed -i 's/LiBwrt/OpenWrt/g' package/base-files/image-config.in
sed -i 's/LiBwrt/OpenWrt/g' package/network/config/wifi-scripts/files/lib/wifi/mac80211.uc
sed -i 's/LibWrt/OpenWrt/g' package/base-files/files/bin/config_generate
rm -rf package/base-files/files/etc/banner
wget https://github.com/openwrt/openwrt/raw/refs/heads/main/package/base-files/files/etc/banner -O package/base-files/files/etc/banner
rm -rf target/linux/qualcommax/files/arch/arm64/boot/dts/qcom/ipq6018-cpufreq.dtsi
wget https://github.com/kkstone/Actions-OpenWrt-ZNM2-NoWiFi/raw/refs/heads/master/ipq6018-cpufreq.dtsi -O target/linux/qualcommax/files/arch/arm64/boot/dts/qcom/ipq6018-cpufreq.dtsi
