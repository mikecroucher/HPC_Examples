# Linear Algebra Benchmarks

The speed of linear algebra operations in R are dependent on the versions of BLAS and LAPACK used as well as the hardware. 

This directory contains the following

* `linear_algebra_bench.r` - Executes and times various linear algebra operations. Produces a .rds file as output.
* `summary_rds.r` - Summarises the results of several .rds files produced by `linear_algebra_bench.r`
* `iceberg_results` - Results for running these benchmarks on Iceberg, Sheffield's HPC cluster


