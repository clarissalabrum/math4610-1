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
      program old_main
c
c set up the problem
c ------------------
c
      real seps = 1.0
      integer ipow = 0
      call smaceps(seps, ipow)
      tval = 1.0 / 2.0**(ipow+1)
      print *, "output from smaceps:"
      print *, tval, ipow
c
c stop
c ----
c
      stop
      end
