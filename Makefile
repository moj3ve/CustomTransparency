PACKAGE_VERSION=$(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

export TARGET = iphone:clang:13.0:13.0
export ARCHS=arm64 arm64e

TWEAK_NAME = CustomTransparency
CustomTransparency_FILES = Tweak.xm
CustomTransparency_CFLAGS = -fobjc-arc -Wno-deprecated-declarations

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
