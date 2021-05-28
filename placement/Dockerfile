FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        placement-api \
        python3-pymysql \
    && rm -rf /var/lib/apt/lists/*
