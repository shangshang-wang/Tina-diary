<div align="center">
  <h1 style="font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif; margin-bottom: 10px;">
    Tina-Diary: AI-Generated Paper with Tina's Ideation Diary
  </h1>

  <hr style="width: 60%; border: none; border-top: 2px solid #ccc; margin: 0 auto 20px auto;">

  <a href="https://github.com/shangshang-wang/Tina">
    <img src="./assets/Avatar-Tina.png" style="
      width: 200px;
      border-radius: 20px;
      box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
      border: 3px solid #f18f01;
      transition: transform 0.3s ease;
    " 
    onmouseover="this.style.transform='scale(1.05)'" 
    onmouseout="this.style.transform='scale(1)'">
  </a>
</div>

<div align="center">

[![Github](https://img.shields.io/badge/Tina-000000?style=for-the-badge&logo=github&logoColor=000&logoColor=white)](https://github.com/shangshang-wang/Tina)
[![Website](https://img.shields.io/badge/Notion-%23000000.svg?style=for-the-badge&logo=semanticweb&logoColor=white)](https://shangshangwang.notion.site/tina) 
[![Hugging Face Collection](https://img.shields.io/badge/Tina_Yi-fcd022?style=for-the-badge&logo=huggingface&logoColor=000&labelColor)](https://huggingface.co/Tina-Yi)
[![Weights and Biases](https://img.shields.io/badge/Tina-fcd022?style=for-the-badge&logo=weightsandbiases&logoColor=000&labelColor)](https://wandb.ai/upup-ashton-wang-usc/Tina)

</div>

## Overview

The "Tina" project embraces a high standard of open-source practice, including releasing a pre-paper survey ([Notion blog](https://shangshangwang.notion.site/llm-reasoning)), [code](https://github.com/shangshang-wang/Tina), [training logs](https://wandb.ai/upup-ashton-wang-usc/Tina), [model weights](https://huggingface.co/Tina-Yi), and the [technical report](https://arxiv.org/abs/2504.15777). 
This commitment provides a strong foundation for the next logical step in transparency. Building upon this, we in this repo further provide the ideation history of the Tina project – tracking initial concepts, explored variations, decision points, and pivots that led to the final research direction. 
This "research diary" was then structured into a JSON file, designed to be compatible with AI Scientist v2. 
We show our detailed ideation history of Tina (`./ai_scientist/ideas/tina_diary.json`) and the example generated paper (`./tina_diary.pdf`).

## Installation

<pre><code>conda update -n base -c defaults conda -y
conda install -n base -c conda-forge mamba -y
mamba shell init --shell bash --root-prefix=~/.local/share/mamba

mamba create -n tina_diary python=3.11 -y && mamba activate tina_diary

conda install pytorch torchvision torchaudio pytorch-cuda=11.8 -c pytorch -c nvidia -y
conda install anaconda::poppler -y
conda install conda-forge::chktex -y

pip install -r requirements.txt
</code></pre>

## Run Tina-Diary Generation

<pre><code># export OPENAI_API_KEY="YOUR KEY HERE" in the following script
./run.sh
</code></pre>

## Acknowledgement

This Tina-diary is based on the codebase of Sakana AI's [AI Scientist-v2](https://github.com/SakanaAI/AI-Scientist-v2).
