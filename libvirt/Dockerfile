ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/ceph:master
FROM $BASE_IMAGE

ARG UID=42436

RUN groupadd -g ${UID} nova
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/nova nova

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends -y \
        cgroup-tools \
        ebtables \
        iproute2 \
        kmod \
        libvirt-daemon-system \
        nova-common \
        openvswitch-switch \
        pm-utils \
        qemu \
        qemu-block-extra \
        qemu-efi \
        qemu-kvm \
        virt-top \
    && rm -rf /var/lib/apt/lists/*
