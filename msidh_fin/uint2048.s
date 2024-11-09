.intel_syntax noprefix

.section .rodata

.global uintbig_1
uintbig_1:
    .quad 1, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0


.global uintbig_0
uintbig_0:
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0
    .quad 0, 0, 0, 0


.global uintbig_a
uintbig_a:
.quad 0x76b7bf973ccad0ec, 0xac1248eb7cd348bc, 0x9aab63b7fa00951d, 0x7fc6e6ad1f557480
.quad 0x338d4aef42d7e64d, 0x82c3b6b26d12308d, 0x075e2eb0ef8fde4d, 0x4576f75c54093d99
.quad 0xf833ca6a7afb3eae, 0xc284561d5f8acff0, 0xeeecb5f2294afb8f, 0x2a1e908c7ca03a19
.quad 0x3683d40848844f12, 0x6d22610f2c476d89, 0x31de29c35569029e, 0x001c06703b8d2e11
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000

.global uintbig_b
uintbig_b:
.quad 0xdf4eb95411537a87, 0x9fd04b56c350d4e9, 0xe08b2f65d6ef407a, 0xa597b96ec0050efa
.quad 0x9209b04c1887f13c, 0x36050478f59d5d05, 0xe6b1d4baea726427, 0x1e9415179f577e52
.quad 0x4c92b341d8e0d375, 0xafb681de29a51fbd, 0x6f2f71833591d6c5, 0xcb5b5507928dd4e3
.quad 0xa8273cfaff1853d5, 0x85e8c373f19545e6, 0xac8c55603a8e4daa, 0x000010eda011e8c4
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000
.quad 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000


.section .text

.global uintbig_set
uintbig_set:
    cld
    mov rax, rsi
    stosq
    xor rax, rax
    mov rcx, 31
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
    .rept 31
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
    .rept 31
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

    mulx r10, rax, [rsi + 128]
    adcx rax, r11
    mov [rdi + 128],rax

    mulx r11, rax, [rsi + 136]
    adcx rax, r10
    mov [rdi + 136],rax


    mulx r10, rax, [rsi + 144]
    adcx rax, r11
    mov [rdi + 144],rax

    mulx r11, rax, [rsi + 152]
    adcx rax, r10
    mov [rdi + 152],rax


    mulx r10, rax, [rsi + 160]
    adcx rax, r11
    mov [rdi + 160],rax

    mulx r11, rax, [rsi + 168]
    adcx rax, r10
    mov [rdi + 168],rax


    mulx r10, rax, [rsi + 176]
    adcx rax, r11
    mov [rdi + 176],rax

    mulx r11, rax, [rsi + 184]
    adcx rax, r10
    mov [rdi + 184],rax


    mulx r10, rax, [rsi + 192]
    adcx rax, r11
    mov [rdi + 192],rax

    mulx r11, rax, [rsi + 200]
    adcx rax, r10
    mov [rdi + 200],rax


    mulx r10, rax, [rsi + 208]
    adcx rax, r11
    mov [rdi + 208],rax

    mulx r11, rax, [rsi + 216]
    adcx rax, r10
    mov [rdi + 216],rax


    mulx r10, rax, [rsi + 224]
    adcx rax, r11
    mov [rdi + 224],rax

    mulx r11, rax, [rsi + 232]
    adcx rax, r10
    mov [rdi + 232],rax

    mulx r10, rax, [rsi + 240]
    adcx rax, r11
    mov [rdi + 240],rax

    mulx r11, rax, [rsi + 248]
    adcx rax, r10
    mov [rdi + 248],rax

    ret
