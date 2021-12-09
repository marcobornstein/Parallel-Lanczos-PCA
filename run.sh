#!/usr/bin/env bash

# Lines that begin with #SBATCH specify commands to be used by SLURM for scheduling

#SBATCH --job-name=lanczosP     # sets the job name if not set from environment
#SBATCH --time=00:01:00                  # how long you think your job will take to complete; format=hh:mm:ss
#SBATCH --account=scavenger                  # set QOS, this will determine what resources can be requested
#SBATCH --qos=scavenger                                         # set QOS, this will determine what resources can be requested
#SBATCH --partition=scavenger
#SBATCH --gres=gpu:0
#SBATCH --ntasks=8
#SBATCH --mem 0gb                                              # memory required by job; if unit is not specified MB will be assumed
#SBATCH --nice=0
#SBATCH --mail-type=END   

python testAlgo.py
