#!/bin/bash
#$ -l arch=intel-e5-2650v2

module load apps/R/3.3.1

Rscript ./../../../summary_rds.r > summary.txt
