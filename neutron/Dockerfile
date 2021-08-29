FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42435

RUN groupadd -g ${UID} neutron
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/neutron neutron

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        haproxy \
        ovn-central \
        ovn-host \
        neutron-plugin-ml2 \
        neutron-server \
    && rm -rf /var/lib/apt/lists/*
