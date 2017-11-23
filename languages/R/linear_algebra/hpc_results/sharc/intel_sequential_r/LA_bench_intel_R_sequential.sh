#!/bin/bash
#This script runs the linear algebra benchmark multiple times using the intel-compiled version of R
#that's linked with the sequential MKL
#$ -l rmem=8G
#$ -t 1-5

module load apps/R/3.3.2/intel-17.0-sequential

Rscript ./../../../linear_algebra_bench.r intel_sequential_run$SGE_TASK_ID.rds

