ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:latest
FROM $BASE_IMAGE

ARG UID=42418

RUN groupadd -g ${UID} heat
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/heat heat

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        heat-api \
        heat-api-cfn \
        heat-engine \
        python3-vitrageclient \
        python3-zunclient \
    && rm -rf /var/lib/apt/lists/*
