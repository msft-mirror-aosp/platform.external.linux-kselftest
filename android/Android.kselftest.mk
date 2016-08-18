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

module_testname := kcmp/kcmp_test
module_src_files := kcmp/kcmp_test.c
module_cflags :=
module_c_includes :=
include $(build_kselftest_test)

# Futex tests
module_testname := futex/functional/futex_wait_timeout
module_src_files := futex/functional/futex_wait_timeout.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
include $(build_kselftest_test)

module_testname := futex/functional/futex_wait_wouldblock
module_src_files := futex/functional/futex_wait_wouldblock.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
include $(build_kselftest_test)

#module_testname := futex/functional/futex_requeue_pi
#module_src_files := futex/functional/futex_requeue_pi.c
#module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
#module_c_includes := futex/include .
#include $(build_kselftest_test)

#module_testname := futex/functional/futex_requeue_pi_signal_restart
#module_src_files := futex/functional/futex_requeue_pi_signal_restart.c
#module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
#module_c_includes := futex/include .
#include $(build_kselftest_test)

module_testname := futex/functional/futex_requeue_pi_mismatched_ops
module_src_files := futex/functional/futex_requeue_pi_mismatched_ops.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
include $(build_kselftest_test)

module_testname := futex/functional/futex_wait_uninitialized_heap
module_src_files := futex/functional/futex_wait_uninitialized_heap.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
include $(build_kselftest_test)

module_testname := futex/functional/futex_wait_private_mapped_file
module_src_files := futex/functional/futex_wait_private_mapped_file.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
include $(build_kselftest_test)

# Timer tests
module_testname := timers/posix_timers
module_src_files := timers/posix_timers.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/nanosleep
module_src_files := timers/nanosleep.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/nsleep-lat
module_src_files := timers/nsleep-lat.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/set-timer-lat
module_src_files := timers/set-timer-lat.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

#module_testname := timers/mqueue-lat
#module_src_files := timers/mqueue-lat.c
#module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
#module_c_includes :=
#include $(build_kselftest_test)

module_testname := timers/inconsistency-check
module_src_files := timers/inconsistency-check.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/raw_skew
module_src_files := timers/raw_skew.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/threadtest
module_src_files := timers/threadtest.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/rtctest
module_src_files := timers/rtctest.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/alarmtimer-suspend
module_src_files := timers/alarmtimer-suspend.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

#module_testname := timers/valid-adjtimex
#module_src_files := timers/valid-adjtimex.c
#module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
#module_c_includes :=
#include $(build_kselftest_test)

module_testname := timers/adjtick
module_src_files := timers/adjtick.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/change_skew
module_src_files := timers/change_skew.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/skew_consistency
module_src_files := timers/skew_consistency.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/clocksource-switch
module_src_files := timers/clocksource-switch.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/leap-a-day
module_src_files := timers/leap-a-day.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/leapcrash
module_src_files := timers/leapcrash.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/set-tai
module_src_files := timers/set-tai.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/set-2038
module_src_files := timers/set-2038.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

module_testname := timers/set-tz
module_src_files := timers/set-tz.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
include $(build_kselftest_test)

