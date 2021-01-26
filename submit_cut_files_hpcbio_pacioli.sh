#!/bin/bash

# NOTE:
# --cpus-per-task parameter controls the number of
# cpus needed to run the current job.
#
# If your application runs sequentially, please set
# --cpus-per-task=1
# If you need to reserve the full node, please set
# --cpus-per-task=32

#SBATCH -p hpc-bio-pacioli
#SBATCH --chdir=/home/alumno17/lab2/
#SBATCH --output=cut_files_job.out
#SBATCH -J Job_4_cut_files
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE   # END/START/NONE
#SBATCH --mail-user=laureano.r.p@um.es

# Parallel execution of cut_files_head.sh script for all samples
echo "Running cut_files_head.sh using parallel"
time find -name "*.fastq" | parallel sh ./cut_files_head.sh
