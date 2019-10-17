#include <stdio.h>
#include <omp.h>
int main() {
  int MAX_THREAD = 12;
  double s[MAX_THREAD];
  int i;
  #pragma omp parallel shared(s) private(i)
  {
    i = omp_get_thread_num();
    s[i] = i;
  }
  for(int i=0; i<MAX_THREAD; i++) printf("i = %d s[i] = %g\n", i, s[i]);
}
