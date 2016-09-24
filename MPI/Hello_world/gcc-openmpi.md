Compiling and submitting the MPI hello world example using the gcc version of OpenMPI
=====================================================================================
Log on to the system and start a ``qrsh`` session. To make the latest version of the gcc OpenMPI available, run the following module command

     module load mpi/gcc/openmpi

For instructions on how to load a specific version of gcc OpenMPI see the documentation at http://rcg.group.shef.ac.uk/iceberg/software/mpi/openmpi-gcc.html

Compile the code with the command

    mpicc MPI_hello_world.c -o MPI_hello_world
