# MATLAB SGE Array job example 1

This example shows how to construct a Sun Grid Engine Task Array for a MATLAB function.

We want to run the function `myfunc` 10 times in parallel where the input to myfunc is an integer between 1 and 10.
This is an example of a **parameter sweep**.

A common solution to this problem type is to create a script that creates and submits 10 submission scripts. This is inefficient and puts a lot of pressure on the scheduler.
It is more efficient to use a SGE task array.

* **myfunc.m** - MATLAB function that divides its input argument by 5.
* **run_sweep.sge** - A Sun Grid Engine submission script that creates 10 different tasks.

To submit the job to Iceberg, you will need to

* Log in to Iceberg
* Execute the `qrsh` command to get an interactive session on a woker node
* Enter `qsub run_sweep.sge`

This efficiently creates 10 jobs that differ by having the `$SGE_TASK_ID` variable range from 1 to 10.
This is controlled by the line `#$ -t 1-10` in the submission script. You can have any range of integers you like. e.g. `#$ -t 21-45`

When the job completes, you will have twenty additional files in your current directory.
The filenames will have the following structure.

* run_sweep.sge.oXXXXXX.N Contains standard output stream. Should contain the output of your job.
* run_sweep.sge.eXXXXXX.N Contains standard error stream. Contains error messages, if there are any.

Where XXXXX will be a number corresponding to the job identificaton number assigned by the system and N is the task number. N will range from 1 to 10 in this example.
