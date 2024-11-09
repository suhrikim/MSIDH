#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <unistd.h>
#include <time.h>
#include <assert.h>

#include "fp.h"
#include "csidh.h"
#include "msidh.h"
#include "primes.h"
clock_t elapsed, start;
float sec;
#define START_WATCH \
{\
 elapsed = -clock(); \
}\

#define STOP_WATCH \
{\
 elapsed += clock();\
 sec = (float)elapsed/CLOCKS_PER_SEC;\
}\

#define PRINT_TIME(qstr) \
{\
 printf("\n[%s: %.5f s]\n",qstr,sec);\
}\

#define TESTLOOP 100

#define OS_WIN       1
#define OS_LINUX     2

#if defined(__WINDOWS__)        // Microsoft Windows OS
    #define OS_TARGET OS_WIN
#else defined(__LINUX__)        // Linux OS
    #define OS_TARGET OS_LINUX 
#endif

int64_t cpucycles(void)
{ // Access system counter for benchmarking
#if (OS_TARGET == OS_WIN) && (TARGET == TARGET_AMD64 || TARGET == TARGET_x86)
    return __rdtsc();
#elif (OS_TARGET == OS_WIN) && (TARGET == TARGET_ARM)
    return __rdpmccntr64();
#elif (OS_TARGET == OS_LINUX) && (TARGET == TARGET_AMD64 || TARGET == TARGET_x86)
    unsigned int hi, lo;

    __asm__ __volatile__ ("rdtsc\n\t" : "=a" (lo), "=d"(hi));
    return ((int64_t)lo) | (((int64_t)hi) << 32);
#elif (OS_TARGET == OS_LINUX) && (TARGET == TARGET_ARM || TARGET == TARGET_ARM64)
    struct timespec time;

    clock_gettime(CLOCK_REALTIME, &time);
    return (int64_t)(time.tv_sec*1e9 + time.tv_nsec);
#else
    return 0;            
#endif
}



static __inline__ uint64_t rdtsc(void)
{
    uint32_t hi, lo;
    __asm__ __volatile__ ("rdtsc" : "=a"(lo), "=d"(hi));
    return lo | (uint64_t) hi << 32;
}

#define loop 100
/* defaults */

#ifndef BENCH_ITS
    #define BENCH_ITS 10
#endif

#if !defined(BENCH_VAL) && !defined(BENCH_ACT)
    #define BENCH_VAL 1
    #define BENCH_ACT 1
#endif
#ifndef BENCH_VAL
    #define BENCH_VAL 0
#endif
#ifndef BENCH_ACT
    #define BENCH_ACT 0
#endif

const unsigned long its = BENCH_ITS;
const bool val = BENCH_VAL, act = BENCH_ACT;


const size_t stacksz = 0x8000;  /* 32k */


void msidh_test()
{
    fp2 outPA, outQA, outRA, outAA;
    fp2 outPB, outQB, outRB, outAB;
    fp2 jinvA, jinvB;
    fp mafp, mbfp;
    uintbig mA, mB;  
    uintbig cofA[Alice_prime_num-1];
    uintbig cofB[Bob_prime_num];

    uintbig maskB[Alice_prime_num];
    uintbig maskA[Bob_prime_num];
    
    // randomly select secret key
    fp_randomA(&mafp);
    fp_dec(&mA, &mafp);
    fp_randomA(&mbfp);
    fp_dec(&mB, &mbfp);

    printf("\n--------------------------------------------------------------------------------------------------------\n\n"); 
    printf("TESTING MSIDH \n"); 
    printf("\n--------------------------------------------------------------------------------------------------------\n\n"); 
    
    
    msidh_multable(&cofA, &cofB, &maskA, &maskB);
    KeyGen_A(&cofA,&maskA, &mA, &outPA, &outQA, &outRA, &outAA);
    KeyGen_B(&cofB, &maskB, &mB, &outPB, &outQB, &outRB, &outAB);
    KeyAgree_A(&cofA, &mA, &jinvA, &outPB, &outQB, &outRB, &outAB);
    KeyAgree_B(&cofB,&mB,  &jinvB, &outPA, &outQA, &outRA, &outAA);

    if(memcmp(&jinvA, &jinvB, sizeof(fp2))==0)
    {
        printf("\n");
        printf("***** SUCCESS *****\n");
        printf("\n");
    }
    else
    {
        printf("\n");
        printf("***** FAIL *****\n");
        printf("\n");
    }

}


void msidh_test_bench()
{
    fp2 outPA, outQA, outRA, outAA;
    fp2 outPB, outQB, outRB, outAB;
    fp2 jinvA, jinvB;
    uintbig maskB[Alice_prime_num];
    uintbig maskA[Bob_prime_num];
    uintbig cofA[Alice_prime_num-1];
    uintbig cofB[Bob_prime_num];   
    double  msidh_tab=0, msidh_kex=0;
    unsigned long long cycles1, cycles2;
    
    fp mafp, mbfp;
    uintbig mA, mB;   
    
    fp_randomA(&mafp);
    fp_dec(&mA, &mafp);
    fp_randomA(&mbfp);
    fp_dec(&mB, &mbfp);



    printf("\n");

    printf("\n--------------------------------------------------------------------------------------------------------\n\n"); 
    printf("BENCHMARKING MSIDH \n"); 
    printf("\n--------------------------------------------------------------------------------------------------------\n\n"); 


    cycles1 = cpucycles();
    msidh_multable(&cofA, &cofB, &maskA, &maskB);
    cycles2 = cpucycles();
    msidh_tab = msidh_tab+((double)(cycles2 - cycles1));
    printf("  MSIDH multable runs in.............................. %10.0f ", msidh_tab);
    printf("\n");

    for(int i=0; i<TESTLOOP; i++)
    {
        cycles1 = cpucycles();
        
        KeyGen_A(&cofA,&maskA, &mA,  &outPA, &outQA, &outRA, &outAA);
        KeyGen_B(&cofB,&maskB, &mB,  &outPB, &outQB, &outRB, &outAB);
        KeyAgree_A(&cofA,&mA, &jinvA, &outPB, &outQB, &outRB, &outAB);
        KeyAgree_B(&cofB,&mB,  &jinvB, &outPA, &outQA, &outRA, &outAA);

        cycles2 = cpucycles();
        msidh_kex = msidh_kex+((double)(cycles2 - cycles1));
    }

    printf("  MSIDH Key exchangeruns in.............................. %10.0f ", msidh_kex/TESTLOOP);
    printf("\n");



}

void msidh_test_bench_ms()
{
    fp2 outPA, outQA, outRA, outAA;
    fp2 outPB, outQB, outRB, outAB;
    fp2 jinvA, jinvB;
    uintbig maskB[Alice_prime_num];
    uintbig maskA[Bob_prime_num];
    uintbig cofA[Alice_prime_num-1];
    uintbig cofB[Bob_prime_num];   
    double msidh_kex=0;

    
    fp mafp, mbfp;
    uintbig mA, mB;   
    
    fp_randomA(&mafp);
    fp_dec(&mA, &mafp);
    fp_randomA(&mbfp);
    fp_dec(&mB, &mbfp);



    printf("\n");

    printf("\n--------------------------------------------------------------------------------------------------------\n\n"); 
    printf("BENCHMARKING MSIDH (in milliseconds)\n"); 
    printf("\n--------------------------------------------------------------------------------------------------------\n\n"); 



    msidh_multable(&cofA, &cofB, &maskA, &maskB);


    for(int i=0; i<TESTLOOP; i++)
    {
        START_WATCH;
        
        KeyGen_A(&cofA,&maskA, &mA,  &outPA, &outQA, &outRA, &outAA);
        KeyGen_B(&cofB,&maskB, &mB,  &outPB, &outQB, &outRB, &outAB);
        KeyAgree_A(&cofA,&mA, &jinvA, &outPB, &outQB, &outRB, &outAB);
        KeyAgree_B(&cofB,&mB,  &jinvB, &outPA, &outQA, &outRA, &outAA);

        STOP_WATCH;
        msidh_kex = msidh_kex+(sec);
    }

    printf("MSIDH Key exchangeruns in.. (%7.3lf ms):\n  ", ((msidh_kex/TESTLOOP)*1000));
    printf("\n");



}

int main()
{

    msidh_test();
    
    msidh_test_bench();
    msidh_test_bench_ms();
}