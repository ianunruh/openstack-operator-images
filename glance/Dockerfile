FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

ARG UID=42415

RUN groupadd -g ${UID} glance
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/glance glance

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        glance \
    && rm -rf /var/lib/apt/lists/*
