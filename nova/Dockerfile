FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

ARG UID=42436

RUN groupadd -g ${UID} nova
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/nova nova

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        nova-api \
        nova-compute \
        nova-conductor \
        nova-novncproxy \
        nova-scheduler \
        ssh \
    && rm -rf /etc/ssh/ssh_host_* /var/lib/apt/lists/*
