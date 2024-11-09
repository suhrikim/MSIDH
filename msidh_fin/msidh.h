#ifndef MSIDH_H
#define MSIDH_H

#include "mont.h"
void KeyGen_A(uintbig *cofA, uintbig *maskA, uintbig *ma, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA);
void KeyGen_B(uintbig *cofB, uintbig *maskB, uintbig *mB, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA);
void KeyAgree_A(uintbig *cofA, uintbig *mA, fp2 *jinvA, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA);
void KeyAgree_B(uintbig *cofB, uintbig *mB, fp2 *jinvB, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA);
void msidh_multable(uintbig *cofA, uintbig *cofB, uintbig *maskA, uintbig *maskB);

//void msidh_test();
//void msidh_test_bench();

#endif