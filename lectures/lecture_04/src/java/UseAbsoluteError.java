import java.io.*;

//
// define the class for the absolute error object
// ----------------------------------------------
//
import java.io.*;
public class UseAbsoluteError extends Object {
  public UseAbsoluteError() {
    double xval = 0.1;
    double yval = 0.11;
    AbsError ae = new AbsError();
    System.out.println("Absolute Error = " + ae.abserr(xval, yval));
  }
  public static void main(String args[]) {
    UseAbsoluteError uae = new UseAbsoluteError();
    System.out.println("all done");
  }
}
