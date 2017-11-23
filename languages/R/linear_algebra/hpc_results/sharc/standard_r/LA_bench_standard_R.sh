#!/bin/bash
#This script runs the linear algebra benchmark multiple times using the standard version of R
#$ -l rmem=8G
#$ -t 1-5

module load apps/R/3.3.2/gcc-4.8.5

Rscript ./../../../linear_algebra_bench.r standard_r_run$SGE_TASK_ID.rds

