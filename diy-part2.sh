#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP
#sed -i 's/192.168.1.1/192.168.50.5/g' package/base-files/files/bin/config_generate
#
#sed -i '/^config internal themes/ a\        option Bootstrap "/luci-static/bootstrap"\n        option Argon_Dark "/luci-static/argon_dark"' feeds/luci/modules/luci-base/root/etc/config/luci
sed -i 's/option mediaurlbase \/luci-static\/bootstrap/option mediaurlbase \/luci-static\/argon_dark/g' feeds/luci/modules/luci-base/root/etc/config/luci
sed -i 's/KERNEL_PATCHVER:=4.9/KERNEL_PATCHVER:=4.14/g' target/linux/ar71xx/Makefile
