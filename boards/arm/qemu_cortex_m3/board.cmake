# SPDX-License-Identifier: Apache-2.0

set(EMU_PLATFORM qemu)

set(QEMU_CPU_TYPE_${ARCH} cortex-m3)
set(QEMU_FLAGS_${ARCH}
  -cpu ${QEMU_CPU_TYPE_${ARCH}}
  -machine lm3s6965evb
  -nographic
  -vga none
  )

if(CONFIG_QEMU_ICOUNT)
  list(APPEND QEMU_EXTRA_FLAGS -icount shift=6,align=off,sleep=off -rtc clock=vm)
endif()
board_set_debugger_ifnset(qemu)
