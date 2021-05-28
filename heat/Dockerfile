FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        heat-api \
        heat-api-cfn \
        heat-engine \
    && rm -rf /var/lib/apt/lists/*
