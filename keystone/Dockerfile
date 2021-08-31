ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:latest
FROM $BASE_IMAGE

ARG UID=42425

RUN groupadd -g ${UID} keystone
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/keystone keystone

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        keystone \
        python3-openstackclient \
    && rm -rf /var/lib/apt/lists/*

RUN a2dissite 000-default && truncate -s0 /etc/apache2/ports.conf

COPY httpd.conf /etc/apache2/sites-available/keystone.conf
