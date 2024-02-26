ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/ceph:master
FROM $BASE_IMAGE

ARG UID=42429

RUN groupadd -g ${UID} manila
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/manila manila

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        manila-api \
        manila-data \
        manila-scheduler \
        manila-share \
    && rm -rf /var/lib/apt/lists/*
