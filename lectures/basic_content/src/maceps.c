#include <stdio.h>

//
// this is a simple machine epsilon method written in C
// ----------------------------------------------------
//
double maceps()
{
  //
  // some variable declarations
  // --------------------------
  //
  double x;
  double one = 1.0;
  x = 1.0;
  //
  // loop until there is no difference in the two values
  // ---------------------------------------------------
  //
  while((one+x) > one) x = x / 2.0;
  //
  // return the value at when the difference is zero
  // -----------------------------------------------
  //
  return x;
  //
}

int use_maceps() {

}

int main() {
  int ii = use_maceps();
  printf("Max eps: %g\n", maceps());
}
