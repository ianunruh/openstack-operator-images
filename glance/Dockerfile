FROM ianunruh/openstack-ceph-base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        glance \
    && rm -rf /var/lib/apt/lists/*
