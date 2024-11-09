#ifndef FP_H
#define FP_H

#include "uintbig.h"

/* fp is in the Montgomery domain, so interpreting that
   as an integer should never make sense.
   enable compiler warnings when mixing up uintbig and fp. */
typedef struct fp {
    uintbig x;
} fp;



extern const fp fp_0;
extern const fp fp_1;
extern const fp fp_2inv;
extern const fp fp_sa;

extern const fp fp_pax0;
extern const fp fp_pax1;

extern const fp fp_qax0;
extern const fp fp_qax1;

extern const fp fp_rax0;
extern const fp fp_rax1;

extern const fp fp_pbx0;
extern const fp fp_pbx1;

extern const fp fp_qbx0;
extern const fp fp_qbx1;

extern const fp fp_rbx0;
extern const fp fp_rbx1;

extern const uintbig fp_four_sqrt_p;

void fp_set(fp *x, uint64_t y);
void fp_cswap(fp *x, fp *y, bool c);

void fp_enc(fp *x, uintbig const *y); /* encode to Montgomery representation */
void fp_dec(uintbig *x, fp const *y); /* decode from Montgomery representation */

void fp_add2(fp *x, fp const *y);
void fp_sub2(fp *x, fp const *y);
void fp_mul2(fp *x, fp const *y);

void fp_add3(fp *x, fp const *y, fp const *z);
void fp_sub3(fp *x, fp const *y, fp const *z);
void fp_mul3(fp *x, fp const *y, fp const *z);

void fp_sq1(fp *x);
void fp_sq2(fp *x, fp const *y);
void fp_inv(fp *x);
void fp_sqrtcheck(fp *x);
void fp_sqrt(fp *x);
bool fp_issquare(fp *x);

void fp_random(fp *x);
void fp_randomA(fp *x);
void fp_randomB(fp *x);

extern long long fp_mul_count;

static inline void fp_neg1(fp *x)
{
  fp_sub3(x,&fp_0,x);
}

static inline void fp_neg2(fp *x,const fp *y)
{
  fp_sub3(x,&fp_0,y);
}





#endif
