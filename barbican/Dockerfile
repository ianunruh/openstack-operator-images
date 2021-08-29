FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42403

RUN groupadd -g ${UID} barbican
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/barbican barbican

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        barbican-api \
        barbican-keystone-listener \
        barbican-worker \
    && rm -rf /var/lib/apt/lists/*

RUN a2dissite 000-default && truncate -s0 /etc/apache2/ports.conf

COPY httpd.conf /etc/apache2/conf-available/barbican-api.conf
