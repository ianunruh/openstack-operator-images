FROM ubuntu:focal-20210416

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        octavia-api \
        octavia-health-manager \
        octavia-housekeeping \
        octavia-worker \
        python3-octaviaclient && \
    rm -rf /var/lib/apt/lists/*
