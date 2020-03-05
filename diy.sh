#!/bin/bash
#=================================================
# Description: DIY script
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#=================================================
# Modify default IP
sed -i 's/192.168.1.1/10.10.10.1/g' package/base-files/files/bin/config_generate
#add luci-app-koolproxyR
git clone https://github.com/tcsr200722/luci-app-koolproxyR.git package/luci-app-koolproxyR
#add luci-app-diskman
mkdir -p package/luci-app-diskman && wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Makefile -O package/luci-app-diskman/Makefile
mkdir -p package/parted && wget https://raw.githubusercontent.com/lisaac/luci-app-diskman/master/Parted.Makefile -O package/parted/Makefile
#add luci-app-filebrowser
git clone https://github.com/project-openwrt/FileBrowser.git package/luci-app-filebrowser
#add OpenAppFilter
git clone https://github.com/project-openwrt/OpenAppFilter.git package/OpenAppFilter
#upgrade feeds
./scripts/feeds update -a
./scripts/feeds install -a
