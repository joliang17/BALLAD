#!/bin/bash

#SBATCH --job-name=ballan
#SBATCH --output=ballan.out.%j
#SBATCH --error=ballan.out.%j
#SBATCH --time=24:00:00
#SBATCH --account=scavenger 
#SBATCH --partition=scavenger
#SBATCH --gres=gpu:rtxa6000:1
#SBATCH --cpus-per-task=4
#SBATCH --mem=64G



# checking gpu status
nvidia-smi

# cd ../..
source /fs/nexus-scratch/yliang17/miniconda3/bin/activate diffu


python main.py --cfg ./config/ImageNet_LT/clip_A_rn50.yaml
# python main.py --cfg ./config/ImageNet_LT/clip_B_rn50.yaml

# python main.py --cfg ./config/ImageNet_LT/test.yaml --test

# python main.py --cfg ./config/ImageNet_LT/test_A.yaml --test