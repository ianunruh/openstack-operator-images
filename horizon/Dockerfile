FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-heat-dashboard \
        python3-magnum-ui \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/conf-available/openstack-dashboard.conf
