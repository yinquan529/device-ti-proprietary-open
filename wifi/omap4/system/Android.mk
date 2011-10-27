LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
copy_files_from := $(wildcard $(LOCAL_PATH)/etc/firmware/ti-connectivity/*)
copy_files_to := $(copy_files_from:$(LOCAL_PATH)/%=$(TARGET_OUT)/%)
$(copy_files_to): $(TARGET_OUT)/% : $(LOCAL_PATH)/% | $(ACP)
	$(transform-prebuilt-to-target)
ALL_PREBUILT += $(copy_files_to)

PRODUCT_COPY_FILES += \
        device/ti/proprietary-open/wifi/omap4/LICENCE.ti-connectivity:root/LICENCE.ti-connectivity
