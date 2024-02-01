#!/bin/bash


exit 0


CUDA_VISIBLE_DEVICES=2 python main.py \
  --config-name="base" \
  prompt.prompt="A high quality photo of a corgi" \
  batch_size=1 \
  max_steps=200 \
  wandb=False \
  +disable_warnings=True
