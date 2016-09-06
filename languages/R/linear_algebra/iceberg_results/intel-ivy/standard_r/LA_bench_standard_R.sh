#!/bin/bash
#This script runs the linear algebra benchmark multiple times using the standard version of R
#$ -l mem=8G -l rmem=8G
#$ -l arch=intel-e5-2650v2
#$ -t 1-5
#$ -P radiant

module load apps/R/3.3.1

echo "Standard R on intel-e5-2650v2"
Rscript ./../../../linear_algebra_bench.r standard_r_run$SGE_TASK_ID.rds

