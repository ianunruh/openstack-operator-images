FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42420

RUN useradd -r -U -u ${UID} -m -d /var/lib/openstack-dashboard horizon

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-heat-dashboard \
        python3-magnum-ui \
        python3-manila-ui \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/conf-available/openstack-dashboard.conf
