# Inherit common Serasa stuff
$(call inherit-product, vendor/serasa/config/common_mobile.mk)

PRODUCT_SIZE := full

NO_APERTURE ?= false
ifneq ($(NO_APERTURE),true)
PRODUCT_PACKAGES += \
    Aperture
endif

# Apps
PRODUCT_PACKAGES += \
    Etar \
    Profiles \
    Recorder

# Extra cmdline tools
PRODUCT_PACKAGES += \
    unrar \
    zstd
