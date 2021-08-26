FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

ARG UID=42415

RUN useradd -r -U -u ${UID} -m -d /var/lib/glance glance

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        glance \
    && rm -rf /var/lib/apt/lists/*
