#!/bin/bash

pip install -U pip wheel setuptools
pip install torch==2.0.1 torchaudio==2.0.2 torchvision==0.15.2 torchmetrics==1.1.1 --index-url https://download.pytorch.org/whl/cu118
pip install ninja torchtyping==0.1.4
# pip install accelerate==0.21.0 einops==0.6.1 diffusers==0.19.3 hydra-core==1.3.2 jaxtyping==0.2.20 kornia==0.6.0 plyfile==1.0.1 timm==0.9.5 trimesh==3.23.1 vedo wandb==0.15.8
pip install accelerate==0.21.0 einops==0.6.1 diffusers==0.19.3 hydra-core==1.3.2 jaxtyping kornia==0.6.0 plyfile==1.0.1 timm==0.9.5 trimesh==3.23.1 vedo wandb==0.15.8
pip install opencv-python psutil matplotlib rich scipy
pip install "git+https://github.com/openai/CLIP.git@a1d071733d7111c9c014f024669f959182114e33"

cd gs
./build.sh
