//
// set the class instantiation
// ---------------------------
//
public class SimpleNewtonMethod extends Object {
  //
  // start with the function evaluation itself
  // -----------------------------------------
  //
  public static double newt(FunctionObject fo,
                            double x0,
                            double tol,
                            int maxit) {
    double error  = 10.0 * tol;
    int iter = 0;
    double xold = x0;
    double xnew = x0;
    //
    // start the iteration
    // -------------------
    //
    while(error > tol  && iter < maxit) {
      iter++;
      xnew = xold - fo.fval(xold) / fo.dfval(xold);
      error = Math.abs(xnew - xold);
      xold = xnew;
    }
    return xnew;
  }
}
