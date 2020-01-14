      program main
c
c variables for the test
c ----------------------
c
      real a, b, c(1000), xold, xm, xnew, pi, tol
      real garbage
      real ek(1000)
      real a11, a12, a22, b1, b2
      real aval, rval
      real detval
      integer iter, maxiter
      garbage = -1000000000000.0
      pi = 3.141592653589793
c
c initialize the interval and tolerance desired
c ---------------------------------------------
c
      a = -50.0
      b = 100.0
      tol = 0.0000001
      error = 10.0 * tol
      iter = 0
      maxiter = 25
      xold = a;
c
c test the interval to make sure Bisection will work
c --------------------------------------------------
c
      if(f(a)*f(b) .gt. 0.0) then
        print *," Interval is all wrong"
        stop
      end if
      if(f(a) .eq. 0.0) then
        print *,"a = ", a, " is a root"
        stop
      end if
      if(f(b) .eq. 0.0) then
        print *,"b = ", b, " is a root"
        stop
      end if
c
c a do while loop for the iterations
c ----------------------------------
c
      do while(error .gt. tol .and. iter .le. maxiter)
c
c try a newton step before anything else
c --------------------------------------
c
        xnew = xold - f(xold) / df(xold)
c
c if the newton step goes outside the interval, use 4 iters of Bisection
c ----------------------------------------------------------------------
c
        if(xnew .lt. a .or. xnew .gt. b) then
c
c 4 iterations drops the error by one order of magnitude in base 10
c -----------------------------------------------------------------
c
          do 1 i=1,4
             iter = iter + 1
c
c compute the midpoint of the interval
c ------------------------------------
c
             xm = 0.5 * ( a + b )
c
c check for which half contains a root
c ------------------------------------
c
             if(f(a)*f(xm) .lt. 0.0) then
               b = xm
             else
               a = xm
             end if
c
c store the values
c ----------------
c
             c(iter) = xm
c
    1     continue
c
c keep the last value as an approximation
c ---------------------------------------
c
          xnew = xm
c
c done with the iterations
c ------------------------
c
        end if
c
c compute the latest error
c ------------------------
c
        error = abs(xnew-xold)
c
c overwrite the old values
c ------------------------
c
        xold = xnew
        iter = iter + 1
        c(iter) = xold
c 
      enddo
c
c print out a header for the output
c ---------------------------------
c
      print *," Iter:               approx              error"
      print *," ---------------------------------------------"
      exact = alog(pi)
      do 2 i=1,iter
         print *,i,c(i),abs(c(i)-exact)
    2 continue
c
c this code will be used to test convergence rates for the bisection method
c -------------------------------------------------------------------------
c
      stop
      end
c
c a simple function used to test the bisection method
c ---------------------------------------------------
c
      real function f(x)
      real pi
      pi = 3.141592653589793
      f = exp(x) - pi
      return
      end
c
c the derivative of the simple function used to test the bisection method
c -----------------------------------------------------------------------
c
      real function df(x)
      df = exp(x)
      return
      end
