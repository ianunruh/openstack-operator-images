FROM ubuntu:focal

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y barbican-api barbican-keystone-listener barbican-worker && \
    rm -rf /var/lib/apt/lists/*
