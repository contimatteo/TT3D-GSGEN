#!/bin/bash


exit 0


### to ply
CUDA_VISIBLE_DEVICES=2 PYTHONPATH="." python utils/export.py \
  <your_ckpt> \
  --type ply


### to mesh
CUDA_VISIBLE_DEVICES=2 PYTHONPATH="." python utils/export.py \
  <your_ckpt> \
  --type mesh\
  --batch_size 65536 \
  --reso 256 \
  --K 200 \
  --thresh 0.1
