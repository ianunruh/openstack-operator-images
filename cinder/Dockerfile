FROM registry.kcloud.io/kcloud/openstack-operator-images/ceph:latest

ARG UID=42407

RUN groupadd -g ${UID} cinder
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/cinder cinder

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        cinder-api \
        cinder-backup \
        cinder-scheduler \
        cinder-volume \
    && rm -rf /var/lib/apt/lists/*

RUN a2dissite 000-default

COPY httpd.conf /etc/apache2/conf-available/cinder-wsgi.conf
