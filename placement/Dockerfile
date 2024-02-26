ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:master
FROM $BASE_IMAGE

ARG UID=42482

RUN groupadd -g ${UID} placement
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/placement placement

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        placement-api \
        python3-pymysql \
    && rm -rf /var/lib/apt/lists/*

RUN a2dissite 000-default && truncate -s0 /etc/apache2/ports.conf

COPY httpd.conf /etc/apache2/sites-available/placement-api.conf
