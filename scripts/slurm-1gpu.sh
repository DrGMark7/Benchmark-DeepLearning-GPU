#!/bin/bash
#SBATCH -N 1                        # Specify number of nodes
#SBATCH -c 16                       # Specify number of processors per task
#SBATCH --ntasks-per-node=1         # Specify tasks per node
#SBATCH --gpus 1
#SBATCH -t 12:00:00                 # Specify maximum time limit (hour: minute: second)
#SBATCH -J Diffusion                # Specify job name
#SBATCH --mem=128G


conda activate t2i                        # Activate your environment

#! Job Excution
export MODEL_NAME="CompVis/stable-diffusion-v1-4"
export DATASET_NAME="lambdalabs/naruto-blip-captions"

accelerate launch --config_file config-1gpu.yaml --mixed_precision="fp16"  /home/nsaeni/Benchmark-DeepLearning-GPU/code/train_text_to_image.py \
  --pretrained_model_name_or_path=$MODEL_NAME \
  --dataset_name=$DATASET_NAME \
  --use_ema \
  --resolution=512 --center_crop --random_flip \
  --checkpointing_steps=2000 \
  --num_train_epochs=150 \
  --train_batch_size=16 \
  --gradient_accumulation_steps=1 \
  --learning_rate=1e-04 \
  --max_grad_norm=1 \
  --lr_scheduler="constant" --lr_warmup_steps=0 \
  --output_dir="output/sd-naruto-model-1" \
  --dataloader_num_workers=8 \