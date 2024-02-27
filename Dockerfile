FROM nvidia/cuda:11.7.1-base-ubuntu22.04

ENV PYTHONUNBUFFERED=1 

# system
# python3
RUN apt update -y -q && DEBIAN_FRONTEND=noninteractive apt install -y -q --no-install-recommends \
    software-properties-common apt-utils \
    curl git git-lfs vim \
    python3.10 pip libgl1-mesa-dev \
    && rm -rf /var/lib/apt/lists/* && mkdir /trans-bg

# git
WORKDIR /trans-bs
RUN pip install git+https://github.com/plemeri/transparent-background.git

# shell
CMD ["/bin/bash"]
