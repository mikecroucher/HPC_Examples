#!/bin/bash

module load apps/R/3.3.2/intel-17.0-parallel

Rscript ./../../../../summary_rds.r > summary.txt
