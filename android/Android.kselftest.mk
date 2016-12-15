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

# breakpoints test
module_testname := breakpoints/breakpoint_test
module_src_files := breakpoints/breakpoint_test.c
module_cflags :=
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

module_testname := breakpoints/step_after_suspend_test
module_src_files := breakpoints/step_after_suspend_test.c
module_cflags :=
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

# Cpu-hotplug test
module_prebuilt := cpu-hotplug/cpu-on-off-test
module_src_files := cpu-hotplug/cpu-on-off-test.sh
include $(build_kselftest_prebuilt)

# Efivarfs test
module_prebuilt := efivarfs/efivarfs
module_src_files := efivarfs/efivarfs.sh
include $(build_kselftest_prebuilt)

module_testname := efivarfs/open-unlink
module_src_files := efivarfs/open-unlink.c
module_cflags := -Wall
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := efivarfs/create-read
module_src_files := efivarfs/create-read.c
module_cflags := -Wall
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# Firmware test
module_prebuilt := firmware/fw_filesystem
module_src_files := firmware/fw_filesystem.sh
include $(build_kselftest_prebuilt)

module_prebuilt := firmware/fw_userhelper
module_src_files := firmware/fw_userhelper.sh
include $(build_kselftest_prebuilt)

# Ftrace test
module_prebuilt := ftrace/ftracetest
module_src_files := ftrace/ftracetest
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/functions
module_src_files := ftrace/test.d/functions
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/00basic/basic2
module_src_files := ftrace/test.d/00basic/basic2.tc
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/00basic/basic4
module_src_files := ftrace/test.d/00basic/basic4.tc
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/00basic/basic1
module_src_files := ftrace/test.d/00basic/basic1.tc
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/00basic/basic3
module_src_files := ftrace/test.d/00basic/basic3.tc
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/template
module_src_files := ftrace/test.d/template
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/instances/instance
module_src_files := ftrace/test.d/instances/instance.tc
include $(build_kselftest_prebuilt)

module_prebuilt := ftrace/test.d/instances/instance-event
module_src_files := ftrace/test.d/instances/instance-event.tc
include $(build_kselftest_prebuilt)

# Futex test
module_testname := futex/functional/futex_wait_timeout
module_src_files := futex/functional/futex_wait_timeout.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := futex/functional/futex_wait_wouldblock
module_src_files := futex/functional/futex_wait_wouldblock.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := futex/functional/futex_requeue_pi_mismatched_ops
module_src_files := futex/functional/futex_requeue_pi_mismatched_ops.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := futex/functional/futex_wait_uninitialized_heap
module_src_files := futex/functional/futex_wait_uninitialized_heap.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := futex/functional/futex_wait_private_mapped_file
module_src_files := futex/functional/futex_wait_private_mapped_file.c
module_cflags := -g -O2 -Wall -D_GNU_SOURCE -pthread -pthread -lrt
module_c_includes := futex/include .
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# intel_pstate test
module_testname := intel_pstate/aperf
module_src_files := intel_pstate/aperf.c
module_cflags := -Wall -D_GNU_SOURCE -lm
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := intel_pstate/msr
module_src_files := intel_pstate/msr.c
module_cflags := -Wall -D_GNU_SOURCE -lm
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_prebuilt := intel_pstate/run.sh
module_src_files := intel_pstate/run.sh
include $(build_kselftest_prebuilt)

# Kcmp test
module_testname := kcmp/kcmp_test
module_src_files := kcmp/kcmp_test.c
module_cflags :=
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# Lib test
module_prebuilt := lib/printf
module_src_files := lib/printf.sh
include $(build_kselftest_prebuilt)

module_prebuilt := lib/bitmap
module_src_files := lib/bitmap.sh
include $(build_kselftest_prebuilt)

# media_tests test
module_testname := media_tests/media_device_test
module_src_files := media_tests/media_device_test.c
module_cflags :=
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := media_tests/media_device_open
module_src_files := media_tests/media_device_open.c
module_cflags :=
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := media_tests/video_device_test
module_src_files := media_tests/video_device_test.c
module_cflags :=
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# Membarrier test
module_testname := membarrier/membarrier_test
module_src_files := membarrier/membarrier_test.c
module_cflags :=
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# Memory-hotplug test
module_prebuilt := memory-hotplug/mem-on-off-test
module_src_files := memory-hotplug/mem-on-off-test.sh
include $(build_kselftest_prebuilt)

# Mount test
module_testname := mount/unprivileged-remount-test
module_src_files := mount/unprivileged-remount-test.c
module_cflags := -Wall -O2
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# Net test
module_prebuilt := net/test_bpf
module_src_files := net/test_bpf.sh
include $(build_kselftest_prebuilt)

module_testname := net/socket
module_src_files := net/socket.c
module_cflags := -Wall -O2 -g
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := net/psock_fanout
module_src_files := net/psock_fanout.c
module_cflags := -Wall -O2 -g
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := net/psock_tpacket
module_src_files := net/psock_tpacket.c
module_cflags := -Wall -O2 -g
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := net/reuseport_dualstack
module_src_files := net/reuseport_dualstack.c
module_cflags := -Wall -O2 -g
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# ntb tests
module_prebuilt := ntb/ntb_test.sh
module_src_files := ntb/ntb_test.sh
include $(build_kselftest_prebuilt)

# Pstore test
module_prebuilt := pstore/pstore_tests
module_src_files := pstore/pstore_tests
include $(build_kselftest_prebuilt)

module_prebuilt := pstore/pstore_post_reboot_tests
module_src_files := pstore/pstore_post_reboot_tests
include $(build_kselftest_prebuilt)

module_prebuilt := pstore/common_tests
module_src_files := pstore/common_tests
include $(build_kselftest_prebuilt)

module_prebuilt := pstore/pstore_crash_test
module_src_files := pstore/pstore_crash_test
include $(build_kselftest_prebuilt)

# Ptrace test
module_testname := ptrace/peeksiginfo
module_src_files := ptrace/peeksiginfo.c
module_cflags := -Wall
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# seccomp test
module_testname := seccomp/seccomp_bpf
module_src_files := seccomp/seccomp_bpf.c
module_cflags := -Wl,-no-as-needed -Wall -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# Static keys test
module_prebuilt := static_keys/test_static_keys
module_src_files := static_keys/test_static_keys.sh
include $(build_kselftest_prebuilt)

# Sysctl
module_prebuilt := sysctl/run_numerictests
module_src_files := sysctl/run_numerictests
include $(build_kselftest_prebuilt)

module_prebuilt := sysctl/run_stringtests
module_src_files := sysctl/run_stringtests
include $(build_kselftest_prebuilt)

module_prebuilt := sysctl/common_tests
module_src_files := sysctl/common_tests
include $(build_kselftest_prebuilt)

# Timer test
module_testname := timers/posix_timers
module_src_files := timers/posix_timers.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/nanosleep
module_src_files := timers/nanosleep.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/nsleep-lat
module_src_files := timers/nsleep-lat.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/set-timer-lat
module_src_files := timers/set-timer-lat.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/inconsistency-check
module_src_files := timers/inconsistency-check.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/raw_skew
module_src_files := timers/raw_skew.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/threadtest
module_src_files := timers/threadtest.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/rtctest
module_src_files := timers/rtctest.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/alarmtimer-suspend
module_src_files := timers/alarmtimer-suspend.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/valid-adjtimex
module_src_files := timers/valid-adjtimex.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/adjtick
module_src_files := timers/adjtick.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/change_skew
module_src_files := timers/change_skew.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/skew_consistency
module_src_files := timers/skew_consistency.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/clocksource-switch
module_src_files := timers/clocksource-switch.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/leap-a-day
module_src_files := timers/leap-a-day.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/leapcrash
module_src_files := timers/leapcrash.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/set-tai
module_src_files := timers/set-tai.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/set-2038
module_src_files := timers/set-2038.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := timers/set-tz
module_src_files := timers/set-tz.c
module_cflags := -O3 -Wl,-no-as-needed -Wall -DKTEST  -lrt -lpthread
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# User test
module_prebuilt := user/test_user_copy
module_src_files := user/test_user_copy.sh
include $(build_kselftest_prebuilt)

# Vm test
module_testname := vm/compaction_test
module_src_files := vm/compaction_test.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := vm/hugepage-mmap
module_src_files := vm/hugepage-mmap.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := vm/hugepage-shm
module_src_files := vm/hugepage-shm.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := vm/map_hugetlb
module_src_files := vm/map_hugetlb.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := vm/mlock2-tests
module_src_files := vm/mlock2-tests.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := vm/on-fault-limit
module_src_files := vm/on-fault-limit.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

module_testname := vm/transhuge-stress
module_src_files := vm/transhuge-stress.c
module_cflags := -Wall -lrt
module_c_includes :=
module_supported_arch := arm arm64 x86 x86_64
include $(build_kselftest_test)

# x86 test
module_testname := x86/single_step_syscall
module_src_files := x86/single_step_syscall.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

module_testname := x86/sysret_ss_attrs
module_src_files := x86/sysret_ss_attrs.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/syscall_nt
module_src_files := x86/syscall_nt.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

module_testname := x86/ptrace_syscall
module_src_files := x86/ptrace_syscall.c x86/raw_syscall_helper_32.S
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/test_mremap_vdso
module_src_files := x86/test_mremap_vdso.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

module_testname := x86/check_initial_reg_state
module_src_files := x86/check_initial_reg_state.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -Wl,-ereal_start -static -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

module_testname := x86/ldt_gdt
module_src_files := x86/ldt_gdt.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86 x86_64
include $(build_kselftest_test)

module_testname := x86/entry_from_vm86
module_src_files := x86/entry_from_vm86.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
#include $(build_kselftest_test)

module_testname := x86/syscall_arg_fault
module_src_files := x86/syscall_arg_fault.c
module_cflags := -O2 -g -std=gnu99 -pthread -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/test_syscall_vdso
module_src_files := x86/test_syscall_vdso.c x86/thunks_32.S
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/unwind_vdso
module_src_files := x86/unwind_vdso.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/test_FCMOV
module_src_files := x86/test_FCMOV.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/test_FCOMI
module_src_files := x86/test_FCOMI.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/test_FISTTP
module_src_files := x86/test_FISTTP.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

module_testname := x86/vdso_restorer
module_src_files := x86/vdso_restorer.c
module_cflags := -O2 -g -std=gnu99 -pthread -Wall -lrt -ldl -lm
module_c_includes :=
module_supported_arch := x86
include $(build_kselftest_test)

# zram tests
module_prebuilt := zram/zram.sh
module_src_files := zram/zram.sh
include $(build_kselftest_prebuilt)

module_prebuilt := zram/zram01.sh
module_src_files := zram/zram01.sh
include $(build_kselftest_prebuilt)

module_prebuilt := zram/zram02.sh
module_src_files := zram/zram02.sh
include $(build_kselftest_prebuilt)

module_prebuilt := zram/zram_lib.sh
module_src_files := zram/zram_lib.sh
include $(build_kselftest_prebuilt)

