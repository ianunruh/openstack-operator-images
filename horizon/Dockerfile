FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42420

RUN useradd -r -u ${UID} -d /var/lib/openstack-dashboard horizon

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-octavia-dashboard \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/conf-available/openstack-dashboard.conf
