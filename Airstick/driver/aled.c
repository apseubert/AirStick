
// Approx 1 NOP = 1 clock cycle (32 MHz = 31.25 ns per cycle)
#define NOP __NOP()
#include "gpio.h"
#include "arch_system.h"

// Tuned delay functions for ~32MHz clock
static void delay_350ns(void) { for (volatile int i = 0; i < 10; i++) NOP; }  // ~350 ns
static void delay_800ns(void) { for (volatile int i = 0; i < 24; i++) NOP; }  // ~800 ns
static void delay_450ns(void) { for (volatile int i = 0; i < 13; i++) NOP; }  // ~450 ns
static void delay_850ns(void) { for (volatile int i = 0; i < 26; i++) NOP; }  // ~850 ns

#define WS_GPIO_PORT      GPIO_PORT_0
#define WS_GPIO_PIN       GPIO_PIN_3

/*void ws2812_gpio_init(void)
{
    GPIO_ConfigurePin(WS_GPIO_PORT, WS_GPIO_PIN, OUTPUT, PID_GPIO, false);  // start LOW
}*/

void ws2812_send_bit(uint8_t bit)
{
    if (bit) {
        // Send '1': HIGH for 0.8 탎, LOW for 0.45 탎
        GPIO_SetActive(WS_GPIO_PORT, WS_GPIO_PIN);
        delay_800ns();
        GPIO_SetInactive(WS_GPIO_PORT, WS_GPIO_PIN);
        delay_450ns();
    } else {
        // Send '0': HIGH for 0.4 탎, LOW for 0.85 탎
        GPIO_SetActive(WS_GPIO_PORT, WS_GPIO_PIN);
        delay_350ns();
        GPIO_SetInactive(WS_GPIO_PORT, WS_GPIO_PIN);
        delay_850ns();
    }
}

// Send 24-bit color (GRB format)
void ws2812_send_color(uint8_t green, uint8_t red, uint8_t blue)
{
    uint32_t color = (green << 16) | (red << 8) | blue;

    for (int8_t i = 23; i >= 0; i--) {
        uint8_t bit = (color >> i) & 0x01;
        ws2812_send_bit(bit);
    }
}

// Send reset signal (low for >50 탎)
void ws2812_reset(void)
{
    GPIO_SetInactive(WS_GPIO_PORT, WS_GPIO_PIN);
    arch_asm_delay_us(80);  // 80 탎 reset
}

// Example usage: send one pixel
void send_led_color(uint8_t R, uint8_t G, uint8_t B)
{
   

    ws2812_reset();                // Reset before sending
    ws2812_send_color(G, R, B);  // G, R, B
    ws2812_reset();                // Latch the data
}
