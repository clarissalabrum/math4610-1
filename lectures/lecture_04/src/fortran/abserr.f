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
      subroutine abserr(eabs, x, xe)
c
c just take the absolute value of the two numbers and set the output
c for the routine
c ---------------
c
      eabs = abs( x - xe )
c
c done
c ----
c
      return
      end
