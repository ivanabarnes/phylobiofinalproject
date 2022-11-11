#!/bin/bash

#SBATCH -p scavenge
#SBATCH --job-name=cyclo_iqtree
#SBATCH --time=30:00
#SBATCH --ntasks=1
#SBATCH --cpus-per-task=8


module load IQ-TREE/1.6.12

iqtree -s cyclo_jc_sim_one_paralog.fasta -nt AUTO -bb 1000
