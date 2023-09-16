#
# Copyright (C) 2020 The ConquerOS Project
#				2021 a SERASA Prjkt
#				2023 Serasa Prjkt
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

SERASA_HOST_TIME := $(shell date +"%Y%m%d-%H%M")
SERASA_BUILD_DATE := $(shell date -u +%Y%m%d)
SERASA_BUILD_TIME := $(shell date -u +%H%M)
SERASA_BUILD_DATE_TIME := $(SERASA_BUILD_TIME)$(SERASA_BUILD_DATE)

ifndef SERASA_BUILD_TYPE
   SERASA_BUILD_TYPE := UNOFFICIAL
endif

SERASA_VERSION := rev1.1
SERASA_CODENAME := milikita
SERASA_REVISION := sr_$(SERASA_VERSION).$(SERASA_CODENAME).$(SERASA_BUILD_TYPE)

SERASA_BUILD_VERSION := $(SERASA_REVISION)-$(SERASA_BUILD)-$(SERASA_HOST_TIME)
SERASA_BUILD_NUMBER := $(SERASA_VERSION).$(SERASA_HOST_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.serasa.version=$(SERASA_VERSION) \
   ro.serasa.codename=$(SERASA_CODENAME) \
   ro.serasa.revision=$(SERASA_REVISION) \
   ro.serasa.build.version=$(SERASA_BUILD_VERSION) \
   ro.serasa.build.number=$(SERASA_BUILD_NUMBER) \
   ro.serasa.build.type=$(SERASA_BUILD_TYPE) \
   ro.build.datetime=$(SERASA_BUILD_DATE_TIME) \
   ro.caf.revision.tag=$(CAF_REVISION_TAG)
