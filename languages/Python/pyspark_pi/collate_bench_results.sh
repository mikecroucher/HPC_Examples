#!/bin/bash
results_folder=$@
cat $results_folder/*.txt | sort -n | uniq
