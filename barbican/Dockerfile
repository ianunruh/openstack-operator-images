FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42403

RUN useradd -r -U -u ${UID} -m -d /var/lib/barbican barbican

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        barbican-api \
        barbican-keystone-listener \
        barbican-worker \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/conf-available/barbican-api.conf
