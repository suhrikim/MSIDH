SCC=gcc
CC=gcc -O3 -march=native -mtune=native -std=gnu99 -pedantic -Wall -Wextra
BITS?=1024

all: test${BITS}\

test${BITS}: test.c steps_default.o \
uint${BITS}.o rng.o fp${BITS}.o fpx${BITS}.o poly${BITS}.o polyfpx${BITS}.o steps.o primes${BITS}.o mont${BITS}.o csidh${BITS}.o msidh${BITS}.o Makefile
	$(CC) -DBITS=${BITS} -o test${BITS} test.c steps_default.o \
		uint${BITS}.o rng.o fp${BITS}.o fpx${BITS}.o poly${BITS}.o polyfpx${BITS}.o steps.o primes${BITS}.o mont${BITS}.o csidh${BITS}.o msidh${BITS}.o
        

    
msidh${BITS}.o: msidh.c msidh.h Makefile
	$(CC) -DBITS=${BITS} -o msidh${BITS}.o -c msidh.c
    
    
csidh${BITS}.o: csidh.c csidh.h Makefile
	$(CC) -DBITS=${BITS} -o csidh${BITS}.o -c csidh.c




mont${BITS}.o: mont.c mont.h uintbig.h fp.h steps.h Makefile
	$(CC) -DBITS=${BITS} -o mont${BITS}.o -c mont.c


polyfpx${BITS}.o: polyfpx.c polyfpx.h fp.h fpx.h Makefile
	$(CC) -DBITS=${BITS} -o polyfpx${BITS}.o -c polyfpx.c
    
    
poly${BITS}.o: poly.c poly.h fp.h Makefile
	$(CC) -DBITS=${BITS} -o poly${BITS}.o -c poly.c


primes${BITS}.o: primes${BITS}.c primes.h Makefile
	$(CC) -DBITS=${BITS} -c primes${BITS}.c


fp${BITS}.o: fp${BITS}.s fp.h Makefile
	$(SCC) -c fp${BITS}.s

fpx${BITS}.o : fpx.c fpx.h Makefile
	$(CC) -DBITS=${BITS} -o fpx${BITS}.o -c fpx.c



uint${BITS}.o: uint${BITS}.s uintbig.h Makefile
	$(SCC) -c uint${BITS}.s

steps.o: steps.c steps.h Makefile
	$(CC) -c steps.c

steps_default.o: steps_default.c steps.h Makefile
	$(CC) -c steps_default.c

rng.o: rng.c rng.h Makefile
	$(CC) -c rng.c

clean:
	@rm -f test${BITS}
	@rm -f *.o   

