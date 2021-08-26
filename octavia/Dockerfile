FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42437

RUN useradd -r -U -u ${UID} -m -d /var/lib/octavia octavia

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        isc-dhcp-client \
        octavia-api \
        octavia-health-manager \
        octavia-housekeeping \
        octavia-worker \
        openvswitch-switch \
        python3-octaviaclient \
    && rm -rf /var/lib/apt/lists/*
