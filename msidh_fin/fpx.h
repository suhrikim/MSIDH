#ifndef FPX_H
#define FPX_H

#include "fp.h"

typedef struct fp2 {
    fp x0;
    fp x1;
} fp2;

void fp2_copy(fp2 *acpy, const fp2 *a);

void fp2_neg1(fp2 *a);
void fp2_neg2(fp2 *c, const fp2 *a);
void fp2_add3(fp2 *c, const fp2 *a, const fp2 *b);
void fp2_add2(fp2 *a, const fp2 *b);

void fp2_sub3(fp2 *c, const fp2 *a, const fp2 *b);
void fp2_sub2(fp2 *a, const fp2 *b);

void fp2_sq2(fp2 *a, const fp2 *b);
void fp2_sq1(fp2 *b);

void fp2_mul3(fp2 *c, fp2 const *a, fp2 const *b);
void fp2_mul2(fp2 *a, fp2 const *b);

void fp2_inv(fp2 *b);
void fp2_sqrt(fp2 *a, fp2 *b);
#endif