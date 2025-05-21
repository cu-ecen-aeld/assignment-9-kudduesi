
LDD_VERSION = e23181bfe77a9e06a0cf787e91eba9f4bc42b1fe
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-kudduesi.git
LDD_SITE_METHOD = git
LDD_GIT_SUBMODULES = YES

LDD_MODULE_SUBDIRS = misc-modules scull
LDD_MODULE_MAKE_OPTS = KERNELDIR=$(LINUX_DIR)
$(eval $(kernel-module))

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_load $(TARGET_DIR)/usr/bin/
	$(INSTALL) -m 0755 $(@D)/misc-modules/module_unload $(TARGET_DIR)/usr/bin/
endef

$(eval $(generic-package))