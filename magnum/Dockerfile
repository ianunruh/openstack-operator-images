FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        magnum-api \
        magnum-conductor \
        python3-magnumclient \
    && rm -rf /var/lib/apt/lists/*
