      program vecadd
      parameter(n=50000)
      real*8 x(n), y(n), z(n)
      do 1 i=1,n
         x(i) = 1.0
         y(i) = 0.0
    1 continue
      do 2 i=1,n/2
         y(2*i) = -1.0
    2 continue
      call cpu_time(start_time)
      print *, start_time
!$OMP PARALLEL DO
      do 3 i=1,n
         z(i) = x(i) + y(i)
    3 continue
!$OMP END PARALLEL DO
      call cpu_time(final_time)
      print *, start_time, final_time
      stop
      end
