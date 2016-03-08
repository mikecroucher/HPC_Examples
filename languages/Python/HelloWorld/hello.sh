#!/bin/bash
#Request 2 gigabytes of virtual (mem) and real (rmem) memory
#$ -l mem=2G -l rmem=2G

#Load the Anaconda Python 3 Environment modulue
module load apps/python/anaconda3-2.5.0
#Activate the Python 3 conda environment
source activate python3

#Run the hello.py program
python hello.py
