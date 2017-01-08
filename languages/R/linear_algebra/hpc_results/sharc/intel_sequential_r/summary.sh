#!/bin/bash

module load apps/R/3.3.2/intel-17.0-sequential

Rscript ./../../../summary_rds.r > intel_r_sequential_summary.txt
