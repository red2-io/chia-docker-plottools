FROM ghcr.io/chia-network/chia:latest

ENV PATH "$PATH:/chia-blockchain/venv/bin"

WORKDIR /chia-blockchain

RUN mkdir logs

RUN apt-get update && apt-get install -y \
  python3-pip \
  python3-testresources \
  && rm -rf /var/lib/apt/lists/*

RUN pip install git+https://github.com/ericaltendorf/plotman@main