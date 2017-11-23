#!/bin/bash
# Request 3 Gigabytes of RAM per core
#$ -l mem=3G
#$ -l rmem=3G
#Combine stderr and stdout into one file
#$ -j y
#Make sure that the value below matches the number of threads
#$ -pe openmp 4
#Make sure this matches the number of openmp slots requested
threads=4

module load apps/binapps/netlogo/5.3.1

#Set the filename of the output csv file
#Will be called out_4.csv in this case
output_table=out_$threads.csv
#Experiment and model names
experiment=experiment
model=ParallelPredation.nlogo

echo "$threads threads requested"

#You have to run netlogo from it's install directory in order for extensions to work
cd $NETLOGO_DIR
time java -Xmx1024m -Dfile.encoding=UTF-8 -cp $NETLOGO_DIR/NetLogo.jar org.nlogo.headless.Main --model $SGE_O_WORKDIR/$model --experiment $experiment --table $SGE_O_WORKDIR/$output_table --threads $threads

