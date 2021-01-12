FROM ianunruh/openstack-ceph-base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        nova-api \
        nova-compute \
        nova-conductor \
        nova-novncproxy \
        nova-scheduler \
        ssh \
    && rm -rf /etc/ssh/ssh_host_* /var/lib/apt/lists/*
