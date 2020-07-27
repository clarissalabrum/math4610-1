#include <stdio.h>
#define LOWER 0
#define UPPER 300
#define STEP 20
/*
 * print Fahrenheit-Celsius Table
 */

int main()
{
  int fahr, celsius;
  int lower = 0;
  int upper = 300;
  int step = 20;
  fahr = lower;
  while (fahr <= upper) {
    celsius = 5 * ( fahr - 32 ) / 9;
    printf("%d\t%d\n", fahr, celsius);
    fahr = fahr + step;
  }
  for(fahr = LOWER; fahr <= UPPER; fahr = fahr + STEP) {
    int val = (5.0/9.0)*(fahr-32);
    printf("%d\t%d\n", fahr, val);
  }
  
}
