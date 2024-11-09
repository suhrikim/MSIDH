#include <assert.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <time.h>
#include "msidh.h"
#include "mont.h"
#include "fp.h"
#include "fpx.h"
#include "primes.h"
#include "steps.h"
#include "polyfpx.h"








void xDBLADD_fpx(proj2 *R, proj2 *S, proj2 const *P, proj2 const *Q, proj2 const *PQ, fp2 const *A24plus, fp2 const *C24)
{
    fp2 tmp0, tmp1, tmp2;        //requires precomputation of A24=(A+2C:4C)

    fp2_add3(&tmp0, &P->x, &P->z);
    fp2_sub3(&tmp1, &P->x, &P->z);
    fp2_sq2(&R->x, &tmp0);
    fp2_sub3(&tmp2, &Q->x, &Q->z);
    fp2_add3(&S->x, &Q->x, &Q->z);
    fp2_mul2(&tmp0, &tmp2);
    fp2_sq2(&R->z, &tmp1);
    fp2_mul2(&tmp1, &S->x);
    fp2_sub3(&tmp2, &R->x, &R->z);
    fp2_mul2(&R->z, C24);
    fp2_mul2(&R->x, &R->z);
    fp2_mul3(&S->x, A24plus, &tmp2);
    fp2_sub3(&S->z, &tmp0, &tmp1);
    fp2_add2(&R->z, &S->x);
    fp2_add3(&S->x, &tmp0, &tmp1);
    fp2_mul2(&R->z, &tmp2);
    fp2_sq1(&S->z);
    fp2_sq1(&S->x);
    fp2_mul2(&S->z, &PQ->x);
    fp2_mul2(&S->x, &PQ->z);
}

void xDBL_fpx(proj2 *Q, fp2 const *A24plus, fp2 const *C24, proj2 const *P)
{
    fp2 t0, t1;

    fp2_sub3(&t0, &P->x, &P->z);
    fp2_add3(&t1, &P->x, &P->z);
    fp2_sq1(&t0);
    fp2_sq1(&t1);
    fp2_mul3(&Q->z, &t0, C24);
    fp2_mul3(&Q->x, &Q->z, &t1);
    fp2_sub3(&t1, &t1, &t0);
    fp2_mul3(&t0, A24plus, &t1);
    fp2_add3(&Q->z, &t0, &Q->z);
    fp2_mul3(&Q->z, &t1, &Q->z);


}

void xADD_fpx(proj2 *S, proj2 const *P, proj2 const *Q, proj2 const *PQ)
{
    fp2 a, b, c, d;
    fp2_add3(&a, &P->x, &P->z);
    fp2_sub3(&b, &P->x, &P->z);
    fp2_add3(&c, &Q->x, &Q->z);
    fp2_sub3(&d, &Q->x, &Q->z);
    fp2_mul2(&a, &d);
    fp2_mul2(&b, &c);
    fp2_add3(&c, &a, &b);
    fp2_sub3(&d, &a, &b);
    fp2_sq1(&c);
    fp2_sq1(&d);
    fp2_mul3(&S->x, &PQ->z, &c);
    fp2_mul3(&S->z, &PQ->x, &d);
}

void xMUL_fpx(proj2 *Q, fp2 const *A24plus, fp2 const *C24, proj2 const *P, uintbig const *k)
{
    proj2 R = *P;
 
    const proj2 Pcopy = *P; /* in case Q = P */

    Q->x.x0 = fp_1;
    Q->x.x1 = fp_0;
    Q->z.x0 = fp_0;
    Q->z.x1 = fp_0;
    unsigned long i = BITS;
    while (--i && !uintbig_bit(k, i));

    do {

        bool bit = uintbig_bit(k, i);

        if (bit) { proj2 T = *Q; *Q = R; R = T; } /* not constant-time */
        //fp_cswap(&Q->x, &R.x, bit);
        //fp_cswap(&Q->z, &R.z, bit);

        xDBLADD_fpx(Q, &R, Q, &R, &Pcopy, A24plus, C24);

        if (bit) { proj2 T = *Q; *Q = R; R = T; } /* not constant-time */
        //fp_cswap(&Q->x, &R.x, bit);
        //fp_cswap(&Q->z, &R.z, bit);


    } while (i--);
}


void fp2_cswap(fp2 *x, fp2 *y, bool c)
{
    fp_cswap(&x->x0, &y->x0, c);
    fp_cswap(&x->x1, &y->x1, c);
}

void exp_by_squaring_fpx(fp2* x, fp2* y, uint64_t exp)
{
    fp2 result1, result2;

    result1.x0 = fp_1;
    result1.x1 = fp_0;
    result2.x0 = fp_1;
    result2.x1 = fp_0;        

    while (exp)
    {
        if (exp & 1){
          fp2_mul2(&result1, x);
          fp2_mul2(&result2, y);
        }
        
        fp2_sq1(x);
        fp2_sq1(y);
        exp >>= 1;
    }

    fp2_cswap(&result1, x, 1);
    fp2_cswap(&result2, y, 1);

}

void j_inv(const fp2* A, const fp2* C, fp2* jinv)
{ // Computes the j-invariant of a Montgomery curve with projective constant.
  // Input: A,C in GF(p^2).
  // Output: j=256*(A^2-3*C^2)^3/(C^4*(A^2-4*C^2)), which is the j-invariant of the Montgomery curve B*y^2=x^3+(A/C)*x^2+x or (equivalently) j-invariant of B'*y^2=C*x^3+A*x^2+C*x.
    fp2 t0, t1;

    fp2_sq2(jinv, A);
    fp2_sq2(&t1, C);
    fp2_add3(&t0, &t1, &t1);
    fp2_sub3(&t0, jinv, &t0);
    fp2_sub3(&t0, &t0, &t1);
    fp2_sub3(jinv, &t0, &t1);
    fp2_sq2(&t1, &t1);
    fp2_mul3(jinv, jinv, &t1);

    fp2_add3(&t0, &t0, &t0);
    fp2_add3(&t0, &t0, &t0);
    fp2_sq2(&t1, &t0);
    fp2_mul3(&t0, &t0, &t1);
    
    fp2_add3(&t0, &t0, &t0);
    fp2_add3(&t0, &t0, &t0);

    fp2_inv(jinv);
    fp2_mul3(jinv, &t0, jinv);


}

static void LADDER3PT(const fp2* xP, const fp2* xQ, const fp2* xPQ, const uintbig* m, const unsigned int AliceOrBob, proj2* R, const fp2 *A24plus, const fp2 *C24)
{
    proj2 A, B, D;
    proj2 Q, P;


    int nbits;

    if (AliceOrBob == 0) {
        nbits = OALICE_BITS;
    } else {
        nbits = OBOB_BITS;
    }


    // Initializing points
    fp2_copy(&B.x, xQ);
    B.z.x0 = fp_1;
    B.z.x1 = fp_0;

    fp2_copy(&Q.x, xQ);
    Q.z.x0 = fp_1;
    Q.z.x1 = fp_0;

    fp2_copy(&D.x, xPQ);
    D.z.x0 = fp_1;
    D.z.x1 = fp_0;

    fp2_copy(&R->x, xP);
    R->z.x0 = fp_1;
    R->z.x1 = fp_0;

    fp2_copy(&P.x, xP);
    P.z.x0 = fp_1;
    P.z.x1 = fp_0;


    A.x.x0=fp_1;
    A.x.x1=fp_0;
    A.z.x0=fp_0;
    A.z.x1=fp_0;
    unsigned long i = nbits;
    while (--i && !uintbig_bit(m, i));

    do {

        bool bit = uintbig_bit(m, i);

        if(bit)
        {
            xADD_fpx(&A, &A, &B, &Q);
            xDBLADD_fpx(&B, R, &B, R, &D, A24plus, C24);
          //  xDBL_fpx(&B, A24plus, C24, &B);
          //  xADD_fpx(R, &B, R, &D);
        }
        else
        {
            xADD_fpx(R, &A, R, &P);
            xADD_fpx(&B, &A, &B, &Q);
            xDBL_fpx(&A, A24plus, C24, &A);
            
        }


    } while (i--);


}





void xISOG_fpx2(fp2 *A24plus, fp2 *C24, proj2 *P1, proj2 *P2, proj2 *P3, proj2 *R, proj2 const *K, long long k)
{
    assert (k >= 3);
    assert (k % 2 == 1);

    fp2 tmp0, tmp1, tmp2, tmp3, tmp4, Psum1, Pdif1, Psum2, Pdif2, Psum3, Pdif3, PsumR, PdifR, Aedz, Aedx;
    proj2 Q1, Q2, Q3,QR, prod;

    fp2_copy(&Aedx, A24plus); //A+2c
    fp2_sub3(&Aedz, A24plus, C24); // Aedz = A+2C-4C=A-2c

    fp2_add3(&Psum1, &P1->x, &P1->z);   //precomputations
    fp2_sub3(&Pdif1, &P1->x, &P1->z);

    fp2_add3(&Psum2, &P2->x, &P2->z);   //precomputations
    fp2_sub3(&Pdif2, &P2->x, &P2->z);

    fp2_add3(&Psum3, &P3->x, &P3->z);   //precomputations
    fp2_sub3(&Pdif3, &P3->x, &P3->z);

    fp2_add3(&PsumR, &R->x, &R->z);   //precomputations
    fp2_sub3(&PdifR, &R->x, &R->z);

    fp2_sub3(&prod.x, &K->x, &K->z);
    fp2_add3(&prod.z, &K->x, &K->z);
    
    fp2_mul3(&tmp1, &prod.x, &Psum1);
    fp2_mul3(&tmp0, &prod.z, &Pdif1);
    fp2_add3(&Q1.x, &tmp0, &tmp1);
    fp2_sub3(&Q1.z, &tmp0, &tmp1);

    fp2_mul3(&tmp1, &prod.x, &Psum2);
    fp2_mul3(&tmp0, &prod.z, &Pdif2);
    fp2_add3(&Q2.x, &tmp0, &tmp1);
    fp2_sub3(&Q2.z, &tmp0, &tmp1);

    fp2_mul3(&tmp1, &prod.x, &Psum3);
    fp2_mul3(&tmp0, &prod.z, &Pdif3);
    fp2_add3(&Q3.x, &tmp0, &tmp1);
    fp2_sub3(&Q3.z, &tmp0, &tmp1);

    fp2_mul3(&tmp1, &prod.x, &PsumR);
    fp2_mul3(&tmp0, &prod.z, &PdifR);
    fp2_add3(&QR.x, &tmp0, &tmp1);
    fp2_sub3(&QR.z, &tmp0, &tmp1);


    proj2 M[3] = {*K};
    xDBL_fpx(&M[1], A24plus, C24, K); //m(1)=2k

    for (long long i = 1; i < k / 2; ++i) {

        if (i >= 2)
            xADD_fpx(&M[i % 3], &M[(i - 1) % 3], K, &M[(i - 2) % 3]);

        fp2_sub3(&tmp1, &M[i%3].x, &M[i%3].z);
        fp2_add3(&tmp0, &M[i%3].x, &M[i%3].z);
        fp2_mul2(&prod.x, &tmp1);
        fp2_mul2(&prod.z, &tmp0);

        fp2_mul3(&tmp3, &tmp1, &Psum1);
        fp2_mul3(&tmp4, &tmp0, &Pdif1);

        fp2_add3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&Q1.x, &tmp2);
        fp2_sub3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&Q1.z, &tmp2);

        fp2_mul3(&tmp3, &tmp1, &Psum2);
        fp2_mul3(&tmp4, &tmp0, &Pdif2);

        fp2_add3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&Q2.x, &tmp2);
        fp2_sub3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&Q2.z, &tmp2);

        fp2_mul3(&tmp3, &tmp1, &Psum3);
        fp2_mul3(&tmp4, &tmp0, &Pdif3);

        fp2_add3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&Q3.x, &tmp2);
        fp2_sub3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&Q3.z, &tmp2);

        fp2_mul3(&tmp3, &tmp1, &PsumR);
        fp2_mul3(&tmp4, &tmp0, &PdifR);

        fp2_add3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&QR.x, &tmp2);
        fp2_sub3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&QR.z, &tmp2);
    
    }


    // point evaluation
    fp2_sq1(&Q1.x);
    fp2_sq1(&Q1.z);
    fp2_mul2(&P1->x, &Q1.x);
    fp2_mul2(&P1->z, &Q1.z);

    fp2_sq1(&Q2.x);
    fp2_sq1(&Q2.z);
    fp2_mul2(&P2->x, &Q2.x);
    fp2_mul2(&P2->z, &Q2.z);

    fp2_sq1(&Q3.x);
    fp2_sq1(&Q3.z);
    fp2_mul2(&P3->x, &Q3.x);
    fp2_mul2(&P3->z, &Q3.z);

    fp2_sq1(&QR.x);
    fp2_sq1(&QR.z);
    fp2_mul2(&R->x, &QR.x);
    fp2_mul2(&R->z, &QR.z);
    //compute Aed.x^k, Aed.z^k
    exp_by_squaring_fpx(&Aedx, &Aedz, k);

    //compute prod.x^8, prod.z^8
    fp2_sq1(&prod.x);
    fp2_sq1(&prod.x);
    fp2_sq1(&prod.x);
    fp2_sq1(&prod.z);
    fp2_sq1(&prod.z);
    fp2_sq1(&prod.z);

    //compute image curve parameters
    fp2_mul2(&Aedz, &prod.x);
    fp2_mul2(&Aedx, &prod.z);

    //compute Montgomery params
    fp2_add3(A24plus, &Aedx, &Aedx); //2/
    fp2_sub3(C24, &Aedx, &Aedz); //Aedx-aedz
    fp2_add3(A24plus, A24plus, A24plus); //4
    fp2_add3(C24, C24, C24);
    fp2_add3(C24, C24, C24);
}

void xISOG_fin_fpx2(fp2 *A24plus, fp2 *C24, proj2 *R, proj2 const *K, long long k)
{
    assert (k >= 3);
    assert (k % 2 == 1);

    fp2 tmp0, tmp1, tmp2, tmp3, tmp4,  PsumR, PdifR, Aedz, Aedx;
    proj2 QR, prod;

    fp2_copy(&Aedx, A24plus); //A+2c
    fp2_sub3(&Aedz, A24plus, C24); // Aedz = A+2C-4C=A-2c



    fp2_add3(&PsumR, &R->x, &R->z);   //precomputations
    fp2_sub3(&PdifR, &R->x, &R->z);

    fp2_sub3(&prod.x, &K->x, &K->z);
    fp2_add3(&prod.z, &K->x, &K->z);
    

    fp2_mul3(&tmp1, &prod.x, &PsumR);
    fp2_mul3(&tmp0, &prod.z, &PdifR);
    fp2_add3(&QR.x, &tmp0, &tmp1);
    fp2_sub3(&QR.z, &tmp0, &tmp1);


    proj2 M[3] = {*K};
    xDBL_fpx(&M[1], A24plus, C24, K); //m(1)=2k

    for (long long i = 1; i < k / 2; ++i) {

        if (i >= 2)
            xADD_fpx(&M[i % 3], &M[(i - 1) % 3], K, &M[(i - 2) % 3]);

        fp2_sub3(&tmp1, &M[i%3].x, &M[i%3].z);
        fp2_add3(&tmp0, &M[i%3].x, &M[i%3].z);
        fp2_mul2(&prod.x, &tmp1);
        fp2_mul2(&prod.z, &tmp0);


        fp2_mul3(&tmp3, &tmp1, &PsumR);
        fp2_mul3(&tmp4, &tmp0, &PdifR);

        fp2_add3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&QR.x, &tmp2);
        fp2_sub3(&tmp2, &tmp4, &tmp3);
        fp2_mul2(&QR.z, &tmp2);
    
    }


    // point evaluation


    fp2_sq1(&QR.x);
    fp2_sq1(&QR.z);
    fp2_mul2(&R->x, &QR.x);
    fp2_mul2(&R->z, &QR.z);
    //compute Aed.x^k, Aed.z^k
    exp_by_squaring_fpx(&Aedx, &Aedz, k);

    //compute prod.x^8, prod.z^8
    fp2_sq1(&prod.x);
    fp2_sq1(&prod.x);
    fp2_sq1(&prod.x);
    fp2_sq1(&prod.z);
    fp2_sq1(&prod.z);
    fp2_sq1(&prod.z);

    //compute image curve parameters
    fp2_mul2(&Aedz, &prod.x);
    fp2_mul2(&Aedx, &prod.z);

    //compute Montgomery params
    fp2_add3(A24plus, &Aedx, &Aedx); //2/
    fp2_sub3(C24, &Aedx, &Aedz); //Aedx-aedz
    fp2_add3(A24plus, A24plus, A24plus); //4
    fp2_add3(C24, C24, C24);
    fp2_add3(C24, C24, C24);
}

void biquad_both_fp2(fp2 *out,fp2 *outinv, fp2 *coeff, fp2 *coeffQ, const fp2 *C)
{
  fp2 t0, t1, t2;
  // coeffQ[0]=Qx+Qz (c)
  // coeffQ[1]=Qx-Qz )c
  // coeffQ[2]= 4QxQz
 // coeffQ[3]=2(Qx^2+Qz^2)

  fp2_mul3(&t0, &coeff[3], &coeffQ[1]); // t0 = (Px+Pz)*(Qx-Qz)C
  fp2_mul3(&t1, &coeff[4], &coeffQ[0]); // t1 = (Px-Pz)*(Qx+Qz)C

  fp2_add3(&out[0], &t0, &t1); // t2 = 2(PxQx-PzQz)
  fp2_sq1(&out[0]); //4(PxQx-PzQz)^2
  fp2_mul2(&out[0],C); //4C(PxQx-PzQz)^2 (*)


  fp2_sub3(&out[2], &t1, &t0); // 2(PxQz-PzQx)
  fp2_sq1(&out[2]); // 4(PxQz-PzQx)^2
  fp2_mul2(&out[2],C); //4C(PxQz-PzQx)^2  (*)

  fp2_mul3(&t0, &coeff[1], &coeffQ[3]); //t0= 4CPxPz*2(Qx^2+Qz^2)
  fp2_mul3(&t1, &coeff[0], &coeffQ[2]); // t1 = 4QxQz*2C(Px^2+Pz^2)
  fp2_mul3(&t2, &coeff[2], &coeffQ[2]); // t2 = 4APxPz* 4QxQz

  fp2 fp2zero;
  fp2zero.x0 = fp_0;
  fp2zero.x1 = fp_0;


  fp2_add3(&t0,&t0,&t1);
  fp2_add3(&t0,&t0,&t2);
  fp2_sub3(&out[1], &fp2zero, &t0);

 
  outinv[1] = out[1];
  outinv[2] = out[0];
  outinv[0] = out[2];
}

void biquad_both_ori(fp2 *out,fp2 *outinv,const proj2 *P,const proj2 *Q,const fp2 *A, const fp2 *C)
{
  fp2 PxQx; fp2_mul3(&PxQx,&P->x,&Q->x);
  fp2 PxQz; fp2_mul3(&PxQz,&P->x,&Q->z);
  fp2 PzQx; fp2_mul3(&PzQx,&P->z,&Q->x);
  fp2 PzQz; fp2_mul3(&PzQz,&P->z,&Q->z);
  fp2 PPQQ; fp2_mul3(&PPQQ,&PxQx,&PzQz);
  fp2_add2(&PPQQ,&PPQQ);
  fp2_mul2(&PPQQ,A);

  fp2 s,t;

  fp2_add3(&s,&PxQx,&PzQz);
  fp2_add3(&t,&PzQx,&PxQz);
  fp2_mul3(&out[1],&s,&t);
  fp2_mul2(&out[1],C);
  fp2_add2(&out[1],&PPQQ);
  fp2_add2(&out[1],&out[1]);
  fp2_neg1(&out[1]); /* XXX: push through other computations? */

  fp2_sub3(&out[2],&PxQz,&PzQx);
  fp2_sq1(&out[2]);
  fp2_mul2(&out[2],C);

  fp2_sub3(&out[0],&PxQx,&PzQz);
  fp2_sq1(&out[0]);
  fp2_mul2(&out[0],C);

  /* ----- */

  fp2_add3(&s,&PxQz,&PzQx); // s = w1z2+z1w2
  fp2_add3(&t,&PzQz,&PxQx); // t = 
  fp2_mul3(&outinv[1],&s,&t);
  fp2_mul2(&outinv[1],C);
  fp2_add2(&outinv[1],&PPQQ);
  fp2_add2(&outinv[1],&outinv[1]);
  fp2_neg1(&outinv[1]); /* XXX: push through other computations? */

  outinv[2] = out[0];
  outinv[0] = out[2];
}

void biquad_pm1_opt_fp2(fp2 *coeff, fp2 *outplus,fp2 *outminus,const proj2 *P,const fp2 *A, const fp2 *C)
{
  fp2 Pplus; fp2_add3(&coeff[3],&P->x,&P->z); //plus=x+z
  fp2 Pminus; fp2_sub3(&coeff[4],&P->x,&P->z); //pminus=x-z
  fp2_sq2(&Pplus, &coeff[3]); //pplus=(x+z)^2
  fp2_sq2(&Pminus, &coeff[4]); //pminus=(x-z)^2

  fp2_mul3(&outplus[0],&Pminus,C); // outp =C(x-z)^2
  outplus[2] = outplus[0];
  fp2_mul3(&outminus[0],&Pplus,C); // outm=C(x+z)^2
  outminus[2] = outminus[0];

  fp2_add3(&coeff[0],&outplus[0],&outminus[0] ); // coeff[0]=2C(X^2+Z^2
  fp2_sub3(&coeff[1], &outminus[0],&outplus[0] ); //4CXZ

  fp2 u, fp2zero;
  fp2zero.x0 = fp_0;
  fp2zero.x1 = fp_0;
  fp2_sub3(&coeff[2], &Pplus, &Pminus); // coeff[2]=4XZ
  fp2_mul2(&coeff[2],A); // coeff[2=4xzA
  fp2_sub3(&u, &fp2zero,  &coeff[2]);
 // fp2_mul2(&coeff[2],C); // coeff[2=4xzAC (*)
 // fp_sub3(&u,&Pminus,&Pplus); // u=-4xz
//  fp_mul2(&u,&A->x); // u=-4xzA

  fp2 t;
  fp2_add3(&t,&outminus[0],&outminus[0]); // t=2C(x^2+2xz+z^2)
  fp2_sub3(&outplus[1],&u,&t); //outplus1=-4Axz-2C(x^2+2xz+z^2)

  fp2_add3(&t,&outplus[0],&outplus[0]);
  fp2_sub3(&outminus[1],&t,&u);
}

void biquad_pm1_fp2(fp2 *outplus,fp2 *outminus,const proj2 *P,const fp2 *A, const fp2 *C)
{
  fp2 Pplus; fp2_add3(&Pplus,&P->x,&P->z);
  fp2 Pminus; fp2_sub3(&Pminus,&P->x,&P->z);
  fp2_sq1(&Pplus);
  fp2_sq1(&Pminus);

  fp2_mul3(&outplus[0],&Pminus,C);
  outplus[2] = outplus[0];
  fp2_mul3(&outminus[0],&Pplus,C);
  outminus[2] = outminus[0];

  fp2 u;
  fp2_sub3(&u,&Pminus,&Pplus);
  fp2_mul2(&u,A);

  fp2 t;
  fp2_add3(&t,&outminus[0],&outminus[0]);
  fp2_sub3(&outplus[1],&u,&t);

  fp2_add3(&t,&outplus[0],&outplus[0]);
  fp2_sub3(&outminus[1],&t,&u);
}

void xISOG_sqrt_4pts(fp2  *A24plus, fp2  *C24, proj2 *P1, proj2 *P2, proj2 *P3, proj2 *R, proj2 const *K, long long k)
{
    assert (k >= 3);
    assert (k % 2 == 1);

    long long sqrtvelu = 0;
    long long bs = 0;
    long long gs = 0;

    steps(&bs,&gs,k);
    if (bs) {
      sqrtvelu = 1;
      assert(bs > 0);
      assert(gs > 0);
      assert(!(bs&1));
    }
  
    fp2 tmp0, tmp1, tmp2, tmp3, tmp4, tmp5, tmp6, tmp7, tmp8, tmp9, tmp10, tmp11, tmp12, tmp13, Aedz, Aedx;
    fp2 A, C;

    fp2_add3(&A, A24plus, A24plus); // 2A+4C
    fp2_sub3(&A, &A, C24); // 2A
    fp2_add3(&A, &A, &A); //4A    
    fp2_copy(&C, C24); //C=4C

    fp2_copy(&Aedx, A24plus); //A+2c
    fp2_sub3(&Aedz, A24plus, C24); // Aedz = A+2C-4C=A-2c
   
    fp2 Psum1, Pdif1, Psum2, Pdif2, Psum3, Pdif3, PsumR, PdifR;
    fp2 coeffQ1[4], coeffQ2[4], coeffQ3[4], coeffQR[4];
    fp2_add3(&Psum1, &P1->x, &P1->z);   //precomputations
    fp2_sub3(&Pdif1, &P1->x, &P1->z);

    fp2_add3(&Psum2, &P2->x, &P2->z);   //precomputations
    fp2_sub3(&Pdif2, &P2->x, &P2->z);

    fp2_add3(&Psum3, &P3->x, &P3->z);   //precomputations
    fp2_sub3(&Pdif3, &P3->x, &P3->z);

    fp2_add3(&PsumR, &R->x, &R->z);   //precomputations
    fp2_sub3(&PdifR, &R->x, &R->z);

    fp2_add3(&coeffQ1[0], &P1->x, &P1->z);   //precomputations //Psum=x+z
    fp2_sub3(&coeffQ1[1], &P1->x, &P1->z);   // Pdif= x-z
    fp2_sq2(&tmp0, &coeffQ1[0]); //(x+z)^2
    fp2_sq2(&tmp1, &coeffQ1[1]); //(x-z)^2
    fp2_add3(&coeffQ1[3], &tmp0, &tmp1); // 2(x^2+Z^2)
    fp2_sub3(&coeffQ1[2], &tmp0, &tmp1); // 


    fp2_add3(&coeffQ2[0], &P2->x, &P2->z);   //precomputations //Psum=x+z
    fp2_sub3(&coeffQ2[1], &P2->x, &P2->z);   // Pdif= x-z
    fp2_sq2(&tmp0, &coeffQ2[0]); //(x+z)^2
    fp2_sq2(&tmp1, &coeffQ2[1]); //(x-z)^2
    fp2_add3(&coeffQ2[3], &tmp0, &tmp1); // 2(x^2+Z^2)
    fp2_sub3(&coeffQ2[2], &tmp0, &tmp1); // 


    fp2_add3(&coeffQ3[0], &P3->x, &P3->z);   //precomputations //Psum=x+z
    fp2_sub3(&coeffQ3[1], &P3->x, &P3->z);   // Pdif= x-z
    fp2_sq2(&tmp0, &coeffQ3[0]); //(x+z)^2
    fp2_sq2(&tmp1, &coeffQ3[1]); //(x-z)^2
    fp2_add3(&coeffQ3[3], &tmp0, &tmp1); // 2(x^2+Z^2)
    fp2_sub3(&coeffQ3[2], &tmp0, &tmp1); // 

    fp2_add3(&coeffQR[0], &R->x, &R->z);   //precomputations //Psum=x+z
    fp2_sub3(&coeffQR[1], &R->x, &R->z);   // Pdif= x-z
    fp2_sq2(&tmp0, &coeffQR[0]); //(x+z)^2
    fp2_sq2(&tmp1, &coeffQR[1]); //(x-z)^2
    fp2_add3(&coeffQR[3], &tmp0, &tmp1); // 2(x^2+Z^2)
    fp2_sub3(&coeffQR[2], &tmp0, &tmp1); // 

  



    int Minit[k];
    proj2 M[k]; /* XXX: use less space */

    for (long long s = 0;s < k;++s) Minit[s] = 0;

    M[1] = *K; Minit[1] = 1;
    xDBL_fpx(&M[2], A24plus, C24, K); Minit[2] = 1;

    if (sqrtvelu) {
      for (long long s = 3;s < k;++s) {
        if (s & 1) {
          long long i = s/2;
          assert(s == 2*i+1);
          if (i < bs) {
            if (s == 3) {
              assert(Minit[1]);
              assert(Minit[2]);
              xADD_fpx(&M[s],&M[2],&M[1],&M[1]);
              Minit[s] = 1;
              continue;
            }
            assert(Minit[s-2]);
            assert(Minit[s-4]);
            assert(Minit[2]);
            xADD_fpx(&M[s],&M[s-2],&M[2],&M[s-4]);
            Minit[s] = 1;
            continue;
          }
        } else {
          long long i = s/2-1;
          assert(s == 2*i+2);
          if (i < (k-1)/2-2*bs*gs) {
            if (s == 4) {
              assert(Minit[2]);
              xDBL_fpx(&M[s],A24plus, C24,&M[2]);
              Minit[s] = 1;
              continue;
            }
            assert(Minit[s-2]);
            assert(Minit[s-4]);
            assert(Minit[2]);
            xADD_fpx(&M[s],&M[s-2],&M[2],&M[s-4]);
            Minit[s] = 1;
            continue;
          }
        }
  
        if (bs > 0) {
          if (s == 2*bs) {
            assert(Minit[bs-1]);
            assert(Minit[bs+1]);
            assert(Minit[2]);
            xADD_fpx(&M[s],&M[bs+1],&M[bs-1],&M[2]);
            Minit[s] = 1;
            continue;
          } else if (s == 4*bs) {
            assert(Minit[2*bs]);
            xDBL_fpx(&M[s],A24plus, C24,&M[2*bs]);
            Minit[s] = 1;
            continue;
          } else if (s == 6*bs) {
            assert(Minit[2*bs]);
            assert(Minit[4*bs]);
            xADD_fpx(&M[s],&M[4*bs],&M[2*bs],&M[2*bs]);
            Minit[s] = 1;
            continue;
          } else if (s%(4*bs) == 2*bs) {
            long long j = s/(4*bs);
            assert(s == 2*bs*(2*j+1));
            if (j < gs) {
              assert(Minit[s-4*bs]);
              assert(Minit[s-8*bs]);
              assert(Minit[4*bs]);
              xADD_fpx(&M[s],&M[s-4*bs],&M[4*bs],&M[s-8*bs]);
              Minit[s] = 1;
              continue;
            }
          }
        }
      }
    } else {
      for (long long i = 3;i <= (k-1)/2;++i) {
	Minit[i] = 1;
        xADD_fpx(&M[i],&M[i-1],K,&M[i-2]);
      }
    }

    proj2 Abatch;
    Abatch.x.x0 = fp_1;
    Abatch.x.x1 = fp_0;
    Abatch.z.x0 = fp_1;
    Abatch.z.x1 = fp_0;    
    proj2 Q1, Q2, Q3,QR;
    Q1.x.x0 = fp_1;
    Q1.x.x1 = fp_0;
    Q1.z.x0 = fp_1;
    Q1.z.x1 = fp_0;    

    Q2.x.x0 = fp_1;
    Q2.x.x1 = fp_0;
    Q2.z.x0 = fp_1;
    Q2.z.x1 = fp_0;    


    Q3.x.x0 = fp_1;
    Q3.x.x1 = fp_0;
    Q3.z.x0 = fp_1;
    Q3.z.x1 = fp_0;    


    QR.x.x0 = fp_1;
    QR.x.x1 = fp_0;
    QR.z.x0 = fp_1;
    QR.z.x1 = fp_0;    

    if (sqrtvelu) {
      long long TIlen = 2*bs+poly_tree1size_fp2(bs);
      fp2 TI[TIlen];
  
      for (long long i = 0;i < bs;++i) {
        assert(Minit[2*i+1]);
        fp2_neg2(&TI[2*i],&M[2*i+1].x);
        fp2_copy(&TI[2*i+1], &M[2*i+1].z);
      }
  
      poly_tree1_fp2(TI+2*bs,TI,bs);
  
      fp2 TP1[3*gs];
      fp2 TPinv1[3*gs];
      fp2 TP2[3*gs];
      fp2 TPinv2[3*gs];
      fp2 TP3[3*gs];
      fp2 TPinv3[3*gs];
      fp2 TPR[3*gs];
      fp2 TPinvR[3*gs];
      fp2 T1[3*gs];
      fp2 Tminus1[3*gs];
      fp2 coeff[5];
      for (long long j = 0;j < gs;++j) {
        assert(Minit[2*bs*(2*j+1)]);
        biquad_pm1_opt_fp2(coeff, T1+3*j,Tminus1+3*j,&M[2*bs*(2*j+1)],&A,&C);
        biquad_both_fp2(TP1+3*j,TPinv1+3*j, coeff, coeffQ1, &C);
        biquad_both_fp2(TP2+3*j,TPinv2+3*j, coeff, coeffQ2, &C);
        biquad_both_fp2(TP3+3*j,TPinv3+3*j, coeff, coeffQ3, &C);
        biquad_both_fp2(TPR+3*j,TPinvR+3*j, coeff, coeffQR, &C);

      }
  
      poly_multiprod2_fp2(TP1,gs);
      poly_multiprod2_fp2(TPinv1,gs);

  
      poly_multiprod2_fp2(TP2,gs);
      poly_multiprod2_fp2(TPinv2,gs);

  
      poly_multiprod2_fp2(TP3,gs);
      poly_multiprod2_fp2(TPinv3,gs);

  
      poly_multiprod2_fp2(TPR,gs);
      poly_multiprod2_fp2(TPinvR,gs);

      poly_multiprod2_selfreciprocal_fp2(T1,gs);
      poly_multiprod2_selfreciprocal_fp2(Tminus1,gs);

      long long precompsize = poly_multieval_precomputesize_fp2(bs,2*gs+1);
      fp2 precomp[precompsize];
      poly_multieval_precompute_fp2(precomp,bs,2*gs+1,TI,TI+2*bs);

      fp2 v[bs];

      poly_multieval_postcompute_fp2(v,bs,TP1,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Q1.z, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Q1.z,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,TPinv1,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Q1.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Q1.x,&v[i]);



      poly_multieval_postcompute_fp2(v,bs,TP2,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Q2.z, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Q2.z,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,TPinv2,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Q2.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Q2.x,&v[i]);



      poly_multieval_postcompute_fp2(v,bs,TP3,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Q3.z, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Q3.z,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,TPinv3,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Q3.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Q3.x,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,TPR,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&QR.z, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&QR.z,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,TPinvR,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&QR.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&QR.x,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,T1,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Abatch.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Abatch.x,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,Tminus1,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Abatch.z,&v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Abatch.z,&v[i]);

      for (long long i = 0;i < (k-1)/2-2*bs*gs;++i) {
        assert(Minit[2*i+2]);
        fp2_sub3(&tmp1, &M[2*i+2].x, &M[2*i+2].z);
        fp2_add3(&tmp0, &M[2*i+2].x, &M[2*i+2].z);
        fp2_mul2(&Abatch.x,&tmp1);
        fp2_mul2(&Abatch.z,&tmp0);


        fp2_mul3(&tmp2, &tmp1, &Psum1);
        fp2_mul3(&tmp3, &tmp0, &Pdif1);


        fp2_add3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&Q1.x, &tmp4);
        fp2_sub3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&Q1.z, &tmp4);

        fp2_mul3(&tmp2, &tmp1, &Psum2);
        fp2_mul3(&tmp3, &tmp0, &Pdif2);


        fp2_add3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&Q2.x, &tmp4);
        fp2_sub3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&Q2.z, &tmp4);

        fp2_mul3(&tmp2, &tmp1, &Psum3);
        fp2_mul3(&tmp3, &tmp0, &Pdif3);


        fp2_add3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&Q3.x, &tmp4);
        fp2_sub3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&Q3.z, &tmp4);

        fp2_mul3(&tmp2, &tmp1, &PsumR);
        fp2_mul3(&tmp3, &tmp0, &PdifR);


        fp2_add3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&QR.x, &tmp4);
        fp2_sub3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&QR.z, &tmp4);
      }
    } else {
      for (long long i = 1;i <= (k-1)/2;++i) {
        assert(Minit[i]);
        fp2_sub3(&tmp1, &M[i].x, &M[i].z);
        fp2_add3(&tmp0, &M[i].x, &M[i].z);
        if (i > 1) {
          fp2_mul2(&Abatch.x,&tmp1);
          fp2_mul2(&Abatch.z,&tmp0);
        } else {
          Abatch.x = tmp1;
          Abatch.z = tmp0;
        }
        fp2_mul3(&tmp2, &tmp1, &Psum1); 
        fp2_mul3(&tmp3, &tmp0, &Pdif1);
        fp2_add3(&tmp4, &tmp3, &tmp2);

        fp2_mul3(&tmp5, &tmp1, &Psum2); 
        fp2_mul3(&tmp6, &tmp0, &Pdif2);
        fp2_add3(&tmp7, &tmp6, &tmp5);

        fp2_mul3(&tmp8, &tmp1, &Psum3); 
        fp2_mul3(&tmp9, &tmp0, &Pdif3);
        fp2_add3(&tmp10, &tmp9, &tmp8);

        fp2_mul3(&tmp11, &tmp1, &PsumR); 
        fp2_mul3(&tmp12, &tmp0, &PdifR);
        fp2_add3(&tmp13, &tmp11, &tmp12);

        if (i > 1) {
          fp2_mul2(&Q1.x, &tmp4);
          fp2_mul2(&Q2.x, &tmp7);
          fp2_mul2(&Q3.x, &tmp10);
          fp2_mul2(&QR.x, &tmp13);
        } else {
          Q1.x = tmp4;
          Q2.x = tmp7;
          Q3.x = tmp10;
          QR.x = tmp13;
        }
        fp2_sub3(&tmp4, &tmp3, &tmp2);
        fp2_sub3(&tmp7, &tmp6, &tmp5);
        fp2_sub3(&tmp10, &tmp9, &tmp8);
        fp2_sub3(&tmp13, &tmp11, &tmp12);
        if (i > 1) {
          fp2_mul2(&Q1.z, &tmp4);
          fp2_mul2(&Q2.z, &tmp7);
          fp2_mul2(&Q3.z, &tmp10);
          fp2_mul2(&QR.z, &tmp13);
        } else {
          Q1.z = tmp4;
          Q2.z = tmp7;
          Q3.z = tmp10;
          QR.z = tmp13;
        }
      }
    }


    // point evaluation
    fp2_sq1(&Q1.x);
    fp2_sq1(&Q1.z);
    fp2_mul2(&P1->x, &Q1.x);
    fp2_mul2(&P1->z, &Q1.z);

    fp2_sq1(&Q2.x);
    fp2_sq1(&Q2.z);
    fp2_mul2(&P2->x, &Q2.x);
    fp2_mul2(&P2->z, &Q2.z);

    fp2_sq1(&Q3.x);
    fp2_sq1(&Q3.z);
    fp2_mul2(&P3->x, &Q3.x);
    fp2_mul2(&P3->z, &Q3.z);

    fp2_sq1(&QR.x);
    fp2_sq1(&QR.z);
    fp2_mul2(&R->x, &QR.x);
    fp2_mul2(&R->z, &QR.z);
    //compute Aed.x^k, Aed.z^k
    exp_by_squaring_fpx(&Aedx, &Aedz, k);
    //compute prod.x^8, prod.z^8
    fp2_sq1(&Abatch.x);
    fp2_sq1(&Abatch.x);
    fp2_sq1(&Abatch.x);
    fp2_sq1(&Abatch.z);
    fp2_sq1(&Abatch.z);
    fp2_sq1(&Abatch.z);

    //compute image curve parameters
    fp2_mul2(&Aedz, &Abatch.x);
    fp2_mul2(&Aedx, &Abatch.z);

    //compute Montgomery params
    fp2_add3(A24plus, &Aedx, &Aedx); //2/
    fp2_sub3(C24, &Aedx, &Aedz); //Aedx-aedz
    fp2_add3(A24plus, A24plus, A24plus); //4
    fp2_add3(C24, C24, C24);
    fp2_add3(C24, C24, C24);
}

void xISOG_sqrt_fin(fp2  *A24plus, fp2  *C24, proj2 *R, proj2 const *K, long long k)
{
    assert (k >= 3);
    assert (k % 2 == 1);

    long long sqrtvelu = 0;
    long long bs = 0;
    long long gs = 0;

    steps(&bs,&gs,k);
    if (bs) {
      sqrtvelu = 1;
      assert(bs > 0);
      assert(gs > 0);
      assert(!(bs&1));
    }

    fp2 tmp0, tmp1, tmp2, tmp3, tmp4, Aedz, Aedx;
    fp2 A, C;

    fp2_add3(&A, A24plus, A24plus); // 2A+4C
    fp2_sub3(&A, &A, C24); // 2A
    fp2_add3(&A, &A, &A); //4A    
    fp2_copy(&C, C24); //C=4C

    fp2_copy(&Aedx, A24plus); //A+2c
    fp2_sub3(&Aedz, A24plus, C24); // Aedz = A+2C-4C=A-2c
   
    fp2  PsumR, PdifR;
   fp2 coeffQR[4];

    fp2_add3(&PsumR, &R->x, &R->z);   //precomputations
    fp2_sub3(&PdifR, &R->x, &R->z);



    fp2_add3(&coeffQR[0], &R->x, &R->z);   //precomputations //Psum=x+z
    fp2_sub3(&coeffQR[1], &R->x, &R->z);   // Pdif= x-z
    fp2_sq2(&tmp0, &coeffQR[0]); //(x+z)^2
    fp2_sq2(&tmp1, &coeffQR[1]); //(x-z)^2
    fp2_add3(&coeffQR[3], &tmp0, &tmp1); // 2(x^2+Z^2)
    fp2_sub3(&coeffQR[2], &tmp0, &tmp1); // 



    int Minit[k];
    proj2 M[k]; /* XXX: use less space */

    for (long long s = 0;s < k;++s) Minit[s] = 0;

    M[1] = *K; Minit[1] = 1;
    xDBL_fpx(&M[2], A24plus, C24, K); Minit[2] = 1;

    if (sqrtvelu) {
      for (long long s = 3;s < k;++s) {
        if (s & 1) {
          long long i = s/2;
          assert(s == 2*i+1);
          if (i < bs) {
            if (s == 3) {
              assert(Minit[1]);
              assert(Minit[2]);
              xADD_fpx(&M[s],&M[2],&M[1],&M[1]);
              Minit[s] = 1;
              continue;
            }
            assert(Minit[s-2]);
            assert(Minit[s-4]);
            assert(Minit[2]);
            xADD_fpx(&M[s],&M[s-2],&M[2],&M[s-4]);
            Minit[s] = 1;
            continue;
          }
        } else {
          long long i = s/2-1;
          assert(s == 2*i+2);
          if (i < (k-1)/2-2*bs*gs) {
            if (s == 4) {
              assert(Minit[2]);
              xDBL_fpx(&M[s],A24plus, C24,&M[2]);
              Minit[s] = 1;
              continue;
            }
            assert(Minit[s-2]);
            assert(Minit[s-4]);
            assert(Minit[2]);
            xADD_fpx(&M[s],&M[s-2],&M[2],&M[s-4]);
            Minit[s] = 1;
            continue;
          }
        }
  
        if (bs > 0) {
          if (s == 2*bs) {
            assert(Minit[bs-1]);
            assert(Minit[bs+1]);
            assert(Minit[2]);
            xADD_fpx(&M[s],&M[bs+1],&M[bs-1],&M[2]);
            Minit[s] = 1;
            continue;
          } else if (s == 4*bs) {
            assert(Minit[2*bs]);
            xDBL_fpx(&M[s],A24plus, C24,&M[2*bs]);
            Minit[s] = 1;
            continue;
          } else if (s == 6*bs) {
            assert(Minit[2*bs]);
            assert(Minit[4*bs]);
            xADD_fpx(&M[s],&M[4*bs],&M[2*bs],&M[2*bs]);
            Minit[s] = 1;
            continue;
          } else if (s%(4*bs) == 2*bs) {
            long long j = s/(4*bs);
            assert(s == 2*bs*(2*j+1));
            if (j < gs) {
              assert(Minit[s-4*bs]);
              assert(Minit[s-8*bs]);
              assert(Minit[4*bs]);
              xADD_fpx(&M[s],&M[s-4*bs],&M[4*bs],&M[s-8*bs]);
              Minit[s] = 1;
              continue;
            }
          }
        }
      }
    } else {
      for (long long i = 3;i <= (k-1)/2;++i) {
	Minit[i] = 1;
        xADD_fpx(&M[i],&M[i-1],K,&M[i-2]);
      }
    }

    proj2 Abatch;
    Abatch.x.x0 = fp_1;
    Abatch.x.x1 = fp_0;
    Abatch.z.x0 = fp_1;
    Abatch.z.x1 = fp_0;    
    proj2 QR;

    QR.x.x0 = fp_1;
    QR.x.x1 = fp_0;
    QR.z.x0 = fp_1;
    QR.z.x1 = fp_0;    

    if (sqrtvelu) {
      long long TIlen = 2*bs+poly_tree1size_fp2(bs);
      fp2 TI[TIlen];
  
      for (long long i = 0;i < bs;++i) {
        assert(Minit[2*i+1]);
        fp2_neg2(&TI[2*i],&M[2*i+1].x);
        fp2_copy(&TI[2*i+1], &M[2*i+1].z);
      }
  
      poly_tree1_fp2(TI+2*bs,TI,bs);
  

      fp2 TPR[3*gs];
      fp2 TPinvR[3*gs];
      fp2 T1[3*gs];
      fp2 Tminus1[3*gs];
      fp2 coeff[5];
      for (long long j = 0;j < gs;++j) {
        assert(Minit[2*bs*(2*j+1)]);
        biquad_pm1_opt_fp2(coeff, T1+3*j,Tminus1+3*j,&M[2*bs*(2*j+1)],&A,&C);
        biquad_both_fp2(TPR+3*j,TPinvR+3*j, coeff, coeffQR, &C);

      }
  

      poly_multiprod2_fp2(TPR,gs);
      poly_multiprod2_fp2(TPinvR,gs);

      poly_multiprod2_selfreciprocal_fp2(T1,gs);
      poly_multiprod2_selfreciprocal_fp2(Tminus1,gs);

      long long precompsize = poly_multieval_precomputesize_fp2(bs,2*gs+1);
      fp2 precomp[precompsize];
      poly_multieval_precompute_fp2(precomp,bs,2*gs+1,TI,TI+2*bs);

      fp2 v[bs];

      poly_multieval_postcompute_fp2(v,bs,TPR,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&QR.z, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&QR.z,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,TPinvR,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&QR.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&QR.x,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,T1,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Abatch.x, &v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Abatch.x,&v[i]);

      poly_multieval_postcompute_fp2(v,bs,Tminus1,2*gs+1,TI,TI+2*bs,precomp);
      fp2_copy(&Abatch.z,&v[0]);
      for (long long i = 1;i < bs;++i) fp2_mul2(&Abatch.z,&v[i]);

      for (long long i = 0;i < (k-1)/2-2*bs*gs;++i) {
        assert(Minit[2*i+2]);
        fp2_sub3(&tmp1, &M[2*i+2].x, &M[2*i+2].z);
        fp2_add3(&tmp0, &M[2*i+2].x, &M[2*i+2].z);
        fp2_mul2(&Abatch.x,&tmp1);
        fp2_mul2(&Abatch.z,&tmp0);



        fp2_mul3(&tmp2, &tmp1, &PsumR);
        fp2_mul3(&tmp3, &tmp0, &PdifR);


        fp2_add3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&QR.x, &tmp4);
        fp2_sub3(&tmp4, &tmp3, &tmp2);
        fp2_mul2(&QR.z, &tmp4);
      }
    } else {
      for (long long i = 1;i <= (k-1)/2;++i) {
        assert(Minit[i]);
        fp2_sub3(&tmp1, &M[i].x, &M[i].z);
        fp2_add3(&tmp0, &M[i].x, &M[i].z);
        if (i > 1) {
          fp2_mul2(&Abatch.x,&tmp1);
          fp2_mul2(&Abatch.z,&tmp0);
        } else {
          Abatch.x = tmp1;
          Abatch.z = tmp0;
        }


        fp2_mul3(&tmp2, &tmp1, &PsumR); 
        fp2_mul3(&tmp3, &tmp0, &PdifR);
        fp2_add3(&tmp4, &tmp2, &tmp3);

        if (i > 1) {

          fp2_mul2(&QR.x, &tmp4);
        } else {

          QR.x = tmp4;
        }

        fp2_sub3(&tmp4, &tmp2, &tmp3);
        if (i > 1) {

          fp2_mul2(&QR.z, &tmp4);
        } else {

          QR.z = tmp4;
        }
      }
    }


    // point evaluation

    fp2_sq1(&QR.x);
    fp2_sq1(&QR.z);
    fp2_mul2(&R->x, &QR.x);
    fp2_mul2(&R->z, &QR.z);
    //compute Aed.x^k, Aed.z^k
    exp_by_squaring_fpx(&Aedx, &Aedz, k);
    //compute prod.x^8, prod.z^8
    fp2_sq1(&Abatch.x);
    fp2_sq1(&Abatch.x);
    fp2_sq1(&Abatch.x);
    fp2_sq1(&Abatch.z);
    fp2_sq1(&Abatch.z);
    fp2_sq1(&Abatch.z);

    //compute image curve parameters
    fp2_mul2(&Aedz, &Abatch.x);
    fp2_mul2(&Aedx, &Abatch.z);

    //compute Montgomery params
    fp2_add3(A24plus, &Aedx, &Aedx); //2/
    fp2_sub3(C24, &Aedx, &Aedz); //Aedx-aedz
    fp2_add3(A24plus, A24plus, A24plus); //4
    fp2_add3(C24, C24, C24);
    fp2_add3(C24, C24, C24);
}

void inv_3_way(fp2 *z1, fp2 *z2, fp2 *z3)
{ // 3-way simultaneous inversion
  // Input:  z1,z2,z3
  // Output: 1/z1,1/z2,1/z3 (override inputs).
    fp2 t0, t1, t2, t3;

    fp2_mul3(&t0, z1, z2);
    fp2_mul3(&t1, &t0, z3);
    fp2_inv(&t1);
    fp2_mul3(&t2, &t1, z3);
    fp2_mul3(&t3, &t2, z2);
    fp2_mul3(z2, &t2, z1);
    fp2_mul3(z3, &t0, &t1);
    fp2_copy(z1, &t3);


}



void KeyGen_A(uintbig *cofA, uintbig *maskA, uintbig *ma, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA)
{
    //
    fp2 A24plus, C24, xP, xQ, xPQ;
    proj2 R, phiP, phiQ, phiR;  

    //Initialize constatnts
    C24.x0=fp_1;
    C24.x1=fp_0;

    A24plus.x0=fp_0;
    A24plus.x1=fp_sa;

    // A24plus=A+2C, C24=4C
    fp2_add3(&C24, &C24, &C24); // C24=2
    fp2_add3(&A24plus, &A24plus, &C24); // A24plus=A+2c
    fp2_add3(&C24, &C24, &C24); // C24=4

    //Kernel point
    xP.x0 = fp_pax0;
    xP.x1 = fp_pax1;

    xQ.x0 = fp_qax0;
    xQ.x1 = fp_qax1;

    xPQ.x0 = fp_rax0;
    xPQ.x1 = fp_rax1;

        
    phiP.x.x0 = fp_pbx0;
    phiP.x.x1 = fp_pbx1;
    phiP.z.x0 = fp_1;
    phiP.z.x1 = fp_0;

    phiQ.x.x0 = fp_qbx0;
    phiQ.x.x1 = fp_qbx1;
    phiQ.z.x0 = fp_1;
    phiQ.z.x1 = fp_0;

    phiR.x.x0 = fp_rbx0;
    phiR.x.x1 = fp_rbx1;
    phiR.z.x0 = fp_1;
    phiR.z.x1 = fp_0;

    int Alice=0;
 
    //generate kernel
    LADDER3PT(&xP, &xQ, &xPQ, ma, Alice, &R, &A24plus, &C24);
 
    // isogeny

    for (long long i = Alice_prime_num-1; i >= 1; --i)
    {

        proj2 K; //kernel
        xMUL_fpx(&K, &A24plus, &C24, &R, &cofA[i-1]);
       
        if (memcmp(&K.z.x0, &fp_0, sizeof(fp)) && memcmp(&K.z.x1, &fp_0, sizeof(fp)) ) {

               xISOG_sqrt_4pts(&A24plus, &C24, &phiP, &phiQ, &phiR, &R, &K, Alice_primes[i]);

        }        
    }

    //generate random -> must change rand()&1 for security
    int chk=0;
    uintbig kout = uintbig_0;
    uintbig pa = uintbig_b;
    for(int i=0; i<Bob_prime_num; i++)
    {
      uintbig Mi= maskA[i];

      chk=rand()&1;
      if (chk==1)
      {
          uintbig_mul3_64(&Mi, &Mi, Bob_primes[i]-1);         
      }
      uintbig_mul3_64(&Mi, &Mi, Bob_inv[i]);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_add3(&kout, &kout, &Mi);
      uintbig_sub3(&kout, &kout, &pa);

    }

    xMUL_fpx(&phiP, &A24plus, &C24, &phiP, &kout);
    xMUL_fpx(&phiQ, &A24plus, &C24, &phiQ, &kout);
    xMUL_fpx(&phiR, &A24plus, &C24, &phiR, &kout);
    
    //return parameters
    inv_3_way(&phiP.z, &phiQ.z, &phiR.z);

    fp2_mul3(outP, &phiP.z, &phiP.x);
    fp2_mul3(outQ, &phiQ.z, &phiQ.x);
    fp2_mul3(outR, &phiR.z, &phiR.x);

    fp2_add3(&A24plus, &A24plus, &A24plus); // 2A+4C
    fp2_sub3(&A24plus, &A24plus, &C24); // 2A
    fp2_add3(&A24plus, &A24plus, &A24plus); //4A
    fp2_inv(&C24);
    fp2_mul3(outA, &A24plus, &C24); 


}

void KeyGen_B(uintbig *cofB, uintbig *maskB, uintbig *mB, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA)
{
    //
    fp2 A24plus, C24, xP, xQ, xPQ;
    proj2 R, phiP, phiQ, phiR;  

    //Initialize constatnts
    C24.x0=fp_1;
    C24.x1=fp_0;
    
    A24plus.x0=fp_0;
    A24plus.x1=fp_sa;

    // A24plus=A+2C, C24=4C
    fp2_add3(&C24, &C24, &C24); // C24=2
    fp2_add3(&A24plus, &A24plus, &C24); // A24plus=A+2c
    fp2_add3(&C24, &C24, &C24); // C24=4

    //Kernel point
    xP.x0 = fp_pbx0;
    xP.x1 = fp_pbx1;

    xQ.x0 = fp_qbx0;
    xQ.x1 = fp_qbx1;

    xPQ.x0 = fp_rbx0;
    xPQ.x1 = fp_rbx1;

    phiP.x.x0 = fp_pax0;
    phiP.x.x1 = fp_pax1;
    phiP.z.x0 = fp_1;
    phiP.z.x1 = fp_0;

    phiQ.x.x0 = fp_qax0;
    phiQ.x.x1 = fp_qax1;
    phiQ.z.x0 = fp_1;
    phiQ.z.x1 = fp_0;

    phiR.x.x0 = fp_rax0;
    phiR.x.x1 = fp_rax1;
    phiR.z.x0 = fp_1;
    phiR.z.x1 = fp_0;

    int Bob=1;

    //generate kernel
    LADDER3PT(&xP, &xQ, &xPQ, mB, Bob, &R, &A24plus, &C24);
    
    // isogeny
    for (long long i = Bob_prime_num-1; i >= 0; --i)
    {

        proj2 K; //kernel
        xMUL_fpx(&K, &A24plus, &C24, &R, &cofB[i]);
  
        if (memcmp(&K.z.x0, &fp_0, sizeof(fp)) && memcmp(&K.z.x1, &fp_0, sizeof(fp)) ) {

            xISOG_sqrt_4pts(&A24plus, &C24, &phiP, &phiQ, &phiR, &R, &K, Bob_primes[i]);

        }        
    }

    //generate random -> must change rand()&1 for security
    int chk=0;
    uintbig kout = uintbig_0;
    uintbig pa = uintbig_a;
    for(int i=0; i<Alice_prime_num; i++)
    {
      uintbig Mi= maskB[i];

      chk=rand()&1;
      if (chk==1)
      {
          uintbig_mul3_64(&Mi, &Mi, Alice_primes[i]-1);    
      }
      uintbig_mul3_64(&Mi, &Mi, Alice_inv[i]);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_sub3(&Mi, &Mi, &pa);
      uintbig_add3(&kout, &kout, &Mi);
      uintbig_sub3(&kout, &kout, &pa);

    }

    xMUL_fpx(&phiP, &A24plus, &C24, &phiP, &kout);
    xMUL_fpx(&phiQ, &A24plus, &C24, &phiQ, &kout);
    xMUL_fpx(&phiR, &A24plus, &C24, &phiR, &kout);


    inv_3_way(&phiP.z, &phiQ.z, &phiR.z);
    fp2_mul3(outP, &phiP.z, &phiP.x);
    fp2_mul3(outQ, &phiQ.z, &phiQ.x);
    fp2_mul3(outR, &phiR.z, &phiR.x);


    fp2_add3(&A24plus, &A24plus, &A24plus); // 2A+4C
    fp2_sub3(&A24plus, &A24plus, &C24); // 2A
    fp2_add3(&A24plus, &A24plus, &A24plus); //4A
    fp2_inv(&C24);
    fp2_mul3(outA, &A24plus, &C24);

}



void KeyAgree_A(uintbig *cofA, uintbig *mA, fp2 *jinvA, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA)
{
    //
    fp2 A24plus, C24;
    proj2 R;  
    proj2 chkP, chkQ;

    fp2_copy(&chkP.x, outP);
    fp2_copy(&chkQ.x, outQ);
    chkP.z.x0=fp_1;
    chkP.z.x1=fp_0;
    chkQ.z.x0=fp_1;
    chkQ.z.x1=fp_0;

    //Initialize constatnts
    C24.x0=fp_1;
    C24.x1=fp_0;

    // A24plus=A+2C, C24=4C
    // A=6, C=1
    fp2_add3(&C24, &C24, &C24); // C24=2
    fp2_add3(&A24plus, outA, &C24); // A24plus=A+2C
    fp2_add3(&C24, &C24, &C24); // C24=4
    //Kernel point


    int Alice=0;
    
    //generate kernel
    LADDER3PT(outP, outQ, outR, mA, Alice, &R, &A24plus, &C24);
    


    // isogeny

    for (long long i = Alice_prime_num-1; i >= 1; --i)
    {

        proj2 K; //kernel
        xMUL_fpx(&K, &A24plus, &C24, &R, &cofA[i-1]);
        
       
        if (memcmp(&K.z.x0, &fp_0, sizeof(fp)) && memcmp(&K.z.x1, &fp_0, sizeof(fp)) ) {

            xISOG_sqrt_fin(&A24plus, &C24,&R, &K, Alice_primes[i]);

        }        
    }

    fp2_add3(&A24plus, &A24plus, &A24plus); // 2A+4C
    fp2_sub3(&A24plus, &A24plus, &C24); // 2A
    fp2_add3(&A24plus, &A24plus, &A24plus); //4A

    j_inv(&A24plus, &C24, jinvA);

}

void KeyAgree_B(uintbig *cofB, uintbig *mB, fp2 *jinvB, fp2 *outP, fp2 *outQ, fp2 *outR, fp2*outA)
{
    //
    fp2 A24plus, C24;
    proj2 R;  

    //Initialize constatnts
    C24.x0=fp_1;
    C24.x1=fp_0;

    // A24plus=A+2C, C24=4C
    fp2_add3(&C24, &C24, &C24); // C24=2
    fp2_add3(&A24plus, outA, &C24); // A24plus=A+2C
    fp2_add3(&C24, &C24, &C24); // C24=4

    int Bob=1;


    LADDER3PT(outP, outQ, outR, mB, Bob, &R, &A24plus, &C24);

    for (long long i = Bob_prime_num-1; i >= 0; --i)
    {

        proj2 K; //kernel
        xMUL_fpx(&K, &A24plus, &C24, &R, &cofB[i]);
         

        if (memcmp(&K.z.x0, &fp_0, sizeof(fp)) && memcmp(&K.z.x1, &fp_0, sizeof(fp)) ) {

            xISOG_sqrt_fin(&A24plus, &C24,&R, &K, Bob_primes[i]);
          
        }        
    }



    fp2_add3(&A24plus, &A24plus, &A24plus); // 2A+4C
    fp2_sub3(&A24plus, &A24plus, &C24); // 2A
    fp2_add3(&A24plus, &A24plus, &A24plus); //4A

    j_inv(&A24plus, &C24, jinvB);

}


void msidh_multable(uintbig *cofA, uintbig *cofB, uintbig *maskA, uintbig *maskB)
{

    uintbig cof = uintbig_1;
    cofB[0]=uintbig_1;

    for(int i=1; i<Bob_prime_num; i++)
    {
        uintbig_mul3_64(&cofB[i], &cofB[i-1], Bob_primes[i-1]);
    }


    uintbig_mul3_64(&cofA[0],&cof,Alice_primes[0]);
    for(int i=1; i<Alice_prime_num-1; i++)
    {
        uintbig_mul3_64(&cofA[i], &cofA[i-1], Alice_primes[i]);
    }
    
    
    for(int i=0; i<Alice_prime_num; i++)
    {
      maskB[i]= uintbig_1;
      for(int j=0; j<Alice_prime_num; j++)
      {
        if(j!=i)
        {
          uintbig_mul3_64(&maskB[i], &maskB[i], Alice_primes[j]); //calculaed
        }

      }  
    }
        
    for(int i=0; i<Bob_prime_num; i++)
    {
      maskA[i]= uintbig_1;
      for(int j=0; j<Bob_prime_num; j++)
      {
        if(j!=i)
        {
          uintbig_mul3_64(&maskA[i], &maskA[i], Bob_primes[j]); //calculaed
        }

      }    
    }
    
    
}


