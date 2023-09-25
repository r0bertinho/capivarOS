jmp $                                                   ;?  jumping to $

times 510-($-$$) db 0                                   ;   defining byte 0 various times
db 0x55, 0xaa                                           ;   adding the two final numbers to reach 512
