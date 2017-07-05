Compiling and submitting the MPI hello world example using the PGI version of OpenMPI on ShARC
==============================================================================================
Log on to the system and start a ``qrshx`` session. We are going to use PGI 17.5 and OpenMPI version 2.0.1

    module load mpi/openmpi/2.0.1/pgi-17.5

Compile the code with the command

    mpicc MPI_hello_world.c -o MPI_hello_world

An example submission script that requests 33 MPI processes is shown below.

```
#!/bin/bash
#Tell the scheduler that maximum runtime is 1 hour
#$ -l h_rt=1:00:00
#Request 33 slots
#$ -pe mpi 33
#Request 1 Gigabyte per slot
#$ -l rmem=1G
#$ -P rse

module load mpi/openmpi/2.0.1/pgi-17.5

#Put placement information into node_info.txt
cat $PE_HOSTFILE  > node_info.txt

mpirun  ./MPI_hello_world
```

Assuming you've called this  script `submit_mpi.sh`, you now use `qsub` to submit to the queue

```
qsub submit_mpi.sh
```

Once the job has completed, you'll have a number of output files: 

* `node_info.txt` - A list of nodes allocated to your job
* `submit_mpi.sh.eXXXX` - Error messages
* `submit_mpi.sh.oXXXX` - Output messages

Where XXXX will be a number corresponding to the job ID assigned by the system to your job.
