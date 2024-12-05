#include "primes.h"

const long long primes[primes_num] = {
  3,  5,  7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97,101,103,107,109,113,127,131,137,139,149,151,157,163,167,173,179,181,191,193,197,199,211,223,227,229,233,239,241,251,257,263,269,271,277,281,283,293,307,311,313,317,331,337,347,349,353,359,367,373,379,383,389,397,401,409,419,421,431,433,439,443,449,457,461,463,467,479,487,491,499,503,509,521,523,541,547,557,563,569,571,577,587,593,599,601,607,613,617,619,631,641,643,647,653,659,661,673,677,683,691,701,709,719,727,733,739,743,751,757,761,769,773,787,797,809,811,
	821,823,827,829,839,853,857,859,863,877,881,883,887,907,911,919,929,937,941,947,953,967,971,977,983,991,997,1009,1013,1019,1021,1031,1033,1039,1049,1051,1061,1063,1069,1087,1091,1093,1097,1103,1109,1117,1123,1129,1153,1163,1171,1181,1187,1193,1201,1213,1217,1223,1229,1231,1237,1249,1259,1277,1279,1283,1289,1291,1297,1301,1303,1307,1319,1321,1327,1361,1367,1373,1381,1399,1409,1423,1427,1429,1433,1439,1447,1451,1453,1459,1471,1481,1483,1487,1489,1493,1499,1511,1523,1531,1543,1549,1553,1559,1567,1571,1579,1583,1597,1601,1607,1609,1613,1619,1621,1627,1637,1657,1663,1667,1669,1693,1697,1699,1709,1721,1723,1733,1741,1747,1753,1759,1777,1783,1787,1789,1801,1811,1823,1831,
	1847,1861,1867,1871,1873,1877,1879,1889,1901,1907,1913,1931,1933,1949,1951,1973,1979,1987,1993,1997,1999,2003,2011,2017,2027,2029,2039,2053,2063,2069,2081,2083,2087,2089,2099,2111,2113,2129,2131,2137,2141,2143,2153,2161,2179,2203,2207,2213,2221,2237,2239,2243,2251,2267,2269,2273,2281,2287,2293,2297,2309,2311,2333,2339,2341,2347,2351,2357,2371,2377,2381,2383,2389,2393,2399,2411,2417,2423,2437,2441,2447,2459,2467,2473,2477,2503,2521,2531,2539,2543,2549,2551,2557,2579,2591,2593,2609,2617,2621,2633,2647,2657,2659,2663,2671,2677,2683,2687,2689,2693,2699,2707,2711,2713,2719,2729,2731,2741,2749,2753,2767,2777,2789,2791,2797,2801,2803,2819,2833,2837,2843,2851,2857,2861,2879,2887,2897
};



const long long Alice_primes[Alice_prime_num] = {
4, 3, 7, 13, 19, 29, 37, 43, 53, 61, 71, 79, 89, 101, 107, 113, 131, 139, 151, 163, 173, 181, 193, 199, 223, 229, 239, 251, 263, 271, 281, 293, 311, 317, 337, 349, 359, 373, 383, 397, 409, 421, 433, 443, 457, 463, 479, 491, 503, 521, 541, 557, 569, 577, 593, 601, 613, 619, 641, 647, 659, 673, 683, 701, 719, 733, 743, 757, 769, 787, 809, 821, 827, 839, 857, 863, 881, 887, 911, 929, 941, 953, 971, 983, 997, 1013, 1021, 1033, 1049, 1061, 1069, 1091, 1097, 1109, 1123, 1153, 1171, 1187, 1201, 1217, 1229, 1237, 1259, 1279, 1289, 1297, 1303, 1319, 1327, 1367, 1381, 1409, 1427, 1433, 1447, 1453, 1471, 1483, 1489, 1499, 1523, 1543, 1553, 1567, 1579, 1597, 1607, 1613, 1621, 1637, 1663, 1669, 1697, 1709, 1723, 1741, 1753, 1777, 1787, 1801, 1823, 1847, 1867, 1873, 1879, 1901, 1913, 1933, 1951, 1979, 1993, 1999, 2011, 2027, 2039, 2063, 2081, 2087, 2099, 2113, 2131, 2141, 2153, 2179, 2207, 2221, 2239, 2251, 2269, 2281, 2293, 2309, 2333, 2341, 2351, 2371, 2381, 2389, 2399, 2417, 2437, 2447, 2467, 2477, 2521, 2539, 2549, 2557, 2591, 2609, 2621, 2647, 2659, 2671, 2683, 2689, 2699, 2711, 2719, 2731, 2749, 2767, 2789, 2797, 2803, 2833, 2843, 2857, 2879, 2897};


const long long Bob_primes[Bob_prime_num] = {
5, 11, 17, 23, 31, 41, 47, 59, 67, 73, 83, 97, 103, 109, 127, 137, 149, 157, 167, 179, 191, 197, 211, 227, 233, 241, 257, 269, 277, 283, 307, 313, 331, 347, 353, 367, 379, 389, 401, 419, 431, 439, 449, 461, 467, 487, 499, 509, 523, 547, 563, 571, 587, 599, 607, 617, 631, 643, 653, 661, 677, 691, 709, 727, 739, 751, 761, 773, 797, 811, 823, 829, 853, 859, 877, 883, 907, 919, 937, 947, 967, 977, 991, 1009, 1019, 1031, 1039, 1051, 1063, 1087, 1093, 1103, 1117, 1129, 1163, 1181, 1193, 1213, 1223, 1231, 1249, 1277, 1283, 1291, 1301, 1307, 1321, 1361, 1373, 1399, 1423, 1429, 1439, 1451, 1459, 1481, 1487, 1493, 1511, 1531, 1549, 1559, 1571, 1583, 1601, 1609, 1619, 1627, 1657, 1667, 1693, 1699, 1721, 1733, 1747, 1759, 1783, 1789, 1811, 1831, 1861, 1871, 1877, 1889, 1907, 1931, 1949, 1973, 1987, 1997, 2003, 2017, 2029, 2053, 2069, 2083, 2089, 2111, 2129, 2137, 2143, 2161, 2203, 2213, 2237, 2243, 2267, 2273, 2287, 2297, 2311, 2339, 2347, 2357, 2377, 2383, 2393, 2411, 2423, 2441, 2459, 2473, 2503, 2531, 2543, 2551, 2579, 2593, 2617, 2633, 2657, 2663, 2677, 2687, 2693, 2707, 2713, 2729, 2741, 2753, 2777, 2791, 2801, 2819, 2837, 2851, 2861, 2887};


const long long Alice_inv[Alice_prime_num] = {
3, 1, 6, 9, 11, 22, 18, 8, 42, 39, 6, 22, 45, 15, 32, 71, 27, 108, 96, 20, 56, 114, 167, 197, 149, 14, 62, 87, 10, 35, 155, 98, 306, 48, 35, 32, 126, 79, 137, 206, 73, 98, 208, 74, 367, 81, 172, 299, 181, 323, 331, 365, 15, 379, 288, 404, 265, 341, 445, 345, 559, 19, 449, 498, 20, 523, 131, 344, 111, 418, 724, 630, 691, 62, 417, 636, 507, 235, 631, 612, 738, 919, 445, 541, 259, 281, 793, 318, 407, 65, 667, 218, 943, 98, 871, 870, 724, 465, 895, 740, 195, 1157, 20, 1047, 817, 644, 1159, 763, 213, 866, 662, 999, 351, 966, 398, 752, 842, 933, 338, 800, 359, 82, 1223, 1059, 9, 1367, 738, 1512, 464, 1278, 1327, 437, 690, 1326, 1560, 1218, 519, 238, 189, 437, 852, 70, 868, 894, 599, 1338, 141, 807, 556, 595, 1402, 1367, 1671, 1248, 1689, 1914, 301, 1642, 638, 147, 996, 303, 819, 9, 1882, 1096, 717, 970, 127, 2147, 1013, 1982, 1850, 592, 1160, 38, 634, 1518, 398, 703, 1519, 1896, 1596, 131, 2499, 1692, 2532, 1564, 260, 2500, 1892, 180, 2002, 1729, 1777, 1401, 1932, 1657, 2666, 157, 1054, 468, 2106, 2209, 397, 2216, 2264, 2528, 1561, 471};


const long long Bob_inv[Bob_prime_num] = {
4, 1, 12, 20, 21, 34, 32, 25, 7, 66, 65, 88, 13, 107, 37, 104, 115, 44, 51, 25, 38, 183, 123, 177, 127, 20, 117, 119, 61, 178, 204, 259, 4, 12, 252, 286, 125, 277, 299, 16, 161, 193, 67, 343, 187, 209, 89, 85, 425, 225, 411, 291, 378, 258, 173, 421, 375, 326, 298, 637, 82, 15, 654, 164, 571, 92, 323, 768, 369, 242, 281, 15, 239, 128, 372, 59, 306, 637, 647, 918, 203, 411, 51, 152, 577, 784, 338, 399, 997, 944, 391, 457, 146, 924, 917, 1003, 249, 683, 46, 262, 228, 295, 659, 1, 714, 642, 587, 1302, 200, 594, 553, 74, 643, 630, 597, 1085, 242, 549, 1492, 263, 1367, 389, 739, 1078, 885, 280, 1426, 423, 1230, 1312, 1634, 1414, 1638, 261, 1526, 1151, 1718, 1550, 1442, 655, 691, 1415, 463, 1631, 1589, 146, 1513, 1492, 1203, 182, 1606, 1190, 1602, 778, 1089, 1327, 1871, 923, 494, 1116, 1597, 1625, 1931, 321, 568, 20, 1024, 1891, 230, 1485, 665, 1913, 898, 1467, 276, 761, 2366, 1819, 1507, 1034, 691, 1278, 1311, 2456, 230, 217, 1368, 718, 2080, 1507, 758, 1353, 99, 212, 982, 2104, 1165, 1692, 1269, 2238, 2153, 2436, 368, 1908, 1732, 1751, 1053, 2784};