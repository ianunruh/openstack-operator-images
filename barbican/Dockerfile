FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        barbican-api \
        barbican-keystone-listener \
        barbican-worker \
    && rm -rf /var/lib/apt/lists/*
