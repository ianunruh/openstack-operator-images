ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:latest
FROM $BASE_IMAGE

ARG UID=42425

RUN groupadd -g ${UID} keystone
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/keystone keystone

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        keystone \
        python3-openstackclient \
        libcjose0 \
        libhiredis0.14 \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://github.com/zmartzone/mod_auth_openidc/releases/download/v2.4.11/libapache2-mod-auth-openidc_2.4.11-1.focal+1_amd64.deb -o libapache2-mod-auth-openidc.deb && \
    dpkg -i libapache2-mod-auth-openidc.deb && \
    rm libapache2-mod-auth-openidc.deb

RUN a2dissite 000-default && truncate -s0 /etc/apache2/ports.conf

COPY httpd.conf /etc/apache2/sites-available/keystone.conf
