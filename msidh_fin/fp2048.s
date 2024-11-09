.intel_syntax noprefix

.section .rodata
/*2304*/
.set pbits,2017
.set pbytes,256
.set plimbs,32

.set abits,1013
.set abytes,128
.set alimbs,16

.set bbits,1005
.set bbytes,128
.set blimbs,16

p:
.quad 0x14b562cb1f08a473, 0x2b51e84ed035ce66, 0x63e0cf51a42ae578, 0xe364829fef8cb488
.quad 0xbb991519004ffa09, 0xa9d906b76a4503ad, 0x941036bc75e0cdbb, 0x0ba6f2ab66e5a771
.quad 0x1e1620c557ffd5ef, 0x28479bcd03f64f44, 0x6b8be3f150fd3e32, 0x35ffe4096414d201
.quad 0xc1eb4d56a85854e0, 0x7a9f05bdaad5e0b5, 0x5c5f97c352d03d77, 0xb52359a13cf7ff91
.quad 0x9958534ecb49f86a, 0x3d3ab1d31f5d6184, 0xc7a6a334377f6e1d, 0xd3aac63e132f0460
.quad 0x468ace041f16d402, 0x1636e2ba489f9e4f, 0x283b9e6bd17988e1, 0x823e85ff7ea28efa
.quad 0x39abe0a5181aebf6, 0x9b51e8de3f993611, 0x5d4d0c8de36b3fcb, 0x686b7447d833bc1b
.quad 0x41500ff9751b564a, 0x762bdba17978ccec, 0x029e71c9ab7e6671, 0x00000001da6a7f9c

.inv_min_p_mod_r: /* -p^-1 mod 2^64 */
    .quad 0x281e258337875f45




/*generator points*/
.global fp_pax0
fp_pax0: 
.quad 0xa6736dff04da1e4f, 0x158362fb21a2acb3, 0x810ceee67e252ade, 0x9e9168e7294c8738
.quad 0x998a52b436532ba0, 0x2fac0dfe2424124d, 0xaefbd0812bb6332b, 0x34eaab633e8cb142
.quad 0x4176051df8ed82b3, 0xa30999fb6e71df82, 0xd925e76f7be75682, 0x2a865472a1de0401
.quad 0x7ac58d685222ed3a, 0xba750f16d532df2f, 0x6743baf0008e7ec2, 0x542a07b1022490c5
.quad 0xc76ff916401f97b5, 0x765d6162d0baa242, 0x531c5ff550e9b7d8, 0xfc4a145bc84b6488
.quad 0x4daeb0f53b487af4, 0x143563e0871f8308, 0xd4477941ec8b065b, 0xae3f2fa8a8c34ab4
.quad 0x154c12f6fc20bbd7, 0x07499e45dea3f3d8, 0xc9a8bde75db1b004, 0x2205c5b38c78343a
.quad 0x926450f79e7c4737, 0xebfd468f8cf348c9, 0x70ba346ce784626a, 0x0000000012774769

.global fp_pax1
fp_pax1: 
.quad 0xc52f5861e79bd7d4, 0x33c870fad03f49ce, 0xaa08ab3891601cec, 0xfc7900a9e82192eb
.quad 0x035daa9792b70522, 0x11690d5789c18a54, 0xe5168c4247d6d09f, 0xb05bc5e33dca6241
.quad 0xf4cffd85d7bd8b41, 0xcb56513be29d047d, 0x7fc8fce1e790ae30, 0x04b6967d2f24c30f
.quad 0x3dc88e4d4e929ec2, 0x28a51959976e8194, 0xc32f420d04754f95, 0x2e5dac9300fb3dc1
.quad 0x7c4ea454f30f8c1a, 0x4f752afb16b79985, 0xaa29c364a1c29126, 0x3e13bca7ba970ec8
.quad 0x47072985a3cf61ae, 0xcd6ede4a9f962256, 0x97f1a55762d1a583, 0xe8b88a2cdfc98fd4
.quad 0x2f876c215a800d6a, 0x2a042d3526c928cf, 0xe5bbe74690189162, 0x0519973490aada93
.quad 0x291efe86232257f7, 0x221ec4c07f72826c, 0xc2fa3645b751d438, 0x00000000b65afc1c

.global fp_qax0
fp_qax0: 
.quad 0x3011e6cbadc083de, 0xf80a9bcc0b4caa48, 0x67806ecd3e90d85e, 0xc3b6d74b3fe42561
.quad 0x99fe1deb2cfc67a4, 0xe0dde86a4289ac67, 0x55a3bc8cd1722da1, 0xfdcf1e46940e0488
.quad 0xcd9c032b889c294a, 0x0997ed6049c1c5c3, 0x65881c1b75096b68, 0xb8f88c4939131b31
.quad 0x862afd44412e7698, 0x17badebbef69bb11, 0x808e0f05458b0183, 0xf711defdebf1b4cf
.quad 0x9d4720fb24acb0f5, 0x739eee09624a1d4f, 0x71c0e9d41dd7801d, 0xfba095046a136877
.quad 0xbb29563f4817caf7, 0xfb13717769fa58d5, 0x062cee28fde5fcb9, 0x331b5a4d655c17a0
.quad 0x197339445d4c87eb, 0x8b7443370bbd501a, 0xd912a7c4273085eb, 0x4ec7789fa14af9ac
.quad 0x186ce33799553824, 0xdbeeded5e1b6111a, 0x31a41177383d9e2e, 0x0000000005c04e21

.global fp_qax1
fp_qax1: 
.quad 0xc6f7f5b4ee119a4b, 0x500627b6c0170359, 0x5811fc6134d8f827, 0xbbfcafd232072193
.quad 0xfbbf32eb1f8f205f, 0x7ca411b208d28231, 0x4f55f58e99735635, 0x057e5df9ebdc43fc
.quad 0x05e8f5a884e3d890, 0x11e34a0f6343d1fb, 0x759800437eff57ed, 0xcc4f36dddf709f59
.quad 0xf0f041b4b84876aa, 0x68de671226f30f54, 0x1c4d629305e37eaa, 0x9a2454dc6012e30e
.quad 0x71a88d8187987555, 0x3fd26059613b3d21, 0x950a082403ba5412, 0x737db36bcd72a646
.quad 0xb043a9162554cc7d, 0x8f0f58b35d6eabc9, 0x57e6cceb977cb3d1, 0xb8698ba85f85b3e3
.quad 0x2a09599a019445b7, 0x9cf61a9a7ba7efd2, 0xdcb966031120e47e, 0x84b33ab079674586
.quad 0x9a442fee76516a39, 0xc14bee2ce7176f9b, 0x215cfad281f05dd0, 0x00000000382963d4

.global fp_rax0
fp_rax0: 
.quad 0x4d18b5ba560d7e2d, 0xf05c0174da0cb561, 0x4a506d8e14e10589, 0x6e74727139ec3592
.quad 0x85a4d6009287841c, 0xba58309f7b663658, 0x18285af92d7ed484, 0x68d256401858fd2e
.quad 0xf1fdabbe742732f9, 0xb4cd0d286c3d3b63, 0xc90e96779e10a1cc, 0xa8669d0ab8836084
.quad 0x4802432b8a643bcb, 0xe92e1ee42ffb2a53, 0x99eee564018143de, 0x83caedc92e7acf9b
.quad 0xed7a9d305e7598b9, 0xc221dc861a77093a, 0xcaf0897c2a129aef, 0x3212198c61b06ba2
.quad 0x506c3afd2df88506, 0x41641e3e77a10fe6, 0xdd1ccd3adad0e363, 0xa69da26e5d4eb308
.quad 0x37511cf31181dcb2, 0xcfb163424a9ae0df, 0xddc600101181f482, 0x3abe985d944a675f
.quad 0xe576e668e64e63a7, 0xf5034606af8d9e2a, 0x9280657b952e5831, 0x00000000cd2eb3d8

.global fp_rax1
fp_rax1: 
.quad 0x75815524f192769a, 0xc19398129d097590, 0xe5073b9b46ec5fc4, 0xf763714d6cd276e0
.quad 0xad0da044178b72e1, 0x99c3f75d704473c6, 0x3565e62465898575, 0xf36a52012876c8cf
.quad 0xe2f97ca20669ed7c, 0xfd7dc64865a5b162, 0xa4b41d56f41d3611, 0xc436ae492bcfdbe1
.quad 0xcd99f0fcb835cfc6, 0xe4a7e03be1150bec, 0x49018ac2278a2fed, 0xe5bb28ddecbe0697
.quad 0xe28f0ef4ff589996, 0x9ef1ccfd930f24a4, 0x7af2f148471bce81, 0xf2d5e2e28c729015
.quad 0x143205bf5256d45a, 0xb4c750d7c7d1a77f, 0x2d9da0162cf72fdc, 0x5c5df382b5118e66
.quad 0x8c2d97b772bb4a31, 0x3dac94781280a58e, 0x786c9497ba09afed, 0xcf8ba9416ab17af8
.quad 0xcec2b7c6829936d4, 0x6190f9d480179e7c, 0x4fa646b8bedc79f6, 0x00000000763a1a5d

.global fp_pbx0
fp_pbx0: 
.quad 0x4e4e5014bb7796e9, 0x6e3a6dfd6ba4713c, 0x7e8a86975f06ed40, 0x0671af8cf534288b
.quad 0x386917f7b8b9e32f, 0x4b5ebb0948079a89, 0x96f0edbf2a185b77, 0xc419df73b18f0860
.quad 0x745c8883ab3bdf69, 0x1d68c3b54a7f4c59, 0x990c725016b167bf, 0x38804a9c416ce3cb
.quad 0x58e5551031bc9005, 0xb5e98446e935ccb4, 0x57053cb60a64ce31, 0xf0d825860abc5733
.quad 0x63d3b0caee493f8c, 0x0f321e99baff8d61, 0xb7c57708b0eec6ef, 0x3c84a8b80333dccd
.quad 0xc0b2e7674b45044f, 0xe7f9243ef3d4828f, 0xa14be432ae7e4993, 0x39b379648568fca3
.quad 0x06a9ca939fcc6f6c, 0x00079d2784d67622, 0x1e9bd8d017895259, 0x7ffbbfd6cab92cea
.quad 0x872844c7bb3f779c, 0xf5c57a1ce77790e9, 0x79b6a68fd3e776aa, 0x000000007eb2f61e

.global fp_pbx1
fp_pbx1: 
.quad 0x083839ad0587302a, 0x0db854c84aa48113, 0x289d013836014e72, 0x37b9430c3674ea3e
.quad 0xf146c4380f7b73ad, 0xa1d307531dbc85f4, 0x1c5d0cf119c92291, 0x368856e6d30cba4d
.quad 0x38d23308f9e423cc, 0x71f96d3e08328c2e, 0x7e1ddc43a5563566, 0x198900a5cf2dee7d
.quad 0x7590f1440195934f, 0xd0de7a074d03e896, 0x5cdcc3cdee708b31, 0xaec942d4f3930ef3
.quad 0xb56d7225cbe01f70, 0x9fa8f72912d996b8, 0xa8f651592e5e489b, 0xac709c810852f595
.quad 0x2a5eafe61cced83d, 0x8f85289b63caaf76, 0x4cd4add343fb2d14, 0xbd7e2d010e9da042
.quad 0x1d46c4d2aad5e003, 0x5022ba6633f9b478, 0xc541a464ea52d4df, 0x2df41e18bad87716
.quad 0x50da2002bafd5b51, 0xc21b4f2234788162, 0x73a5b881451c5653, 0x000000010f7d7097

.global fp_qbx0
fp_qbx0: 
.quad 0xd87a478150f4f466, 0xe156afbf2555b3b7, 0x9d7e04be89ddf2ac, 0x9d9fd2a7f52daef6
.quad 0xf0436d673a3ed037, 0xfe748e751567b363, 0xa9a0d5f6137576b6, 0xfcb7b5f3adb0053e
.quad 0x044d5cdecc18f02e, 0x7ca5a377c7ffcf17, 0x059cbe1fa020c796, 0x382ee3fd871f35fd
.quad 0x4679c69243542d57, 0x668ccdc146bece75, 0x451c17392bd45404, 0x2375f523af0970c7
.quad 0x9c11763e7885d1a0, 0x9a63b897e1754805, 0x19b3f9c8ace923f1, 0xd684758ef29ee02c
.quad 0xc4682bdb79d17e5e, 0xa85b021d08900648, 0xef1cd03095264b78, 0xc197ecbe38a81ffa
.quad 0x14e4e9fcaf1bf5bc, 0xe30a7ffcd8fc8931, 0x6d202bed09dd1a79, 0xb6847bfcd482eaa8
.quad 0x858df9e3ec3a6046, 0x0d541e91d6141799, 0xf8479628c13e9e56, 0x000000006e65ce26

.global fp_qbx1
fp_qbx1: 
.quad 0xc961127770d4358d, 0x2cfb3b0f3da06402, 0x4efc0b95e21c6854, 0x3d505c80a7bca38c
.quad 0xd33a78a8703664c4, 0x1d54374cccbd7d88, 0x21615611aa344843, 0x46884231aa755ce4
.quad 0x3aa69f2afe5725c5, 0x0d70d7d5b08a95df, 0x3fdaa131f05e6c16, 0xce60c808f2b40e8c
.quad 0x7490d94ad0bc5773, 0x2f30089756f2286e, 0x076c7d87fcf1064c, 0xf4fe59bf5ff57d30
.quad 0x6cb06c606e77aade, 0x78dc0c7d36f242f1, 0x159fe346e4724b21, 0x81804b3f7937076b
.quad 0xdedaa6fd0bfa94fc, 0x49caed3f89b5943d, 0xc7299d5770c77015, 0x0de4ef85e879f22f
.quad 0xf0ea0394ff1b545b, 0x873d4f794a706c71, 0xa0cb053c5388ce45, 0x99d2ae8eef02ecc3
.quad 0xdaa87183f78f84dc, 0x38ceafa58857fe83, 0xaed29e9242405464, 0x000000009c17c266

.global fp_rbx0
fp_rbx0: 
.quad 0xc9fe5ca4197ca2a3, 0xc53bcd9e37aa933a, 0x2f555d81c9613afe, 0xcace64be2e70ec07
.quad 0x772a9a10154d29ac, 0x2e6b97e6611f3707, 0xa600d32a3c7f8cea, 0xa87e19946315cecb
.quad 0x3cacc9cdb503800d, 0xeb7ccac3fb6c6f29, 0x43669b2fb555dad0, 0x10a1eb30b9bafde7
.quad 0x4db4f2342f16412f, 0xa3d55a448a4a53bc, 0x0f41937f78067a39, 0xa0b7f51e2a5623b2
.quad 0x6b3066c7e0c667cb, 0x5d3fbee10f99d78d, 0x50663842b1a24211, 0x7e8922218af92842
.quad 0x1e44af5301dfe192, 0xb2e556786a9a6036, 0x21b1261779081fe6, 0x1e4e965430975e23
.quad 0x7dfa5674cdcc7a51, 0x17f93bf2df01d230, 0x88c60b292262abdf, 0x8a51b3b95f9b6066
.quad 0x31f74ab28c801d8e, 0xe4de7de3b325cd4d, 0x4546c3fdf88eedc0, 0x0000000090bc4134

.global fp_rbx1
fp_rbx1: 
.quad 0xc0e872f11623e325, 0xd7ebeec7908eb4f6, 0x21372b2ac13ed11b, 0xc2144cd8ae42b0ec
.quad 0x70d70bff952fc509, 0x6729e601de3870d5, 0xc7a039d113142482, 0xa1344c71e7ee2534
.quad 0xbc2121fe58ca5d1f, 0x56de7aba24c4112a, 0xd9487b4f723e507b, 0x31084be12bed3c91
.quad 0x0e11aad9624517be, 0x0db7a4fe1744fbfb, 0x7d8b8ff194b9b2f7, 0xf4a96c29d8093a3d
.quad 0x5ab4d160e7c96706, 0xa4c49f1ff63b70ac, 0xcad95dd2805300a5, 0x30dba191b0b5a557
.quad 0x8d10e88233aa75b8, 0xa663dd4eb75d1d3c, 0x3f12c3da09dfdb63, 0x6332ddbf827a9d0e
.quad 0x0d0bfd311526ddec, 0x8f72612d0846b35f, 0xd7ce41dade4069aa, 0xd8381f70019da003
.quad 0xd97a3328534a5518, 0x0406f7285e40ae0a, 0x10088aed4fb024a5, 0x0000000085743bce


.global fp_0
fp_0:
    .zero pbytes

.global fp_1
fp_1: /* 2^2048 mod p */
.quad 0xa67bbe8df0ff679f, 0x8bf186639cf6eb5d, 0x33482cf8872fe67f, 0xf493f6eb0e4deaf9
.quad 0xd5d78d99dd31a2fa, 0x24bc00e0c5a92aaa, 0x2feeaa8cdf345243, 0x3fac300c59862e76
.quad 0xd42f8e10c3492908, 0x26bacc871010d210, 0xb1c3111dbcf70dde, 0xaadb48de8cc7e9cc
.quad 0x1035a48765c39f14, 0x3b9a1b8c50bd6f5e, 0x10c9014fbf46d9f4, 0x018566b5fb9411e4
.quad 0xd6a1cf92d689762a, 0xeeb1f8e58aa9b904, 0xd2a98ef43c9c9b2d, 0x97c6bb461bda27d5
.quad 0x38675f29abe10195, 0x8da4e1f619686691, 0x600e159dc3070511, 0x67bde567241f7b0b
.quad 0x298c877a34af7440, 0x55c3e1a77a39320d, 0x596c71234360beb1, 0x259a49107ad3598c
.quad 0x096cab787eedcde5, 0x0fbc43f367a2f69d, 0x2fa695899c6a14af, 0x000000019884061a

.global fp_2inv
fp_2inv: /* (1/2)2^2048 mod p */
.quad 0xdd9890ac88040609, 0xdba1b75936965ce1, 0xcb947e2515ad65fb, 0x6bfc3cc57eed4fc0
.quad 0x48b851596ec0ce82, 0x674a83cc17f7172c, 0xe1ff70a4aa8a8fff, 0xa5a9915be035eaf3
.quad 0x7922d76b0da47f7b, 0x2781342a0a0390aa, 0x0ea77a8786fa2608, 0x706d9673f86e5de7
.quad 0xe91078ef070df9fa, 0xdb1c90a4fdc9a809, 0xb6944c89890b8bb5, 0x5b54602b9c4608ba
.quad 0xb7fd1170d0e9b74a, 0x95f6555c55038d44, 0x4d2819143a0e04a5, 0x35b8c0c21784961b
.quad 0x3f791696e57beacc, 0x51ede25831040270, 0xc424da04ca4046f9, 0x74fe35b351610502
.quad 0x319c340fa665301b, 0x788ae542dce9340f, 0xdb5cbed89365ff3e, 0xc702deac29838ad3
.quad 0xa55e5db8fa049217, 0x42f40fca708de1c4, 0x192283a9a3f43d90, 0x00000001b97742db

.global fp_sa
fp_sa: /* starting coefficiet */
.quad 0xd889d23d4f53f28b, 0x4b82cd0003d4b112, 0x173ef9200eeccc9a, 0xc351730500ca56dc
.quad 0xd75cc23360f566db, 0xccc1955866ec69a3, 0x8a23edb8f27b3e15, 0xf72b10f76071496f
.quad 0x089c51b0e9305646, 0x68c058ae91ece490, 0x21d6b1bbc42f345e, 0x437eb6c54b85aea3
.quad 0xafd9cb7f13b25d95, 0x31412c91a23a694b, 0x823b96a1b2e82890, 0x15ef10e0fdec83b8
.quad 0xa31a6b39c8680b30, 0x1bd1cfe4c935fc5d, 0xd638b5e748d65cd7, 0xd139acbaf2916301
.quad 0x37eeff5664bfab2d, 0x8195b199795324df, 0x9bc8b4e67e819223, 0x3d1aca5267ab0aad
.quad 0x8a63c9199632566c, 0x6a7431f5a199d9fb, 0x9cd09ec7e149f365, 0xc4093c258931126f
.quad 0x82a3f5057c59f891, 0xccf730aeda53a9e6, 0x3ef52d3e6d5589b4, 0x000000012e766788

/*not changed*/
.global fp_four_sqrt_p
fp_four_sqrt_p:
    .quad  0x7DEB9712E03151D9, 0xA78E5024D033F311, 0x74BF301A582C4178, 0xA4A7288B8FC0DBD2
    .quad  0x4857D796B39213B2, 0x399AB7DFCB36B9F8, 0x8122E0ABB643682C, 0x0002EBFC0AC2E3CB
    .zero 64

.r_squared_mod_p: /* (2^2048)^2 mod p */
.quad 0xe6a7e2f3049301cc, 0x7695dcd90411d36a, 0x979d085e565f9453, 0xcdd1687728ef4fc8
.quad 0xd095cc77f36d1f41, 0x4322ea824f58a656, 0xf9170827ceb886b5, 0x3c413eab1c270216
.quad 0x9e715c353591f50b, 0x4e25deb2847449f9, 0xf091754806e46eaf, 0x14fea8cc3916aee9
.quad 0x3bc6674eaf5ee023, 0x93c8a44f0b0371d5, 0x74cc6935eed7d080, 0x05c88d7e0eacdf95
.quad 0x451bae57658e7bea, 0x044b93cb2821863f, 0x459046fd0e5e809d, 0x722ba602baea35dc
.quad 0x24689b41429539c6, 0x088ee68cea3162a7, 0x8b95bd92b55a2dba, 0x41137fad13ae720f
.quad 0xf4f58af492712709, 0x487fd47d492d3c7c, 0x6b831e25e37a3021, 0x76a8c8a2c85cf8fa
.quad 0x2706ebcd0e5e29fc, 0x590d640a5cfcb21e, 0xe936cba85f0038f7, 0x00000000d7441cdf


.p_minus_2:
.quad 0x14b562cb1f08a471, 0x2b51e84ed035ce66, 0x63e0cf51a42ae578, 0xe364829fef8cb488
.quad 0xbb991519004ffa09, 0xa9d906b76a4503ad, 0x941036bc75e0cdbb, 0x0ba6f2ab66e5a771
.quad 0x1e1620c557ffd5ef, 0x28479bcd03f64f44, 0x6b8be3f150fd3e32, 0x35ffe4096414d201
.quad 0xc1eb4d56a85854e0, 0x7a9f05bdaad5e0b5, 0x5c5f97c352d03d77, 0xb52359a13cf7ff91
.quad 0x9958534ecb49f86a, 0x3d3ab1d31f5d6184, 0xc7a6a334377f6e1d, 0xd3aac63e132f0460
.quad 0x468ace041f16d402, 0x1636e2ba489f9e4f, 0x283b9e6bd17988e1, 0x823e85ff7ea28efa
.quad 0x39abe0a5181aebf6, 0x9b51e8de3f993611, 0x5d4d0c8de36b3fcb, 0x686b7447d833bc1b
.quad 0x41500ff9751b564a, 0x762bdba17978ccec, 0x029e71c9ab7e6671, 0x00000001da6a7f9c

.p_minus_1_halves:
.quad 0x0a5ab1658f845239, 0x15a8f427681ae733, 0x31f067a8d21572bc, 0xf1b2414ff7c65a44
.quad 0xddcc8a8c8027fd04, 0xd4ec835bb52281d6, 0xca081b5e3af066dd, 0x85d37955b372d3b8
.quad 0x0f0b1062abffeaf7, 0x1423cde681fb27a2, 0xb5c5f1f8a87e9f19, 0x1afff204b20a6900
.quad 0xe0f5a6ab542c2a70, 0xbd4f82ded56af05a, 0xae2fcbe1a9681ebb, 0x5a91acd09e7bffc8
.quad 0x4cac29a765a4fc35, 0x9e9d58e98faeb0c2, 0x63d3519a1bbfb70e, 0x69d5631f09978230
.quad 0xa34567020f8b6a01, 0x8b1b715d244fcf27, 0x141dcf35e8bcc470, 0x411f42ffbf51477d
.quad 0x9cd5f0528c0d75fb, 0xcda8f46f1fcc9b08, 0xaea68646f1b59fe5, 0x3435ba23ec19de0d
.quad 0x20a807fcba8dab25, 0xbb15edd0bcbc6676, 0x014f38e4d5bf3338, 0x00000000ed353fce

.p_plus_1_4:
.quad 0x852d58b2c7c2291d, 0x0ad47a13b40d7399, 0x18f833d4690ab95e, 0x78d920a7fbe32d22
.quad 0x6ee645464013fe82, 0xea7641adda9140eb, 0x65040daf1d78336e, 0xc2e9bcaad9b969dc
.quad 0x0785883155fff57b, 0x8a11e6f340fd93d1, 0x5ae2f8fc543f4f8c, 0x0d7ff90259053480
.quad 0x707ad355aa161538, 0xdea7c16f6ab5782d, 0x5717e5f0d4b40f5d, 0xad48d6684f3dffe4
.quad 0x265614d3b2d27e1a, 0x4f4eac74c7d75861, 0x31e9a8cd0ddfdb87, 0xb4eab18f84cbc118
.quad 0xd1a2b38107c5b500, 0x458db8ae9227e793, 0x8a0ee79af45e6238, 0xa08fa17fdfa8a3be
.quad 0x4e6af8294606bafd, 0xe6d47a378fe64d84, 0xd753432378dacff2, 0x9a1add11f60cef06
.quad 0x105403fe5d46d592, 0x5d8af6e85e5e333b, 0x00a79c726adf999c, 0x00000000769a9fe7




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


    setnc al
    movzx rax, al
    neg rax

.macro cswap2, r, m
    xor \r, \m
    and \r, rax
    xor \m, \r
.endm


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


  sub rsp, 272
  mov [rsp+ 264],rdi
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


.macro MULSTEP, k, I0,I1,I2,I3,I4,I5,I6,I7,I8,I9,I10,I11,I12,I13,I14,I15,I16,I17,I18,I19,I20,I21,I22,I23,I24,I25,I26,I27,I28,I29,I30,I31,I32

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
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

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
    mov rax, 0
    adcx r11, rcx
    adox r11, rax
    mov [rsp+\I32],r11

.endm

MULSTEP 0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0
MULSTEP 1,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8
MULSTEP 2,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16
MULSTEP 3,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24
MULSTEP 4,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32
MULSTEP 5,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40
MULSTEP 6,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48
MULSTEP 7,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56
MULSTEP 8,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64
MULSTEP 9,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72
MULSTEP 10,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80
MULSTEP 11,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88
MULSTEP 12,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96
MULSTEP 13,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104
MULSTEP 14,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112
MULSTEP 15,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120
MULSTEP 16,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128
MULSTEP 17,144,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136
MULSTEP 18,152,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144
MULSTEP 19,160,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152
MULSTEP 20,168,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160
MULSTEP 21,176,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168
MULSTEP 22,184,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176
MULSTEP 23,192,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184
MULSTEP 24,200,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192
MULSTEP 25,208,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200
MULSTEP 26,216,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208
MULSTEP 27,224,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216
MULSTEP 28,232,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224
MULSTEP 29,240,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232
MULSTEP 30,248,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240
MULSTEP 31,256,0,8,16,24,32,40,48,56,64,72,80,88,96,104,112,120,128,136,144,152,160,168,176,184,192,200,208,216,224,232,240,248


    mov rdi,[rsp+264]

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
    add rsp,272

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
