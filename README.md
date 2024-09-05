### Benchmark Text-to-Image Training

Model for Experiment
- Stable Diffusion Version 1-4

### Hardware for Experiment

| GPUs                  | FP16 | FP32 | Memory Bandwidth |
|-----------------------|------|------|------------------|
| Nvidia H100 SXM5 80GB |      |      |                  |
| Nvidia A100 SXM4 80GB |      |      |                  |
| Nvidia V100 SXM2 16GB |      |      |                  |


### Target in This Project
- Train Diffusion model on HGX Server : Nvidia H100 80GB x1
- Train Diffusion model on DGX Server : Nvidia A100 80GB x1
- Train Diffusion model on DGX Server : Nvidia A100 80GB x2
    - NVLink Testing 2 Slot
- Train Diffusion model on DGX Server : Nvidia A100 80GB x4
    - NVLink Testing 4 Slot
- Train Diffusion model on DGX 2 Node : Nvidia A100 80GB x2
    - NVLink Testing 2 Slot
    - Nvidia Mellanox ConnectX-6 HPC-Network [200Gbps]

Token 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

build diffusers from source
[https://huggingface.co/docs/diffusers/installation#install-from-source]


SetUp accelerate config By self 

```bash
accelerate config
```

### Software for Testing
- CUDA 12.4
- Pytorch 2.3
- huggingface Tool
- Nvidia Tool