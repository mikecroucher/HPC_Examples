#!/bin/bash
#Tell the scheduler that maximum runtime is 1 hour
#$ -l h_rt=1:00:00
#Request 16 slots
#$ -pe mpi 32
#Request 3 Gigabytes per slot
#$ -l rmem=3G

#Load gcc 4.9.4 and OpenMPI 2.0.1
module load dev/gcc/4.9.4
module load mpi/openmpi/2.0.1/gcc-4.9.4

#Put placement information into node_info.txt
cat $PE_HOSTFILE  > node_info.txt

mpirun  ./MPI_hello_world
