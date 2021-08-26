FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42425

RUN useradd -r -U -u ${UID} -m -d /var/lib/keystone keystone

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        keystone \
        python3-openstackclient \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/sites-available/keystone.conf
