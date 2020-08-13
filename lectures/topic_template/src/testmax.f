      program main
      real*8 vec(2000000), maxval
      integer n
      n = 200000
      do 1 i=1,n
         vec(i) = rand()
    1 continue
      maxval = 0.0
      call cpu_time(tstart)
      do 10 j=1,1000
!$OMP PARALLEL
      do 2 i=1,n
         if(dabs(vec(i)) .gt. maxval) maxval=dabs(vec(i))
    2 continue
!$OMP END PARALLEL
   10 continue
      call cpu_time(tfinis)
      print *, (tfinis-tstart), '   ', maxval
      stop
      end
