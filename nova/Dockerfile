ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/ceph:master
FROM $BASE_IMAGE

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

RUN curl -o /usr/local/bin/nova-health-probe -sL https://opendev.org/openstack/openstack-helm/raw/commit/034a83201af437dab724a75b231e73a198ae17b6/nova/templates/bin/_health-probe.py.tpl && \
    chmod +x /usr/local/bin/nova-health-probe
