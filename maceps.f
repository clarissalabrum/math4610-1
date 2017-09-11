c
c coding language:    Fortran 77
c
c ------------------------------------------------------------------------------
c
c written by:         Joe Koebbe
c date written:       Sept 28, 2014
c written for:        Problem Set 1
c course:             Math 5610
c
c purpose:            Determine a machine epsilon for the computers I would like
c                     work on computationally. The code contains 2 subroutines.
c
c                     smacsps - returns the single precision value for machine
c                               precision
c                     dmacsps - returns the double precision value for machine
c                               precision
c
c ------------------------------------------------------------------------------
c
      program main
c
c do the work in double precision
c -------------------------------
c
      real sval
      real*8 dval
c
c single precision test
c ---------------------
c
      call smaceps(sval, ipow)
      print *, ipow, sval
      call dmaceps(dval, ipow)
      print *, ipow, dval
c
c done
c ----
c
      stop
      end
c
c single precision computation of machine precision
c -------------------------------------------------
c
      subroutine smaceps(seps, ipow)
c
c set up storage for the algorithm
c --------------------------------
c
      real seps, one, appone
c
c initialize variables to compute the machine value near 1.0
c ----------------------------------------------------------
c
      one = 1.0
      seps = 1.0
      appone = one + seps
c
c loop, dividing by 2 each time to determine when the difference between one and
c the approximation is zero in single precision
c ---------------------------------------------
c
      ipow = 0
      do 1 i=1,1000
         ipow = ipow + 1
c
c update the perturbation and compute the approximation to one
c ------------------------------------------------------------
c
        seps = seps / 2
        appone = one + seps
c
c do the comparison and if small enough, break out of the loop and return
c control to the calling code
c ---------------------------
c
        if(abs(appone-one) .eq. 0.0) return
c
    1 continue
c
c if the code gets to this point, there is a bit of trouble
c ---------------------------------------------------------
c
      print *,"The loop limit has been exceeded"
c
c done
c ----
c
      return
      end
