#ifndef CSIDH_H
#define CSIDH_H

#include "uintbig.h"
#include "fp.h"
#include "mont.h"
#include "primes.h"

typedef struct private_key {
    int8_t e[(primes_num + 1) / 2]; /* packed int4_t */
} private_key;

typedef struct public_key {
    fp A; /* Montgomery coefficient: represents y^2 = x^3 + Ax^2 + x */
} public_key;

extern const public_key base;

void csidh_private(private_key *priv);
bool csidh(public_key *out, public_key const *in, private_key const *priv);


extern void csidh_useoldxISOG(void);

bool validate(public_key const *in);

void action(public_key *out, public_key const *in, private_key const *priv);

#endif
