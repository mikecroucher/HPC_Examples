#!/bin/bash

# Run the set of benchmarks a number of times
qsub -N LA_bench_seq_standard LA_bench_standard_R.sh
# Wait until they've all run and then summarise
qsub -hold_jid LA_bench_seq_standard summary.sh
