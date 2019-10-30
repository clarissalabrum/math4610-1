//
// import java packages for the object
// -----------------------------------
//
import java.io.*;
import java.util.Random;
//
// define the class for making objects
// -----------------------------------
//
public class TestNormMethods extends Object {
  //
  // l2-norm of a vector
  // -------------------
  //
  public static double l2norm(double[] u) {
    //
    // extract the length of the vector
    // --------------------------------
    //
    int n = u.length;
    double diff = 0.0;
    double sum = 0.0;
    //
    for(int i=0; i<n; i++) {
      diff = u[i];
      sum = sum + diff * diff;
    }
    //
    // return the norm of the difference
    // ---------------------------------
    //
    return Math.sqrt(sum);
    //
  }
  public static double [] vecsub(double [] u, double [] v) {
    int n = u.length;
    double [] diff = new double[n];
    for(int i=0; i<n; i++) diff[i] = u[i] - v[i];
    return diff;
  }
  public double absl2err(double[] u, double[] v) {
    double [] diff = null;
    int n = v.length;
    diff = vecsub(u, v);
    return l2norm(diff);
  }
  //
  // main for testing the methods in the object
  // ------------------------------------------
  //
  public static void main(String args[]) {
    int n = 99;
    double [] u = new double[n];
    double [] v = new double[n];
    for(int i=0; i<n; i++) {
      u[i] = ((double) i);
      v[i] = 0.0;
    }
    System.out.println("norm value = " + TestNormMethods.l2norm(u));
    System.out.println("norm value = " + TestNormMethods.l2norm(vecsub(u, v)));
  }
}
