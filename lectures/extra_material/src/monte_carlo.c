#include <stdio.h>
#define RNG_MOD 741025
//
int rng_int(void) {
    static int state = 0;
    return (state = (1366 * state + 150889) % RNG_MOD);
}
//
double rng_doub(double range) {
    return ((double) rng_int()) / (double) ((RNG_MOD - 1)/range);
}
int main (int argc, char *argv[]) {

    int i, z = 0, threads = 8, iters = 1000000;
    double x,y, pi;

    #pragma omp parallel firstprivate(i,x,y) reduction(+:z) num_threads(threads)
        for (i=0; i<iters; ++i) {
            #pragma omp critical
            {
                x = rng_doub(1.0);
                y = rng_doub(1.0);
            }
            if ((x*x+y*y) <= 1.0)
                z++;
        }

    pi = ((double) z / (double) (iters*threads))*4.0;
    printf("Pi: %lf\n", pi);;
    return 0;

}
