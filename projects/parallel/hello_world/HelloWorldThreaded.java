import java.io.*;
public class HelloWorldThreaded extends Object implements Runnable {
  public HelloWorldThreaded() {
    //
    // build a thread for the object to use
    // ------------------------------------
    //
  }
  //
  // this method must be included to implement the Runnable interface
  // ----------------------------------------------------------------
  //
  public void run() {
    System.out.println("Hello from a Thread!");
  }
  public static void main(String args[]) {
    //
    // print out something
    // -------------------
    //
    System.out.println("Inside the main program call.\n\n");
    //
    // get the number of processes that can be run
    // -------------------------------------------
    //
    int nproc = Runtime.getRuntime().availableProcessors();
    Object [] allThreads = new Object[nproc];
    for(int i=0; i<(nproc-1); i++) {
      HelloWorldThreaded myHelloThread = new HelloWorldThreaded();
      allThreads[i] = myHelloThread;
    }
    allThreads[0].run();
  }
}
