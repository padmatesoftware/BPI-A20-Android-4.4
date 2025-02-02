$(call inherit-product, device/softwinner/wing-common/wing-common.mk)

DEVICE_PACKAGE_OVERLAYS := \
	device/softwinner/bpi-beone/overlay \
	$(DEVICE_PACKAGE_OVERLAYS)

# Abandon useless system app. Add which module name in apk/Android.mk bpi_beone_app section.
PRODUCT_PACKAGES += \
	bpi_beone_app

# google pinyin
PRODUCT_PACKAGES += \
	com.google.android.inputmethod.pinyin \
	libgnustl_shared.so \
	libjni_delight.so \
	libjni_googlepinyinime_5.so \
	libjni_googlepinyinime_latinime_5.so \
	libjni_hmm_shared_engine.so

# gps
BOARD_USES_GPS_TYPE := simulator
PRODUCT_PACKAGES += \
    gps.wing

# for recovery
PRODUCT_COPY_FILES += \
    device/softwinner/bpi-beone/recovery.fstab:recovery.fstab \
    device/softwinner/bpi-beone/modules/modules/disp.ko:obj/disp.ko \
    device/softwinner/bpi-beone/modules/modules/lcd.ko:obj/lcd.ko \
    device/softwinner/bpi-beone/modules/modules/hdmi.ko:obj/hdmi.ko \
    device/softwinner/bpi-beone/modules/modules/hdcp.ko:obj/hdcp.ko \
    device/softwinner/bpi-beone/modules/modules/ft5x_ts.ko:obj/ft5x_ts.ko \
    device/softwinner/bpi-beone/modules/modules/sw_device.ko:obj/sw_device.ko

PRODUCT_COPY_FILES += \
    device/softwinner/bpi-beone/kernel:kernel \
    device/softwinner/bpi-beone/fstab.sun7i:root/fstab.sun7i \
    device/softwinner/bpi-beone/init.sun7i.rc:root/init.sun7i.rc \
    device/softwinner/bpi-beone/init.recovery.sun7i.rc:root/init.recovery.sun7i.rc \
    device/softwinner/bpi-beone/ueventd.sun7i.rc:root/ueventd.sun7i.rc \
    device/softwinner/bpi-beone/modules/modules/nand.ko:root/nand.ko

PRODUCT_COPY_FILES += \
    device/softwinner/bpi-beone/configs/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml

PRODUCT_COPY_FILES += \
    device/softwinner/bpi-beone/configs/camera.cfg:system/etc/camera.cfg \
    device/softwinner/bpi-beone/configs/cfg-Gallery2.xml:system/etc/cfg-Gallery2.xml \
    device/softwinner/bpi-beone/configs/gsensor.cfg:system/usr/gsensor.cfg \
    device/softwinner/bpi-beone/configs/media_profiles.xml:system/etc/media_profiles.xml \
    device/softwinner/bpi-beone/configs/sw-keyboard.kl:system/usr/keylayout/sw-keyboard.kl \
    device/softwinner/bpi-beone/configs/tp.idc:system/usr/idc/tp.idc

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml   \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml

PRODUCT_COPY_FILES += \
    device/softwinner/bpi-beone/media/bootanimation.zip:system/media/bootanimation.zip \
    device/softwinner/bpi-beone/media/initlogo.rle:root/initlogo.rle \
#    device/softwinner/bpi-beone/media/boot.wav:system/media/boot.wav \
#    device/softwinner/bpi-beone/media/bootlogo.bmp:system/media/bootlogo.bmp \
#    device/softwinner/bpi-beone/media/initlogo.bmp:system/media/initlogo.bmp 

# wifi & bt config file
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
#   frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
#   system/bluetooth/data/main.nonsmartphone.conf:system/etc/bluetooth/main.conf

# rtl8723as bt fw and config
#PRODUCT_COPY_FILES += \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rlt8723a_chip_b_cut_bt40_fw.bin:system/etc/rlt8723a_chip_b_cut_bt40_fw.bin \
#   device/softwinner/wing-common/hardware/realtek/bluetooth/rtl8723as/rtk8723_bt_config:system/etc/rtk8723_bt_config

# bcm40181 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#   hardware/broadcom/wlan/firmware/bcm40181/bcm40181_nvram.txt:system/vendor/modules/bcm40181_nvram.txt

# bcm40183 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_p2p.bin:system/vendor/modules/fw_bcm40183b2_p2p.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2_apsta.bin:system/vendor/modules/fw_bcm40183b2_apsta.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/fw_bcm40183b2.bin:system/vendor/modules/fw_bcm40183b2.bin \
#   hardware/broadcom/wlan/firmware/bcm40183/bcm40183_nvram.txt:system/vendor/modules/bcm40183_nvram.txt

# ap6210 sdio wifi fw and nvram
PRODUCT_COPY_FILES += \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#   hardware/broadcom/wlan/firmware/ap6210/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#   hardware/broadcom/wlan/firmware/ap6210/nvram_ap6210.txt:system/vendor/modules/nvram_ap6210.txt \
#   hardware/broadcom/wlan/firmware/ap6210/bcm20710a1.hcd:system/vendor/modules/bcm20710a1.hcd

# ap6181 sdio wifi fw and nvram
#PRODUCT_COPY_FILES += \
#    hardware/broadcom/wlan/bcmdhd/firmware/ap6181/fw_bcm40181a2.bin:system/vendor/modules/fw_bcm40181a2.bin \
#    hardware/broadcom/wlan/bcmdhd/firmware/ap6181/fw_bcm40181a2_apsta.bin:system/vendor/modules/fw_bcm40181a2_apsta.bin \
#    hardware/broadcom/wlan/bcmdhd/firmware/ap6181/fw_bcm40181a2_p2p.bin:system/vendor/modules/fw_bcm40181a2_p2p.bin \
#    hardware/broadcom/wlan/bcmdhd/firmware/ap6181/nvram_ap6181.txt:system/vendor/modules/nvram_ap6181.txt \

# 3G Data Card Packages
PRODUCT_PACKAGES += \
    u3gmonitor \
    chat \
    rild \
    pppd

# 3G Data Card Configuration Flie
PRODUCT_COPY_FILES += \
    device/softwinner/wing-common/rild/ip-down:system/etc/ppp/ip-down \
    device/softwinner/wing-common/rild/ip-up:system/etc/ppp/ip-up \
    device/softwinner/wing-common/rild/3g_dongle.cfg:system/etc/3g_dongle.cfg \
    device/softwinner/wing-common/rild/usb_modeswitch:system/bin/usb_modeswitch \
    device/softwinner/wing-common/rild/call-pppd:system/xbin/call-pppd \
    device/softwinner/wing-common/rild/usb_modeswitch.sh:system/xbin/usb_modeswitch.sh \
    device/softwinner/wing-common/rild/apns-conf_sdk.xml:system/etc/apns-conf.xml \
    device/softwinner/wing-common/rild/libsoftwinner-ril-4.4.so:system/lib/libsoftwinner-ril-4.4.so

# 3G Data Card usb modeswitch File
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,device/softwinner/wing-common/rild/usb_modeswitch.d,system/etc/usb_modeswitch.d)

# 3G 
PRODUCT_PROPERTY_OVERRIDES += \
    rild.libargs=-d/dev/ttyUSB2 \
    rild.libpath=libsoftwinner-ril-4.4.so

# When set ro.sys.adaptive_memory=1, firmware can adaptive different dram size.
# And dalvik vm parameters configuration will become invalid.
PRODUCT_PROPERTY_OVERRIDES += \
	ro.sys.adaptive_memory=1

# dalvik vm parameters
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.heapsize=384m \
    dalvik.vm.heapstartsize=8m \
    dalvik.vm.heapgrowthlimit=96m \
    dalvik.vm.heaptargetutilization=0.75 \
    dalvik.vm.heapminfree=2m \
    dalvik.vm.heapmaxfree=8m \
    ro.zygote.disable_gl_preload=true

# drm
PRODUCT_PROPERTY_OVERRIDES += \
	drm.service.enabled=false

# usb
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mass_storage \
    ro.udisk.lable=BPI \
    ro.adb.secure=1

# ui
PRODUCT_PROPERTY_OVERRIDES += \
    ro.property.tabletUI=false \
    ro.sf.lcd_density=160 \
    ro.property.fontScale=1.0 \
    debug.hwui.render_dirty_regions=false

PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.firmware=v4.4

# function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.bootfast=true

# default language setting
PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.country=US \
	persist.sys.language=en

$(call inherit-product-if-exists, device/softwinner/bpi-beone/modules/modules.mk)

# Overrides
PRODUCT_CHARACTERISTICS := tablet
PRODUCT_BRAND := BPI
PRODUCT_NAME := bpi_beone
PRODUCT_DEVICE := bpi-beone
PRODUCT_MODEL := BPI BEONE Tablet
PRODUCT_MANUFACTURER := SINOVOIP

PRODUCT_PROPERTY_OVERRIDES += \
		persist.sys.timezone=Asia/Shanghai

#include device/softwinner/wing-common/prebuild/google/products/gms.mk
