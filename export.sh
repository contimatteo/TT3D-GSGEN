#!/bin/bash


exit 0


### to ply
CUDA_VISIBLE_DEVICES=2 PYTHONPATH="/home/mconti/TT3D/code/modules/GSGEN/" python utils/export.py \
  "./checkpoints/a_high_quality_photo_of_a_corgi/2024-02-01/130952/ckpts/step_0.pt" \
  --type ply


### to mesh
CUDA_VISIBLE_DEVICES=2 PYTHONPATH="/home/mconti/TT3D/code/modules/GSGEN/" python utils/export.py \
  "./checkpoints/a_high_quality_photo_of_a_corgi/2024-02-01/130952/ckpts/step_0.pt" \
  --type mesh\
  --batch_size 65536 \
  --reso 256 \
  --K 200 \
  --thresh 0.1
