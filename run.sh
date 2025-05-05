#!/bin/bash


MAMBA_ENV="tina_diary"
eval "$(mamba shell hook --shell bash)" && mamba activate "${MAMBA_ENV}"
echo "START TIME: $(date)"
echo "PYTHON ENV: $(which python)"

export CUDA_VISIBLE_DEVICES=0,1 # Set the GPUs you want to use
GPU_COUNT=$(python -c "import torch; print(torch.cuda.device_count())")

echo ""
echo "Number of GPUs: ${GPU_COUNT}"
echo ""

export OPENAI_API_KEY="" # TODO

python launch_scientist_bfts.py \
    --load_ideas "ai_scientist/ideas/tina_diary.json" \
    --model_writeup o1-preview-2024-09-12 \
    --model_citation gpt-4o-2024-11-20 \
    --model_review gpt-4o-2024-11-20 \
    --model_agg_plots o3-mini-2025-01-31 \
    --num_cite_rounds 0 \
    --skip_review

echo "END TIME: $(date)"
echo "DONE"