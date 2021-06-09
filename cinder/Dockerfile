FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        cinder-api \
        cinder-backup \
        cinder-scheduler \
        cinder-volume \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/conf-available/cinder-wsgi.conf
