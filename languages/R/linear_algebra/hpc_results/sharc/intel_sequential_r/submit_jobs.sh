#!/bin/bash

# Run the set of benchmarks a number of times
qsub -N LA_bench_seq LA_bench_intel_R_sequential.sh
# Wait until they've all run and then summarise
qsub -hold_jid LA_bench_seq summary.sh
