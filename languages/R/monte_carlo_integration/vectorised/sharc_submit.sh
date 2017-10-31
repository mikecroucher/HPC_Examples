#!/bin/bash
#A batch submission script for Sheffield's ShARC cluster
#$ -cwd                                # Run job from current directory
#$ -l rmem=8G                          # Request 4 gigabytes of memory
#$ -P rse                              # Request access to the premium rse queue

module load apps/R/3.3.2/gcc-4.8.5     # Recommended to load a specific version of R

Rscript vectorised_monte_carlo.R 
