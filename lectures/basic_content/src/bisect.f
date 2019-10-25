      program main
c
c variables for the test
c ----------------------
c
      real a, b, c, pi, tol
      real ek, ekp1
      real a11, a12, a22, b1, b2
      real aval, rval
      real detval
      integer n
c
c initialize the interval and tolerance desired
c ---------------------------------------------
c
      a = -2.2
      b = 6.8
      tol = 0.0000001
c
c initialize storage for the linear regression to determine the computational
c rate of convergence - note that the normal equations matrix is symmetric.
c -------------------------------------------------------------------------
c
      a11 = 0.0
      a12 = 0.0
      a22 = 0.0
c
      b1 = 0.0
      b2 = 0.0
c
c compute the number of bisections needed for the given tolerance
c ---------------------------------------------------------------
c
      n = - alog10( tol / ( b - a ) ) / alog10(2.0) - 1
      a11 = dble(n)
c
c print out a header for the output
c ---------------------------------
c
      print *," Iter:   ek      ekp1     log(ek)      log(ekp1)"
      print *," -----------------------------------------------"
c
c compute an upper bound on the initial error
c -------------------------------------------
c
      ek = b - a
c
c do the iterations
c -----------------
c
      do 1 i=1, n
c
c compute the midpoint of the interval
c ------------------------------------
c
         c = 0.5 * ( a + b )
c
c test for the root
c -----------------
c
         if(f(a)*f(c) .lt. 0.0) then
            b = c
         else
            a = c
         endif
c
c compute an upper bound on the error for the root location
c ---------------------------------------------------------
c
         ekp1 = b - a
c
c print out the next line in the table of errors
c ----------------------------------------------
c
         print *, i, ek, ekp1, alog10(ek), alog10(ekp1)
c
c update the error variables in the normal equations
c --------------------------------------------------
c
         a12 = a12 + alog10(ek)
         a22 = a22 + alog10(ek) * alog10(ek)
         b1 = b1 + alog10(ekp1)
         b2 = b2 + alog10(ek) * alog10(ekp1)
c
c update the errors for the next step
c -----------------------------------
c
         ek = ekp1
c
    1 continue
c
c compute the solution using the inverse of the 2x2 matrix for the linear
c reduction of the matrix
c -----------------------
c
      detval = a11 * a22 - a12 * a12
      aval = ( a22 * b1 - a12 * b2 ) / detval
      rval = ( a11 * b2 - a12 * b1 ) / detval
c
c output the results - note that the constant needs to be exponentiated
c ---------------------------------------------------------------------
c
      print *, "shift constant:   ", exp(aval)
      print *, "rate of convergence:   ", rval
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
