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

module_name := kselftest_$(subst /,_,$(module_testname))
module_stem := $(notdir $(module_testname))
module_path := $(dir $(module_src_files))

LOCAL_MODULE := $(module_name)
LOCAL_MODULE_STEM_32 := $(module_stem)
LOCAL_MODULE_STEM_64 := $(module_stem)
LOCAL_MODULE_PATH_32 := $($(TARGET_2ND_ARCH_VAR_PREFIX)TARGET_OUT_DATA_NATIVE_TESTS)/linux-kselftest
LOCAL_MODULE_PATH_64 := $(TARGET_OUT_DATA_NATIVE_TESTS)/linux-kselftest
LOCAL_MODULE_TAGS := optional
LOCAL_MULTILIB := both

LOCAL_CFLAGS := $(kselftest_cflags) $(module_cflags)
LOCAL_C_INCLUDES := $(addprefix $(kselftest_root)/$(kselftest_dir)/,$(module_c_includes))
LOCAL_SRC_FILES := $(addprefix $(kselftest_dir)/,$(module_src_files))
LOCAL_ADDITIONAL_DEPENDENCIES := $(LOCAL_PATH)/Android.test.mk
LOCAL_COMPATIBILITY_SUITE := vts

include $(BUILD_EXECUTABLE)

