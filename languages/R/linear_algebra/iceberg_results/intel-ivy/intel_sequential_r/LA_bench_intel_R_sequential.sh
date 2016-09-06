#!/bin/bash
#This script runs the linear algebra benchmark multiple times using the intel-compiled version of R
#that's linked with the sequential MKL
#$ -l mem=8G -l rmem=8G
#$ -l arch=intel-e5-2650v2
#$ -t 1-5
#$ -P radiant

module load apps/intel/15/R/3.3.1_sequential

echo "Intel R with sequential MKL on intel-e5-2650v2"
Rscript ./../../../linear_algebra_bench.r intel_sequential_run$SGE_TASK_ID.rds

