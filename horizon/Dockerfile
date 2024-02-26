ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:master
FROM $BASE_IMAGE

ARG UID=42420

RUN groupadd -g ${UID} horizon
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/openstack-dashboard horizon

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-heat-dashboard \
        python3-magnum-ui \
        python3-manila-ui \
        python3-senlin-dashboard \
    && rm -rf /var/lib/apt/lists/* && \
    /usr/share/openstack-dashboard/manage.py collectstatic --noinput --clear && \
    /usr/share/openstack-dashboard/manage.py compress --force

RUN a2dissite 000-default && truncate -s0 /etc/apache2/ports.conf

COPY httpd.conf /etc/apache2/conf-available/openstack-dashboard.conf
