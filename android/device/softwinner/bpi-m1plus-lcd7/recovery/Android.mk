ifneq (,$(findstring $(TARGET_DEVICE),bpi-m1plus-lcd7))

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := eng
LOCAL_C_INCLUDES += bootable/recovery
LOCAL_SRC_FILES := default_device.cpp

# should match TARGET_RECOVERY_UI_LIB set in BoardConfig.mk
LOCAL_MODULE := librecovery_ui_bpi_m1plus_lcd7

include $(BUILD_STATIC_LIBRARY)

include $(CLEAR_VARS)

# Edify extension functions for doing bootloader updates on Tuna devices.

LOCAL_MODULE_TAGS := optional
LOCAL_C_INCLUDES += bootable/recovery
LOCAL_SRC_FILES := recovery_updater.c bootloader.c

# should match TARGET_RECOVERY_UPDATER_LIBS set in BoardConfig.mk
LOCAL_MODULE := librecovery_updater_bpi_m1plus_lcd7

include $(BUILD_STATIC_LIBRARY)

endif
