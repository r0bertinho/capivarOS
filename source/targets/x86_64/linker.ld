OUTPUT_FORMAT(elf64-i386)
ENTRY(start)

SECTIONS
    {
        . = 0x100000;
        .boot : { KEEP(*(.multiboot_header)) }
        .data : { *(.data)}
        .text : { *(.txt) }
    }
