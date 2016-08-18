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
    -Wall \
    -Werror \

build_kselftest_test := $(kselftest_root)/android/Android.test.mk
include $(kselftest_root)/android/Android.kselftest.mk
