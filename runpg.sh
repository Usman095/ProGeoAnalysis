#!/bin/bash


ulimit -v 41943040
input=$1

START_TIME=$SECONDS
./pgtools translate /home/usman/SimSpec/bin/Genome/CM000675.fasta /home/usman/ProteogenomicsTools/PGTools/PGTools/databases/CM000675.fasta
./pgtools msearch $input
./pgtools fdr $input

ELAPSED_TIME=$(($SECONDS - $START_TIME))
echo "Time to execute:" $ELAPSED_TIME
