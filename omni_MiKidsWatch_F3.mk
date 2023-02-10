#
# Copyright 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

#device_path
DEVICE_PATH := device/Xiaoxun/MiKidsWatch_F3

# Inherit something
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Device
PRODUCT_DEVICE := MiKidsWatch_F3
PRODUCT_NAME := omni_MiKidsWatch_F3
PRODUCT_BRAND := Xiaoxun
PRODUCT_MODEL := MiKidsWatch_F3
PRODUCT_MANUFACTURER := Xiaoxun

# Enable MTP
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
		persist.sys.usb.config=mtp,adb

# Prebuilt kernel
PRODUCT_COPY_FILES += device/Xiaoxun/MiKidsWatch_F3/prebuilt/zImage-dtb:kernel

# Ramdisk
PRODUCT_PACKAGES += \
    $(DEVICE_PATH)/recovery/root/init.recovery.mt6739.rc:root/init.recovery.mt6739.rc \
    $(DEVICE_PATH)/recovery/root/ueventd.mt6739.rc:root/ueventd.mt6739.rc \
    $(DEVICE_PATH)/recovery/root/init.recovery.usb.rc:root/init.recovery.usb.rc

#Allow_missing_dependencies
ALLOW_MISSING_DEPENDENCIES=true
