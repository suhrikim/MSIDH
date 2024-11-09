#include "fpx.h"
#include <string.h>


void fp2_copy(fp2 *acpy, const fp2 *a)
{
    memcpy(&acpy->x0, &a->x0, sizeof(fp));
    memcpy(&acpy->x1, &a->x1, sizeof(fp));
}



void fp2_neg1(fp2 *a)
{   
    fp_sub3(&a->x0, &fp_0, &a->x0);
    fp_sub3(&a->x1, &fp_0, &a->x1);


}


void fp2_neg2(fp2 *c, const fp2 *a)
{   
    fp_sub3(&c->x0, &fp_0, &a->x0);
    fp_sub3(&c->x1, &fp_0, &a->x1);


}
//c=a+b
void fp2_add3(fp2 *c, const fp2 *a, const fp2 *b)
{
    fp_add3(&c->x0, &a->x0, &b->x0);
    fp_add3(&c->x1, &a->x1, &b->x1);
}

//a=a+b
void fp2_add2(fp2 *a, const fp2 *b)
{
    fp_add2(&a->x0,&b->x0);
    fp_add2(&a->x1, &b->x1);
}

void fp2_sub3(fp2 *c, const fp2 *a, const fp2 *b)
{
    fp_sub3(&c->x0, &a->x0, &b->x0);
    fp_sub3(&c->x1, &a->x1, &b->x1);
}

void fp2_sub2(fp2 *a, const fp2 *b)
{
    fp_sub2(&a->x0,&b->x0);
    fp_sub2(&a->x1, &b->x1);
}

void fp2_sq2(fp2 *a, const fp2 *b)
{
    fp t1, t2, t3;
    fp_add3(&t1, &b->x0, &b->x1); //b0+b1
    fp_sub3(&t2, &b->x0, &b->x1); //b0-b1
    fp_add3(&t3, &b->x0, &b->x0); //2b0
    fp_mul3(&a->x0, &t1, &t2);
    fp_mul3(&a->x1, &t3, &b->x1); 

}

void fp2_sq1(fp2 *b)
{
    fp t1, t2, t3;
    fp_add3(&t1, &b->x0, &b->x1); //b0+b1
    fp_sub3(&t2, &b->x0, &b->x1); //b0-b1
    fp_add3(&t3, &b->x0, &b->x0); //2b0
    fp_mul3(&b->x0, &t1, &t2);
    fp_mul3(&b->x1, &t3, &b->x1); 

}

void fp2_mul3(fp2 *c, fp2 const *a, fp2 const *b)
{
    fp t0, t1, t2;
    fp_add3(&t0, &a->x0, &a->x1);// t0= a0+a1
    fp_sub3(&t1, &b->x0, &b->x1);  //b0 = b0-b1
    fp_mul3(&t0, &t0, &t1); // t0 = (ab+a1)(b0-b1)
    fp_mul3(&t1, &a->x0, &b->x1); // t1 = a0b1
    fp_mul3(&t2, &a->x1, &b->x0);// t2 = a1b0
    fp_add3(&c->x1, &t1, &t2); // c1 = a0b1+a0b1
    fp_add3(&c->x0, &t0, &t1);
    fp_sub3(&c->x0, &c->x0, &t2);

}
//  a= a*b
void fp2_mul2(fp2 *a, fp2 const *b)
{
    fp t0, t1, t2;
    fp_add3(&t0, &a->x0, &a->x1);// t0= a0+a1
    fp_sub3(&t1, &b->x0, &b->x1);  //b0 = b0-b1
    fp_mul3(&t0, &t0, &t1); // t0 = (ab+a1)(b0-b1)
    fp_mul3(&t1, &a->x0, &b->x1); // t1 = a0b1
    fp_mul3(&t2, &a->x1, &b->x0);// t2 = a1b0
    fp_add3(&a->x1, &t1, &t2); // c1 = a0b1+a0b1
    fp_add3(&a->x0, &t0, &t1);
    fp_sub3(&a->x0, &a->x0, &t2);

}

void fp2_inv(fp2 *b)
{
    fp2 t1;
    fp_sq2(&t1.x0, &b->x0);
    fp_sq2(&t1.x1, &b->x1);
    fp_add3(&t1.x0, &t1.x0, &t1.x1);

    fp_inv(&t1.x0);
    fp_neg1(&b->x1);
    fp_mul3(&b->x0, &b->x0, &t1.x0);
    fp_mul3(&b->x1, &t1.x0, &b->x1);


}

int fp_issquarechek(fp *a)
{
    fp acpy;
    int chk=0;

    memcpy(&acpy, a, sizeof(fp));
    fp_sqrtcheck(&acpy);

    if(memcmp(&acpy, &fp_1, sizeof(fp))==0)
    {
        chk = 1; //sqaure
    }

    return chk;

}
void fp2_sqrt(fp2 *a, fp2 *b)
{
    fp alp, t0, t1;
    memcpy(&a->x0, &b->x0, sizeof(fp));
    memcpy(&a->x1, &b->x1, sizeof(fp));
    if(memcmp(&a->x1, &fp_0, sizeof(fp))==0)
    {
        fp_sqrt(&a->x0);
    }

    fp_sq2(&t1, &a->x0); // t1 = a0^2
    fp_sq2(&t0, &a->x1); //t0 = a1^2

    fp_add3(&alp, &t0, &t1); /// alp = a0^2+a1 ^2
    fp_sqrt(&alp); // 

    fp_add3(&a->x0, &alp, &a->x0); //t0 = (alp+x0)/2
    fp_mul3(&a->x0, &a->x0, &fp_2inv);
 

    int ret = fp_issquarechek(&a->x0);
    if(!ret)
    {
        fp_sub3(&a->x0, &a->x0, &alp); //  //t0 = (alp+x0)/2-alp = x0-alp/2
    }



    fp_sqrt(&a->x0); //xtmp x0 clear


    fp_add3(&t0, &a->x0, &a->x0); // t0 = 2x0
    fp_inv(&t0); // t0 =1/2x0
    fp_mul3(&a->x1, &a->x1, &t0);


    

}
