#!/bin/bash
#Choose a python version
module load apps/python/anaconda2-2.5.0
#Load spark
module load apps/gcc/4.4.7/spark/2.0
#$ -pe openmp 1
#$ -l rmem=4G
#$ -l mem=4G
#$ -P radiant

#Make sure CORES is equal to the number of openmp slots
export CORES=1
export MASTER=local\[$CORES\]
spark-submit calcpi.py > out$CORES.txt
