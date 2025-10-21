#!/bin/bash

# 修改默认IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate

# 更改 Argon 主题背景
#cp -f $GITHUB_WORKSPACE/images/bg1.jpg feeds/luci/themes/luci-theme-argon/htdocs/luci-static/argon/img/bg1.jpg

# 移除冲突文件
rm -rf feeds/luci/applications/luci-app-argon-config
rm -rf feeds/luci/applications/luci-app-argon

# 添加 golang 支持
rm -rf feeds/packages/lang/golang
git clone https://github.com/openwrt/packages.git temp-packages -b openwrt-24.10
cp -rf temp-packages/lang/golang feeds/packages/lang/
rm -rf temp-packages




./scripts/feeds update -a
./scripts/feeds install -a
