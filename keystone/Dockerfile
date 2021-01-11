FROM ubuntu:focal

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y keystone python3-openstackclient jq && \
    rm -rf /var/lib/apt/lists/*
