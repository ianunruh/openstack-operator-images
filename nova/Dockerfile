FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        nova-api \
        nova-compute \
        nova-conductor \
        nova-novncproxy \
        nova-scheduler \
        ssh \
    && rm -rf /etc/ssh/ssh_host_* /var/lib/apt/lists/*
