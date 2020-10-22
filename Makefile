ARCHS = arm64 arm64e

INSTALL_TARGET_PROCESSES = SpringBoard

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = NotiTapDelay

NotiTapDelay_FILES = Tweak.xm
NotiTapDelay_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
