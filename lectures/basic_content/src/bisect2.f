      program main
c
c variables for the test
c ----------------------
c
      real a, b, c(1000), pi, tol
      real ek(1000)
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
c compute the number of bisections needed for the given tolerance
c ---------------------------------------------------------------
c
      n = 16
c
c do the bisection iterations needed
c ----------------------------------
c
      do 1 i=1, n
         c(i) = 0.5 * ( a + b )
         if(f(a)*f(c(i)) .lt. 0.0) then
            b = c(i)
         else
            a = c(i)
         endif
    1 continue
c
c print out a header for the output
c ---------------------------------
c
      print *," Iter:     ek    ekp1    log(ek)     log(ekp1)"
      print *," ---------------------------------------------"
c
c initialize storage for the linear regression to determine the computational
c rate of convergence - note that the normal equations matrix is symmetric.
c -------------------------------------------------------------------------
c
      a11 = dble(n-1)
      a12 = 0.0
      a22 = 0.0
      b1 = 0.0
      b2 = 0.0
c
c loop over the approximations computed computing the approximate errors
c ----------------------------------------------------------------------
c
      do 2 i=1,n-1
         ek(i) = abs( c(16) - c(i) )
    2 continue
      do 3 i=1,n-2
c
c print out the next line in the table of errors
c ----------------------------------------------
c
         print *, i, ek(i), ek(i+1), alog10(ek(i)), alog10(ek(i+1))
c
c update the error variables in the normal equations
c --------------------------------------------------
c
         a12 = a12 + alog10(ek(i))
         a22 = a22 + alog10(ek(i)) * alog10(ek(i))
         b1 = b1 + alog10(ek(i+1))
         b2 = b2 + alog10(ek(i)) * alog10(ek(i+1))
c
    3 continue
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
