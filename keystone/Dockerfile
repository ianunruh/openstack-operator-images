FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        keystone \
        python3-openstackclient \
    && rm -rf /var/lib/apt/lists/*
