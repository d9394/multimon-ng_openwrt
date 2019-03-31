include $(TOPDIR)/rules.mk

PKG_NAME:=multimon-ng
PKG_VERSION:=1.1.7
PKG_RELEASE:=1

PKG_SOURCE_PROTO:=git
PKG_SOURCE_URL:=https://github.com/EliasOenal/multimon-ng.git
PKG_SOURCE_SUBDIR:=$(PKG_NAME)-$(PKG_VERSION)
PKG_SOURCE_VERSION:=master
PKG_SOURCE:=$(PKG_NAME)-$(PKG_VERSION)-$(PKG_SOURCE_VERSION).tar.gz

PKG_MAINTAINER:=EliasOenal <github_public@eliasoenal.com>
#PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_NAME)/$(BUILD_VARIANT)/$(PKG_NAME)-$(PKG_VERSION)
PKG_BUILD_DIR:=$(BUILD_DIR)/$(PKG_SOURCE_SUBDIR)

include $(INCLUDE_DIR)/package.mk
include $(INCLUDE_DIR)/cmake.mk

define Package/multimon-ng/Default
  TITLE:=multimon-ng is the successor of multimon. It decodes the following digital transmission modes
  URL:=https://github.com/EliasOenal/multimon-ng
endef

define Build/Prepare
#        mkdir -p $(PKG_BUILD_DIR)
#        $(CP) /home/openwrt/tmp/multimon-ng/* $(PKG_BUILD_DIR)/
endef

define Package/multimon-ng
  $(call Package/multimon-ng/Default)
  SECTION:=utils
  CATEGORY:=Utilities
endef

define Package/multimon-ng/description
  multimon-ng is the successor of multimon. It decodes the following digital transmission modes
endef

define Package/multimon-ng/install
        $(INSTALL_DIR) $(1)/usr/bin
        $(INSTALL_BIN) $(PKG_BUILD_DIR)/$(PKG_NAME) $(1)/usr/bin
endef

$(eval $(call BuildPackage,multimon-ng))
