FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42420

RUN groupadd -g ${UID} horizon
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/openstack-dashboard horizon

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-heat-dashboard \
        python3-magnum-ui \
        python3-manila-ui \
    && rm -rf /var/lib/apt/lists/*

RUN a2dissite 000-default && truncate -s0 /etc/apache2/ports.conf

COPY httpd.conf /etc/apache2/conf-available/openstack-dashboard.conf
