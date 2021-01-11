FROM registry.kcloud.zone/ops/ceph:7aea5ccd

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y glance && \
    rm -rf /var/lib/apt/lists/*
