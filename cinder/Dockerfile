FROM registry.kcloud.zone/ops/ceph:7aea5ccd

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y cinder-api cinder-backup cinder-scheduler cinder-volume && \
    rm -rf /var/lib/apt/lists/*
