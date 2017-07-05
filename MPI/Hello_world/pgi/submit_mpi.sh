#!/bin/bash
#Tell the scheduler that maximum runtime is 1 hour
#$ -l h_rt=1:00:00
#Request 33 slots
#$ -pe mpi 33
#Request 1 Gigabyte per slot
#$ -l rmem=1G
#$ -P rse

module load mpi/openmpi/2.0.1/pgi-17.5

#Put placement information into node_info.txt
cat $PE_HOSTFILE  > node_info.txt

mpirun  ./MPI_hello_world
