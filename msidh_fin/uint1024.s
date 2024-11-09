.intel_syntax noprefix

.section .rodata

.global uintbig_1
uintbig_1:
    .quad 1, 0, 0, 0, 0, 0, 0, 0
    .zero 64

.global uintbig_0
uintbig_0:
    .quad 0, 0, 0, 0, 0, 0, 0, 0
    .zero 64


.global uintbig_a
uintbig_a:
    .quad 0xad8525e8f4c602bc, 0xa2554e933e41636d, 0x8bac214db7d5b805, 0x883415e73ee35daa 
    .quad 0x91b20ae80d3c4b94, 0x59375b3244716fb3, 0x4425b305cafa7a99, 0x0008a94b3fad473b
    .quad 0, 0, 0, 0, 0, 0, 0, 0
    .quad 0, 0, 0, 0, 0, 0, 0, 0

.global uintbig_b
uintbig_b:
    .quad 0xcb34825844761871, 0x944cd9b05db043bb, 0xb6abb34888348fe1, 0xcbe4ae4be9576912
    .quad 0xa7a0249e662e3252, 0x07d3c693da5177e6, 0xf23aa11172a7e923, 0x00000fc53738e6b3
    .quad 0, 0, 0, 0, 0, 0, 0, 0
    .quad 0, 0, 0, 0, 0, 0, 0, 0



.section .text

.global uintbig_set
uintbig_set:
    cld
    mov rax, rsi
    stosq
    xor rax, rax
    mov rcx, 15
    rep stosq
    ret


.global uintbig_bit
uintbig_bit:
    mov rcx, rsi
    and rcx, 0x3f
    shr rsi, 6
    mov rax, [rdi + 8*rsi]
    shr rax, cl
    and rax, 1
    ret


.global uintbig_add3
uintbig_add3:
    mov rax, [rsi +  0]
    add rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 15
        mov rax, [rsi + 8*k]
        adc rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret

.global uintbig_sub3
uintbig_sub3:
    mov rax, [rsi +  0]
    sub rax, [rdx +  0]
    mov [rdi +  0], rax
    .set k, 1
    .rept 15
        mov rax, [rsi + 8*k]
        sbb rax, [rdx + 8*k]
        mov [rdi + 8*k], rax
        .set k, k+1
    .endr
    setc al
    movzx rax, al
    ret


.global uintbig_mul3_64
uintbig_mul3_64:

    mulx r10, rax, [rsi +  0]
    mov [rdi +  0], rax

    mulx r11, rax, [rsi +  8]
    add  rax, r10
    mov [rdi +  8], rax

    mulx r10, rax, [rsi + 16]
    adcx rax, r11
    mov [rdi + 16], rax

    mulx r11, rax, [rsi + 24]
    adcx rax, r10
    mov [rdi + 24], rax

    mulx r10, rax, [rsi + 32]
    adcx rax, r11
    mov [rdi + 32],rax

    mulx r11, rax, [rsi + 40]
    adcx rax, r10
    mov [rdi + 40],rax

    mulx r10, rax, [rsi + 48]
    adcx rax, r11
    mov [rdi + 48],rax

    mulx r11, rax, [rsi + 56]
    adcx rax, r10
    mov [rdi + 56],rax

    mulx r10, rax, [rsi + 64]
    adcx rax, r11
    mov [rdi + 64],rax

    mulx r11, rax, [rsi + 72]
    adcx rax, r10
    mov [rdi + 72],rax

    mulx r10, rax, [rsi + 80]
    adcx rax, r11
    mov [rdi + 80],rax

    mulx r11, rax, [rsi + 88]
    adcx rax, r10
    mov [rdi + 88],rax

    mulx r10, rax, [rsi + 96]
    adcx rax, r11
    mov [rdi + 96],rax

    mulx r11, rax, [rsi + 104]
    adcx rax, r10
    mov [rdi + 104],rax

    mulx r10, rax, [rsi + 112]
    adcx rax, r11
    mov [rdi + 112],rax

    mulx r11, rax, [rsi + 120]
    adcx rax, r10
    mov [rdi + 120],rax

    ret
