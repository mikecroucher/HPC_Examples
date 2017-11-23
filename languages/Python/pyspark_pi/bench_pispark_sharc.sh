#!/bin/bash
# Runs the Monte Carlo calculation of Pi from 1 to 16 cores
num_repeats=5
results_folder=./pispark_bench_results_sharc/
base_script=./sharc_submit_calcpi.sh
python_script=./calcpi.py
max_cores=16


#Get the name of base_script without the extenision
base_script_root="${base_script%.*}"

mkdir $results_folder
cp $base_script $results_folder
cp $python_script $results_folder
cd $results_folder

for repeat in `seq 1 $num_repeats`
do
for cores in `seq 1 $max_cores`;
do
   newfilename=${base_script_root}_${cores}_${repeat}.sh
   cp $base_script $newfilename

   sed -i "s/# Request 4 cores from the HPC scheduler/# Request $cores cores from the HPC scheduler/" "$newfilename"
   sed -i "s/#$ -pe smp 4/#$ -pe smp $cores/" "$newfilename"
   sed -i "s/export CORES=4/export CORES=$cores/" "$newfilename"
   sed -i "s/spark-submit calcpi.py > out\$CORES.txt/spark-submit calcpi.py > out\${CORES}_$repeat.txt/" "$newfilename"
  
   qsub $newfilename
   # Pause between submissions to make sure you don't swamp scheduler
   sleep 3
done
done
