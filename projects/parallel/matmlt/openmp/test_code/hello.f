      program hello
!$    use omp_lib
      integer nthrds, id
!$OMP PARALLEL PRIVATE(id)
      nthrds = 1
!$    nthrds = omp_get_num_threads()
      id = 0
!$    id = omp_get_thread_num()
      print *,"Hello from thread:", id, "out of ", nthrds
!$OMP BARRIER
      if(id .eq. 0) then
        nthrds = 1
!$      nthrds = omp_get_num_threads()
        print *, 'There are', nthrds, ' threads!'
      end if
!$OMP END PARALLEL
      stop
      end
