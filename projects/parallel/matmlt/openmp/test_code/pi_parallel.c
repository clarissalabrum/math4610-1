#include <stdio.h>
#ifdef _OPENMP
  #include <omp.h>
#else
  #define omp_get_num_threads() 1
  #define omp_set_num_threads(n) 1
  #define omp_get_thread_num() 1;
#endif
static long num_steps = 100000;
double step;
#define NUM_THREADS 6
void main()
{
  int i, nthreads;
  double pi;
  double sum[NUM_THREADS];
  step = 1.0 / (double) num_steps;
  omp_set_num_threads(NUM_THREADS);

#pragma omp parallel
{
    int i, id, nthrds;
    double x;
    id = omp_get_thread_num();
    nthrds = omp_get_num_threads();
    if(id == 0) nthreads = nthrds;
    for(i=id, sum[id]=0.0; i<num_steps; i=i+nthrds) {
      x = ( i + 0.5 )* step;
      sum[id] += 4.0 / ( 1.0 + x * x );
    }
  }
  for(i=0, pi=0.0; i<nthreads; i++) pi += sum[i] * step;
  printf("Approximate value of pi: %f\n", pi);
}
