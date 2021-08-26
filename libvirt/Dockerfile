FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

ARG UID=42436

RUN useradd -r -U -u ${UID} -m -d /var/lib/nova nova

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
    && rm -rf /var/lib/apt/lists/*
