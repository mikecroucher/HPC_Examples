#!/bin/bash

module load apps/R/3.3.2/gcc-4.8.5

Rscript ./../../../summary_rds.r > summary.txt
