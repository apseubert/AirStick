
MEMORY
{
    LR_IROM1 (rwx) : ORIGIN = 0x07fc0000, LENGTH = 0xC0
    LR_IROM2 (rwx) : ORIGIN = 0x07fc0000 + 0xC0, LENGTH = 0x50
    LR_TRNG_ZI (rwx) : ORIGIN = 0x07fc0000 + 0xC0 + 0x50, LENGTH = (1024)
    LR_IROM3 (rwx) : ORIGIN = (((0x07fc0000 + 0xC0 + 0x50 + (1024))+3) & (~3)), LENGTH = (((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) - ((0) + (2700) + ( ((((((((200 + 4) + (244 + 4) + (128 + 4) + (28 + 4)) * ((1)))) + 3) / 4) * 4) + 12) + (((((1024) + 3) / 4) * 4) + 12) + (((((( 256 * (((1)) + 1) + 80 * ((1)) + 96 * (2 * ((1)) + 1) + 256 + 256 * ((1)) )) + 3) / 4) * 4) + 12) )))+3) & (~3)) - (((0x07fc0000 + 0xC0 + 0x50 + (1024))+3) & (~3)))
    LR_RETAINED_RAM0 (rw) : ORIGIN = ((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) - ((0) + (2700) + ( ((((((((200 + 4) + (244 + 4) + (128 + 4) + (28 + 4)) * ((1)))) + 3) / 4) * 4) + 12) + (((((1024) + 3) / 4) * 4) + 12) + (((((( 256 * (((1)) + 1) + 80 * ((1)) + 96 * (2 * ((1)) + 1) + 256 + 256 * ((1)) )) + 3) / 4) * 4) + 12) )))+3) & (~3)), LENGTH = ((0) + (2700) + ( ((((((((200 + 4) + (244 + 4) + (128 + 4) + (28 + 4)) * ((1)))) + 3) / 4) * 4) + 12) + (((((1024) + 3) / 4) * 4) + 12) + (((((( 256 * (((1)) + 1) + 80 * ((1)) + 96 * (2 * ((1)) + 1) + 256 + 256 * ((1)) )) + 3) / 4) * 4) + 12) ))
    LR_FREE_AREA_AT_TX_CNTL_BUFFER (rwx) : ORIGIN = ((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + 38)+3) & (~3)), LENGTH = (((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) - ((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + 38)+3) & (~3)))
    LR_FREE_AREA_AT_TX_ADV_1_BUFFER (rwx) : ORIGIN = (((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + 38)+3) & (~3)), LENGTH = ((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + ((((251)) | 0x01) + 4 + 7)) - (((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + 38)+3) & (~3)))
    LR_FREE_AREA_AT_TX_ADV_2_BUFFER (rwx) : ORIGIN = ((((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + ((((251)) | 0x01) + 4 + 7)) + 38)+3) & (~3)), LENGTH = (((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + ((((251)) | 0x01) + 4 + 7)) + ((((251)) | 0x01) + 4 + 7)) - ((((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + ((((251)) | 0x01) + 4 + 7)) + 38)+3) & (~3)))
    LR_FREE_AREA_AT_TX_ADV_3_BUFFER (rwx) : ORIGIN = (((((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + ((((251)) | 0x01) + 4 + 7)) + ((((251)) | 0x01) + 4 + 7)) + 38)+3) & (~3)), LENGTH = (((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + ((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7)))) - (((((((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + (0x0000050A)) + ((5) * ((((251)) | 0x01) + 4 + 7))) + ((((1))) * ((((251)) | 0x01) + 4 + 7))) + ((((251)) | 0x01) + 4 + 7)) + ((((251)) | 0x01) + 4 + 7)) + 38)+3) & (~3)))
    LR_FREE_AREA (rwx) : ORIGIN = ((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))+3) & (~3)), LENGTH = ((0x07FD7600) - ((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) + ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))+3) & (~3)))
    LR_RETAINED_CHACHA_STATE (rw) : ORIGIN = ((((0x07FD7600) - (8 + (4 * 4) + (16 * 4) + (1 + 7)))+3) & (~3)), LENGTH = (8 + (4 * 4) + (16 * 4) + (1 + 7))
}

__ER_IROM3_BASE__ = ORIGIN(LR_IROM3);
__ER_IROM3_LENGTH__ = LENGTH(LR_IROM3);
ENTRY(Reset_Handler)
SECTIONS
{
    ER_IROM1 :
    {
        KEEP(*(.vectors))
    } > LR_IROM1
    ER_IROM2 :
    {
        KEEP(*(.patch_table))
    } > LR_IROM2
    LR_TRNG_ZI :
    {
        *(trng_buffer_area_zi)
    } > LR_TRNG_ZI
    ER_IROM3 :
    {
        KEEP(*(.text.disp_heaplog))
        *(.text*)
        . = ALIGN(4);
        KEEP(*(.init))
        KEEP(*(.fini))
        *(.rodata*)
    } > LR_IROM3
    .ARM.extab :
    {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } > LR_IROM3
    __exidx_start = .;
    .ARM.exidx :
    {
       *(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } > LR_IROM3
    __exidx_end = .;
    .copy.table :
    {
        . = ALIGN(4);
        __copy_table_start__ = .;
        LONG (__etext)
        LONG (__data_start__)
        LONG (__data_end__ - __data_start__)
        __copy_table_end__ = .;
    } > LR_IROM3
    .zero.table :
    {
        . = ALIGN(4);
        __zero_table_start__ = .;
        LONG (__bss_start__)
        LONG (__bss_end__ - __bss_start__)
        LONG (__ret_data_start__)
        LONG (__ret_data_end__ - __ret_data_start__)
        __zero_table_end__ = .;
    } > LR_IROM3
    __etext = ALIGN(4);
    .data : AT (__etext)
    {
        __data_start__ = .;
        *(vtable)
        *(.data*)
        . = ALIGN(4);
        PROVIDE_HIDDEN (__preinit_array_start = .);
        KEEP(*(.preinit_array))
        PROVIDE_HIDDEN (__preinit_array_end = .);
        . = ALIGN(4);
        PROVIDE_HIDDEN (__init_array_start = .);
        KEEP(*(SORT(.init_array.*)))
        KEEP(*(.init_array))
        PROVIDE_HIDDEN (__init_array_end = .);
        . = ALIGN(4);
        PROVIDE_HIDDEN (__fini_array_start = .);
        KEEP(*(SORT(.fini_array.*)))
        KEEP(*(.fini_array))
        PROVIDE_HIDDEN (__fini_array_end = .);
        KEEP(*(.jcr*))
        . = ALIGN(4);
        __data_end__ = .;
    } > LR_IROM3
 __data_start = ADDR(.data);
 __data_size = SIZEOF(.data);
 __data_source = LOADADDR(.data);
 __tls_base = 0;
 __arm32_tls_tcb_offset = 0;
    __code_area_end__ = .;
    .bss :
    {
        . = ALIGN(4);
        __bss_start__ = .;
        *(.bss*)
        *(COMMON)
        . = ALIGN(4);
        __bss_end__ = .;
    } > LR_IROM3
 __bss_start = __bss_start__;
 __bss_size = SIZEOF(.bss);
    ER_PRODTEST (NOLOAD):
    {
        . = ALIGN(4);
        *(prodtest_uninit)
    } > LR_IROM3
    ER_NZI (NOLOAD) :
    {
        . = ALIGN(4);
        __heap_mem_area_not_ret_start__ = .;
        *jump_table.o(heap_mem_area_not_ret)
        __heap_mem_area_not_ret_end__ = .;
    } > LR_IROM3
    .heap (NOLOAD):
    {
        __end__ = .;
        PROVIDE(end = .);
        *(.heap*)
        __HeapLimit = .;
    } > LR_IROM3
    .stack_dummy (COPY):
    {
       KEEP(*(.stack*))
    } > LR_IROM3
    __StackTop = ORIGIN(LR_IROM3) + LENGTH(LR_IROM3);
    __StackLimit = __StackTop - SIZEOF(.stack_dummy);
    PROVIDE(__stack = __StackTop);
    ASSERT(__StackLimit >= __HeapLimit, "region RAM overflowed with stack")
    RET_DATA_UNINIT ((((((0x07FD4400) + (((((0x0000050A) + (( (8 * 3) + (8 + 3)) * (262))) + ((8) * (262))) + (6)) - ((((0x0000050A) + (((5) + (((1))) + (3)) * ((((251)) | 0x01) + 4 + 7))) + ((8) * ((((251)) | 0x01) + 4 + 7))) + (6)))) & (0xFFFFC00)) - ((0) + (2700) + ( ((((((((200 + 4) + (244 + 4) + (128 + 4) + (28 + 4)) * ((1)))) + 3) / 4) * 4) + 12) + (((((1024) + 3) / 4) * 4) + 12) + (((((( 256 * (((1)) + 1) + 80 * ((1)) + 96 * (2 * ((1)) + 1) + 256 + 256 * ((1)) )) + 3) / 4) * 4) + 12) )))+3) & (~3)) (NOLOAD) :
    {
        . = ALIGN(4);
        __retention_mem_area_uninit_start__ = .;
        *(retention_mem_area_uninit)
        . = ALIGN(4);
        __retention_mem_area_uninit_end__ = .;
    } > LR_RETAINED_RAM0
    RET_DATA (NOLOAD) :
    {
        __ret_data_start__ = .;
        . = ALIGN(4);
        *(retention_mem_area0)
        . = ALIGN(4);
        __ret_data_end__ = .;
    } > LR_RETAINED_RAM0
    ASSERT((2700) > SIZEOF(RET_DATA), "CFG_RET_DATA_SIZE value must be increased.")
    RET_HEAP (NOLOAD):
    {
        . = ALIGN(4);
        __db_heap_start__ = .;
        *jump_table.o(heap_env_area)
        *jump_table.o(heap_db_area)
        *jump_table.o(heap_msg_area)
        . = ALIGN(4);
        __db_heap_end__ = .;
    } > LR_RETAINED_RAM0
    ER_FREE_AREA_AT_TX_CNTL_BUFFER (NOLOAD):
    {
        . = ALIGN(4);
        __free_area_at_tx_cntl_buffer_start__ = .;
        *(free_area)
        . = ALIGN(4);
        __free_area_at_tx_cntl_buffer_end__ = .;
    } > LR_FREE_AREA_AT_TX_CNTL_BUFFER
    ER_FREE_AREA_AT_TX_ADV_1_BUFFER (NOLOAD):
    {
        . = ALIGN(4);
        __free_area_at_tx_adv_1_buffer_start__ = .;
        *(free_area)
        . = ALIGN(4);
        __free_area_at_tx_adv_1_buffer_end__ = .;
    } > LR_FREE_AREA_AT_TX_ADV_1_BUFFER
 ER_FREE_AREA_AT_TX_ADV_2_BUFFER (NOLOAD):
    {
        . = ALIGN(4);
        __free_area_at_tx_adv_2_buffer_start__ = .;
        *(free_area)
        . = ALIGN(4);
  __free_area_at_tx_adv_2_buffer_end__ = .;
    } > LR_FREE_AREA_AT_TX_ADV_2_BUFFER
 ER_FREE_AREA_AT_TX_ADV_3_BUFFER (NOLOAD):
    {
        . = ALIGN(4);
        __free_area_at_tx_adv_3_buffer_start__ = .;
        *(free_area)
        . = ALIGN(4);
        __free_area_at_tx_adv_3_buffer_end__ = .;
    } > LR_FREE_AREA_AT_TX_ADV_3_BUFFER
    ER_FREE_AREA (NOLOAD):
    {
        . = ALIGN(4);
        __free_area_start__ = .;
        *(free_area)
        __free_area_end__ = .;
    } > LR_FREE_AREA
    RET_DATA_UNINIT_CHACHA_STATE (NOLOAD) :
    {
        *chacha20.o (chacha20_state)
    } > LR_RETAINED_CHACHA_STATE
}
INCLUDE da14585_symbols.lds
