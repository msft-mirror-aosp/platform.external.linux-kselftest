#
# Copyright (C) 2016 The Android Open Source Project
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

include $(CLEAR_VARS)

module_name := kselftest_$(subst /,_,$(module_prebuilt))
module_stem := $(notdir $(module_src_files))
module_path := $(dir $(module_src_files))

prebuilt_src_file := $(kselftest_root)/$(kselftest_dir)/$(module_src_files)

PRIVATE_CUSTOM_TOOL = $(ACP) -fp $< $@ && \
    sed -i -e 's?/bin/sh?/system/bin/sh?' -e 's?/bin/bash?/system/bin/sh?' $@

LOCAL_MODULE := $(module_name)-32
LOCAL_INSTALLED_MODULE_STEM := $(module_stem)
LOCAL_MODULE_PATH := $($(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_DATA_NATIVE_TESTS)/linux-kselftest/$(module_path)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := 32

include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(prebuilt_src_file) $(kselftest_root)/android/Android.prebuilt.mk
	$(transform-generated-source)
vts_src_file_32 := $(LOCAL_MODULE_PATH)/$(LOCAL_INSTALLED_MODULE_STEM)

include $(CLEAR_VARS)

LOCAL_MODULE := $(module_name)-64
LOCAL_INSTALLED_MODULE_STEM := $(module_stem)
LOCAL_MODULE_PATH := $(TARGET_OUT_DATA_NATIVE_TESTS)/linux-kselftest/$(module_path)
LOCAL_MODULE_CLASS := EXECUTABLES
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := 64

include $(BUILD_SYSTEM)/base_rules.mk
$(LOCAL_BUILT_MODULE): $(prebuilt_src_file) $(kselftest_root)/android/Android.prebuilt.mk
	$(transform-generated-source)
vts_src_file_64 := $(LOCAL_MODULE_PATH)/$(LOCAL_INSTALLED_MODULE_STEM)

vts_dst_dir := $(module_path)
include $(kselftest_root)/android/Android.vts_testcase.mk

module_name :=
module_stem :=
module_path :=
vts_src_file_32 :=
vts_src_file_64 :=
vts_dst_dir :=
