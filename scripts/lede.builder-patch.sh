#!/bin/bash

echo "Start Builder Patch !"
echo "Current Path: $PWD"

cd $GITHUB_WORKSPACE/wrt || exit

# Remove redundant default packages
sed -i "/luci-app-arpbind/d" include/target.mk
sed -i "/luci-app-autoreboot/d" include/target.mk
sed -i "/luci-app-filetransfer/d" include/target.mk
sed -i "/luci-app-vlmcsd/d" include/target.mk
sed -i "/luci-app-vsftpd/d" include/target.mk
sed -i "/luci-app-nlbwmon/d" include/target.mk
sed -i "/luci-app-wol/d" include/target.mk
sed -i "/luci-app-upnp/d" include/target.mk


# Force opkg to overwrite files
sed -i "s/install \$(BUILD_PACKAGES)/install \$(BUILD_PACKAGES) --force-overwrite/" Makefile
