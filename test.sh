#!/bin/bash
#SBATCH --partition=SCSEGPU_MSAI
#SBATCH -J pytorch_job_1
#SBATCH -N 1
#SBATCH --ntasks-per-node=1
#SBATCH --mem=8G
#SBATCH --gres=gpu:1
#SBATCH --qos=q_msai
#SBATCH -o ./logs/job.%j.out
#SBATCH -e ./logs/error_%x_%j.err

source activate cycada
python main.py