FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

ARG UID=42429

RUN useradd -r -u ${UID} -d /var/lib/manila manila

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        manila-api \
        manila-data \
        manila-scheduler \
        manila-share \
    && rm -rf /var/lib/apt/lists/*
