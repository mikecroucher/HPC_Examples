#!/bin/bash
#$ -l arch=intel-e5-2650v2

module load apps/intel/15/R/3.3.1_sequential

Rscript ./../../../summary_rds.r > intel_r_sequential_summary.txt
