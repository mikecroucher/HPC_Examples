#!/bin/bash
#A batch submission script for Sheffield's ShARC cluster
#$ -cwd                                # Run job from current directory
#$ -l rmem=4G                          # Request 4 gigabytes of memory

module load apps/R/3.3.2/gcc-4.8.5     # Recommended to load a specific version of R

R CMD BATCH hello.r hello.r.o$JOB_ID
