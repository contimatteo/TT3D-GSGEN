###

exit 0

CUDA_VISIBLE_DEVICES=2 python main.py \
  --config-name="base" \
  wandb=False \
  batch_size=1 \
  prompt.prompt="A high quality photo of a corgi" \
  +disable_warnings=True \
  max_steps=200
