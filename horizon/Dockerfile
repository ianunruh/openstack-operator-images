FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        openstack-dashboard \
        python3-heat-dashboard \
        python3-magnum-ui \
        python3-octavia-dashboard \
    && rm -rf /var/lib/apt/lists/* \
    && python3 /usr/share/openstack-dashboard/manage.py collectstatic --noinput --clear \
    && python3 /usr/share/openstack-dashboard/manage.py compress --force

COPY httpd.conf /etc/apache2/conf-available/openstack-dashboard.conf
