# Build fingerprint
ifneq ($(BUILD_FINGERPRINT),)
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)
endif

# Serasa Platform Display Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.serasa.display.version=$(SERASA_DISPLAY_VERSION) \
    ro.serasa.build.version=$(SERASA_BUILD_VERSION) \
    ro.serasa.build.date=$(BUILD_DATE) \
    ro.serasa.buildtype=$(SERASA_BUILD_TYPE) \
    ro.serasa.fingerprint=$(ROM_FINGERPRINT) \
    ro.serasa.version=$(SERASA_VERSION) \
    ro.modversion=$(SERASA_VERSION)

# LineageOS Platform SDK Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.sdk=$(LINEAGE_PLATFORM_SDK_VERSION)

# LineageOS Platform Internal Version
ADDITIONAL_SYSTEM_PROPERTIES += \
    ro.lineage.build.version.plat.rev=$(LINEAGE_PLATFORM_REV)
