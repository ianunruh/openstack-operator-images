FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        glance \
    && rm -rf /var/lib/apt/lists/*
