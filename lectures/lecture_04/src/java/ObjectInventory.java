//
// define the class for the absolute error object
// ----------------------------------------------
//
import java.io.*;
public class ObjectInventory extends Object {
  public static void main(String args[]) {
    String s = "Use:\n\n"
             + "    jar tf\n\n"
             + "to see a list of the objects in the jar file. Use:\n\n"
             + "    jar xf [object.class]\n\n"
             + "to extract the objects needed.\n\n";
    System.out.println(s);
  }
}
