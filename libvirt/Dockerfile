FROM registry.kcloud.zone/ops/ceph:7aea5ccd

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install --no-install-recommends -y \
        cgroup-tools \
        ebtables \
        iproute2 \
        kmod \
        libvirt-daemon-system \
        nova-common \
        pm-utils \
        qemu \
        qemu-block-extra \
        qemu-efi \
        qemu-kvm \
    && rm -rf /var/lib/apt/lists/*
