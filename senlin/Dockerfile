ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:latest
FROM $BASE_IMAGE

ARG UID=42443

RUN groupadd -g ${UID} senlin
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/senlin senlin

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        senlin-api \
        senlin-engine \
    && rm -rf /var/lib/apt/lists/*
