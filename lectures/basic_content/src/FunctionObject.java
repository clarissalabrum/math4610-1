//
// set the class instantiation
// ---------------------------
//
public class FunctionObject extends Object {
  //
  // start with the function evaluation itself
  // -----------------------------------------
  //
  public static double fval(double x) {
    fval = Math.sin( Math.PI + 10.0 * x * x );
    return fval;
  }
  //
  // the following method will compute the derivative of the function at an
  // arbitrary point
  // ---------------
  //
  public static double dfval(double x) {
    dfval = 20.0 * x * Math.cos( Math.PI + 10.0 * x * x );
    return dfval;
  }
  //
  // the following method will compute the second derivative of the function at
  // an arbitrary point
  // ------------------
  //
  public static double df2dval(double x) {
    df2val = 20.0 * Math.cos( Math.PI + 10.0 * x * x )
            - 400.0 * x * x * Math.sin( Math.PI + 10.0 * x * x );
    return df2val;
  }
  //
  // local variables
  // ---------------
  //
  private static double fval;
  private static double dfval;
  private static double df2val;

}
