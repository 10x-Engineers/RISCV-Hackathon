.global _start

_start:
    nop
    nop

    li t1, 0x13
    li t2, 0x31
    la t3, begin_sig
    
    add t4, t1,t2
    sw t4, 0(t3)
    
    or t4, t1,t2
    sw t4, 4(t3)
    
    and t4, t1,t2
    sw t4, 8(t3)
    
    xor t4, t1,t2
    sw t4, 12(t3)
    
    j exit
    
begin_sig:
    .fill 5, 4, 0xcafebeef

exit:
    li a1,0x800
    li a2,0xF
    sw a2,0(a1)


