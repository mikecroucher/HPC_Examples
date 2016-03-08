# Python Hello World

This example shows how to submit a trivial Python job to the sysem.

* hello.py - A Python script that prints 'Hello World'
* hello.sh - A Sun Grid Engine submission script for this job

To submit the job to Iceberg, you will need to

* Log in to Iceberg
* Execute the `qrsh` command to get an interactive session on a woker node
* Enter `qsub hello.sh`

When the job completes, you will have two additional files in your current directory

* hello.py.oXXXXX (Contains standard output stream. Should contain 'Hello World')
* hello.py.eXXXXX (Contains standard error stream. Should be empty in this case)

Where XXXXX will be a number corresponding to the job identificaton number assigned by the system.
