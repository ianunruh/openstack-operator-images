FROM ubuntu:focal

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-heat-dashboard \
        python3-magnum-ui && \
    rm -rf /var/lib/apt/lists/*
