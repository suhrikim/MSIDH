#include "primes.h"

const long long primes[primes_num] = {
      3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181, 191, 193, 197, 199, 211, 223, 227, 229, 233, 239, 241, 251, 257, 263, 269, 271, 277, 281, 283, 293, 307, 311, 313, 317, 331, 337, 347, 349, 353, 359, 367, 373, 379, 383, 389, 397, 401, 409, 419, 421, 431, 433, 439, 443, 449, 457, 461, 463, 467, 479, 487, 491, 499, 503, 509, 521, 523, 541, 547, 557, 563, 569, 571, 577, 587, 593, 599, 601, 607, 613, 617, 619, 631, 641, 643, 647, 653, 659, 661, 673, 677, 683, 691, 701, 709, 719, 727, 733, 739, 743, 751, 757, 761, 769, 773, 787, 797, 809, 811, 821, 823, 827, 829, 839, 853, 857, 859, 863, 877, 881, 883, 887, 907, 911, 919, 929, 937, 941, 947, 953, 967, 971, 977, 983, 991, 997, 1009, 1013, 1019, 1021, 1031, 1033, 1039, 1049, 1051, 1061, 1063, 1069, 1087, 1091, 1093, 1097, 1103, 1109, 1117, 1123, 1129, 1151, 1153, 1163, 1171, 1181, 1187, 1193, 1201, 1213, 1217, 1223, 1229, 1231, 1237, 1249, 1259, 1277, 1279, 1283, 1289, 1291, 1297, 1301, 1303, 1307, 1319, 1321, 1327, 1361, 1367, 1373, 1381, 1399, 1409, 1423, 1427, 1429, 1433, 1439, 1447, 3433};



const long long Alice_primes[Alice_prime_num] = {
4, 3, 7, 13, 19, 29, 37, 43, 53, 61, 71, 79, 89, 101, 107, 113, 131, 139, 151, 163, 173, 181, 193, 199, 223, 229, 239, 251, 263, 271, 281, 293, 311, 317, 337, 349, 359, 373, 383, 397, 409, 421, 433, 443, 457, 463, 479, 491, 503, 521, 541, 557, 569, 577, 593, 601, 613, 619, 641, 647, 659, 673, 683, 701, 719, 733, 743, 757, 769, 787, 809, 821, 827, 839, 857, 863, 881, 887, 911, 929, 941, 953, 971, 983, 997, 1013, 1021, 1033, 1049, 1061, 1069, 1091, 1097, 1109, 1123, 1151, 1163, 1181, 1193, 1213, 1223, 1231, 1249, 1277, 1283, 1291, 1301, 1307, 1321, 1361, 1373, 1399, 1423, 1429, 1439, 3433};


const long long Bob_primes[Bob_prime_num] = {
5, 11, 17, 23, 31, 41, 47, 59, 67, 73, 83, 97, 103, 109, 127, 137, 149, 157, 167, 179, 191, 197, 211, 227, 233, 241, 257, 269, 277, 283, 307, 313, 331, 347, 353, 367, 379, 389, 401, 419, 431, 439, 449, 461, 467, 487, 499, 509, 523, 547, 563, 571, 587, 599, 607, 617, 631, 643, 653, 661, 677, 691, 709, 727, 739, 751, 761, 773, 797, 811, 823, 829, 853, 859, 877, 883, 907, 919, 937, 947, 967, 977, 991, 1009, 1019, 1031, 1039, 1051, 1063, 1087, 1093, 1103, 1117, 1129, 1153, 1171, 1187, 1201, 1217, 1229, 1237, 1259, 1279, 1289, 1297, 1303, 1319, 1327, 1367, 1381, 1409, 1427, 1433, 1447};


const long long Alice_inv[Alice_prime_num] = {
3, 2, 3, 8, 2, 13, 19, 8, 47, 13, 59, 61, 30, 22, 91, 15, 78, 78, 25, 57, 25, 54, 158, 98, 45, 200, 224, 230, 190, 125, 88, 129, 61, 25, 125, 110, 220, 143, 236, 196, 73, 144, 121, 342, 391, 336, 236, 90, 384, 407, 332, 35, 284, 373, 229, 454, 167, 453, 15, 63, 85, 629, 128, 686, 313, 293, 161, 357, 430, 423, 627, 554, 260, 350, 173, 699, 75, 602, 741, 219, 141, 56, 621, 69, 827, 233, 122, 947, 837, 187, 413, 439, 475, 413, 1042, 1145, 1140, 1140, 566, 368, 872, 396, 1027, 565, 479, 160, 1102, 991, 1110, 1157, 333, 1337, 970, 1182, 1206, 1724};


const long long Bob_inv[Bob_prime_num] = {
4, 5, 13, 8, 5, 2, 42, 31, 29, 50, 24, 79, 65, 77, 125, 121, 14, 90, 54, 131, 97, 88, 49, 113, 57, 238, 106, 167, 102, 221, 75, 75, 252, 13, 348, 136, 356, 287, 129, 312, 37, 367, 447, 195, 337, 364, 431, 46, 401, 74, 393, 432, 81, 25, 327, 435, 141, 160, 592, 395, 328, 177, 641, 277, 342, 275, 139, 134, 637, 47, 447, 463, 67, 568, 560, 441, 568, 543, 41, 362, 364, 135, 312, 382, 39, 302, 692, 1041, 536, 438, 990, 712, 424, 850, 147, 844, 768, 241, 944, 550, 91, 648, 1001, 60, 612, 193, 645, 715, 499, 418, 1025, 1070, 939, 856};