#!/bin/bash
#Choose a python version
module load apps/python/anaconda2-2.5.0
#Load spark
module load apps/gcc/4.4.7/spark/2.0
# Request 4 cores from the HPC scheduler
#$ -pe openmp 4
# Request 4Gig of virtual and real memory PER CORE
#$ -l rmem=4G
#$ -l mem=4G

#Make sure CORES is equal to the number of openmp slots
export CORES=4
export MASTER=local\[$CORES\]
spark-submit calcpi.py > out$CORES.txt
