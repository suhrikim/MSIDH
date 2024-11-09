#ifndef POLYFPX_H
#define POLYFPX_H

#include "fp.h"
#include "fpx.h"

void poly_mul_fp2(fp2 *c,const fp2 *a,long long alen,const fp2 *b,long long blen);

/* assumes !alen or !blen or clen <= alen+blen-1 */
void poly_mul_low_fp2(fp2 *c,long long clen,const fp2 *a,long long alen,const fp2 *b,long long blen);

/* assumes !alen or !blen or cstart <= alen+blen-1 */
void poly_mul_high_fp2(fp2 *c,long long cstart,const fp2 *a,long long alen,const fp2 *b,long long blen);

/* assumes !alen or !blen or: 0 <= cstart; 0 <= clen; cstart+clen <= alen+blen-1 */
void poly_mul_mid_fp2(fp2 *c,long long cstart,long long clen,const fp2 *a,long long alen,const fp2 *b,long long blen);

/* input (and output) polynomials are self-reciprocal */
void poly_mul_selfreciprocal_fp2(fp2 *c,const fp2 *a,long long alen,const fp2 *b,long long blen);

/* input: T[0...3n-1] has n 3-coeff polys */
/* output: T[0...2n] has 1 (2n+1)-coeff poly */
/* namely the product of the original polys */
void poly_multiprod2_fp2(fp2 *T,long long n);

/* poly_multiprod2 with polys guaranteed to be self-reciprocal */
void poly_multiprod2_selfreciprocal_fp2(fp2 *T,long long n);

/* XXX: should integrate this into multieval_precompute */
/* input: P[0...2n-1] has n 2-coeff polys */
/* output: number of coeffs in product tree (minus n) */
/* tree itself (without P) is stored in T */
/* for n>=2, product is stored in final n+1 coeffs of T */
long long poly_tree1_fp2(fp2 *T,const fp2 *P,long long n);

long long poly_tree1size_fp2(long long n);

/* input: polynomial f with flen>0 coeffs */
/* output: n scaled values v[0],...,v[n-1] of f */
/* evaluation points: roots of the n 2-coeff polys in P */
/* another input: T from poly_tree1 */
/* scaling: v[i] is value multiplied by a function of (P,i) */
/* namely a product of powers of leading coefficients from P */
void poly_multieval_fp2(fp2 *v,long long n,const fp2 *f,long long flen,const fp2 *P,const fp2 *T);

void poly_multieval_precompute_fp2(fp2 *precomp,long long n,long long flen,const fp2 *P,const fp2 *T);

long long poly_multieval_precomputesize_fp2(long long n,long long flen);

void poly_multieval_postcompute_fp2(fp2 *v,long long n,const fp2 *f,long long flen,const fp2 *P,const fp2 *T,const fp2 *precomp);

#endif
