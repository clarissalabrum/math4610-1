       program main
c
c set up some storage
c -------------------
c
      parameter(n=15000)
      real*8 a(n,n), x(n), y(n)
      do 1 i=1,n
         x(i) = 1.0
         y(i) = 0.0
         do 2 j=1,n
            a(i,j) = 1.0
    2    continue
    1 continue
      call cpu_time(start)
      call matmlt(a, x, y, n)
      call cpu_time(finish)
      print '("Time = ",f6.3," seconds.")',finish-start
      stop
      end

      subroutine matmlt(a, x, y, n)
      real*8 a(n, n), x(n), y(n)
!$OMP PARALLEL DO shared(a, y, x)
      do 1 i=1,n
         sum = 0.0
         do 2 j=1,n
            sum = sum + a(i,j) * x(j)
    2    continue
      y(i) = sum
    1 continue
!$OMP END PARALLEL DO
      return
      end



c#pragma omp parallel shared(matrix,result,vector) private(i,j)
c   {
c#pragma omp for  schedule(static)

c  printf("Max number of threads: %i \n",omp_get_max_threads());
c  #pragma omp parallel
c    printf("Number of threads: %i \n",omp_get_num_threads());
c    c_1=time(NULL);
c   // time measure: start mm #pragma omp parallel for private(m,j)
c   for(i=0; i<N; i++) {
c     for(j=0; j<N; j++) {
c       C[i][j]=0.;
c       // set initial value of resulting matrix C = 0
c       for(m=0; m<N; m++) {
c         C[i][j]=A[i][m]*B[m][j]+C[i][j];
c    } 
c  } 
c}

