/*
 * system.h - SOPC Builder system and BSP software package information
 *
 * Machine generated for CPU 'nios2_proc' in SOPC Builder design 'de1_blinker'
 * SOPC Builder design path: ../../de1_blinker.sopcinfo
 *
 * Generated: Mon Feb 10 14:57:04 CET 2025
 */

/*
 * DO NOT MODIFY THIS FILE
 *
 * Changing this file will have subtle consequences
 * which will almost certainly lead to a nonfunctioning
 * system. If you do modify this file, be aware that your
 * changes will be overwritten and lost when this file
 * is generated again.
 *
 * DO NOT MODIFY THIS FILE
 */

/*
 * License Agreement
 *
 * Copyright (c) 2008
 * Altera Corporation, San Jose, California, USA.
 * All rights reserved.
 *
 * Permission is hereby granted, free of charge, to any person obtaining a
 * copy of this software and associated documentation files (the "Software"),
 * to deal in the Software without restriction, including without limitation
 * the rights to use, copy, modify, merge, publish, distribute, sublicense,
 * and/or sell copies of the Software, and to permit persons to whom the
 * Software is furnished to do so, subject to the following conditions:
 *
 * The above copyright notice and this permission notice shall be included in
 * all copies or substantial portions of the Software.
 *
 * THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 * IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 * FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 * AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 * LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
 * FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
 * DEALINGS IN THE SOFTWARE.
 *
 * This agreement shall be governed in all respects by the laws of the State
 * of California and by the laws of the United States of America.
 */

#ifndef __SYSTEM_H_
#define __SYSTEM_H_

/* Include definitions from linker script generator */
#include "linker.h"


/*
 * CPU configuration
 *
 */

#define ALT_CPU_ARCHITECTURE "altera_nios2_qsys"
#define ALT_CPU_BIG_ENDIAN 0
#define ALT_CPU_BREAK_ADDR 0x00080820
#define ALT_CPU_CPU_FREQ 50000000u
#define ALT_CPU_CPU_ID_SIZE 1
#define ALT_CPU_CPU_ID_VALUE 0x00000000
#define ALT_CPU_CPU_IMPLEMENTATION "tiny"
#define ALT_CPU_DATA_ADDR_WIDTH 0x14
#define ALT_CPU_DCACHE_LINE_SIZE 0
#define ALT_CPU_DCACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_DCACHE_SIZE 0
#define ALT_CPU_EXCEPTION_ADDR 0x00040020
#define ALT_CPU_FLUSHDA_SUPPORTED
#define ALT_CPU_FREQ 50000000
#define ALT_CPU_HARDWARE_DIVIDE_PRESENT 0
#define ALT_CPU_HARDWARE_MULTIPLY_PRESENT 0
#define ALT_CPU_HARDWARE_MULX_PRESENT 0
#define ALT_CPU_HAS_DEBUG_CORE 1
#define ALT_CPU_HAS_DEBUG_STUB
#define ALT_CPU_HAS_JMPI_INSTRUCTION
#define ALT_CPU_ICACHE_LINE_SIZE 0
#define ALT_CPU_ICACHE_LINE_SIZE_LOG2 0
#define ALT_CPU_ICACHE_SIZE 0
#define ALT_CPU_INST_ADDR_WIDTH 0x14
#define ALT_CPU_NAME "nios2_proc"
#define ALT_CPU_RESET_ADDR 0x00040000


/*
 * CPU configuration (with legacy prefix - don't use these anymore)
 *
 */

#define NIOS2_BIG_ENDIAN 0
#define NIOS2_BREAK_ADDR 0x00080820
#define NIOS2_CPU_FREQ 50000000u
#define NIOS2_CPU_ID_SIZE 1
#define NIOS2_CPU_ID_VALUE 0x00000000
#define NIOS2_CPU_IMPLEMENTATION "tiny"
#define NIOS2_DATA_ADDR_WIDTH 0x14
#define NIOS2_DCACHE_LINE_SIZE 0
#define NIOS2_DCACHE_LINE_SIZE_LOG2 0
#define NIOS2_DCACHE_SIZE 0
#define NIOS2_EXCEPTION_ADDR 0x00040020
#define NIOS2_FLUSHDA_SUPPORTED
#define NIOS2_HARDWARE_DIVIDE_PRESENT 0
#define NIOS2_HARDWARE_MULTIPLY_PRESENT 0
#define NIOS2_HARDWARE_MULX_PRESENT 0
#define NIOS2_HAS_DEBUG_CORE 1
#define NIOS2_HAS_DEBUG_STUB
#define NIOS2_HAS_JMPI_INSTRUCTION
#define NIOS2_ICACHE_LINE_SIZE 0
#define NIOS2_ICACHE_LINE_SIZE_LOG2 0
#define NIOS2_ICACHE_SIZE 0
#define NIOS2_INST_ADDR_WIDTH 0x14
#define NIOS2_RESET_ADDR 0x00040000


/*
 * Centaines configuration
 *
 */

#define ALT_MODULE_CLASS_Centaines altera_avalon_pio
#define CENTAINES_BASE 0x81010
#define CENTAINES_BIT_CLEARING_EDGE_REGISTER 0
#define CENTAINES_BIT_MODIFYING_OUTPUT_REGISTER 0
#define CENTAINES_CAPTURE 0
#define CENTAINES_DATA_WIDTH 4
#define CENTAINES_DO_TEST_BENCH_WIRING 0
#define CENTAINES_DRIVEN_SIM_VALUE 0
#define CENTAINES_EDGE_TYPE "NONE"
#define CENTAINES_FREQ 50000000
#define CENTAINES_HAS_IN 1
#define CENTAINES_HAS_OUT 0
#define CENTAINES_HAS_TRI 0
#define CENTAINES_IRQ -1
#define CENTAINES_IRQ_INTERRUPT_CONTROLLER_ID -1
#define CENTAINES_IRQ_TYPE "NONE"
#define CENTAINES_NAME "/dev/Centaines"
#define CENTAINES_RESET_VALUE 0
#define CENTAINES_SPAN 16
#define CENTAINES_TYPE "altera_avalon_pio"


/*
 * Define for each module class mastered by the CPU
 *
 */

#define __ALTERA_AVALON_JTAG_UART
#define __ALTERA_AVALON_ONCHIP_MEMORY2
#define __ALTERA_AVALON_PIO
#define __ALTERA_AVALON_SYSID_QSYS
#define __ALTERA_NIOS2_QSYS


/*
 * Dizaines configuration
 *
 */

#define ALT_MODULE_CLASS_Dizaines altera_avalon_pio
#define DIZAINES_BASE 0x81020
#define DIZAINES_BIT_CLEARING_EDGE_REGISTER 0
#define DIZAINES_BIT_MODIFYING_OUTPUT_REGISTER 0
#define DIZAINES_CAPTURE 0
#define DIZAINES_DATA_WIDTH 4
#define DIZAINES_DO_TEST_BENCH_WIRING 0
#define DIZAINES_DRIVEN_SIM_VALUE 0
#define DIZAINES_EDGE_TYPE "NONE"
#define DIZAINES_FREQ 50000000
#define DIZAINES_HAS_IN 1
#define DIZAINES_HAS_OUT 0
#define DIZAINES_HAS_TRI 0
#define DIZAINES_IRQ -1
#define DIZAINES_IRQ_INTERRUPT_CONTROLLER_ID -1
#define DIZAINES_IRQ_TYPE "NONE"
#define DIZAINES_NAME "/dev/Dizaines"
#define DIZAINES_RESET_VALUE 0
#define DIZAINES_SPAN 16
#define DIZAINES_TYPE "altera_avalon_pio"


/*
 * Milliers configuration
 *
 */

#define ALT_MODULE_CLASS_Milliers altera_avalon_pio
#define MILLIERS_BASE 0x81000
#define MILLIERS_BIT_CLEARING_EDGE_REGISTER 0
#define MILLIERS_BIT_MODIFYING_OUTPUT_REGISTER 0
#define MILLIERS_CAPTURE 0
#define MILLIERS_DATA_WIDTH 4
#define MILLIERS_DO_TEST_BENCH_WIRING 0
#define MILLIERS_DRIVEN_SIM_VALUE 0
#define MILLIERS_EDGE_TYPE "NONE"
#define MILLIERS_FREQ 50000000
#define MILLIERS_HAS_IN 1
#define MILLIERS_HAS_OUT 0
#define MILLIERS_HAS_TRI 0
#define MILLIERS_IRQ -1
#define MILLIERS_IRQ_INTERRUPT_CONTROLLER_ID -1
#define MILLIERS_IRQ_TYPE "NONE"
#define MILLIERS_NAME "/dev/Milliers"
#define MILLIERS_RESET_VALUE 0
#define MILLIERS_SPAN 16
#define MILLIERS_TYPE "altera_avalon_pio"


/*
 * Seven_Seg_1 configuration
 *
 */

#define ALT_MODULE_CLASS_Seven_Seg_1 altera_avalon_pio
#define SEVEN_SEG_1_BASE 0x81070
#define SEVEN_SEG_1_BIT_CLEARING_EDGE_REGISTER 0
#define SEVEN_SEG_1_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEVEN_SEG_1_CAPTURE 0
#define SEVEN_SEG_1_DATA_WIDTH 8
#define SEVEN_SEG_1_DO_TEST_BENCH_WIRING 0
#define SEVEN_SEG_1_DRIVEN_SIM_VALUE 0
#define SEVEN_SEG_1_EDGE_TYPE "NONE"
#define SEVEN_SEG_1_FREQ 50000000
#define SEVEN_SEG_1_HAS_IN 0
#define SEVEN_SEG_1_HAS_OUT 1
#define SEVEN_SEG_1_HAS_TRI 0
#define SEVEN_SEG_1_IRQ -1
#define SEVEN_SEG_1_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEVEN_SEG_1_IRQ_TYPE "NONE"
#define SEVEN_SEG_1_NAME "/dev/Seven_Seg_1"
#define SEVEN_SEG_1_RESET_VALUE 0
#define SEVEN_SEG_1_SPAN 16
#define SEVEN_SEG_1_TYPE "altera_avalon_pio"


/*
 * Seven_Seg_2 configuration
 *
 */

#define ALT_MODULE_CLASS_Seven_Seg_2 altera_avalon_pio
#define SEVEN_SEG_2_BASE 0x81040
#define SEVEN_SEG_2_BIT_CLEARING_EDGE_REGISTER 0
#define SEVEN_SEG_2_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEVEN_SEG_2_CAPTURE 0
#define SEVEN_SEG_2_DATA_WIDTH 8
#define SEVEN_SEG_2_DO_TEST_BENCH_WIRING 0
#define SEVEN_SEG_2_DRIVEN_SIM_VALUE 0
#define SEVEN_SEG_2_EDGE_TYPE "NONE"
#define SEVEN_SEG_2_FREQ 50000000
#define SEVEN_SEG_2_HAS_IN 0
#define SEVEN_SEG_2_HAS_OUT 1
#define SEVEN_SEG_2_HAS_TRI 0
#define SEVEN_SEG_2_IRQ -1
#define SEVEN_SEG_2_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEVEN_SEG_2_IRQ_TYPE "NONE"
#define SEVEN_SEG_2_NAME "/dev/Seven_Seg_2"
#define SEVEN_SEG_2_RESET_VALUE 0
#define SEVEN_SEG_2_SPAN 16
#define SEVEN_SEG_2_TYPE "altera_avalon_pio"


/*
 * Seven_Seg_3 configuration
 *
 */

#define ALT_MODULE_CLASS_Seven_Seg_3 altera_avalon_pio
#define SEVEN_SEG_3_BASE 0x81050
#define SEVEN_SEG_3_BIT_CLEARING_EDGE_REGISTER 0
#define SEVEN_SEG_3_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEVEN_SEG_3_CAPTURE 0
#define SEVEN_SEG_3_DATA_WIDTH 8
#define SEVEN_SEG_3_DO_TEST_BENCH_WIRING 0
#define SEVEN_SEG_3_DRIVEN_SIM_VALUE 0
#define SEVEN_SEG_3_EDGE_TYPE "NONE"
#define SEVEN_SEG_3_FREQ 50000000
#define SEVEN_SEG_3_HAS_IN 0
#define SEVEN_SEG_3_HAS_OUT 1
#define SEVEN_SEG_3_HAS_TRI 0
#define SEVEN_SEG_3_IRQ -1
#define SEVEN_SEG_3_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEVEN_SEG_3_IRQ_TYPE "NONE"
#define SEVEN_SEG_3_NAME "/dev/Seven_Seg_3"
#define SEVEN_SEG_3_RESET_VALUE 0
#define SEVEN_SEG_3_SPAN 16
#define SEVEN_SEG_3_TYPE "altera_avalon_pio"


/*
 * Seven_Seg_4 configuration
 *
 */

#define ALT_MODULE_CLASS_Seven_Seg_4 altera_avalon_pio
#define SEVEN_SEG_4_BASE 0x81060
#define SEVEN_SEG_4_BIT_CLEARING_EDGE_REGISTER 0
#define SEVEN_SEG_4_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SEVEN_SEG_4_CAPTURE 0
#define SEVEN_SEG_4_DATA_WIDTH 8
#define SEVEN_SEG_4_DO_TEST_BENCH_WIRING 0
#define SEVEN_SEG_4_DRIVEN_SIM_VALUE 0
#define SEVEN_SEG_4_EDGE_TYPE "NONE"
#define SEVEN_SEG_4_FREQ 50000000
#define SEVEN_SEG_4_HAS_IN 0
#define SEVEN_SEG_4_HAS_OUT 1
#define SEVEN_SEG_4_HAS_TRI 0
#define SEVEN_SEG_4_IRQ -1
#define SEVEN_SEG_4_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SEVEN_SEG_4_IRQ_TYPE "NONE"
#define SEVEN_SEG_4_NAME "/dev/Seven_Seg_4"
#define SEVEN_SEG_4_RESET_VALUE 0
#define SEVEN_SEG_4_SPAN 16
#define SEVEN_SEG_4_TYPE "altera_avalon_pio"


/*
 * System configuration
 *
 */

#define ALT_DEVICE_FAMILY "Cyclone V"
#define ALT_ENHANCED_INTERRUPT_API_PRESENT
#define ALT_IRQ_BASE NULL
#define ALT_LOG_PORT "/dev/null"
#define ALT_LOG_PORT_BASE 0x0
#define ALT_LOG_PORT_DEV null
#define ALT_LOG_PORT_TYPE ""
#define ALT_NUM_EXTERNAL_INTERRUPT_CONTROLLERS 0
#define ALT_NUM_INTERNAL_INTERRUPT_CONTROLLERS 1
#define ALT_NUM_INTERRUPT_CONTROLLERS 1
#define ALT_STDERR "/dev/jtag_uart_0"
#define ALT_STDERR_BASE 0x810a8
#define ALT_STDERR_DEV jtag_uart_0
#define ALT_STDERR_IS_JTAG_UART
#define ALT_STDERR_PRESENT
#define ALT_STDERR_TYPE "altera_avalon_jtag_uart"
#define ALT_STDIN "/dev/jtag_uart_0"
#define ALT_STDIN_BASE 0x810a8
#define ALT_STDIN_DEV jtag_uart_0
#define ALT_STDIN_IS_JTAG_UART
#define ALT_STDIN_PRESENT
#define ALT_STDIN_TYPE "altera_avalon_jtag_uart"
#define ALT_STDOUT "/dev/jtag_uart_0"
#define ALT_STDOUT_BASE 0x810a8
#define ALT_STDOUT_DEV jtag_uart_0
#define ALT_STDOUT_IS_JTAG_UART
#define ALT_STDOUT_PRESENT
#define ALT_STDOUT_TYPE "altera_avalon_jtag_uart"
#define ALT_SYSTEM_NAME "de1_blinker"


/*
 * Unites configuration
 *
 */

#define ALT_MODULE_CLASS_Unites altera_avalon_pio
#define UNITES_BASE 0x81030
#define UNITES_BIT_CLEARING_EDGE_REGISTER 0
#define UNITES_BIT_MODIFYING_OUTPUT_REGISTER 0
#define UNITES_CAPTURE 0
#define UNITES_DATA_WIDTH 4
#define UNITES_DO_TEST_BENCH_WIRING 0
#define UNITES_DRIVEN_SIM_VALUE 0
#define UNITES_EDGE_TYPE "NONE"
#define UNITES_FREQ 50000000
#define UNITES_HAS_IN 1
#define UNITES_HAS_OUT 0
#define UNITES_HAS_TRI 0
#define UNITES_IRQ -1
#define UNITES_IRQ_INTERRUPT_CONTROLLER_ID -1
#define UNITES_IRQ_TYPE "NONE"
#define UNITES_NAME "/dev/Unites"
#define UNITES_RESET_VALUE 0
#define UNITES_SPAN 16
#define UNITES_TYPE "altera_avalon_pio"


/*
 * hal configuration
 *
 */

#define ALT_MAX_FD 32
#define ALT_SYS_CLK none
#define ALT_TIMESTAMP_CLK none


/*
 * jtag_uart_0 configuration
 *
 */

#define ALT_MODULE_CLASS_jtag_uart_0 altera_avalon_jtag_uart
#define JTAG_UART_0_BASE 0x810a8
#define JTAG_UART_0_IRQ 0
#define JTAG_UART_0_IRQ_INTERRUPT_CONTROLLER_ID 0
#define JTAG_UART_0_NAME "/dev/jtag_uart_0"
#define JTAG_UART_0_READ_DEPTH 64
#define JTAG_UART_0_READ_THRESHOLD 8
#define JTAG_UART_0_SPAN 8
#define JTAG_UART_0_TYPE "altera_avalon_jtag_uart"
#define JTAG_UART_0_WRITE_DEPTH 64
#define JTAG_UART_0_WRITE_THRESHOLD 8


/*
 * led configuration
 *
 */

#define ALT_MODULE_CLASS_led altera_avalon_pio
#define LED_BASE 0x81090
#define LED_BIT_CLEARING_EDGE_REGISTER 0
#define LED_BIT_MODIFYING_OUTPUT_REGISTER 0
#define LED_CAPTURE 0
#define LED_DATA_WIDTH 8
#define LED_DO_TEST_BENCH_WIRING 0
#define LED_DRIVEN_SIM_VALUE 0
#define LED_EDGE_TYPE "NONE"
#define LED_FREQ 50000000
#define LED_HAS_IN 0
#define LED_HAS_OUT 1
#define LED_HAS_TRI 0
#define LED_IRQ -1
#define LED_IRQ_INTERRUPT_CONTROLLER_ID -1
#define LED_IRQ_TYPE "NONE"
#define LED_NAME "/dev/led"
#define LED_RESET_VALUE 0
#define LED_SPAN 16
#define LED_TYPE "altera_avalon_pio"


/*
 * onchip_memory configuration
 *
 */

#define ALT_MODULE_CLASS_onchip_memory altera_avalon_onchip_memory2
#define ONCHIP_MEMORY_ALLOW_IN_SYSTEM_MEMORY_CONTENT_EDITOR 0
#define ONCHIP_MEMORY_ALLOW_MRAM_SIM_CONTENTS_ONLY_FILE 0
#define ONCHIP_MEMORY_BASE 0x40000
#define ONCHIP_MEMORY_CONTENTS_INFO ""
#define ONCHIP_MEMORY_DUAL_PORT 0
#define ONCHIP_MEMORY_GUI_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_INIT_CONTENTS_FILE "de1_blinker_onchip_memory"
#define ONCHIP_MEMORY_INIT_MEM_CONTENT 1
#define ONCHIP_MEMORY_INSTANCE_ID "NONE"
#define ONCHIP_MEMORY_IRQ -1
#define ONCHIP_MEMORY_IRQ_INTERRUPT_CONTROLLER_ID -1
#define ONCHIP_MEMORY_NAME "/dev/onchip_memory"
#define ONCHIP_MEMORY_NON_DEFAULT_INIT_FILE_ENABLED 0
#define ONCHIP_MEMORY_RAM_BLOCK_TYPE "AUTO"
#define ONCHIP_MEMORY_READ_DURING_WRITE_MODE "DONT_CARE"
#define ONCHIP_MEMORY_SINGLE_CLOCK_OP 0
#define ONCHIP_MEMORY_SIZE_MULTIPLE 1
#define ONCHIP_MEMORY_SIZE_VALUE 200000
#define ONCHIP_MEMORY_SPAN 200000
#define ONCHIP_MEMORY_TYPE "altera_avalon_onchip_memory2"
#define ONCHIP_MEMORY_WRITABLE 1


/*
 * switcher configuration
 *
 */

#define ALT_MODULE_CLASS_switcher altera_avalon_pio
#define SWITCHER_BASE 0x81080
#define SWITCHER_BIT_CLEARING_EDGE_REGISTER 0
#define SWITCHER_BIT_MODIFYING_OUTPUT_REGISTER 0
#define SWITCHER_CAPTURE 0
#define SWITCHER_DATA_WIDTH 4
#define SWITCHER_DO_TEST_BENCH_WIRING 0
#define SWITCHER_DRIVEN_SIM_VALUE 0
#define SWITCHER_EDGE_TYPE "NONE"
#define SWITCHER_FREQ 50000000
#define SWITCHER_HAS_IN 1
#define SWITCHER_HAS_OUT 0
#define SWITCHER_HAS_TRI 0
#define SWITCHER_IRQ -1
#define SWITCHER_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SWITCHER_IRQ_TYPE "NONE"
#define SWITCHER_NAME "/dev/switcher"
#define SWITCHER_RESET_VALUE 0
#define SWITCHER_SPAN 16
#define SWITCHER_TYPE "altera_avalon_pio"


/*
 * sysid_1337 configuration
 *
 */

#define ALT_MODULE_CLASS_sysid_1337 altera_avalon_sysid_qsys
#define SYSID_1337_BASE 0x810a0
#define SYSID_1337_ID 4919
#define SYSID_1337_IRQ -1
#define SYSID_1337_IRQ_INTERRUPT_CONTROLLER_ID -1
#define SYSID_1337_NAME "/dev/sysid_1337"
#define SYSID_1337_SPAN 8
#define SYSID_1337_TIMESTAMP 1739195097
#define SYSID_1337_TYPE "altera_avalon_sysid_qsys"

#endif /* __SYSTEM_H_ */
