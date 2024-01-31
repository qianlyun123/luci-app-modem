# Copyright (C) 2020 Lienol <lawlienol@gmail.com>
#
# This is free software, licensed under the GNU General Public License v3.
#

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-app-modem
LUCI_TITLE:=LuCI support for Modem
LUCI_PKGARCH:=all
PKG_VERSION:=20231207-1.0
PKG_LICENSE:=GPLv3
PKG_LINCESE_FILES:=LICENSE
PKF_MAINTAINER:=siriling <siriling@qq.com>
LUCI_DEPENDS:=+luci-compat \
		+usbutils \
		+pciutils \
		+quectel-CM-5G \
		+sms-tool +jq +grep\

define Package/luci-app-modem/conffiles
/etc/config/modem
endef

define Package/$(PKG_NAME)/config
# shown in make menuconfig <Help>
help
	$(LUCI_TITLE)
	Version: $(PKG_VERSION)
endef

include $(TOPDIR)/feeds/luci/luci.mk

# call BuildPackage - OpenWrt buildroot signature
