FROM registry.kcloud.zone/ops/ceph:7aea5ccd

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y nova-api nova-compute nova-conductor nova-novncproxy nova-scheduler ssh && \
    rm -rf /etc/ssh/ssh_host_* && \
    rm -rf /var/lib/apt/lists/*
