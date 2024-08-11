### Prerequisites

* Windows 11(64GB)
* NVidia video card (RTX3060 12GB)
* WSL2 (32GB and operation confirmed on Ubuntu 20.04)

*Not confirmed in other configurations than those listed above.

### Installing

* Build Docker with the following command
```
docker compose build
```

## Usage

* Attach Docker
```
docker exec -it trans-bg01 /bin/bash
```

* Execution transparent-background
```
docker compose up
docker exec trans-bg01 transparent-background --source /data/input --dest /data/output --type white {option:--threshold 0.1}
```

## Version

* 2024/08/12

## Acknowledgments

* [transparent-background](https://github.com/plemeri/transparent-background)
* [nVidia 525 + Cuda 11.8 + Python 3.10 + pyTorch GPU Docker image](https://dev.to/ordigital/nvidia-525-cuda-118-python-310-pytorch-gpu-docker-image-1l4a)
