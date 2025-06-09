AESD_CHAR_DRIVER_MODULE_SUBDIRS = aesd-char-driver
AESD_CHAR_DRIVER_VERSION = c16a58b46aa6dadeddd5763698ad0212c5409260
AESD_CHAR_DRIVER_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-kudduesi.git
AESD_CHAR_DRIVER_SITE_METHOD = git
AESD_CHAR_DRIVER_GIT_SUBMODULES = YES


define AESD_CHAR_DRIVER_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/aesd-char-driver/aesdchar_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
