#!/bin/bash

# Run the set of benchmarks a number of times
qsub -N LA_bench_seq_par16 LA_bench_intel_R_parallel_16.sh
# Wait until they've all run and then summarise
qsub -hold_jid LA_bench_seq_par16 summary.sh
