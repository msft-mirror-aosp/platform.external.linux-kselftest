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

disabled_target := 0

# TODO(trong): enable kselftest for darwin and windows hosts.
ifneq (linux, $(HOST_OS)
disabled_target := 1
endif

# TODO(trong): enable kselftest for mips eng.
ifneq (,$(findstring mips, $(TARGET_PRODUCT)))
ifeq (eng, $(TARGET_BUILD_VARIANT))
disabled_target := 1
endif
endif

# Kselftests are only for development and not for production.
ifeq (,$(filter userdebug eng, $(TARGET_BUILD_VARIANT)))
disabled_target := 1
endif

ifeq (0, $(disabled_target))

LOCAL_PATH := $(call my-dir)
kselftest_root := $(LOCAL_PATH)
kselftest_dir := tools/testing/selftests

include $(CLEAR_VARS)
kselftest_cflags := \
    -Wno-deprecated \
    -Wno-format \
    -Wno-gnu-designator \
    -Wno-macro-redefined \
    -Wno-missing-field-initializers \
    -Wno-parentheses-equality \
    -Wno-pointer-arith \
    -Wno-sign-compare \
    -Wno-unused-parameter \
    -Wno-shift-negative-value \
    -Wno-switch \
    -Wno-absolute-value \
    -Wno-non-literal-null-conversion \
    -Wno-unused-variable \
    -Wno-unused-parameter \
    -Werror \

build_kselftest_test := $(kselftest_root)/android/Android.test.mk
build_kselftest_prebuilt := $(kselftest_root)/android/Android.prebuilt.mk
include $(kselftest_root)/android/Android.kselftest.mk

endif
