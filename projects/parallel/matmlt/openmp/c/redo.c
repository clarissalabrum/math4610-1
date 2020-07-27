#include <stdio.h>
#include <stdlib.h>
#include <time.h>
/*
 * this part lines up the serial versus parallel implementation in openMP. if
 * the compiler flag is set to include openMP intrinsics the first option will
 * be used and if not the second option. 
 */
#define MAXROWS 1024
#define MAXCOLS 1024
/*
 * this part lines up the serial versus parallel implementation in openMP. if
 * the compiler flag is set to include openMP intrinsics the first option will
 * be used and if not the second option.
 */
#ifdef _OPEN_MP
  #include <omp.h>
#else
  #define omp_set_num_threads(n) 1
#endif
/*
 * set the main code to run the algorithm
 */
int main()
{
  clock_t start, end;
  double cpu_time_used;
  int i;
  int j;
  double sum;
  /*
   * set up storage for the code
   */
  double x[MAXROWS];
  double y[MAXCOLS];
  double a[MAXROWS][MAXCOLS];
  /*
   * initialize the input vector
   */
  srand(time(NULL));
  for(j=0; j<MAXCOLS; j++) x[j] = 1.0;
  for(i=0; i<MAXCOLS; i++) {
    for(j=0; j<MAXCOLS; j++) {
      a[i][j] = ((double) rand() / (RAND_MAX)) + 1;
    }
  }
  /*
   * start the clock
   */
  start = clock();
/* * 
 * the following is the omp deal!
 */
#pragma omp parallel private(i, j, sum)
{
  /*
   * compute the matrix vector product
   */
  for(i=0; i<MAXROWS; i++) {
    sum = 0.0;
    for(j=0; j<MAXCOLS; j++) {
      sum = sum + a[i][j] * x[j];
    }
    y[i] = sum;
  }
}                                       /* end #pragma for openmp stuff */
  /*
   * stop the clock
   */
  end = clock();
  cpu_time_used = ((double) (end - start)) / CLOCKS_PER_SEC;

  printf("start = %f\n", start);
  printf("end = %f\n", end);
  printf("cpu time = %f\n", cpu_time_used);
  for(int i=0; i<MAXROWS; i++) printf("y[i] = %f\n", y[i]);

}
