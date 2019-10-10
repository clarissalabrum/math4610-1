//
// define the class for the absolute error object
// ----------------------------------------------
//
public class RelError extends Object {
  public static double relerr(double x, double y) {
    return Math.abs((x-y)/x);
  } 
}
