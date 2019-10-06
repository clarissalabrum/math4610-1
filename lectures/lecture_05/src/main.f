c
c ------------------------------------------------------------------------------
c
c Author: Joe Koebbe
c         Department of Mathematics and Statistics
c         Utah State University
c 
c Subroutine Name:  abserr
c
c Description: This code returns the distance or absolute error between
c              an exact value and an approximate value
c
c Input:
c
c       x - the approximate value
c       xe - the exact value
c
c Output:
c
c       eabs - the return value containing the absolute error of the two
c              input values
c
c ------------------------------------------------------------------------------
c
      program bisection
      external f
c
c set up the problem
c ------------------
c
      call bisect(-1.0, 3.0, 0.001, 100, soln)
      print *, soln
c
c stop
c ----
c
      stop
      end
c
c ------------------------------------------------------------------------------
c
c subroutine for bisection
c
c ------------------------------------------------------------------------------
c
      subroutine bisect(a, b, tol, maxiter, value)
      real aval, bval, cval, error, val
      real value
      aval = a
      bval = b
c
      value = 0.0
      if(f(aval) .eq. 0.0) then
        value = aval
        return
      endif
      if(f(bval) .eq. 0.0) then
        value = bval
        return
      endif
c
      if(f(aval)*f(bval) .ge. 0.0) then
        value = (-1000.0*a)
        return
      endif
c
      error = 10.0 * tol
      do 1 i=1, 10000

         if(i .eq. maxiter) then
           print *,"maximum iterations exceeded"
           return
         endif

         cval = 0.5 * ( aval + bval )
         fval = f(aval) * f(cval)

         if(fval .lt. 0.0) then
           bval = cval
         else
           aval = cval
         endif

         error = abs(bval - aval)
      print *,error
         if(error .lt. tol) then
           value = cval
      print *,value
           return
         endif

    1 continue
      value = cval
      return
      end

      real function f(x)
      real pi, x
      pi = 3.141592653589793
      f = exp(x) - pi
      return
      end
