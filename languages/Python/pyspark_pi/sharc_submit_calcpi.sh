#!/bin/bash
#Choose a Java version
module load apps/java/jdk1.8.0_102/binary
#Choose a python version
module load apps/python/anaconda2-4.2.0
#Load spark
module load apps/spark/2.1.0/gcc-4.8.5
# Request 4 cores from the HPC scheduler
#$ -pe smp 4
# Request 4Gig of memory PER CORE
#$ -l rmem=4G

#Make sure CORES is equal to the number of openmp slots
export CORES=4
export MASTER=local\[$CORES\]
spark-submit calcpi.py > out$CORES.txt
