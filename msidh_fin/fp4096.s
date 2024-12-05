.intel_syntax noprefix

.section .rodata
/*4095*/
.set pbits,4095
.set pbytes,512
.set plimbs,64

.set abits,2052
.set abytes,257
.set alimbs,33

.set bbits,2044
.set bbytes,256
.set blimbs,32

p:
.quad 0xD1FCF47604E79BCB,0xD369B93E277B867F,0xB893B4DADA515DAB,0xD4A09051509BF0EC 
.quad 0x46535D892DB5C5F6,0xEA561D56AF87D01,0xEE6235F05176385C,0x4D59D8DEC8B88D8A 
.quad 0x1D32B79F32E14CD6,0xD786E8EDD70F9D4F,0xCF8DC03746E8A12D,0xFB2F371E06C9D3AA 
.quad 0x68D30CA59CE3425C,0x973DC84CFF577C5B,0xCCE8116D756C8905,0xB061D95CAFC1292B 
.quad 0x6B02F4FD9D35FD9E,0x10C1665D7FB1B9C7,0xE2C9D7F2E2DBDA4B,0x3F9D2D3E15ED1B60 
.quad 0x938F4FDC64215E5B,0xBD9A5671A61D5E08,0x9760DB220C5F584B,0x442AE0D0EB23485C 
.quad 0x9E324EE60EC15289,0x262D87B73F4A55FD,0x68E6C44B4D5D26C6,0xB19C8D8A6BFE007C 
.quad 0xD527B24495B02AC1,0x19D841ED1C3B26FC,0xD28976E599D8F92E,0x6855D97BA9DB63D9 
.quad 0xDBF7269D993760ED,0xC37A2496D6A0643A,0x2ABEADC289712A45,0x30A8AD864CE7CFEA 
.quad 0x18B06DAC453EE685,0xB848542F632F95EF,0xA825D48E93D16A3,0x2BA4A0C4C2765F31 
.quad 0xFB7E8F8314D44451,0x77E88B3F5AADC520,0x757B7B0EA38391F5,0xCBA7B9B3710891E6 
.quad 0xDEF1AD022E6ECAB6,0x985A6B47BE6E7821,0xC3249D4EEA4683A8,0x84530ADB4A502D6E 
.quad 0xFB7997BE77856D92,0xF9D051A0FB768F71,0xDAC14812B370ACF,0xC4BCEFE6A5B78310 
.quad 0x661F279E970400FF,0xB61117429E0FAD42,0x511586409A8B182F,0x43640CDA1CD63586 
.quad 0xF3924E59A2AFFCB0,0x9C117DD6D5390FB,0x53BDAD5DB6E3F210,0x9B3908337C3FCE94 
.quad 0x90F049B459104597,0x26650A3BB26C86B6,0xC447D91852630BDD,0x5E7717415B4CA2B9 

.inv_min_p_mod_r: /* -p^-1 mod 2^64 */
.quad 0x1800D7F0D672CE1D




/*generator points*/
.global fp_pax0
fp_pax0: 
.quad 0xd8d59f6b905f845c, 0x99f9085cebaa462b, 0x84406833cc409bdb, 0xd4424793d9e64911
.quad 0x6ef4a1934a806b73, 0xd44968868b02ed08, 0x7f340324e2fc3994, 0x8d764a94234f25a4
.quad 0xb29d149fddb3ca36, 0xf710a94cef4bc428, 0x5fce1635ee97757e, 0x4c3039ad39b97c07
.quad 0x0548ec7fac76f679, 0xce60b441806d2f42, 0x7be335f889ca5a40, 0xb015e3e347aaef16
.quad 0xb76cf54fcca2b911, 0xbcb44d1ae43aeef3, 0x884571109e7a10f2, 0x043764eda2f3b445
.quad 0x4ed4742d24112b15, 0x726213155e08c85c, 0x2db6b304366b84a0, 0xe960454ba79b72f0
.quad 0xaed63198368ca026, 0xad472cde482159c8, 0xf7d966a3bf75b866, 0xe3643cba747486c6
.quad 0x3503e08c48810e3a, 0x20f666f3833aefbc, 0x0e2c0547f751a53d, 0x396136a2e9db24ac
.quad 0x3926330851791821, 0xfcea8e9e857bbd4b, 0x7e608e77a6288120, 0x144176f1b7e1bdb5
.quad 0x949fc7aa3922b246, 0x9a4fddc7abfaf393, 0xecf92072d10d301a, 0x4d29cdddb840656f
.quad 0xef989688e35718ec, 0x5c314ba9ea6ce15c, 0x73b00bf38c92727b, 0xa90a307df5c67e31
.quad 0xe7e37754cb4adde9, 0x02ae12052557f12c, 0xf8b21297ebffad4d, 0x2b98785474d3ced5
.quad 0xcf6ef56a71348766, 0x7501a967c63435c6, 0x15fac3306212378f, 0x7a5aa355ebc929c2
.quad 0xd82243f09fd49937, 0xe152912b699b9bcc, 0x992c73144fcbb60c, 0x0b72308a3791e629
.quad 0x6933ef6e4274058b, 0x3d5905f4d6d58a32, 0x8c19b21d5d9003d2, 0xd18c36c4730a8239
.quad 0xdb58c3f7b076c589, 0x6ca887fc48918557, 0x66df421166901db6, 0x21a818f2b9671168

.global fp_pax1
fp_pax1: 
.quad 0x28ee71e93a208a15, 0xed25fc25543d8db8, 0x949e9f0c9719d114, 0x2acd86ae557d15cb
.quad 0x885ff5000b6d4d3e, 0x67af37e22e893aa6, 0x8c88d583e0611431, 0x3d4d6e43d416375d
.quad 0x569df21a2981ff13, 0xe8f593a2e4fa6ce9, 0xd96c5cf0e390988c, 0x633184926efddbc4
.quad 0xd58c589f0fd502a9, 0xcddcb2250347b106, 0xc2de29c166ba933d, 0xb565fea257eef87b
.quad 0x36843343cc505392, 0x74ad07a1b07a035b, 0x38bcefe1e31de6a7, 0xb5bdf573ca0c6987
.quad 0xcfd30ae6eeb206ab, 0xba33b32a2cfb470a, 0x8ca936690be91a96, 0xb8de07cceac9d125
.quad 0x53d7a939bc81def3, 0x6de9550f1dbb1361, 0xcfd503d3c076f66f, 0xc081495b963ca242
.quad 0x953eaa62c91af296, 0xd7e8c17d7e04f8df, 0x09a65df41e2ed379, 0xe3049ddc70c9585c
.quad 0x5e8fa9dbbc1f086f, 0xc6ded7a38b4c8114, 0x4ddd5144658d33ef, 0xf2ad05ede9b176f9
.quad 0xcb542a715d0133a0, 0xad07f8015b7dcfa5, 0x7b27bedd6968a8cc, 0xd94dc08544da48f0
.quad 0x80683bd8b8ae17d7, 0x32f11ecb8dcd1edc, 0x3ee0d49ba0e494c9, 0x710d9d22b0de3b5a
.quad 0x41cedc54cac30564, 0x9b1fc6971d50563b, 0xc1eff2490dce811a, 0xe41b5b53a0b90da1
.quad 0x2c54e585f4948170, 0x148ceb9755e39055, 0x8c16d0dd34168020, 0x8b2b053683c19fa8
.quad 0xc1d85ce03158222e, 0xd421380675081205, 0x0e4890b6c66941a4, 0xc4b356ea6386c39d
.quad 0x89db2e9f12e26215, 0xd2a409007f69d629, 0x109d0114dedeeb39, 0x74391e9dfd9dc79a
.quad 0x0f3c20b07a47ca9f, 0x17dd089897b16b7e, 0x068021531e1238ec, 0x494b5d61e95e665e


.global fp_qax0
fp_qax0: 
.quad 0xc734cbaa994af4b3, 0xbe69408b3362b3d4, 0x4b0ee34b26d13256, 0xdad01e87d25ee399
.quad 0x5c3d6a99865cb3c7, 0x654bf5db6fbbe04d, 0x782ac4cc343dcb7d, 0x3bc27fbaa654b9b0
.quad 0x6ffcc7f911d7de45, 0x3e84d4d36bbb07d8, 0x5d70f8de02c3442a, 0x747fc4b32da6dc51
.quad 0x1270c39e1fc649da, 0xbcd72b822549aef2, 0x77e0f224ec6ea54a, 0xb1bdc016fb2c7635
.quad 0x934d0c8ae4466525, 0x1003d7e7faca973a, 0xc700cc0feb9dc243, 0x4552093a9f84834d
.quad 0x54d9fe9e01302edf, 0x37002a79c515dcf8, 0x9abaf4e1000823a2, 0x49b359d3faf01ded
.quad 0x8d0805d8d5d15285, 0x8b720d075ccaff66, 0x90f065fcc9971f3d, 0xdbf9bc2d8d40c4f4
.quad 0xaaac676d303c85f6, 0x9ce30d9232eef496, 0x7786ba2f1112860e, 0x7a25d99bb3d38a94
.quad 0xaaa1d7e0ec678d21, 0x09d3de58eac6f39c, 0x632b1b07e2f39d3e, 0x43778e191ed5e5c8
.quad 0x4dcd493d3f4553c5, 0xc97964cdcf830723, 0xde4d4cb3bce93717, 0x5e1f6ea0df1be4be
.quad 0x10413076a9b39566, 0xebf1d4f6602b7fd7, 0xcb63777ed2a32ed5, 0x0a6972d3f84a6179
.quad 0xdb35c1a185b4389b, 0xf3b152f3dd445a46, 0xbd9b22aaaf795b59, 0xecd893ebacd90903
.quad 0x10af8b2491c82ad7, 0xd56329a798a4675c, 0xe646b16af00cd8e1, 0x9b30c545e09fcfb1
.quad 0xad6cc8603584d06b, 0xcf5cbb157e568fdd, 0xb40764db45e5ef00, 0x890157ea1e555fd1
.quad 0xd631d61ed229ab9c, 0xebc19ef71952ffaf, 0x91bc6c668179a3f8, 0x14096800b3c2574a
.quad 0x6e29ac956a16251d, 0xdedc4a959378f445, 0x6c4abd458ce84e82, 0x59e949f6b1c2c3e1

.global fp_qax1
fp_qax1: 
.quad 0x59167da54d773978, 0x5c81f3cf7177f1f4, 0xd6201768754ad7ab, 0xf0134dea2ca8b78b
.quad 0x5d572169b0b346cb, 0x237276e3a62c2f71, 0x32f6524f9d23e8e5, 0xa1361b7b677080b9
.quad 0x90beef2b30ef1857, 0xce80a107f36a7ba6, 0x799986bb5ef3dcde, 0x1bba32de40f4c0c5
.quad 0x6c00669f3c986e36, 0x1a22afd7eff5ca5c, 0x89f73d37f58bdb25, 0x7d15ea344779254b
.quad 0x70d012bc39ca0113, 0xed9d9fa46b1af4fc, 0x143ecffcd63ea73a, 0x8e2f1b11696ff883
.quad 0xc2642ea9334e41ba, 0xd2f22538d0bb1b6a, 0xfc4bf85a68d96189, 0xf07040c38407ffe7
.quad 0x1da445c9532dfc37, 0x1e7e32e1c920ea89, 0xd012870718355470, 0x0eb4fffd8a9447bc
.quad 0x662bd186924164d8, 0xdaa78080989f8263, 0x1177c60f7114eb43, 0x30af17e55d4e1d46
.quad 0xee43c56d4f07b8e5, 0xaf93dac9218e3e97, 0x88ef111d759aad69, 0x4e73c98e832fb8f3
.quad 0x4ec71a5ea883a924, 0xb1043d2a7cf92f59, 0x3774427fbc45d0e8, 0x5305471cb19a2fc3
.quad 0x9846f608ac244d47, 0x3985bf7de64c754c, 0x20253b5ea59d2514, 0xbd7436505683959d
.quad 0x5650b2ca281a0d00, 0x4bee2328a4c40890, 0x27df26ff6d637ef9, 0x870f924702fca066
.quad 0x5f648aca0dba5121, 0xae2ebc60f85b0c9a, 0x2de014675cdf2818, 0x3d2b22736787dc61
.quad 0x02725ad3ecaa57cc, 0x40438dd6b1d27bad, 0xb5f4f0f7752edbc0, 0xf581ab244343ebee
.quad 0xeb6568c22648d5ab, 0x1f42fb7eaf9fb7e5, 0xfd708cd0babbecbd, 0xaf37b22eaec9efa3
.quad 0x32ac0ba2acdbcfe2, 0x09da6f9f61963e82, 0x033c11f897f40474, 0x33e2d2be83610bde

.global fp_rax0
fp_rax0: 
.quad 0x0cee9e7722630a58, 0xf9e7dc6a6bf01ac9, 0xa653afa2b99988aa, 0x9d1e48347aa5aba0
.quad 0xc11f1f0930701814, 0x3a03e8e53b263aa7, 0x54a89cbcf44e5767, 0x4562ac2246bf934e
.quad 0xa3b44cbe1235cefe, 0x1d6cc3bfc8677cc1, 0xe14ef05541868e0c, 0x9584f9dbbb2af90a
.quad 0x1ca1f5093b0a6faf, 0x3cb37725a0b22b5c, 0xf523cb7da3230797, 0xfb9d1d8eb8516504
.quad 0x9fe83bff939148c3, 0xb1ed9fad6d4eecbb, 0xccd70a9d48d63100, 0xfd101ecb870b9903
.quad 0x521a6e80c3f1d9f2, 0x24509e2b7fcfd2b8, 0x154721f6127561e5, 0xaee23e2a471b3c11
.quad 0x045b8a94e29fbb19, 0x3096689492683338, 0x9d9c180851c2c63d, 0x622baeb1894ec148
.quad 0x5dbf4dbe1a138dba, 0xaedc906c32340b51, 0xe377c232f4cbdad6, 0x576b0f5c34fb4d30
.quad 0xb50c036423377df4, 0x90891d83c1477cbf, 0xe6fdaccce208b4f0, 0x5e025c0e830960f8
.quad 0x0036249dd0f690ee, 0x7e0e1465cfedb663, 0xa893d37904670e5f, 0x99901c68b7cd2ab5
.quad 0xad44ae4155c1b752, 0xaa2bb3c7f70a409a, 0x8a89d741474a7766, 0xe0a7c13ecf60dd81
.quad 0x59f9475491147427, 0x37617951ae4bc34a, 0xdff54a8dd3836045, 0xeadfa35c9efd1cd3
.quad 0xbafdafef8a26ca31, 0xd78fcda70bf31093, 0x54cfef1f03c0dfbf, 0x24f9c0765b5ee448
.quad 0x60b2011c5f8ef120, 0x11b90a047c8dee1e, 0x0bcf41988e8fbc1e, 0x75639bfa75fae26c
.quad 0xef9403f8b0712648, 0x0085aa43a918c600, 0x0dce102e7c1d0bec, 0x0e26120ed7a7a115
.quad 0xc282ece09c7d3ca8, 0xbb30b8b7993f384b, 0x7d32efdefcf96d13, 0x2db90e48634af3cd

.global fp_rax1
fp_rax1: 
.quad 0xed2057bf71c0a2c8, 0x0ac5f098572d6a18, 0xc3810d1c89398826, 0xfddb1dc41762346f
.quad 0x2da58b710fa67fe6, 0x3a33e1f85391e5e9, 0x4f319f6590918dfc, 0x2db4e77dd795c86a
.quad 0xa877ae85bfeaad32, 0x79c6dee41388f4ed, 0xe2269131c5695149, 0x165730f7e48648be
.quad 0xe13a174fef62be6a, 0xf9a672b46537e401, 0x17af051626053d30, 0x32e034ba70375ec5
.quad 0x97c8bf437b7b42bf, 0x4c2a7de6f9f74b31, 0x6758f4648d3e0755, 0xb76045bd50705cf2
.quad 0x7349f7171f7c2654, 0xb90b103259113abc, 0x4dfed6faa6ece862, 0x8573f873e29ec542
.quad 0x26e056d36e188aa8, 0x2f9b37ad43c99549, 0xa6801575db875abd, 0xeabbeeb699ae3e27
.quad 0x86a060ad6c114fd7, 0xe21bfa04845eb0b0, 0xb4b4370f02cef2f0, 0x7878ebc387e7d60f
.quad 0xa4cf4bf6d6904962, 0x2fd1cfdb2bbb3302, 0xc22fe764a40cde51, 0x48a9f3475414586e
.quad 0x5ddd48e666c20487, 0x558d03cd2dd1826d, 0x94cfd413c41f53cc, 0xbcf92ab98d4a2036
.quad 0xf53f570f02a7344a, 0x6c7c17601ef65ac5, 0xeb248e642371b9c7, 0xdc7a032eabc39dca
.quad 0xdec69d83e5d2ee8d, 0xd0a2d5e0d063efc9, 0x017ec921ed029d16, 0xa8b5dde083ab4476
.quad 0xd0c99d86fa1d7d66, 0x8dcf50f952148403, 0x174429b742521b5b, 0x41e274099dd8a794
.quad 0xbfa4ff11f4c20536, 0x7ca2be19bae183eb, 0x4dec1133da428e94, 0xe158497cddfd0dfa
.quad 0xd273c4ebde407e4a, 0xd9afe3d38ce71d39, 0xe17d3c5edcb978a0, 0x613c31011fae2ed9
.quad 0xcc9e7a893154bd62, 0xc2f54fa9d8d393f6, 0x393c90e3ef165897, 0x573dd3ea4796ed86

.global fp_pbx0
fp_pbx0: 
.quad 0x126e11b017721231, 0xd03130dec325a22f, 0x1e62fafffc192ae0, 0x94a621d94ecc2315
.quad 0xad1cf0cc308702a9, 0x830ffea9e3e7f784, 0x1d7edc928e02d4d6, 0xcfa790ca1a85491d
.quad 0xaacb381d29c4d61d, 0x05d5fa246a1b93c1, 0x27ae2fbc025dc6d9, 0xa82bda752264dc14
.quad 0x9443488bbd3e9818, 0x9c3497b945b600a7, 0x856ec423483c6e04, 0x2a6645574b2d1211
.quad 0x54805c53e2d4d572, 0x93d0d18adfe4b44b, 0xec619ca52e3c94a1, 0x7a11bd8a49ba30fe
.quad 0xc564d4e0cac17e6a, 0x2594c879e66a04b5, 0xced713599cc2bee2, 0x24da5315526b9ec3
.quad 0xa4364b88e75aa535, 0xf2e78d779214edbb, 0xc08b76fc36ea8d34, 0x9115d143f80e2574
.quad 0x7dad3693861894fc, 0xe302ca9525b125e8, 0xe4b3950e3a715e40, 0xc06bd29823354720
.quad 0xede8a24ff05ee863, 0x9ad3bc98d60beb61, 0x16780b3fa74a63f7, 0x2b6546dc3eaa85f7
.quad 0xb074e2821e476d84, 0x5410f07cdca808b3, 0xcd208e5204ba8b80, 0xb9a18192695d2506
.quad 0x706a18ebdb7fa7b7, 0xd732cd7ffa9e736f, 0xace10bacc3b637a7, 0xba81790476802388
.quad 0x122b77f974f33195, 0xbbc57311beb55ad6, 0x8cfef9b79b23d11a, 0xa74f0f623179ecfc
.quad 0xb3ccb3449829c366, 0x43c059ada191d732, 0x99aa35770c1c841e, 0x54793a11b1110cfe
.quad 0x1ca9bab880578154, 0xe21b74f414d55fc3, 0x5c58c43675007ce3, 0xf5c9a9dad55f12c5
.quad 0x82ef66286ce850c9, 0xbad7698891074321, 0x21149a8e2d985872, 0x1d21df4f06eb47fc
.quad 0x4628627604833e87, 0xe6fc56bf021c7560, 0x55941465bc43a721, 0x3c719a38c04c2fb1

.global fp_pbx1
fp_pbx1: 
.quad 0x7e98799b42f1bde7, 0x6b13f6e986c28387, 0xd0a77a8d1b3b7436, 0x307bdfc72a19bce8
.quad 0x45eb60755d69c6e2, 0xe160b3c3003cbcf6, 0x0eb9e5f47c3ba572, 0xda9be76eb8627f33
.quad 0xc2b2e35394c51f6c, 0x345fdcd4e6a1bb3a, 0x50c62a5866089d30, 0xdf1029cac39e9c23
.quad 0x180cce721595f39c, 0xbb48d4115afb7b84, 0xaa735568b61921e1, 0x3bfda31a6e10082b
.quad 0x08db0215b0d519cb, 0xcc928eaf2a2bc105, 0xac6ee31469c31c02, 0xc542d0c1c2b61c33
.quad 0x0f0c1c32dc8bed26, 0xf8bcb4f57bb792c3, 0x94c86f7bd9588545, 0x534566baa1e73e07
.quad 0xcc83400e557a8a72, 0x81cc6e3e669560c9, 0xb585c624cd816833, 0x87a503dc7a9295ee
.quad 0x833705d46adddeca, 0x4b3d6362cdf5bc4e, 0xc5bccd1f1472699d, 0xc3f0909f87449bac
.quad 0x6a2b274c58f00c60, 0x23e355271ff9a521, 0x249a090315c4b0f9, 0x2bccd80167b5bbbd
.quad 0x052491a2507fe215, 0x1ca1ed75d7525c57, 0x2942f4e88525e05a, 0x1f26a6525bae341c
.quad 0x2de5585114fb6dfa, 0xa71282817a9ee8e6, 0xa5f50c65217530b6, 0xe38ceac48c450236
.quad 0x61b26c9dcf5f24ca, 0xc7c9cad650a5f748, 0x05a88031f6f52bb0, 0x60e42ef0bae702de
.quad 0xfe021b7978b6b097, 0x12cd3eff3cfe1b0b, 0x6dbd4a3e8c023dc0, 0x2ad89353d7491b05
.quad 0x7b7a1e45456960c1, 0xd7d090099ebb9416, 0x1fc03c0aafa5195a, 0x217844a217c83b7b
.quad 0xdc2a718a473ce3e6, 0x231d58dcdce35daf, 0xe3ca8aa1592a560e, 0x1521622d18beea7c
.quad 0x47bc0026f84e24d7, 0x69882dc119badd78, 0x04203c89c5ab4c8d, 0x3edcc37db3797e0b

.global fp_qbx0
fp_qbx0: 
.quad 0xeb5bab0e39de31d0, 0x1d4783451cd5147d, 0xbd93f6ea5ac13652, 0xe26687bcd2258b48
.quad 0x2b01aec4f673e445, 0x9565fdb0de097851, 0x80b140aa20a01e09, 0x266ecae960a9e3e6
.quad 0xd74c68835aaf05f2, 0x7683dbac7ace3486, 0x5a4284fe11ebd2f6, 0x32920cfeb741f247
.quad 0xc6b23d5f331f3ef2, 0x56ccbec133a64028, 0xe15336d983439f82, 0x57f109cfa756c002
.quad 0x42693ba644935954, 0x6806c0435ff9b3f7, 0xda70a4685a30621b, 0xa89c59e19bbf7940
.quad 0x2a808f3284b084ed, 0xc250fff0e2126b9a, 0x72b9df5ead187053, 0xcc0f5dd0de54e575
.quad 0x1939d6d0b1ef0010, 0x894da418fe760438, 0x8f4c741d46e76101, 0xe59ff7391e939461
.quad 0x18470db6b8d8650b, 0x53ac2316a7036c84, 0x682f0ef47e81dd59, 0xfe28f88d4de869f7
.quad 0x4c2dfff5f7f3d9eb, 0xf3372681d582fc57, 0x3ceb21c5ce86907b, 0xeef9780390c0b93c
.quad 0xa0a88c667e8ee106, 0xa49c02cd0dc24332, 0xc5455762e9c60edc, 0x19bba92080a80e5b
.quad 0x7479d89d7947c768, 0x6a2e89bd7c68760b, 0xda0d4988776cf086, 0xce5cb9f8ea3c1732
.quad 0x9e3695b39a3d55d5, 0xe45e47e4cec9f4f0, 0x611b3f71a6a3a166, 0xee6d74d7b1294374
.quad 0xb42bb5f28ecff24b, 0x8c838c3817acf32d, 0x018c5fd81c29d974, 0x3e6d890b23bfa28c
.quad 0x1a717e6e46c8f068, 0x232bbb2e27a9e5c7, 0xf3ff3b219dd1910d, 0x29d1a5d56a54244f
.quad 0xca6bfcf07f373380, 0xb295db82cd6796af, 0x3a89355714272d73, 0x969ba5f1737128ae
.quad 0xdb1badf476d7ab31, 0x12587157fbbf6891, 0x636bf56f9512e46d, 0x0daa05e97ba77c95

.global fp_qbx1
fp_qbx1: 
.quad 0xa7cd3ed9716271ea, 0x02568969dc323f57, 0xf21f98c61a1180ac, 0xb79c7110c32dc1d0
.quad 0x5bd7eb2e96e10e28, 0xfd9216ae26eb26d7, 0x2d3fe045d06af164, 0x3b5e67ef6c66340b
.quad 0x932634f2bb76abf5, 0x0f684417250d4100, 0x401be11c27eef38b, 0xeb188b71b0941aed
.quad 0xcf6b42f2c6462805, 0x4b3aa656da3d1a83, 0x3e6bfd48c3cbce8b, 0xf31f7f2ad580ceb8
.quad 0x442b505ab0a669f7, 0xc5ab8dfce8e82b8f, 0x9a4f4674fbea8380, 0x9c35d14d369de9d0
.quad 0x4e732ba493a53b40, 0x6f27de057b904b7a, 0xa89684525e3bcac2, 0x837286e7a05dab29
.quad 0x2bd3f64060fc998e, 0xebd920613658119d, 0x0d8958edce1ead9e, 0xeee4d7542fe971d1
.quad 0xf4d69086262af3a4, 0x47fad0a37dda2ad3, 0x3592f4844303e2c7, 0xc1e28e9859a40fee
.quad 0x300569f14e0481b0, 0x3a508abe91789eae, 0x5823e58e4ed7debe, 0xe75c49aa9ec2a689
.quad 0x4a40e9c2df43aa1e, 0x06a40482feaca28a, 0x3cc3916e94caa85b, 0x55254803333d1d0e
.quad 0xdb98d72a11c22a03, 0xe33d33c786f790af, 0x5f5cffa27913b6b9, 0xc08cf9afab148cb3
.quad 0x94fc9984003c22a3, 0xcc22f2f527e36c40, 0x54e50bf3aaf20e5b, 0xa482d396c9b3b293
.quad 0x643a0516b356d4fb, 0x98d639ea3e818e2d, 0x5b4f9df1ae00e43d, 0xbe82ff9ed83bc314
.quad 0x18892b7ef37266cc, 0x36ded16c1a34245a, 0x6b17cffbbd0950fc, 0xcc0288719431c9be
.quad 0xf4e2eb72a6798c39, 0x8caa383eba3b69ef, 0x9509943bba0a4eae, 0x744ea66034fe2ab9
.quad 0x43c025cb07b8a46f, 0x056e0903208d39a3, 0x47b73c862fc79c06, 0x3904ab1d0d8fbd58

.global fp_rbx0
fp_rbx0: 
.quad 0xf97a934518d86cc5, 0xe90155b629326701, 0x0319811f32f59a50, 0xd89676f41f518b97
.quad 0xd9502493069d2d90, 0xc9ccb9d3d6a62c9e, 0xc5dab0cc91794b83, 0x618edea3956f253f
.quad 0x2dd326a5258b7404, 0x3aca96de08614c9b, 0xe35ce75de9e37ff8, 0x48650b1e5f91f3e6
.quad 0x8c45d053dc341897, 0xec759d46927560e3, 0x3cf6f08a464f541f, 0x9e4df8f558027c9d
.quad 0xdadc5cd7688bfe12, 0x26c07b926b73cc5f, 0x37d77be87e49f74e, 0xa128de8ce8857bd8
.quad 0xb553ebd7f232a712, 0xad2dfdcf4a92d679, 0xc9509f9c0941a84b, 0x9e1091e617fe357b
.quad 0x847cbbbe9ac86e80, 0xc0dc370061f9c6b3, 0xc32673797b07d527, 0xdf07d3767fac64c1
.quad 0x196edf7ca59a115c, 0x3d261d0251157bd4, 0x989de40c20885466, 0x241aa8e265f3280b
.quad 0x9ceffa9f16452065, 0x2903d1e047bd2707, 0xb70a0a57c2a7d5be, 0xbcf8bf8b3e855e9d
.quad 0xc11ebcb9b38d5aec, 0x6b373b00b05cca97, 0x99a594554e0ffe74, 0x58f0cd04b3d4f855
.quad 0x8cfedd8c30fbc7d8, 0xf11236ae292d75d8, 0x99d0fbbf50928aa3, 0x605d34dee3711cb5
.quad 0x5a588e23350aba2e, 0xee41c16ad0baaa0f, 0x4be7404d4bf05236, 0x1dfe14249a2869c3
.quad 0x3380a0ee4783e914, 0x26049e26cac982a2, 0x9a813aa6048901a5, 0x69a65fd6669fe525
.quad 0x40acd16f66240f63, 0x9bb572fca6fa3762, 0x942f0b0bdccb0601, 0x9ae7ffd9cb0ef5c1
.quad 0x1951870bde4f3bb3, 0x720561f2d6b02b7a, 0x3afa18bc7cf757b4, 0xbdf5514a87a5c3a6
.quad 0xe4e651724a691e1e, 0x4607bf5245845199, 0x98dd2981fbdaaf7b, 0x0940139dfda8630f

.global fp_rbx1
fp_rbx1: 
.quad 0xa63d5051448647d8, 0x807687b76797becb, 0x897d7f50cf5afd68, 0x7ee6bc11a078743c
.quad 0x8a9d2483b1aa7c33, 0x23cd443c1af62ffd, 0xc58d3c0e901cb269, 0x8ee047dd4fdc2eb3
.quad 0x1f8ee8265ad15cc7, 0x098c9f16815af1dd, 0xc01eb5fefbba96d5, 0xf0cf6cbc07743db1
.quad 0x2300e3f32b41f9c4, 0xb493676d36279266, 0xe6fe26081f7f643f, 0xca20a24bc89ce743
.quad 0x363c5ff25e549337, 0x10015f50c5d506cb, 0xd9444a872977438a, 0xd441b3a851e3fae8
.quad 0x6d956b1befa480c9, 0x7426ae8a60ba06fb, 0xc9a2f8cdcd2e3aae, 0x315b4eaf69028194
.quad 0xf939caf29ebd41b9, 0x288346be07513c5e, 0xbafc8197671031c7, 0xd386c9ac932bf709
.quad 0x0a9ac9583653f71b, 0x0ab24e07b1eaf490, 0x09749eeefd65f9da, 0x3d1fbb040a601fe6
.quad 0x96baed1550b69508, 0x0d52af0e9373eaa8, 0xe4ff52a788073919, 0xa0c6d012ff487577
.quad 0x10d3275a6931b993, 0x8ef3ecad4de927fb, 0x1ac97589e1270422, 0x5caebd3d045d5c03
.quad 0x811a447d0e88aa33, 0xedf6cfdbaab25192, 0x6eef57b9b65e0b35, 0x2ceb994c47945c5e
.quad 0x0d2acca02e8c6f24, 0x122f4ac72747449b, 0x6e87ef8c8d8a0aae, 0xa646985b48404c82
.quad 0x7096520970585ee1, 0xe61e21489509f99f, 0x8fb08909f75e168a, 0x6f4ca6bc253cc4b9
.quad 0xd68e5b71cef0f8d5, 0xd4e4e8a9259d236d, 0x99a8dfcd69e47a2a, 0xbcaeff6d7fbc1e37
.quad 0xcbf05c50f54872be, 0xfb0db555db650fc1, 0x4c0101e77a1fdb18, 0xafb9e820efa37dab
.quad 0x0ba44f2bc4f589da, 0x0d491536771f02d6, 0xa880c69df631bd82, 0x5d43713de0cfd2b5



.global fp_0
fp_0:
    .zero pbytes

.global fp_1
fp_1: /* 2^2048 mod p */
.quad 0x5C061713F630C86A,0x592C8D83B108F300,0x8ED8964A4B5D44A8,0x56BEDF5D5EC81E26 
.quad 0x735944EDA4947412,0xE2B53C552A0F05FD,0x233B941F5D138F47,0x654C4E426E8EE4EA 
.quad 0xC59A90C19A3D6653,0x50F22E2451E0C561,0x60E47F91722EBDA4,0x9A191C3F26C58AA 
.quad 0x2E59E6B4C6397B46,0xD1846F6601510749,0x662FDD251526EDF4,0x9F3C4D46A07DADA8 
.quad 0x29FA1604C59404C2,0xDE7D3345009C8C71,0x3A6C501A3A484B69,0x80C5A583D425C93E 
.quad 0xD8E1604737BD4349,0x84CB531CB3C543EE,0xD13E49BBE7414F68,0x77AA3E5E29B96F46 
.quad 0xC39B6233E27D5AED,0xB3A4F091816B5404,0x2E3277696545B273,0x9CC6E4EB2803FF07 
.quad 0x55B09B76D49FAA7C,0xCC4F7C25C789B206,0x5AED1234CC4E0DA3,0x2F544D08AC49384C 
.quad 0x4811B2C4CD913E25,0x790BB6D252BF378A,0xAA82A47AED1DAB74,0x9EAEA4F36630602B 
.quad 0xCE9F24A7758232F5,0x8F6F57A139A0D421,0xEAFB456E2D85D2B8,0xA8B6BE767B13419D 
.quad 0x902E0F9D657775D,0x102EE9814AA475BE,0x150909E2B8F8DC15,0x68B08C991DEEDC33 
.quad 0x421CA5FBA3226A92,0xCF4B297083230FBC,0x79B6C5622B72F8AE,0xF759EA496B5FA522 
.quad 0x90CD08310F524DA,0xC5F5CBE0912E11C,0xE4A7D6FDA991EA60,0x76862032B490F9DF 
.quad 0x33C1B0C2D1F7FE00,0x93DDD17AC3E0A57B,0x5DD4F37ECAE9CFA0,0x7937E64BC65394F3 
.quad 0x18DB634CBAA0069F,0xEC7DD0452558DE08,0x5884A54492381BDF,0xC98DEF99078062D7 
.quad 0xDE1F6C974DDF74D0,0xB335EB889B26F292,0x77704DCF5B39E845,0x4311D17D4966BA8C 

.global fp_2inv
fp_2inv: /* (1/2)2^2048 mod p */
.quad 0x2e030b89fb186435, 0x2c9646c1d8847980, 0x476c4b2525aea254, 0x2b5f6faeaf640f13
.quad 0xb9aca276d24a3a09, 0xf15a9e2a950782fe, 0x119dca0fae89c7a3, 0xb2a6272137477275
.quad 0xe2cd4860cd1eb329, 0x2879171228f062b0, 0x30723fc8b9175ed2, 0x04d0c8e1f9362c55
.quad 0x972cf35a631cbda3, 0x68c237b300a883a4, 0x3317ee928a9376fa, 0x4f9e26a3503ed6d4
.quad 0x94fd0b0262ca0261, 0xef3e99a2804e4638, 0x1d36280d1d2425b4, 0xc062d2c1ea12e49f
.quad 0x6c70b0239bdea1a4, 0x4265a98e59e2a1f7, 0x689f24ddf3a0a7b4, 0xbbd51f2f14dcb7a3
.quad 0x61cdb119f13ead76, 0xd9d27848c0b5aa02, 0x97193bb4b2a2d939, 0x4e6372759401ff83
.quad 0x2ad84dbb6a4fd53e, 0xe627be12e3c4d903, 0x2d76891a662706d1, 0x97aa268456249c26
.quad 0x2408d96266c89f12, 0x3c85db69295f9bc5, 0xd541523d768ed5ba, 0xcf575279b3183015
.quad 0xe74f9253bac1197a, 0x47b7abd09cd06a10, 0xf57da2b716c2e95c, 0xd45b5f3b3d89a0ce
.quad 0x0481707ceb2bbbae, 0x881774c0a5523adf, 0x8a8484f15c7c6e0a, 0x3458464c8ef76e19
.quad 0x210e52fdd1913549, 0x67a594b8419187de, 0x3cdb62b115b97c57, 0x7bacf524b5afd291
.quad 0x04866841887a926d, 0x062fae5f0489708e, 0xf253eb7ed4c8f530, 0x3b4310195a487cef
.quad 0x99e0d86168fbff00, 0x49eee8bd61f052bd, 0xaeea79bf6574e7d0, 0xbc9bf325e329ca79
.quad 0x0c6db1a65d50034f, 0xf63ee82292ac6f04, 0xac4252a2491c0def, 0x64c6f7cc83c0316b
.quad 0x6f0fb64ba6efba68, 0xd99af5c44d937949, 0x3bb826e7ad9cf422, 0x2188e8bea4b35d46

.global fp_sa
fp_sa: /* starting coefficiet */
.quad 0xae3d05902f104e81, 0xbf347f36af9a0d6a, 0xfae5cc45d3b03fbc, 0x095178162c292dce
.quad 0x149db406018593f7, 0xcfc0d85e86518a1e, 0xb65b118c42949869, 0xa835c0476b5edddd
.quad 0xc08e9122fd2e9ac2, 0xdc3b49b4ca04df95, 0x195c961f450c2275, 0xef03597d106d736e
.quad 0xb890fea38fc9fef8, 0xabef4f40db05d105, 0x55733baa5f6bfce8, 0xdc3e5bab85046a3d
.quad 0x8c67f0804635adcd, 0xe692a0b5d1d5787c, 0x0921379b63f57738, 0xf83a6bd7556808c9
.quad 0xc4354ff7b3be8115, 0x50e4b9aeb9d3d519, 0x79903bd6c5fe5c30, 0xa4836f4849217d79
.quad 0xdc268d0b5b418edb, 0x2c34e5aae355b78c, 0x9d0677f744860cea, 0x86c11432be241679
.quad 0xa7b1ea400f1ad43e, 0x6cbcc64bce0bb920, 0xdae6f874a7ee7956, 0x3270909d9852fcb1
.quad 0x37b8cc1a06275271, 0x8392ea3b4940d015, 0x5e6f973d52af0a77, 0x7b45870e840f904a
.quad 0x8d56bd1f43d30b31, 0xd90af6fddddb452c, 0xd49aa0ac27873386, 0x1f7e4b7ae76cb4d0
.quad 0x76ff9c7c4ca555b1, 0xdaafe993064f2095, 0xf3f698d5d27d7e6f, 0x64bfeef1fd57c894
.quad 0x5858c894276ad40f, 0x8cfb63fdc857b49b, 0x6091c1701acf270c, 0x1e8933f650210591
.quad 0x7e6338985cd0024c, 0x5e80a523f7ea3d6a, 0xbc2ba6fdaaa66ebb, 0xb6728d8024e53bed
.quad 0xe4d89c54fbd83696, 0x88fb6cc1bfcc58a2, 0xdb749c15e03237c0, 0x3eea97606acd6278
.quad 0x20b8f2d241a2a1bf, 0x4dec18ad6004bde2, 0x8130e47732f6b3c0, 0xc6e69f54c8512c5f
.quad 0x92617aee233a69c2, 0x6d5a567c7fb77875, 0xaf6b157204cb42e6, 0x325b2db2d4a5ef53

/*not changed*/
.global fp_four_sqrt_p
fp_four_sqrt_p:
    .quad  0x7DEB9712E03151D9, 0xA78E5024D033F311, 0x74BF301A582C4178, 0xA4A7288B8FC0DBD2
    .quad  0x4857D796B39213B2, 0x399AB7DFCB36B9F8, 0x8122E0ABB643682C, 0x0002EBFC0AC2E3CB
    .zero 64

.r_squared_mod_p: /* (2^2048)^2 mod p */
.quad 0x9913AED3A647B091,0xB2C21FD58AD1FE19,0x6A949F027E1A80CD,0xFBA450D7D1183942 
.quad 0xBE9E31EAEF736E88,0x7C25A97807E683C9,0xAC25E8511B80EEB2,0x668C496837BF7E71 
.quad 0x65DFD2F49BD221CC,0xFF85C6EB7E39CEA3,0xD4DE401241CAA6E2,0x319A48A0EC980752 
.quad 0x65B5FC9A7D7C0992,0x1FBD0983CE504961,0x44F2DE8BB5CEA44,0x9C4733F17EE78A61 
.quad 0x33FF4C1A1003AB84,0x2D80CF3B726FB2B1,0xFA3B91AB03682DD1,0x8168D9B3413C5C66 
.quad 0x4955664824D4AB1,0xE7997D1FF50114E2,0x5CE488899FD471C4,0xC4E29C65881B4E4E 
.quad 0xB5FCF4E50F99E51F,0x62C3BE30C3229EB0,0x9355533FA8354D50,0xB469D6D4B8DEF3F 
.quad 0xCBCA35B80459E607,0xA93CBD0F7C5CC631,0x77DF4D96F300D8C7,0x8EF33761C8F4F3E5 
.quad 0x257C6075B5D33C97,0x13DBC66F749AE88B,0x659D67E0A1B805C2,0x24A930B8380B999C 
.quad 0xA20106AD6E19B664,0xE99AAE2588D46FFC,0x2D78AE0B052F03B4,0xFE808C242D2D23E9 
.quad 0xE96A8B8279F6BD96,0x9612B27D1E88FF3D,0xBA8B831890468C82,0xA1DC00337AB79575 
.quad 0x9549E2BBA3AAF81F,0x3BE59D8F0DFAB79E,0xEB8C138F93DC9272,0xB01B99534EE9F8A6 
.quad 0xBCF35F334FFF92EC,0xA1E09BFD1B01BE2D,0xAAA0EB10C056AD81,0x7EC7A77048EA9504 
.quad 0xC5B3B0CAECAB5F07,0x96B0209F03452CE5,0xF2F96DDF560A461A,0x613FF755C57F0BC6 
.quad 0x3598C5D91C9EB987,0xCEF1ADB35D90AE46,0xD3276C239FFEE158,0x8CB95452FE59624E 
.quad 0x2DF92A75418D0E3,0x239E884DA3353B9A,0x7ED3AE88DFF470A8,0x25B704707DFE0248 


.p_minus_2:
.quad 0xD1FCF47604E79BC9,0xD369B93E277B867F,0xB893B4DADA515DAB,0xD4A09051509BF0EC 
.quad 0x46535D892DB5C5F6,0xEA561D56AF87D01,0xEE6235F05176385C,0x4D59D8DEC8B88D8A 
.quad 0x1D32B79F32E14CD6,0xD786E8EDD70F9D4F,0xCF8DC03746E8A12D,0xFB2F371E06C9D3AA 
.quad 0x68D30CA59CE3425C,0x973DC84CFF577C5B,0xCCE8116D756C8905,0xB061D95CAFC1292B 
.quad 0x6B02F4FD9D35FD9E,0x10C1665D7FB1B9C7,0xE2C9D7F2E2DBDA4B,0x3F9D2D3E15ED1B60 
.quad 0x938F4FDC64215E5B,0xBD9A5671A61D5E08,0x9760DB220C5F584B,0x442AE0D0EB23485C 
.quad 0x9E324EE60EC15289,0x262D87B73F4A55FD,0x68E6C44B4D5D26C6,0xB19C8D8A6BFE007C 
.quad 0xD527B24495B02AC1,0x19D841ED1C3B26FC,0xD28976E599D8F92E,0x6855D97BA9DB63D9 
.quad 0xDBF7269D993760ED,0xC37A2496D6A0643A,0x2ABEADC289712A45,0x30A8AD864CE7CFEA 
.quad 0x18B06DAC453EE685,0xB848542F632F95EF,0xA825D48E93D16A3,0x2BA4A0C4C2765F31 
.quad 0xFB7E8F8314D44451,0x77E88B3F5AADC520,0x757B7B0EA38391F5,0xCBA7B9B3710891E6 
.quad 0xDEF1AD022E6ECAB6,0x985A6B47BE6E7821,0xC3249D4EEA4683A8,0x84530ADB4A502D6E 
.quad 0xFB7997BE77856D92,0xF9D051A0FB768F71,0xDAC14812B370ACF,0xC4BCEFE6A5B78310 
.quad 0x661F279E970400FF,0xB61117429E0FAD42,0x511586409A8B182F,0x43640CDA1CD63586 
.quad 0xF3924E59A2AFFCB0,0x9C117DD6D5390FB,0x53BDAD5DB6E3F210,0x9B3908337C3FCE94 
.quad 0x90F049B459104597,0x26650A3BB26C86B6,0xC447D91852630BDD,0x5E7717415B4CA2B9 

.p_minus_1_halves:
.quad 0xE8FE7A3B0273CDE5,0xE9B4DC9F13BDC33F,0x5C49DA6D6D28AED5,0x6A504828A84DF876 
.quad 0xA329AEC496DAE2FB,0x752B0EAB57C3E80,0x77311AF828BB1C2E,0x26ACEC6F645C46C5 
.quad 0x8E995BCF9970A66B,0xEBC37476EB87CEA7,0x67C6E01BA3745096,0x7D979B8F0364E9D5 
.quad 0xB4698652CE71A12E,0xCB9EE4267FABBE2D,0xE67408B6BAB64482,0x5830ECAE57E09495 
.quad 0xB5817A7ECE9AFECF,0x8860B32EBFD8DCE3,0x7164EBF9716DED25,0x9FCE969F0AF68DB0 
.quad 0x49C7A7EE3210AF2D,0xDECD2B38D30EAF04,0x4BB06D91062FAC25,0xA21570687591A42E 
.quad 0xCF1927730760A944,0x1316C3DB9FA52AFE,0x34736225A6AE9363,0xD8CE46C535FF003E 
.quad 0x6A93D9224AD81560,0xCEC20F68E1D937E,0xE944BB72CCEC7C97,0xB42AECBDD4EDB1EC 
.quad 0x6DFB934ECC9BB076,0xE1BD124B6B50321D,0x155F56E144B89522,0x985456C32673E7F5 
.quad 0x8C5836D6229F7342,0xDC242A17B197CAF7,0x85412EA4749E8B51,0x95D25062613B2F98 
.quad 0x7DBF47C18A6A2228,0xBBF4459FAD56E290,0x3ABDBD8751C1C8FA,0x65D3DCD9B88448F3 
.quad 0xEF78D6811737655B,0x4C2D35A3DF373C10,0x61924EA7752341D4,0x4229856DA52816B7 
.quad 0xFDBCCBDF3BC2B6C9,0xFCE828D07DBB47B8,0x6D60A40959B8567,0xE25E77F352DBC188 
.quad 0x330F93CF4B82007F,0xDB088BA14F07D6A1,0x288AC3204D458C17,0x21B2066D0E6B1AC3 
.quad 0xF9C9272CD157FE58,0x4E08BEEB6A9C87D,0x29DED6AEDB71F908,0xCD9C8419BE1FE74A 
.quad 0x487824DA2C8822CB,0x9332851DD936435B,0xE223EC8C293185EE,0x2F3B8BA0ADA6515C 

.p_plus_1_4:
.quad 0xf47f3d1d8139e6f3, 0xf4da6e4f89dee19f, 0x2e24ed36b694576a, 0xb52824145426fc3b
.quad 0x5194d7624b6d717d, 0x03a958755abe1f40, 0xbb988d7c145d8e17, 0x93567637b22e2362
.quad 0xc74cade7ccb85335, 0x75e1ba3b75c3e753, 0xb3e3700dd1ba284b, 0x3ecbcdc781b274ea
.quad 0xda34c3296738d097, 0x65cf72133fd5df16, 0xf33a045b5d5b2241, 0xac1876572bf04a4a
.quad 0xdac0bd3f674d7f67, 0xc43059975fec6e71, 0x38b275fcb8b6f692, 0xcfe74b4f857b46d8
.quad 0x24e3d3f719085796, 0xef66959c69875782, 0x25d836c88317d612, 0x510ab8343ac8d217
.quad 0x678c93b983b054a2, 0x898b61edcfd2957f, 0x1a39b112d35749b1, 0x6c6723629aff801f
.quad 0x3549ec91256c0ab0, 0x8676107b470ec9bf, 0x74a25db966763e4b, 0x5a15765eea76d8f6
.quad 0xb6fdc9a7664dd83b, 0x70de8925b5a8190e, 0x8aafab70a25c4a91, 0x4c2a2b619339f3fa
.quad 0xc62c1b6b114fb9a1, 0xee12150bd8cbe57b, 0x42a097523a4f45a8, 0x4ae92831309d97cc
.quad 0x3edfa3e0c5351114, 0x5dfa22cfd6ab7148, 0x9d5edec3a8e0e47d, 0xb2e9ee6cdc422479
.quad 0x77bc6b408b9bb2ad, 0x26169ad1ef9b9e08, 0xb0c92753ba91a0ea, 0xa114c2b6d2940b5b
.quad 0x7ede65ef9de15b64, 0xfe7414683edda3dc, 0x036b05204acdc2b3, 0xf12f3bf9a96de0c4
.quad 0x9987c9e7a5c1003f, 0xed8445d0a783eb50, 0x9445619026a2c60b, 0x10d9033687358d61
.quad 0xfce4939668abff2c, 0x027045f75b54e43e, 0x14ef6b576db8fc84, 0xe6ce420cdf0ff3a5
.quad 0xa43c126d16441165, 0x4999428eec9b21ad, 0x7111f6461498c2f7, 0x179dc5d056d328ae




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
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    mov rdi, [rbp +  192]
    sbb rdi, [rip + p +  192]
    mov rsi, [rbp +  200]
    sbb rsi, [rip + p +  200]
    mov rdx, [rbp +  208]
    sbb rdx, [rip + p +  208]
    mov rcx, [rbp +  216]
    sbb rcx, [rip + p +  216]
    mov r8, [rbp +  224]
    sbb r8, [rip + p +  224]
    mov r9, [rbp +  232]
    sbb r9, [rip + p +  232]
    mov r10, [rbp +  240]
    sbb r10, [rip + p +  240]
    mov r11, [rbp +  248]
    sbb r11, [rip + p +  248]

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    mov rdi, [rbp +  320]
    sbb rdi, [rip + p +  320]
    mov rsi, [rbp +  328]
    sbb rsi, [rip + p +  328]
    mov rdx, [rbp +  336]
    sbb rdx, [rip + p +  336]
    mov rcx, [rbp +  344]
    sbb rcx, [rip + p +  344]
    mov r8, [rbp +  352]
    sbb r8, [rip + p +  352]
    mov r9, [rbp +  360]
    sbb r9, [rip + p +  360]
    mov r10, [rbp +  368]
    sbb r10, [rip + p +  368]
    mov r11, [rbp +  376]
    sbb r11, [rip + p +  376]

    mov rdi, [rbp +  384]
    sbb rdi, [rip + p +  384]
    mov rsi, [rbp +  392]
    sbb rsi, [rip + p +  392]
    mov rdx, [rbp +  400]
    sbb rdx, [rip + p +  400]
    mov rcx, [rbp +  408]
    sbb rcx, [rip + p +  408]
    mov r8, [rbp +  416]
    sbb r8, [rip + p +  416]
    mov r9, [rbp +  424]
    sbb r9, [rip + p +  424]
    mov r10, [rbp +  432]
    sbb r10, [rip + p +  432]
    mov r11, [rbp +  440]
    sbb r11, [rip + p +  440]

    mov rdi, [rbp +  448]
    sbb rdi, [rip + p +  448]
    mov rsi, [rbp +  456]
    sbb rsi, [rip + p +  456]
    mov rdx, [rbp +  464]
    sbb rdx, [rip + p +  464]
    mov rcx, [rbp +  472]
    sbb rcx, [rip + p +  472]
    mov r8, [rbp +  480]
    sbb r8, [rip + p +  480]
    mov r9, [rbp +  488]
    sbb r9, [rip + p +  488]
    mov r10, [rbp +  496]
    sbb r10, [rip + p +  496]
    mov r11, [rbp +  504]
    sbb r11, [rip + p +  504]


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


    cswap2 rdi, [rbp +  448]
    cswap2 rsi, [rbp +  456]
    cswap2 rdx, [rbp +  464]
    cswap2 rcx, [rbp +  472]
    cswap2 r8, [rbp +  480]
    cswap2 r9, [rbp +  488]
    cswap2 r10, [rbp +  496]
    cswap2 r11, [rbp +  504]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    mov rdi, [rbp +  192]
    sbb rdi, [rip + p +  192]
    mov rsi, [rbp +  200]
    sbb rsi, [rip + p +  200]
    mov rdx, [rbp +  208]
    sbb rdx, [rip + p +  208]
    mov rcx, [rbp +  216]
    sbb rcx, [rip + p +  216]
    mov r8, [rbp +  224]
    sbb r8, [rip + p +  224]
    mov r9, [rbp +  232]
    sbb r9, [rip + p +  232]
    mov r10, [rbp +  240]
    sbb r10, [rip + p +  240]
    mov r11, [rbp +  248]
    sbb r11, [rip + p +  248]

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    mov rdi, [rbp +  320]
    sbb rdi, [rip + p +  320]
    mov rsi, [rbp +  328]
    sbb rsi, [rip + p +  328]
    mov rdx, [rbp +  336]
    sbb rdx, [rip + p +  336]
    mov rcx, [rbp +  344]
    sbb rcx, [rip + p +  344]
    mov r8, [rbp +  352]
    sbb r8, [rip + p +  352]
    mov r9, [rbp +  360]
    sbb r9, [rip + p +  360]
    mov r10, [rbp +  368]
    sbb r10, [rip + p +  368]
    mov r11, [rbp +  376]
    sbb r11, [rip + p +  376]

    mov rdi, [rbp +  384]
    sbb rdi, [rip + p +  384]
    mov rsi, [rbp +  392]
    sbb rsi, [rip + p +  392]
    mov rdx, [rbp +  400]
    sbb rdx, [rip + p +  400]
    mov rcx, [rbp +  408]
    sbb rcx, [rip + p +  408]
    mov r8, [rbp +  416]
    sbb r8, [rip + p +  416]
    mov r9, [rbp +  424]
    sbb r9, [rip + p +  424]
    mov r10, [rbp +  432]
    sbb r10, [rip + p +  432]
    mov r11, [rbp +  440]
    sbb r11, [rip + p +  440]

    cswap2 rdi, [rbp +  384]
    cswap2 rsi, [rbp +  392]
    cswap2 rdx, [rbp +  400]
    cswap2 rcx, [rbp +  408]
    cswap2 r8, [rbp +  416]
    cswap2 r9, [rbp +  424]
    cswap2 r10, [rbp +  432]
    cswap2 r11, [rbp +  440]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    mov rdi, [rbp +  192]
    sbb rdi, [rip + p +  192]
    mov rsi, [rbp +  200]
    sbb rsi, [rip + p +  200]
    mov rdx, [rbp +  208]
    sbb rdx, [rip + p +  208]
    mov rcx, [rbp +  216]
    sbb rcx, [rip + p +  216]
    mov r8, [rbp +  224]
    sbb r8, [rip + p +  224]
    mov r9, [rbp +  232]
    sbb r9, [rip + p +  232]
    mov r10, [rbp +  240]
    sbb r10, [rip + p +  240]
    mov r11, [rbp +  248]
    sbb r11, [rip + p +  248]

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    mov rdi, [rbp +  320]
    sbb rdi, [rip + p +  320]
    mov rsi, [rbp +  328]
    sbb rsi, [rip + p +  328]
    mov rdx, [rbp +  336]
    sbb rdx, [rip + p +  336]
    mov rcx, [rbp +  344]
    sbb rcx, [rip + p +  344]
    mov r8, [rbp +  352]
    sbb r8, [rip + p +  352]
    mov r9, [rbp +  360]
    sbb r9, [rip + p +  360]
    mov r10, [rbp +  368]
    sbb r10, [rip + p +  368]
    mov r11, [rbp +  376]
    sbb r11, [rip + p +  376]

    cswap2 rdi, [rbp +  320]
    cswap2 rsi, [rbp +  328]
    cswap2 rdx, [rbp +  336]
    cswap2 rcx, [rbp +  344]
    cswap2 r8, [rbp +  352]
    cswap2 r9, [rbp +  360]
    cswap2 r10, [rbp +  368]
    cswap2 r11, [rbp +  376]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    mov rdi, [rbp +  192]
    sbb rdi, [rip + p +  192]
    mov rsi, [rbp +  200]
    sbb rsi, [rip + p +  200]
    mov rdx, [rbp +  208]
    sbb rdx, [rip + p +  208]
    mov rcx, [rbp +  216]
    sbb rcx, [rip + p +  216]
    mov r8, [rbp +  224]
    sbb r8, [rip + p +  224]
    mov r9, [rbp +  232]
    sbb r9, [rip + p +  232]
    mov r10, [rbp +  240]
    sbb r10, [rip + p +  240]
    mov r11, [rbp +  248]
    sbb r11, [rip + p +  248]

    mov rdi, [rbp +  256]
    sbb rdi, [rip + p +  256]
    mov rsi, [rbp +  264]
    sbb rsi, [rip + p +  264]
    mov rdx, [rbp +  272]
    sbb rdx, [rip + p +  272]
    mov rcx, [rbp +  280]
    sbb rcx, [rip + p +  280]
    mov r8, [rbp +  288]
    sbb r8, [rip + p +  288]
    mov r9, [rbp +  296]
    sbb r9, [rip + p +  296]
    mov r10, [rbp +  304]
    sbb r10, [rip + p +  304]
    mov r11, [rbp +  312]
    sbb r11, [rip + p +  312]

    cswap2 rdi, [rbp +  256]
    cswap2 rsi, [rbp +  264]
    cswap2 rdx, [rbp +  272]
    cswap2 rcx, [rbp +  280]
    cswap2 r8, [rbp +  288]
    cswap2 r9, [rbp +  296]
    cswap2 r10, [rbp +  304]
    cswap2 r11, [rbp +  312]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    mov rdi, [rbp +  192]
    sbb rdi, [rip + p +  192]
    mov rsi, [rbp +  200]
    sbb rsi, [rip + p +  200]
    mov rdx, [rbp +  208]
    sbb rdx, [rip + p +  208]
    mov rcx, [rbp +  216]
    sbb rcx, [rip + p +  216]
    mov r8, [rbp +  224]
    sbb r8, [rip + p +  224]
    mov r9, [rbp +  232]
    sbb r9, [rip + p +  232]
    mov r10, [rbp +  240]
    sbb r10, [rip + p +  240]
    mov r11, [rbp +  248]
    sbb r11, [rip + p +  248]

    cswap2 rdi, [rbp +  192]
    cswap2 rsi, [rbp +  200]
    cswap2 rdx, [rbp +  208]
    cswap2 rcx, [rbp +  216]
    cswap2 r8, [rbp +  224]
    cswap2 r9, [rbp +  232]
    cswap2 r10, [rbp +  240]
    cswap2 r11, [rbp +  248]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    mov rdi, [rbp +  128]
    sbb rdi, [rip + p +  128]
    mov rsi, [rbp +  136]
    sbb rsi, [rip + p +  136]
    mov rdx, [rbp +  144]
    sbb rdx, [rip + p +  144]
    mov rcx, [rbp +  152]
    sbb rcx, [rip + p +  152]
    mov r8, [rbp +  160]
    sbb r8, [rip + p +  160]
    mov r9, [rbp +  168]
    sbb r9, [rip + p +  168]
    mov r10, [rbp +  176]
    sbb r10, [rip + p +  176]
    mov r11, [rbp +  184]
    sbb r11, [rip + p +  184]

    cswap2 rdi, [rbp +  128]
    cswap2 rsi, [rbp +  136]
    cswap2 rdx, [rbp +  144]
    cswap2 rcx, [rbp +  152]
    cswap2 r8, [rbp +  160]
    cswap2 r9, [rbp +  168]
    cswap2 r10, [rbp +  176]
    cswap2 r11, [rbp +  184]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    mov rdi, [rbp +  64]
    sbb rdi, [rip + p +  64]
    mov rsi, [rbp +  72]
    sbb rsi, [rip + p +  72]
    mov rdx, [rbp +  80]
    sbb rdx, [rip + p +  80]
    mov rcx, [rbp +  88]
    sbb rcx, [rip + p +  88]
    mov r8, [rbp +  96]
    sbb r8, [rip + p +  96]
    mov r9, [rbp +  104]
    sbb r9, [rip + p +  104]
    mov r10, [rbp +  112]
    sbb r10, [rip + p +  112]
    mov r11, [rbp +  120]
    sbb r11, [rip + p +  120]

    cswap2 rdi, [rbp +  64]
    cswap2 rsi, [rbp +  72]
    cswap2 rdx, [rbp +  80]
    cswap2 rcx, [rbp +  88]
    cswap2 r8, [rbp +  96]
    cswap2 r9, [rbp +  104]
    cswap2 r10, [rbp +  112]
    cswap2 r11, [rbp +  120]

    mov rdi, [rbp +  0]
    sub   rdi, [rip + p +  0]
    mov rsi, [rbp +  8]
    sbb rsi, [rip + p +  8]
    mov rdx, [rbp +  16]
    sbb rdx, [rip + p +  16]
    mov rcx, [rbp +  24]
    sbb rcx, [rip + p +  24]
    mov r8, [rbp +  32]
    sbb r8, [rip + p +  32]
    mov r9, [rbp +  40]
    sbb r9, [rip + p +  40]
    mov r10, [rbp +  48]
    sbb r10, [rip + p +  48]
    mov r11, [rbp +  56]
    sbb r11, [rip + p +  56]

    cswap2 rdi, [rbp +  0]
    cswap2 rsi, [rbp +  8]
    cswap2 rdx, [rbp +  16]
    cswap2 rcx, [rbp +  24]
    cswap2 r8, [rbp +  32]
    cswap2 r9, [rbp +  40]
    cswap2 r10, [rbp +  48]
    cswap2 r11, [rbp +  56]
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


  sub rsp, 528
  mov [rsp+ 520],rdi
  mov rdi,rsi
  mov rsi,rdx


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
  mov [rsp+136],rax
  mov [rsp+144],rax
  mov [rsp+152],rax
  mov [rsp+160],rax
  mov [rsp+168],rax
  mov [rsp+176],rax
  mov [rsp+184],rax
  mov [rsp+192],rax
  mov [rsp+200],rax
  mov [rsp+208],rax
  mov [rsp+216],rax
  mov [rsp+224],rax
  mov [rsp+232],rax
  mov [rsp+240],rax
  mov [rsp+248],rax
  mov [rsp+256],rax
  mov [rsp+264],rax
  mov [rsp+272],rax
  mov [rsp+280],rax
  mov [rsp+288],rax
  mov [rsp+296],rax
  mov [rsp+304],rax
  mov [rsp+312],rax
  mov [rsp+320],rax
  mov [rsp+328],rax
  mov [rsp+336],rax
  mov [rsp+344],rax
  mov [rsp+352],rax
  mov [rsp+360],rax
  mov [rsp+368],rax
  mov [rsp+376],rax
  mov [rsp+384],rax
  mov [rsp+392],rax
  mov [rsp+400],rax
  mov [rsp+408],rax
  mov [rsp+416],rax
  mov [rsp+424],rax
  mov [rsp+432],rax
  mov [rsp+440],rax
  mov [rsp+448],rax
  mov [rsp+456],rax
  mov [rsp+464],rax
  mov [rsp+472],rax
  mov [rsp+480],rax
  mov [rsp+488],rax
  mov [rsp+496],rax
  mov [rsp+504],rax
  mov [rsp+512],rax


.macro MULSTEP, k,I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32,I33,I34,I35,I36,I37,I38,I39,I40,I41,I42,I43,I44,I45,I46,I47,I48,I49,I50,I51,I52,I53,I54,I55,I56,I57,I58,I59,I60,I61,I62,I63,I64

    mov r11,[rsp+\I0]
    mov rdx, [rsi +  0]
    mulx rcx, rdx, [rdi + 8*\k]
    add rdx, r11
    mulx rcx, rdx, [rip + .inv_min_p_mod_r]

    xor rax, rax /* clear flags */


    mulx rbx, rax, [rip + p +  0]
    adox r11, rax
    mov [rsp+\I0], r11

    mov r11,[rsp+\I1]
    mulx rcx, rax, [rip + p +  8]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I1],r11

    mov r11,[rsp+\I2]
    mulx rbx, rax, [rip + p +  16]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rip + p +  24]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rip + p +  32]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rip + p +  40]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rip + p +  48]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rip + p +  56]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rip + p +  64]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rip + p +  72]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rip + p +  80]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rip + p +  88]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rip + p +  96]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rip + p +  104]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rip + p +  112]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rip + p +  120]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mulx rbx, rax, [rip + p +  128]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I16],r11

    mov r11,[rsp+\I17]
    mulx rcx, rax, [rip + p +  136]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I17],r11

    mov r11,[rsp+\I18]
    mulx rbx, rax, [rip + p +  144]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I18],r11

    mov r11,[rsp+\I19]
    mulx rcx, rax, [rip + p +  152]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I19],r11

    mov r11,[rsp+\I20]
    mulx rbx, rax, [rip + p +  160]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I20],r11

    mov r11,[rsp+\I21]
    mulx rcx, rax, [rip + p +  168]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I21],r11

    mov r11,[rsp+\I22]
    mulx rbx, rax, [rip + p +  176]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I22],r11

    mov r11,[rsp+\I23]
    mulx rcx, rax, [rip + p +  184]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I23],r11

    mov r11,[rsp+\I24]
    mulx rbx, rax, [rip + p +  192]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I24],r11

    mov r11,[rsp+\I25]
    mulx rcx, rax, [rip + p +  200]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I25],r11

    mov r11,[rsp+\I26]
    mulx rbx, rax, [rip + p +  208]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I26],r11

    mov r11,[rsp+\I27]
    mulx rcx, rax, [rip + p +  216]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I27],r11

    mov r11,[rsp+\I28]
    mulx rbx, rax, [rip + p +  224]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I28],r11

    mov r11,[rsp+\I29]
    mulx rcx, rax, [rip + p +  232]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I29],r11

    mov r11,[rsp+\I30]
    mulx rbx, rax, [rip + p +  240]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I30],r11

    mov r11,[rsp+\I31]
    mulx rcx, rax, [rip + p +  248]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I31],r11

    mov r11,[rsp+\I32]
    mulx rbx, rax, [rip + p +  256]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I32],r11

    mov r11,[rsp+\I33]
    mulx rcx, rax, [rip + p +  264]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I33],r11

    mov r11,[rsp+\I34]
    mulx rbx, rax, [rip + p +  272]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I34],r11

    mov r11,[rsp+\I35]
    mulx rcx, rax, [rip + p +  280]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I35],r11

    mov r11,[rsp+\I36]
    mulx rbx, rax, [rip + p +  288]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I36],r11

    mov r11,[rsp+\I37]
    mulx rcx, rax, [rip + p +  296]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I37],r11

    mov r11,[rsp+\I38]
    mulx rbx, rax, [rip + p +  304]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I38],r11

    mov r11,[rsp+\I39]
    mulx rcx, rax, [rip + p +  312]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I39],r11

    mov r11,[rsp+\I40]
    mulx rbx, rax, [rip + p +  320]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I40],r11

    mov r11,[rsp+\I41]
    mulx rcx, rax, [rip + p +  328]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I41],r11

    mov r11,[rsp+\I42]
    mulx rbx, rax, [rip + p +  336]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I42],r11

    mov r11,[rsp+\I43]
    mulx rcx, rax, [rip + p +  344]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I43],r11

    mov r11,[rsp+\I44]
    mulx rbx, rax, [rip + p +  352]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I44],r11

    mov r11,[rsp+\I45]
    mulx rcx, rax, [rip + p +  360]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I45],r11

    mov r11,[rsp+\I46]
    mulx rbx, rax, [rip + p +  368]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I46],r11

    mov r11,[rsp+\I47]
    mulx rcx, rax, [rip + p +  376]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I47],r11

    mov r11,[rsp+\I48]
    mulx rbx, rax, [rip + p +  384]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I48],r11

    mov r11,[rsp+\I49]
    mulx rcx, rax, [rip + p +  392]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I49],r11

    mov r11,[rsp+\I50]
    mulx rbx, rax, [rip + p +  400]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I50],r11

    mov r11,[rsp+\I51]
    mulx rcx, rax, [rip + p +  408]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I51],r11

    mov r11,[rsp+\I52]
    mulx rbx, rax, [rip + p +  416]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I52],r11

    mov r11,[rsp+\I53]
    mulx rcx, rax, [rip + p +  424]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I53],r11

    mov r11,[rsp+\I54]
    mulx rbx, rax, [rip + p +  432]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I54],r11

    mov r11,[rsp+\I55]
    mulx rcx, rax, [rip + p +  440]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I55],r11

    mov r11,[rsp+\I56]
    mulx rbx, rax, [rip + p +  448]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I56],r11

    mov r11,[rsp+\I57]
    mulx rcx, rax, [rip + p +  456]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I57],r11

    mov r11,[rsp+\I58]
    mulx rbx, rax, [rip + p +  464]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I58],r11

    mov r11,[rsp+\I59]
    mulx rcx, rax, [rip + p +  472]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I59],r11

    mov r11,[rsp+\I60]
    mulx rbx, rax, [rip + p +  480]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I60],r11

    mov r11,[rsp+\I61]
    mulx rcx, rax, [rip + p +  488]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I61],r11

    mov r11,[rsp+\I62]
    mulx rbx, rax, [rip + p +  496]
    adcx r11, rcx
   adox r11, rax
    mov [rsp+\I62],r11

    mov r11,[rsp+\I63]
    mulx rcx, rax, [rip + p +  504]
    adcx r11, rbx
   adox r11, rax
    mov [rsp+\I63],r11


    mov r11,[rsp+\I64]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

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
    mulx rbx, rax, [rsi +  16]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I2],r11

    mov r11,[rsp+\I3]
    mulx rcx, rax, [rsi +  24]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I3],r11

    mov r11,[rsp+\I4]
    mulx rbx, rax, [rsi +  32]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I4],r11

    mov r11,[rsp+\I5]
    mulx rcx, rax, [rsi +  40]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I5],r11

    mov r11,[rsp+\I6]
    mulx rbx, rax, [rsi +  48]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I6],r11

    mov r11,[rsp+\I7]
    mulx rcx, rax, [rsi +  56]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I7],r11

    mov r11,[rsp+\I8]
    mulx rbx, rax, [rsi +  64]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I8],r11

    mov r11,[rsp+\I9]
    mulx rcx, rax, [rsi +  72]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I9],r11

    mov r11,[rsp+\I10]
    mulx rbx, rax, [rsi +  80]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I10],r11

    mov r11,[rsp+\I11]
    mulx rcx, rax, [rsi +  88]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I11],r11

    mov r11,[rsp+\I12]
    mulx rbx, rax, [rsi +  96]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I12],r11

    mov r11,[rsp+\I13]
    mulx rcx, rax, [rsi +  104]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I13],r11

    mov r11,[rsp+\I14]
    mulx rbx, rax, [rsi +  112]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I14],r11

    mov r11,[rsp+\I15]
    mulx rcx, rax, [rsi +  120]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I15],r11

    mov r11,[rsp+\I16]
    mulx rbx, rax, [rsi +  128]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I16],r11

    mov r11,[rsp+\I17]
    mulx rcx, rax, [rsi +  136]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I17],r11

    mov r11,[rsp+\I18]
    mulx rbx, rax, [rsi +  144]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I18],r11

    mov r11,[rsp+\I19]
    mulx rcx, rax, [rsi +  152]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I19],r11

    mov r11,[rsp+\I20]
    mulx rbx, rax, [rsi +  160]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I20],r11

    mov r11,[rsp+\I21]
    mulx rcx, rax, [rsi +  168]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I21],r11

    mov r11,[rsp+\I22]
    mulx rbx, rax, [rsi +  176]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I22],r11

    mov r11,[rsp+\I23]
    mulx rcx, rax, [rsi +  184]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I23],r11

    mov r11,[rsp+\I24]
    mulx rbx, rax, [rsi +  192]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I24],r11

    mov r11,[rsp+\I25]
    mulx rcx, rax, [rsi +  200]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I25],r11

    mov r11,[rsp+\I26]
    mulx rbx, rax, [rsi +  208]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I26],r11

    mov r11,[rsp+\I27]
    mulx rcx, rax, [rsi +  216]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I27],r11

    mov r11,[rsp+\I28]
    mulx rbx, rax, [rsi +  224]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I28],r11

    mov r11,[rsp+\I29]
    mulx rcx, rax, [rsi +  232]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I29],r11

    mov r11,[rsp+\I30]
    mulx rbx, rax, [rsi +  240]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I30],r11

    mov r11,[rsp+\I31]
    mulx rcx, rax, [rsi +  248]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I31],r11

    mov r11,[rsp+\I32]
    mulx rbx, rax, [rsi +  256]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

    mov r11,[rsp+\I33]
    mulx rcx, rax, [rsi +  264]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I33],r11

    mov r11,[rsp+\I34]
    mulx rbx, rax, [rsi +  272]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I34],r11

    mov r11,[rsp+\I35]
    mulx rcx, rax, [rsi +  280]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I35],r11

    mov r11,[rsp+\I36]
    mulx rbx, rax, [rsi +  288]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I36],r11

    mov r11,[rsp+\I37]
    mulx rcx, rax, [rsi +  296]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I37],r11

    mov r11,[rsp+\I38]
    mulx rbx, rax, [rsi +  304]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I38],r11

    mov r11,[rsp+\I39]
    mulx rcx, rax, [rsi +  312]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I39],r11

    mov r11,[rsp+\I40]
    mulx rbx, rax, [rsi +  320]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I40],r11

    mov r11,[rsp+\I41]
    mulx rcx, rax, [rsi +  328]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I41],r11

    mov r11,[rsp+\I42]
    mulx rbx, rax, [rsi +  336]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I42],r11

    mov r11,[rsp+\I43]
    mulx rcx, rax, [rsi +  344]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I43],r11

    mov r11,[rsp+\I44]
    mulx rbx, rax, [rsi +  352]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I44],r11

    mov r11,[rsp+\I45]
    mulx rcx, rax, [rsi +  360]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I45],r11

    mov r11,[rsp+\I46]
    mulx rbx, rax, [rsi +  368]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I46],r11

    mov r11,[rsp+\I47]
    mulx rcx, rax, [rsi +  376]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I47],r11

    mov r11,[rsp+\I48]
    mulx rbx, rax, [rsi +  384]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I48],r11

    mov r11,[rsp+\I49]
    mulx rcx, rax, [rsi +  392]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I49],r11

    mov r11,[rsp+\I50]
    mulx rbx, rax, [rsi +  400]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I50],r11

    mov r11,[rsp+\I51]
    mulx rcx, rax, [rsi +  408]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I51],r11

    mov r11,[rsp+\I52]
    mulx rbx, rax, [rsi +  416]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I52],r11

    mov r11,[rsp+\I53]
    mulx rcx, rax, [rsi +  424]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I53],r11

    mov r11,[rsp+\I54]
    mulx rbx, rax, [rsi +  432]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I54],r11

    mov r11,[rsp+\I55]
    mulx rcx, rax, [rsi +  440]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I55],r11

    mov r11,[rsp+\I56]
    mulx rbx, rax, [rsi +  448]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I56],r11

    mov r11,[rsp+\I57]
    mulx rcx, rax, [rsi +  456]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I57],r11

    mov r11,[rsp+\I58]
    mulx rbx, rax, [rsi +  464]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I58],r11

    mov r11,[rsp+\I59]
    mulx rcx, rax, [rsi +  472]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I59],r11

    mov r11,[rsp+\I60]
    mulx rbx, rax, [rsi +  480]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I60],r11

    mov r11,[rsp+\I61]
    mulx rcx, rax, [rsi +  488]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I61],r11

    mov r11,[rsp+\I62]
    mulx rbx, rax, [rsi +  496]
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I62],r11

    mov r11,[rsp+\I63]
    mulx rcx, rax, [rsi +  504]
    adcx r11, rbx
    adox r11, rax
    mov [rsp+\I63],r11

    mov r11,[rsp+\I64]
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I64],r11

.endm

MULSTEP 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0
MULSTEP 1, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8
MULSTEP 2, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16
MULSTEP 3, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24
MULSTEP 4, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32
MULSTEP 5, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40
MULSTEP 6, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48
MULSTEP 7, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56
MULSTEP 8, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64
MULSTEP 9, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72
MULSTEP 10, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80
MULSTEP 11, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88
MULSTEP 12, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96
MULSTEP 13, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104
MULSTEP 14, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112
MULSTEP 15, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120
MULSTEP 16, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128
MULSTEP 17, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136
MULSTEP 18, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144
MULSTEP 19, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152
MULSTEP 20, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160
MULSTEP 21, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168
MULSTEP 22, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176
MULSTEP 23, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184
MULSTEP 24, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192
MULSTEP 25, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200
MULSTEP 26, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208
MULSTEP 27, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216
MULSTEP 28, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224
MULSTEP 29, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232
MULSTEP 30, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240
MULSTEP 31, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248
MULSTEP 32, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256
MULSTEP 33, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264
MULSTEP 34, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272
MULSTEP 35, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280
MULSTEP 36, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288
MULSTEP 37, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296
MULSTEP 38, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304
MULSTEP 39, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312
MULSTEP 40, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320
MULSTEP 41, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328
MULSTEP 42, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336
MULSTEP 43, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344
MULSTEP 44, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352
MULSTEP 45, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360
MULSTEP 46, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368
MULSTEP 47, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376
MULSTEP 48, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384
MULSTEP 49, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392
MULSTEP 50, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400
MULSTEP 51, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408
MULSTEP 52, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416
MULSTEP 53, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424
MULSTEP 54, 440, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432
MULSTEP 55, 448, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440
MULSTEP 56, 456, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448
MULSTEP 57, 464, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456
MULSTEP 58, 472, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464
MULSTEP 59, 480, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472
MULSTEP 60, 488, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480
MULSTEP 61, 496, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488
MULSTEP 62, 504, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496
MULSTEP 63, 512, 0, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80, 88, 96, 104, 112, 120, 128, 136, 144, 152, 160, 168, 176, 184, 192, 200, 208, 216, 224, 232, 240, 248, 256, 264, 272, 280, 288, 296, 304, 312, 320, 328, 336, 344, 352, 360, 368, 376, 384, 392, 400, 408, 416, 424, 432, 440, 448, 456, 464, 472, 480, 488, 496, 504


    mov rdi,[rsp+520]

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
    mov r11,[rsp+128]
    mov [rdi+128],r11
    mov r11,[rsp+136]
    mov [rdi+136],r11
    mov r11,[rsp+144]
    mov [rdi+144],r11
    mov r11,[rsp+152]
    mov [rdi+152],r11
    mov r11,[rsp+160]
    mov [rdi+160],r11
    mov r11,[rsp+168]
    mov [rdi+168],r11
    mov r11,[rsp+176]
    mov [rdi+176],r11
    mov r11,[rsp+184]
    mov [rdi+184],r11
    mov r11,[rsp+192]
    mov [rdi+192],r11
    mov r11,[rsp+200]
    mov [rdi+200],r11
    mov r11,[rsp+208]
    mov [rdi+208],r11
    mov r11,[rsp+216]
    mov [rdi+216],r11
    mov r11,[rsp+224]
    mov [rdi+224],r11
    mov r11,[rsp+232]
    mov [rdi+232],r11
    mov r11,[rsp+240]
    mov [rdi+240],r11
    mov r11,[rsp+248]
    mov [rdi+248],r11
    mov r11,[rsp+256]
    mov [rdi+256],r11
    mov r11,[rsp+264]
    mov [rdi+264],r11
    mov r11,[rsp+272]
    mov [rdi+272],r11
    mov r11,[rsp+280]
    mov [rdi+280],r11
    mov r11,[rsp+288]
    mov [rdi+288],r11
    mov r11,[rsp+296]
    mov [rdi+296],r11
    mov r11,[rsp+304]
    mov [rdi+304],r11
    mov r11,[rsp+312]
    mov [rdi+312],r11
    mov r11,[rsp+320]
    mov [rdi+320],r11
    mov r11,[rsp+328]
    mov [rdi+328],r11
    mov r11,[rsp+336]
    mov [rdi+336],r11
    mov r11,[rsp+344]
    mov [rdi+344],r11
    mov r11,[rsp+352]
    mov [rdi+352],r11
    mov r11,[rsp+360]
    mov [rdi+360],r11
    mov r11,[rsp+368]
    mov [rdi+368],r11
    mov r11,[rsp+376]
    mov [rdi+376],r11
    mov r11,[rsp+384]
    mov [rdi+384],r11
    mov r11,[rsp+392]
    mov [rdi+392],r11
    mov r11,[rsp+400]
    mov [rdi+400],r11
    mov r11,[rsp+408]
    mov [rdi+408],r11
    mov r11,[rsp+416]
    mov [rdi+416],r11
    mov r11,[rsp+424]
    mov [rdi+424],r11
    mov r11,[rsp+432]
    mov [rdi+432],r11
    mov r11,[rsp+440]
    mov [rdi+440],r11
    mov r11,[rsp+448]
    mov [rdi+448],r11
    mov r11,[rsp+456]
    mov [rdi+456],r11
    mov r11,[rsp+464]
    mov [rdi+464],r11
    mov r11,[rsp+472]
    mov [rdi+472],r11
    mov r11,[rsp+480]
    mov [rdi+480],r11
    mov r11,[rsp+488]
    mov [rdi+488],r11
    mov r11,[rsp+496]
    mov [rdi+496],r11
    mov r11,[rsp+504]
    mov [rdi+504],r11
    add rsp,528

    pop rbx
    pop rbp

    jmp .reduce_once


.global fp_sq1
fp_sq1:
    mov rsi, rdi
.global fp_sq2
fp_sq2:
    mov rdx, rsi

    jmp fp_mul3

.global fp_pow
fp_pow:
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
    POWSTEP 16
    POWSTEP 17
    POWSTEP 18
    POWSTEP 19
    POWSTEP 20
    POWSTEP 21
    POWSTEP 22
    POWSTEP 23
    POWSTEP 24
    POWSTEP 25
    POWSTEP 26
    POWSTEP 27
    POWSTEP 28
    POWSTEP 29
    POWSTEP 30
    POWSTEP 31
    POWSTEP 32
    POWSTEP 33
    POWSTEP 34
    POWSTEP 35
    POWSTEP 36
    POWSTEP 37
    POWSTEP 38
    POWSTEP 39
    POWSTEP 40
    POWSTEP 41
    POWSTEP 42
    POWSTEP 43
    POWSTEP 44
    POWSTEP 45
    POWSTEP 46
    POWSTEP 47
    POWSTEP 48
    POWSTEP 49
    POWSTEP 50
    POWSTEP 51
    POWSTEP 52
    POWSTEP 53
    POWSTEP 54
    POWSTEP 55
    POWSTEP 56
    POWSTEP 57
    POWSTEP 58
    POWSTEP 59
    POWSTEP 60
    POWSTEP 61
    POWSTEP 62
    POWSTEP 63
    add rsp, pbytes+8
    pop r13
    pop r12
    pop rbx
    ret



.global fp_inv
fp_inv:
    lea rsi, [rip + .p_minus_2]
    jmp fp_pow

.global fp_sqrt
fp_sqrt:
    lea rsi, [rip + .p_plus_1_4]
    jmp fp_pow

.global fp_sqrtcheck
fp_sqrtcheck:
    lea rsi, [rip + .p_minus_1_halves]
    jmp fp_pow


.global fp_issquare
fp_issquare:
    push rdi
    lea rsi, [rip + .p_minus_1_halves]
    call fp_pow
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
