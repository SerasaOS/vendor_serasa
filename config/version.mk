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

ifndef SERASA_BUILD_TYPE
   SERASA_BUILD_TYPE := UNOFFICIAL
endif

SERASA_VERSION := rev1.0
SERASA_CODENAME := Milikita
SERASA_BUILD_VERSION := serasa-$(SERASA_VERSION)-$(SERASA_BUILD)-$(SERASA_HOST_TIME)-$(SERASA_BUILD_TYPE)
SERASA_BUILD_NUMBER := sr_$(SERASA_VERSION).$(SERASA_HOST_TIME)

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
   ro.serasa.version=$(SERASA_VERSION) \
   ro.serasa.codename=$(SERASA_CODENAME) \
   ro.serasa.build.version=$(SERASA_BUILD_VERSION) \
   ro.serasa.build.number=$(SERASA_BUILD_NUMBER) \
   ro.serasa.build.type=$(SERASA_BUILD_TYPE) \
   ro.caf.revision.tag=$(CAF_REVISION_TAG)
