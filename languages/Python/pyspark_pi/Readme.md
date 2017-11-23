# Calculating Pi using Spark and Python on Sheffield's HPC servers

This demonstrates how to distribute an embarrassingly parallel computation using Python and Spark on Sheffield's HPC servers.

* calcpi.py - The Python code. Based on the code at [http://spark.apache.org/examples.html](http://spark.apache.org/examples.html)
* iceberg_submit_calcpi.sh - Submission script for Iceberg
* bench_pispark_iceberg.sh - Benchmark for Iceberg
* sharc_submit_calcpi.sh - Submission script for Sharc
* bench_pispark_iceberg.sh - Benchmark for Sharc

# Submitting a single job to Iceberg

* Edit `iceberg_submit_calcpi.sh` to choose the number of cores you want to use. Note that you need to do this in two places in the submission script. The current Spark install is limited to jobs that run on a single node so you are limited to 16 cores.

* Execute `qsub iceberg_submit_calcpi.sh`

# Submitting a single job to Sharc

* Edit `sharc_submit_calcpi.sh` to choose the number of cores you want to use. Note that you need to do this in two places in the submission script. The current Spark install is limited to jobs that run on a single node so you are limited to 16 cores.

* Execute `qsub iceberg_submit_calcpi.sh`

# Running the benchmark on Iceberg

The benchmark runs `calcpi.py` many times using differing numbers of cores. 
By default, the benchmark ranges from 1 to 16 cores and does 5 repeats of each for 80 jobs in total.

Log in and run `bench_pispark_iceberg.sh`.
This will create a folder called `/pispark_bench_results_iceberg/` containing all submission scripts and results files.
Once all of the jobs have completed, the results will be a bunch of files `/pispark_bench_results_iceberg/out*`.
Collate them into one results file with `./collate_bench_results.sh pispark_bench_results_iceberg/ > iceberg_results.txt`

# Running the benchmark on Sharc

The benchmark runs `calcpi.py` many times using differing numbers of cores.
By default, the benchmark ranges from 1 to 16 cores and does 5 repeats of each for 80 jobs in total.

Log in and run `bench_pispark_sharc.sh`.
This will create a folder called `/pispark_bench_results_sharc/` containing all submission scripts and results files.
Once all of the jobs have completed, the results will be a bunch of files `/pispark_bench_results_sharc/out*`.
Collate them into one results file with `./collate_bench_results.sh pispark_bench_results_sharc/ > sharc_results.txt`
