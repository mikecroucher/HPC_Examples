# Calculating Pi using Spark and Python on Sheffield's HPC servers

This demonstrates how to distribute an embarrassingly parallel computation using Python and Spark on Sheffield's HPC servers.

* calcpi.py - The Python code. Based on the code at [http://spark.apache.org/examples.html](http://spark.apache.org/examples.html)
* iceberg_submit_calcpi.sh - Submission script for Iceberg
* sharc_submit_calcpi.sh - Submission script for Sharc

To submit this job to Iceberg, you need to 

* Edit `iceberg_submit_calcpi.sh` to choose the number of cores you want to use. Note that you need to do this in two places in the submission script. The current Spark install is limited to jobs that run on a single node so you are limited to 16 cores.

* Execute `qsub submit_calcpi.sh`


