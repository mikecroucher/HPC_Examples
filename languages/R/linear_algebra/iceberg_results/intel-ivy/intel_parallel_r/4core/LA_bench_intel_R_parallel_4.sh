#!/bin/bash
#$ -cwd                      # Run job from current directory
#$ -l mem=3G -l rmem=3G
# Target the Ivy Bridge Processor
#$ -l arch=intel-e5-2650v2
#$ -pe openmp 4
#$ -t 1-5
export OMP_NUM_THREADS=4
module load apps/intel/15/R/3.3.1_parallel    # Recommended to load a specific version of R

echo "Intel R with parallel MKL on intel-e5-2650v2"
echo "4 cores"
Rscript ./../../../../linear_algebra_bench.r 4core_parallel_r_run$SGE_TASK_ID.rds
