/*
 *
 * Author:           Joe Koebbe
 * Language:         c
 * Compiler:         gcc
 * put in standard libraries for i/o and instrinsics
 */
#include <stdio.h>
#include <stdlib.h>
#include <time.h>
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
 * define some maximum parameters for the problem
 * /
#define MM 10
/*
 * set the main code to run the algorithm
 */
void main()
{
  /*
   * set up the variables and the storage for the matrix-vector multiplication
   * operation
   */
  int i, j;

  double sum;

/*
  double a[MM][MM];
  double x[MM];
  double y[MM];
*/
  /*
   * store a random version of a matrix and input vector
   */
  srand(time(NULL));
  for(i=0; i<MM; i++) {
    for(j=0; j<MM; j++) {
      a[i][j] = ((double) rand() / (RAND_MAX)) + 1;
    }
  }
  for(int j=0; j<MM; j++) x[j] = ((double) rand() / (RAND_MAX)) + 1;
  /*
   * set up a parallel block of code
   */
  #pragma omp parallel default(none) shared(a, x, y, m, n, sum) private(i, j)
  {
    omp_set_num_threads(4);
    for(i=0; i<MM; i++) {
      sum = 0.0;
      for(j=0; j<MM; j++) sum += a[i][j] * x[j];
      y[i] = sum;
    }
  }
  /* for(int i=0; i<MM; i++) printf("result values: %d  y(i)=%f\n", i, y[i]);
   */
}
