/**
 ****************************************************************************************
 *
 * @file arch_main.c
 *
 * @brief Main loop of the application.
 *
 * Copyright (C) 2012-2024 Renesas Electronics Corporation and/or its affiliates.
 * All rights reserved. Confidential Information.
 *
 * This software ("Software") is supplied by Renesas Electronics Corporation and/or its
 * affiliates ("Renesas"). Renesas grants you a personal, non-exclusive, non-transferable,
 * revocable, non-sub-licensable right and license to use the Software, solely if used in
 * or together with Renesas products. You may make copies of this Software, provided this
 * copyright notice and disclaimer ("Notice") is included in all such copies. Renesas
 * reserves the right to change or discontinue the Software at any time without notice.
 *
 * THE SOFTWARE IS PROVIDED "AS IS". RENESAS DISCLAIMS ALL WARRANTIES OF ANY KIND,
 * WHETHER EXPRESS, IMPLIED, OR STATUTORY, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
 * OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. TO THE
 * MAXIMUM EXTENT PERMITTED UNDER LAW, IN NO EVENT SHALL RENESAS BE LIABLE FOR ANY DIRECT,
 * INDIRECT, SPECIAL, INCIDENTAL OR CONSEQUENTIAL DAMAGES ARISING FROM, OUT OF OR IN
 * CONNECTION WITH THE SOFTWARE, EVEN IF RENESAS HAS BEEN ADVISED OF THE POSSIBILITY OF
 * SUCH DAMAGES. USE OF THIS SOFTWARE MAY BE SUBJECT TO TERMS AND CONDITIONS CONTAINED IN
 * AN ADDITIONAL AGREEMENT BETWEEN YOU AND RENESAS. IN CASE OF CONFLICT BETWEEN THE TERMS
 * OF THIS NOTICE AND ANY SUCH ADDITIONAL LICENSE AGREEMENT, THE TERMS OF THE AGREEMENT
 * SHALL TAKE PRECEDENCE. BY CONTINUING TO USE THIS SOFTWARE, YOU AGREE TO THE TERMS OF
 * THIS NOTICE.IF YOU DO NOT AGREE TO THESE TERMS, YOU ARE NOT PERMITTED TO USE THIS
 * SOFTWARE.
 *
 ****************************************************************************************
 */

/*
 * INCLUDES
 ****************************************************************************************
 */

#include <stdint.h>
#include <stdlib.h>
#include <stddef.h>     // standard definitions
#include <stdbool.h>    // boolean definition
#include "compiler.h"
#include "arch.h"
#include "arch_api.h"
#include "boot.h"       // boot definition
#include "rwip.h"       // BLE initialization
#include "syscntl.h"    // System control initialization
#include "em_map_ble.h"
#include "ke_mem.h"
#include "ke_event.h"
#include "user_periph_setup.h"
#include "aled.h"

#include "uart.h"   // UART initialization
#include "nvds.h"   // NVDS initialization
#include "rf.h"     // RF initialization
#include "app.h"    // application functions
#include "dbg.h"    // For dbg_warning function

#include "datasheet.h"

#include "em_map_ble.h"

#include "lld_sleep.h"
#include "rwble.h"
#include "rf_585.h"
#include "gpio.h"
#include "hw_otpc.h"

#include "lld_evt.h"
#include "arch_console.h"

#include "arch_system.h"

#include "system_library.h"

#include "arch_wdg.h"

#include "user_callback_config.h"

#include "ea.h"

#include "arch_ram.h"

#if defined (__DA14531__)
#include "otp_cs.h"
#include "adc.h"
#endif

#if (USE_RANGE_EXT)
#include "range_ext_api.h"
#endif

#if (WLAN_COEX_ENABLED)
#include "wlan_coex.h"
#endif

/**
 * @addtogroup DRIVERS
 * @{
 */

/*
 * DEFINES
 ****************************************************************************************
 */

#if !defined (__DA14531__)
#if defined (CFG_RETAIN_RAM_1_BLOCK)
#define RAM_1_BLOCK                 (0x01)
#else
#define RAM_1_BLOCK                 (0)
#endif

#if defined (CFG_RETAIN_RAM_2_BLOCK)
#define RAM_2_BLOCK                 (0x02)
#else
#define RAM_2_BLOCK                 (0)
#endif

#if defined (CFG_RETAIN_RAM_3_BLOCK)
#define RAM_3_BLOCK                 (0x04)
#else
#define RAM_3_BLOCK                 (0)
#endif

#define RAM_4_BLOCK                 (0x08)
#endif

#if defined (__DA14531__)
#define ALL_RAM_BLOCKS              (0)
#define RAM1_DO_NOT_RETAIN          (1<<0)
#define RAM2_DO_NOT_RETAIN          (1<<2)
#define RAM3_DO_NOT_RETAIN          (1<<4)
#else
#define ALL_RAM_BLOCKS              (RAM_1_BLOCK | RAM_2_BLOCK | RAM_3_BLOCK | RAM_4_BLOCK)
#endif

/*
 * MAIN FUNCTION
 ****************************************************************************************
 */

/**
 ****************************************************************************************
 * @brief BLE main function.
 *        This function is called right after the booting process has completed.
 *        It contains the main function loop.
 ****************************************************************************************
 */
int main(void);

uint8_t R = 0xFF;
uint8_t G = 0xFF;
uint8_t B = 0xFF;
int led_num = 4;

int main(void)
{
    //global initialize
    system_init();
	printf("you've made it here #1!");
	system_init();
	printf("you've made it here #2!");
	while(1)
		{
		send_led_color(R, G, B);
		};
}
