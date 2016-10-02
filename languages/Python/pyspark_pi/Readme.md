# Calculating Pi using Spark and Python on Iceberg

This demonstrates how to distribute an embarrassingly parallel computation using Python and Spark on Iceberg.

* calcpi.py - The Python code. Based on the code at [http://spark.apache.org/examples.html](http://spark.apache.org/examples.html)
* submit_calpi.sh - Submission script for Iceberg

To submit this job to Iceberg, you need to 

* Edit `submit_calcpi.sh` to choose the number of cores you want to use. Note that you need to do this in two places in the submission script. The current Spark install is limited to jobs that run on a single node so you are limited to 16 cores.

* Execute `qsub submit_calcpi.sh`


