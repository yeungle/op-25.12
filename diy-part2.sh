#!/bin/bash
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
# Copyright (c) 2019-2024 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate

# Modify default theme
#sed -i 's/luci-theme-bootstrap/luci-theme-design/g' feeds/luci/collections/luci/Makefile

# Modify hostname
#sed -i 's/OpenWrt/P3TERX-Router/g' package/base-files/files/bin/config_generate

# Modify version number
sed -i "s/^VERSION_NUMBER:=.*/VERSION_NUMBER:=25.12-$(date +%Y%m%d)/" include/version.mk

#rm -rf feeds/luci/applications/luci-app-adguardhome
#rm -rf feeds/packages/net/adguardhome
#rm -rf package/feeds/packages/adguardhome
#rm -rf package/feeds/luci/luci-app-adguardhome
#rm -rf feeds/luci/applications/luci-app-openclash
#rm -rf package/feeds/luci/luci-app-openclash

#git clone https://github.com/kenzok78/luci-app-adguardhome.git package/luci-app-adguardhome

git clone --depth=1 https://github.com/kenzok8/small-package.git kenzok8-packages
cp -rf kenzok8-packages/ddnsto package/ddnsto
cp -rf kenzok8-packages/luci-app-ddnsto package/luci-app-ddnsto
cp -rf kenzok8-packages/wrtbwmon package/wrtbwmon
cp -rf kenzok8-packages/luci-app-wrtbwmon package/luci-app-wrtbwmon
#cp -rf kenzok8-packages/adguardhome package/adguardhome
#cp -rf kenzok8-packages/luci-app-adguardhome package/luci-app-adguardhome
cp -rf kenzok8-packages/fastnet package/fastnet
cp -rf kenzok8-packages/luci-app-fastnet package/luci-app-fastnet
cp -rf kenzok8-packages/linkease package/linkease
cp -rf kenzok8-packages/linkmount package/linkmount
cp -rf kenzok8-packages/luci-app-linkease package/luci-app-linkease
rm -rf kenzok8-packages

#git clone --depth=1 https://github.com/vernesong/OpenClash.git OpenClash-packages
#cp -rf OpenClash-packages/luci-app-openclash package/luci-app-openclash
#rm -rf OpenClash-packages

#git clone --depth=1 https://github.com/linkease/nas-packages.git nas-packages
#cp -rf nas-packages/network/services/linkease package/linkease
#cp -rf nas-packages/network/services/linkmount package/linkmount
#cp -rf nas-packages/network/services/ddnsto package/ddnsto
#rm -rf nas-packages

#git clone --depth=1 https://github.com/linkease/nas-packages-luci.git nas-packages-luci
#cp -rf nas-packages-luci/luci/luci-app-linkease package/luci-app-linkease
#cp -rf nas-packages-luci/luci/luci-app-ddnsto package/luci-app-ddnsto
#rm -rf nas-packages-luci

#git clone --depth=1 https://github.com/jjm2473/luci-app-autotimeset.git package/luci-app-autotimeset

#./scripts/feeds update -a
#./scripts/feeds install -a
