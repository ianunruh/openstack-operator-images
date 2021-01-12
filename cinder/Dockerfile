FROM ianunruh/openstack-ceph-base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        cinder-api \
        cinder-backup \
        cinder-scheduler \
        cinder-volume \
    && rm -rf /var/lib/apt/lists/*
