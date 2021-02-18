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
# Swan Lan&Wan
sed -i "s,'eth1' 'eth0','eth0' 'eth1',g" target/linux/rockchip/armv8/base-files/etc/board.d/02_network

# Modify default IP
sed -i 's/192.168.1.1/192.168.2.1/g' package/base-files/files/bin/config_generate

# Add packages
#git clone https://github.com/vernesong/OpenClash.git package/OpenClash
git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
git clone https://github.com/immortalwrt/luci-app-unblockneteasemusic.git package/unblockneteasemusic
