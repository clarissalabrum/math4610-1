#include <stdio.h>

//
// this is a simple machine epsilon method written in C
// ----------------------------------------------------
//
double dotprd(double u[], double v[], int n)
{
  //
  // some variable declarations
  // --------------------------
  //
  double sum = 0.0;
  //
  // compute the dot product
  // -----------------------
  //
  for(int i=0; i<n; i++) sum  = sum + u[i] * v[i];
  //
  // return the value
  return sum;
  //
}

int main() {
  double u[10];
  double v[10];
  int n = 10;
  for(int i=0; i<n; i++) u[i] = i;
  for(int i=0; i<n; i++) v[i] = -i;
  printf("dot product: %g\n", dotprd(u, v, n));
}
