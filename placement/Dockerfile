FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42482

RUN groupadd -g ${UID} placement
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/placement placement

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        placement-api \
        python3-pymysql \
    && rm -rf /var/lib/apt/lists/*

COPY httpd.conf /etc/apache2/sites-available/placement-api.conf
