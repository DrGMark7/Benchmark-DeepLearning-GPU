conda create -n t2i python==3.10
conda activate t2i
pip install torch==2.3.1 torchvision==0.18.1 torchaudio==2.3.1
pip install -r requirements.txt
pip install invisible_watermark transformers accelerate safetensors
pip install git+https://github.com/huggingface/diffusers
pip install numpy==1.26.4