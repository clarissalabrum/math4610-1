This file contains some remarks and the like about the contents of the folder

1. The project in this folder involves optimizing the operation of matrix-vector
multiplication. Various languages are used to illustrate how to do this.

2. Environment variable deal. You can set the number of processors externally
and the code should pick it up. So, for example, we may choose to set the
number of processors available using

% setenv OMP_NUM_THREADS nthrds

To allow some number of threads. If this value is above the number of cores
available, then there may be a few problems. As an exercise, maybe have students
run parallel codes using different numbers of processors. In particular, what
happens if nthrds is just above and below the number of available cores.


