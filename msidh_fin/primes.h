#ifndef primes_h
#define primes_h

#if BITS == 2048
#define primes_num 229
#define primes_max_exponent 2
#define Alice_prime_num 116
#define Bob_prime_num 114
#define OALICE_BITS 1013
#define OBOB_BITS 1005
#elif BITS == 1024
#define primes_num 127
#define primes_max_exponent 2
#define Alice_prime_num 65
#define Bob_prime_num 63
#define OALICE_BITS 500
#define OBOB_BITS 492
#else
#error BITS must be 2048 or 1024
#endif

extern const long long primes[];
extern const long long Alice_primes[];
extern const long long Bob_primes[];
extern const long long Alice_inv[];
extern const long long Bob_inv[];
#endif
