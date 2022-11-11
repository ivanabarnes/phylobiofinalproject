#!/bin/bash
#SBATCH --job-name=seq-gen
#SBATCH --time=2:00:00
#SBATCH --nodes=1
#SBATCH --ntasks=1 
#SBATCH --cpus-per-task=4
#SBATCH -p scavenge

module load Seq-Gen

seq-gen -mGTR -f0.25,0.25,0.25,0.25 -r1,1,1,1,1,1 -s0.01 -l5052 -of < cyclo.phy > cyclo_jc_sim_shorter.fasta
