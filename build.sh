#!/bin/bash

# 打印 info
make info

# 主配置名称
PROFILE="jdcloud_re-cs-07"

PACKAGES=""

# Argon 主题
PACKAGES="$PACKAGES luci-theme-argon luci-i18n-argon-config-zh-cn"

# Samba 网络共享
PACKAGES="$PACKAGES luci-i18n-samba4-zh-cn"
# Zerotier
PACKAGES="$PACKAGES luci-i18n-zerotier-zh-cn"

# 界面翻译补全
PACKAGES="$PACKAGES luci-i18n-opkg-zh-cn luci-i18n-base-zh-cn luci-i18n-firewall-zh-cn"

# 一些自定义文件
FILES="files"

# 禁用 openssh-server 的 sshd 服务和 docker 的 dockerd 服务以防止冲突
DISABLED_SERVICES="sshd"

make image PROFILE="$PROFILE" PACKAGES="$PACKAGES" FILES="$FILES" DISABLED_SERVICES="$DISABLED_SERVICES"
