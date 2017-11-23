#!/bin/bash
#$ -cwd                      # Run job from current directory
#$ -l rmem=3G
#$ -pe smp 16
#$ -t 1-5
export OMP_NUM_THREADS=16
module load apps/R/3.3.2/intel-17.0-parallel    # Recommended to load a specific version of R

echo "Intel R with parallel MKL"
echo "16 cores"
Rscript ./../../../../linear_algebra_bench.r 16core_parallel_r_run$SGE_TASK_ID.rds
