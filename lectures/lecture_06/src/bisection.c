#include <stdio.h>
#include <math.h>
//
// the test function
//
double f(double x) {
  double output;
  output = exp(x) - 3.14159;
  return output;
}
double bisectionMethod(double a, double b, double tol) {
  //
  // set up some parameters
  //
  double c, val;
  //
  // check the endpoints
  //
  if(f(a)==0) return a;
  if(f(b)==0) return b;
  //
  // check for a root in the interval
  if(f(a)*f(b) >= 0.0) return -10000000000.0;

  //this part of the code will perform the iterations
  double tmaxi = - 2.0 * ( log10( tol / ( b - a ) ) / log10(2.0) );
  int maxiter = (int) tmaxi;
  for(int i=0; i<maxiter; i++) {
    c = 0.5 * ( a + b );
    // compute the sign change value
    double val = f(a) * f(c);
    // reassign the end point based on the location of the root
    if(val<0.0) {
      b = c;
    } else {
      a = c;
    }
  }

  // return the midpoint as it is more accurate
  return c;
}
void main() {
  double a = 0.0;
  double b = 3.3;
  double tol = 0.000001;
  double value = bisectionMethod(a, b, tol);
  printf("%e\n", value);
}
