FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42418

RUN useradd -r -u ${UID} -d /var/lib/heat heat

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        heat-api \
        heat-api-cfn \
        heat-engine \
        python3-vitrageclient \
        python3-zunclient \
    && rm -rf /var/lib/apt/lists/*
