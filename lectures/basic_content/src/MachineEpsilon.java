import java.awt.*;
import java.io.*;


public MachineEpsilon extends Object {

  double computeMachineEpsilon() {
    double x;
    double one = 1.0;
    x = 1.0;
    while((one+x) > one) x = x / 2.0;
  return x;

  public static main() {
  int ii = use_maceps();
  printf("Max eps: %g\n", maceps());
}

  }

}
