#ifndef aled_h
#define aled_h
#include "arch.h"

void ws2812_send_bit(uint8_t bit);
//void ws2812_gpio_init(void);
void ws2812_send_color(uint8_t green, uint8_t red, uint8_t blue);
void ws2812_reset(void);
void send_led_color(uint8_t R, uint8_t G, uint8_t B);
extern void arch_asm_delay_us(int nof_us);

#endif // aled_h

