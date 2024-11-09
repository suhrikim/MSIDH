.intel_syntax noprefix

.section .rodata

.set pbits,992
.set pbytes,128
.set plimbs,16

.set abits,500
.set abytes,63
.set alimbs,8

.set bbits,492
.set bbytes,62
.set blimbs,8

p:
    .quad  0xC15D6765CE50D4FB, 0xABCB5EE90FDFC937, 0x0B1D1DD2651F9C55, 0x2B1F017686908843 
    .quad  0x5DD5B9FB54F4F0B6, 0x0FD434425A367AAC, 0x6ABEE842D6E5510A, 0x3B806FB6536EDA2F
    .quad  0xB74571CFA747297D, 0x541CE505420C2071, 0xCD65E13F4BA17AE0, 0xFF3AC3E66F21E9F3 
    .quad  0x8917F8FF255D2341, 0x00E09B247C75460B, 0x28D89EA71B90D66F, 0x0000000088978DEF

.inv_min_p_mod_r: /* -p^-1 mod 2^64 */
    .quad 0x79b6d3ec68b7e9cd




/*generator points*/
.global fp_pax0
fp_pax0: 
    .quad  0x3f4b9c0cafb4fd5b, 0x3ea90ad24680ad76, 0xf069cc36764a45e5, 0x3a998bdac45ce569
    .quad  0x1cc2ce5f5d5e119c, 0xeefc229d85cf5f9e, 0x15b821e8ec08a5cc, 0x6af8eda251322677
    .quad  0x05267d950f994f79, 0x1abd4c70858958a9, 0x0d7b3e7df0018b60, 0x9f9da9f036236b03
    .quad  0x4856d59eab56dc4f, 0x64d15de200186584, 0x581019b43d25fd0a, 0x000000001e63ca3f

.global fp_pax1
fp_pax1: 
    .quad  0x33c0b54cbcf345b3, 0x56633ceae0e02a92, 0x90ca84b8a9c3c95d, 0xd197fd88c9ede4d4
    .quad  0xb9035e5f1cc7ddfd, 0xa4fff000e166d8cd, 0x0a2333b3a55398a4, 0xb031508dcd6fc66d
    .quad  0xae49749051eebc18, 0x651b5a0b5add3959, 0xd81ebba03ee9d614, 0xcd01f3367526492c
    .quad  0xa10d43d398ffed30, 0x2162957ba60c32bc, 0xb341f77a81545075, 0x000000006810ad7f

.global fp_qax0
fp_qax0: 
    .quad  0xebe8a26755bc79c1, 0x4277164f3b5609b4, 0x7b0c7f05b4332437, 0x4814b35c602ecddd
    .quad  0x7d0bd27f54b279bc, 0x3d616f507360835e, 0x5790f250bc73fdee, 0x92ad5ccac229e15b
    .quad  0xcbac31ce6fc988ed, 0x09eedc1c945c4156, 0x2bd54160e1d0df02, 0xa005c7ac70720383
    .quad  0xddb252524af3a464, 0x44a6ebfb3660b1d7, 0xd1f9ce693b5e903c, 0x000000000320cbc4

.global fp_qax1
fp_qax1: 
    .quad  0x8a5b6c112ddccdef, 0xd6a4a882df8bfb0b, 0x939c77805569cee2, 0xe9b57bc45ffe932e
    .quad  0x5d0ae7431c295a7b, 0x634ff546d2f2558c, 0x844c7a50fddc20e7, 0xe58dd88c2a005d6a
    .quad  0x053724bf94e2d7e5, 0x0461736a2ee59e1c, 0x5b0cb6bb4fa9ceaf, 0x0513aca05622350d
    .quad  0x131ff8b680837adb, 0x8d363c5bc2effc48, 0xa88e4895c8e30252, 0x0000000048fce2e2

.global fp_rax0
fp_rax0: 
    .quad  0x66e4cf404de3d78f, 0xbfc3ed291badaa93, 0xc8b050c064f08b36, 0x767444ee12d98f8f
    .quad  0x072727f4b48b2899, 0xe655b6d232fc66b4, 0x1cc129b6c3a0f154, 0x71ceecdc4f4f1a6b
    .quad  0xd5e51f4329744864, 0x847fd772c7de0e7b, 0xa3f6d1008f39b665, 0x05e08a2483e2604e
    .quad  0x4a7454b549050a7e, 0xdc22d2e45fe5bdf6, 0x96dce02f057e6f81, 0x0000000010c8af1d

.global fp_rax1
fp_rax1: 
    .quad  0xcba98cdf163952a8, 0x51e4f717245ca00e, 0xc983dc1207a5b2eb, 0x5c2c4133b2eab85d
    .quad  0x0e828ac342b54f7e, 0xfd60d9fc32e98185, 0x1437a7278ba428a8, 0xf12a11c0aa45fa6d
    .quad  0x1adb9a488b6ff386, 0x2de5527edf82f24d, 0x6268f36854882811, 0x34dbd1055b8db302
    .quad  0xa9499d6fabe3d46f, 0xeb30099d9790fa1e, 0x9f5473be935c78bb, 0x00000000787cfc90

.global fp_pbx0
fp_pbx0: 
    .quad  0x98e8b0d125bed6c6, 0x17d68a8ff8dbebf4, 0x70a605ab6d4f0652, 0xbcf04c5b6e134b03
    .quad  0x569bb5c2ea20dfaa, 0x95af4a574947903a, 0xddcadb70771f7c11, 0x97d50221f5275dde
    .quad  0x98bcdb262afbca40, 0x61b34f7a8161ea2a, 0x96e255bfe44792ef, 0x2b52b5000868f159
    .quad  0x2a086bb0ffe02f47, 0xacb723ee65467af5, 0x335313d235fad85f, 0x000000003ad2c040

.global fp_pbx1
fp_pbx1: 
    .quad  0xd56a4d7c7f608b90, 0xfd138e83d5ac2ee1, 0xc6db13789ce44992, 0x939e63f6db9cf193
    .quad  0x2cee506f37de4089, 0x7d73f8c2a24ac273, 0xebec3e0f94e407b2, 0xf3d4ee4c27e5f0fb
    .quad  0x450cf40616702019, 0x714fda1d6a3408f9, 0xe88c1c6d267aca72, 0xa8a705b278aa9ffa
    .quad  0xe1c0c4a8e8664f48, 0x3d487570958a0cb4, 0x41fff7fb02d6befc, 0x000000003c58efe9

.global fp_qbx0
fp_qbx0: 
    .quad  0x661a5fe2a1198223, 0x73c09c262e6e5374, 0xe33b10b3c42776a7, 0x73dd25ff92a3c091
    .quad  0x12641863ec2b2a16, 0x8193fc091ef03169, 0xdfd3a509c59d4793, 0xfa255a3d1387e899
    .quad  0x9edb7b3ddc483285, 0xfe4279d09f6bb434, 0x606e3ae210537034, 0x5696cdf2c390d73d
    .quad  0x028d9c5468df6b47, 0x37ea998a4d27f92a, 0x6a8393fe519be5ae, 0x000000001f4af9a8

.global fp_qbx1
fp_qbx1: 
    .quad  0x43f42d407b716014, 0xf4d8eda838c3e3f2, 0xe075f08064fbb572, 0x45f05a1ef03b20e4
    .quad  0xf23e3174d632cbc0, 0xd2d1c6191d39e953, 0x42f65ad39550a8c8, 0x23135e5833358899
    .quad  0x18e584d338abc392, 0xd4e43e1603877028, 0x2b52e663edc32697, 0x9c3471ccb349037e
    .quad  0x0deb01dce5454af0, 0x02be049e7c05ffbc, 0x2a199727897a04c2, 0x00000000261a5578

.global fp_rbx0
fp_rbx0: 
    .quad  0x71905f82550d96cb, 0xd176ded3c33f919f, 0x917a04b2bef81ac0, 0xcf554fa60f1cff06
    .quad  0xe2fa2b24e09d97c8, 0x0a8d34779a4b457d, 0x50b6fd410a7da593, 0xebc281293284391c
    .quad  0x9df82cd434ad7ae3, 0x7e4dfe1e19672581, 0xf7339c343d8bf95c, 0x4b310de037b5484e
    .quad  0x58145dd3bb162cfb, 0x2fbac5759b447262, 0x9d9a9cabec70e05d, 0x000000001cee863d

.global fp_rbx1
fp_rbx1: 
    .quad  0xd35577246a13c809, 0x6a57d5157dce8d60, 0xa0c2155492aeb1ce, 0xae6d89fb2b0f6262
    .quad  0xdae5d4226316b27f, 0x8057f8979e60cdc7, 0x4a1768aafbf862be, 0xf972612680cf952f
    .quad  0xcd523849db6ac578, 0xb500aa0011ca2f97, 0xed1658f07d0d4c46, 0x0d8d1ec01d506e2a
    .quad  0x6df40aa7a85feadd, 0xf0c70408d61d886a, 0x533a0bb701d2d7e1, 0x0000000070745b61


.global fp_0
fp_0:
    .zero pbytes

.global fp_1
fp_1: /* 2^1024 mod p */
    .quad  0xF42B43C2FB0C2D15, 0x816F0A6CF3D6DD28, 0x77E3F05181D68AF7, 0x529BAA48284D5208
    .quad  0x910579443E1DD8DB, 0xB951DE1111642E04, 0x580ECDA119181C64, 0x98E3C366C42504CE
    .quad  0xF0A47C2033833656, 0xCA59DA74052A427B, 0xC69BA36903FA99AE, 0xBA08E0CA6C511262
    .quad  0x2BABFFFD67A1F322, 0x9D1985E786D1D0C2, 0x7A985CAE34DB90CC, 0x000000007A41F881

.global fp_2inv
fp_2inv: /* (1/2)2^1024 mod p */
    .quad  0x5ac4559464ae8108, 0x969d34ab01db5330, 0xc1808711f37b13a6, 0xbedd55df576eed25
    .quad  0x776d999fc98964c8, 0x64930929b5cd5458, 0xe166daf1f7feb6b7, 0xea32198e8bc9ef7e
    .quad  0xd3f4f6f7ed652fe9, 0x8f3b5fbca39b3176, 0x4a00c25427ce0a47, 0x5ca1d2586db97e2b
    .quad  0xda61fc7e467f8b32, 0xcefd108601a38b66, 0x51b87daaa836339d, 0x00000000816cc338

.global fp_sa
fp_sa: /* starting coefficiet */
    .quad  0x4fd3e473cf187f28, 0x0e9504b6f1aa80f2, 0x7d63a41ec80fe4a2, 0x211d5d4fb97c7dd4
    .quad  0x71ee016472c7f82e, 0x09eab2052cbe1a6e, 0x6c44163c363a1633, 0xcba21c60b57d98da
    .quad  0x62d2f7d6969278df, 0x9608f72fc8621498, 0xe24fd1102b54251d, 0x80f637366f84be54
    .quad  0x9c0180012f54685f, 0xad0317f77d82e7ef, 0xf426f4cddceabcb7, 0x0000000083b22a60

/*not changed*/
.global fp_four_sqrt_p
fp_four_sqrt_p:
    .quad  0x7DEB9712E03151D9, 0xA78E5024D033F311, 0x74BF301A582C4178, 0xA4A7288B8FC0DBD2
    .quad  0x4857D796B39213B2, 0x399AB7DFCB36B9F8, 0x8122E0ABB643682C, 0x0002EBFC0AC2E3CB
    .zero 64

.r_squared_mod_p: /* (2^1024)^2 mod p */
    .quad  0xB5799A0B185574D7, 0xD700BC57F553F299, 0x0BA4013D57E55A35, 0xDAFA385805B5E837
    .quad  0xFB58B09CDDB684BF, 0xA539373071DAD392, 0x42386A5087D13D94, 0x5464435C3E8BBDC1
    .quad  0x92B18A2DE9103DAD, 0x9E14DF3130CD4204, 0x5BF4422E3E66F080, 0xA6BB5D4C4D3EE728
    .quad  0xA72D74AAB62315E4, 0xB9618D58A77B9F83, 0x6949DE81D7C17E27, 0x000000003D8EB607

.p_minus_2:
    .quad  0xC15D6765CE50D4F9, 0xABCB5EE90FDFC937, 0x0B1D1DD2651F9C55, 0x2B1F017686908843
    .quad  0x5DD5B9FB54F4F0B6, 0x0FD434425A367AAC, 0x6ABEE842D6E5510A, 0x3B806FB6536EDA2F
    .quad  0xB74571CFA747297D, 0x541CE505420C2071, 0xCD65E13F4BA17AE0, 0xFF3AC3E66F21E9F3
    .quad  0x8917F8FF255D2341, 0x00E09B247C75460B, 0x28D89EA71B90D66F, 0x0000000088978DEF

.p_minus_1_halves:
    .quad  0xE0AEB3B2E7286A7D, 0xD5E5AF7487EFE49B, 0x858E8EE9328FCE2A, 0x158F80BB43484421
    .quad  0x2EEADCFDAA7A785B, 0x07EA1A212D1B3D56, 0xB55F74216B72A885, 0x9DC037DB29B76D17
    .quad  0xDBA2B8E7D3A394BE, 0x2A0E7282A1061038, 0xE6B2F09FA5D0BD70, 0xFF9D61F33790F4F9
    .quad  0xC48BFC7F92AE91A0, 0x80704D923E3AA305, 0x946C4F538DC86B37, 0x00000000444BC6F7

.p_plus_1_4:
    .quad 0xf05759d97394353f, 0x6af2d7ba43f7f24d, 0xc2c747749947e715, 0x8ac7c05da1a42210
    .quad 0x17756e7ed53d3c2d, 0x83f50d10968d9eab, 0xdaafba10b5b95442, 0x4ee01bed94dbb68b
    .quad 0x6dd15c73e9d1ca5f, 0x150739415083081c, 0xf359784fd2e85eb8, 0x7fceb0f99bc87a7c
    .quad 0xe245fe3fc95748d0, 0xc03826c91f1d5182, 0xca3627a9c6e4359b, 0x000000002225e37b




.section .data


.section .text
.p2align 4,,15

.global fp_copy
fp_copy:
    cld
    mov rcx, plimbs
    rep movsq
    ret

.global fp_set
fp_set:
    push rdi
    call uintbig_set
    pop rdi
    mov rsi, rdi
    jmp fp_enc

.global fp_cswap
fp_cswap:
    movzx rax, dl
    neg rax
    .set k, 0
    .rept plimbs
        mov rcx, [rdi + 8*k]
        mov rdx, [rsi + 8*k]

        mov r8, rcx
        xor r8, rdx
        and r8, rax

        xor rcx, r8
        xor rdx, r8

        mov [rdi + 8*k], rcx
        mov [rsi + 8*k], rdx

        .set k, k+1
    .endr
    ret

.reduce_once:
    push rbp
    mov rbp, rdi

    mov rdi, [rbp +  0]
    sub rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp + 16]
    sbb rdx, [rip + p + 16]
    mov rcx, [rbp + 24]
    sbb rcx, [rip + p + 24]
    mov r8,  [rbp + 32]
    sbb r8,  [rip + p + 32]
    mov r9,  [rbp + 40]
    sbb r9,  [rip + p + 40]
    mov r10, [rbp + 48]
    sbb r10, [rip + p + 48]
    mov r11, [rbp + 56]
    sbb r11, [rip + p + 56]

    mov rdi, [rbp + 64]
    sbb rdi, [rip + p + 64]
    mov rsi, [rbp + 72]
    sbb rsi, [rip + p + 72]
    mov rdx, [rbp + 80]
    sbb rdx, [rip + p + 80]
    mov rcx, [rbp + 88]
    sbb rcx, [rip + p + 88]
    mov r8,  [rbp + 96]
    sbb r8,  [rip + p + 96]
    mov r9,  [rbp + 104]
    sbb r9,  [rip + p + 104]
    mov r10, [rbp + 112]
    sbb r10, [rip + p + 112]
    mov r11, [rbp + 120]
    sbb r11, [rip + p + 120]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm

    cswap2 rdi, [rbp + 64]
    cswap2 rsi, [rbp + 72]
    cswap2 rdx, [rbp + 80]
    cswap2 rcx, [rbp + 88]
    cswap2 r8,  [rbp + 96]
    cswap2 r9,  [rbp + 104]
    cswap2 r10, [rbp + 112]
    cswap2 r11, [rbp + 120]

    mov rdi, [rbp +  0]
    sub rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp + 16]
    sbb rdx, [rip + p + 16]
    mov rcx, [rbp + 24]
    sbb rcx, [rip + p + 24]
    mov r8,  [rbp + 32]
    sbb r8,  [rip + p + 32]
    mov r9,  [rbp + 40]
    sbb r9,  [rip + p + 40]
    mov r10, [rbp + 48]
    sbb r10, [rip + p + 48]
    mov r11, [rbp + 56]
    sbb r11, [rip + p + 56]

    cswap2 rdi, [rbp +  0]
    cswap2 rsi, [rbp +  8]
    cswap2 rdx, [rbp + 16]
    cswap2 rcx, [rbp + 24]
    cswap2 r8,  [rbp + 32]
    cswap2 r9,  [rbp + 40]
    cswap2 r10, [rbp + 48]
    cswap2 r11, [rbp + 56]

    pop rbp
    ret

.global fp_add2
fp_add2:
  mov rdx, rdi
.global fp_add3
fp_add3:
  push rdi
  call uintbig_add3
  pop rdi
  jmp .reduce_once

.global fp_sub2
fp_sub2:
  mov rdx, rdi
  xchg rsi, rdx
.global fp_sub3
fp_sub3:
  push rdi
  call uintbig_sub3
  pop rdi
  neg rax

  sub rsp, pbytes

  mov rcx, [rip + p +  0]
  and rcx, rax
  mov [rsp + 0],rcx
  .set k, 1
  .rept plimbs-1
      mov rcx, [rip + p + 8*k]
      and rcx, rax
      mov [rsp + 8*k], rcx
      .set k, k+1
  .endr

  mov rcx, [rsp +  0]
  add rcx, [rdi +  0]
  mov [rdi +  0], rcx
  .set k, 1
  .rept plimbs-1
      mov rcx, [rsp + 8*k]
      adc rcx, [rdi + 8*k]
      mov [rdi + 8*k], rcx
      .set k, k+1
  .endr

  add rsp, pbytes
  ret



/* Montgomery arithmetic */

.global fp_enc
fp_enc:
    lea rdx, [rip + .r_squared_mod_p]
    jmp fp_mul3

.global fp_dec
fp_dec:
    lea rdx, [rip + uintbig_1]
    jmp fp_mul3

.global fp_mul2
fp_mul2:
  mov rdx, rdi
.global fp_mul3
fp_mul3:
  push rbp
  push rbx


  sub rsp,144
  mov [rsp+136],rdi
  mov rdi,rsi
  mov rsi,rdx

  /* XXX: put directly into output */
  xor rax,rax
  mov [rsp+0],rax
  mov [rsp+8],rax
  mov [rsp+16],rax
  mov [rsp+24],rax
  mov [rsp+32],rax
  mov [rsp+40],rax
  mov [rsp+48],rax
  mov [rsp+56],rax
  mov [rsp+64],rax
  mov [rsp+72],rax
  mov [rsp+80],rax
  mov [rsp+88],rax
  mov [rsp+96],rax
  mov [rsp+104],rax
  mov [rsp+112],rax
  mov [rsp+120],rax
  mov [rsp+128],rax

.macro MULSTEP, k, I0, I1, I2, I3, I4, I5, I6, I7, I8, I9, I10, I11, I12, I13, I14, I15, I16

    mov r11,[rsp+\I0]
    mov rdx, [rsi +  0]
    mulx rcx, rdx, [rdi + 8*\k]
    add rdx, r11
    mulx rcx, rdx, [rip + .inv_min_p_mod_r]

    xor rax, rax /* clear flags */

    mulx rbx, rax, [rip + p +  0]
    adox r11, rax
    mov [rsp+\I0],r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [rip + p +  8]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [rip + p + 16]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rip + p + 24]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rip + p + 32]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rip + p + 40]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rip + p + 48]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rip + p + 56]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rip + p + 64]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rip + p + 72]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rip + p + 80]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rip + p + 88]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rip + p + 96]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rip + p + 104]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rip + p + 112]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rip + p + 120]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

    mov rdx, [rdi + 8*\k]

    xor rax, rax /* clear flags */

    mov r11,[rsp+\I0]
    mulx rbx, rax, [rsi +  0]
    adox r11, rax
    mov [rsp+\I0],r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [rsi +  8]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [rsi + 16]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rsi + 24]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rsi + 32]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rsi + 40]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rsi + 48]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rsi + 56]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rsi + 64]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rsi + 72]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rsi + 80]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rsi + 88]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rsi + 96]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rsi + 104]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rsi + 112]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rsi + 120]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

.endm

    MULSTEP 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0
    MULSTEP 1, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8
    MULSTEP 2, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16
    MULSTEP 3, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24
    MULSTEP 4, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32
    MULSTEP 5, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40
    MULSTEP 6, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48
    MULSTEP 7, 64, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56
    MULSTEP 8, 72, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64
    MULSTEP 9, 80, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72
    MULSTEP 10, 88, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80
    MULSTEP 11, 96, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88
    MULSTEP 12, 104, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96
    MULSTEP 13, 112, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104
    MULSTEP 14, 120, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112
    MULSTEP 15, 128, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120

    mov rdi,[rsp+136]

    mov r11,[rsp+0]
    mov [rdi+0],r11
    mov r11,[rsp+8]
    mov [rdi+8],r11
    mov r11,[rsp+16]
    mov [rdi+16],r11
    mov r11,[rsp+24]
    mov [rdi+24],r11
    mov r11,[rsp+32]
    mov [rdi+32],r11
    mov r11,[rsp+40]
    mov [rdi+40],r11
    mov r11,[rsp+48]
    mov [rdi+48],r11
    mov r11,[rsp+56]
    mov [rdi+56],r11
    mov r11,[rsp+64]
    mov [rdi+64],r11
    mov r11,[rsp+72]
    mov [rdi+72],r11
    mov r11,[rsp+80]
    mov [rdi+80],r11
    mov r11,[rsp+88]
    mov [rdi+88],r11
    mov r11,[rsp+96]
    mov [rdi+96],r11
    mov r11,[rsp+104]
    mov [rdi+104],r11
    mov r11,[rsp+112]
    mov [rdi+112],r11
    mov r11,[rsp+120]
    mov [rdi+120],r11

    add rsp,144

    pop rbx
    pop rbp
    jmp .reduce_once

.global fp_sq1
fp_sq1:
    mov rsi, rdi
    
.global fp_sq2
fp_sq2:
    /* TODO implement optimized Montgomery squaring */
    mov rdx, rsi
    jmp fp_mul3

/* (obviously) not constant time in the exponent! */
.fp_pow:
    push rbx
    mov rbx, rsi
    push r12
    push r13
    push rdi
    sub rsp, pbytes

    mov rsi, rdi
    mov rdi, rsp
    call fp_copy

    mov rdi, [rsp + pbytes]
    lea rsi, [rip + fp_1]
    call fp_copy

.macro POWSTEP, k
        mov r13, [rbx + 8*\k]
        xor r12, r12

        0:
        test r13, 1
        jz 1f

        mov rdi, [rsp + pbytes]
        mov rsi, rsp
        call fp_mul2

        1:
        mov rdi, rsp
        call fp_sq1

        shr r13

        inc r12
        test r12, 64
        jz 0b
.endm

    POWSTEP 0
    POWSTEP 1
    POWSTEP 2
    POWSTEP 3
    POWSTEP 4
    POWSTEP 5
    POWSTEP 6
    POWSTEP 7
    POWSTEP 8
    POWSTEP 9
    POWSTEP 10
    POWSTEP 11
    POWSTEP 12
    POWSTEP 13
    POWSTEP 14
    POWSTEP 15

    add rsp, pbytes+8
    pop r13
    pop r12
    pop rbx
    ret

/* TODO use a better addition chain? */
.global fp_inv
fp_inv:
    lea rsi, [rip + .p_minus_2]
    jmp .fp_pow


.global fp_sqrt
fp_sqrt:
    lea rsi, [rip + .p_plus_1_4]
    jmp .fp_pow

.global fp_sqrtcheck
fp_sqrtcheck:
    lea rsi, [rip + .p_minus_1_halves]
    jmp .fp_pow

/* TODO use a better addition chain? */
.global fp_issquare
fp_issquare:
    push rdi
    lea rsi, [rip + .p_minus_1_halves]
    call .fp_pow
    pop rdi

    xor rax, rax
    .set k, 0
    .rept plimbs
        mov rsi, [rdi + 8*k]
        xor rsi, [rip + fp_1 + 8*k]
        or rax, rsi
        .set k, k+1
    .endr
    test rax, rax
    setz al
    movzx rax, al
    ret

/* not constant time (but this shouldn't leak anything of importance) */
.global fp_random
fp_random:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (pbits % 64)
    dec rax
    and [rdi + pbytes-8], rax

    .set k, plimbs-1
    .rept plimbs
        mov rax, [rip + p + 8*k]
        cmp [rdi + 8*k], rax
        jge fp_random
        jl 0f
        .set k, k-1
    .endr
    0:
    ret

.global fp_randomA
fp_randomA:

    push rdi
    mov rsi, pbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (abits % 64)
    dec rax
    and [rdi + abytes-8], rax

    .set k, alimbs-1
    .rept alimbs
        mov rax, [rip + uintbig_a + 8*k]
        cmp [rdi + 8*k], rax
        jge fp_randomA
        jl 0f
        .set k, k-1
    .endr
    0:
    ret


.global fp_randomB
fp_randomB:

    push rdi
    mov rsi, bbytes
    call randombytes
    pop rdi
    mov rax, 1
    shl rax, (bbits % 64)
    dec rax
    and [rdi + bbytes-8], rax

    .set k, blimbs-1
    .rept blimbs
        mov rax, [rip + uintbig_b + 8*k]
        cmp [rdi + 8*k], rax
        jge fp_randomB
        jl 0f
        .set k, k-1
    .endr
    0:
    ret
