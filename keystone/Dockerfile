FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        keystone \
        python3-openstackclient \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/sites-available/keystone.conf
