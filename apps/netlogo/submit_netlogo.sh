#!/bin/bash
#$ -l mem=3G
#$ -l rmem=3G
#Combine stderr and stdout into one file
#$ -j y
#Make sure that the value below matches the number of threads
#$ -pe openmp 4

module load apps/binapps/netlogo/5.3.1

#Makes sure this matches the number of openmp slots requested
threads=4
#Set the filename of the output csv file
output_table=out_$threads.csv
#Experiment and model names
experiment=ParallelExperiment1
model=ParallelPredation.nlogo

echo "$threads threads requested"

time java -Xmx1024m -Dfile.encoding=UTF-8 -cp $NETLOGO_DIR/NetLogo.jar org.nlogo.headless.Main --model $model --experiment $experiment --table $output_table --threads $threads

