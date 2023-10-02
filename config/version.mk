
# Copyright (C) 2016-2017 AOSiP
# Copyright (C) 2020 Fluid
# Copyright (C) 2023 Serasa
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

# Versioning System
SERASA_NUM_VER_PRIMARY := 13
SERASA_NUM_VER_SECONDARY := 1
TARGET_PRODUCT_SHORT := $(subst serasa_,,$(SERASA_BUILD_TYPE))

SERASA_BUILD_TYPE ?= UNOFFICIAL

# Only include Updater for official, weeklies, CI and nightly builds
ifeq ($(filter-out OFFICIAL Official WEEKLIES NIGHTLY CI,$(SERASA_BUILD_TYPE)),)
    PRODUCT_PACKAGES += \
        Updates
endif

# Sign builds if building an official, weekly, CI and nightly build
ifeq ($(filter-out OFFICIAL WEEKLIES NIGHTLY CI,$(SERASA_BUILD_TYPE)),)
    PRODUCT_DEFAULT_DEV_CERTIFICATE := $(KEYS_LOCATION)
endif

# Set all versions
BUILD_DATE := $(shell date -u +%Y%m%d)
BUILD_TIME := $(shell date -u +%H%M)
SERASA_BUILD_VERSION := $(SERASA_NUM_VER_PRIMARY).$(SERASA_NUM_VER_SECONDARY)
SERASA_VERSION := $(SERASA_BUILD_VERSION)-$(SERASA_BUILD_TYPE)-$(SERASA_BUILD)-$(BUILD_DATE)
ifeq ($(WITH_GAPPS), true)
SERASA_VERSION := $(SERASA_VERSION)-gapps
endif
ROM_FINGERPRINT := SERASA/$(PLATFORM_VERSION)/$(TARGET_PRODUCT_SHORT)/$(BUILD_TIME)
SERASA_DISPLAY_VERSION := $(SERASA_VERSION)
RELEASE_TYPE := $(SERASA_BUILD_TYPE)
