FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        neutron-dhcp-agent \
        neutron-l3-agent \
        neutron-linuxbridge-agent \
        neutron-metadata-agent \
        neutron-plugin-ml2 \
        neutron-server \
    && rm -rf /var/lib/apt/lists/*
