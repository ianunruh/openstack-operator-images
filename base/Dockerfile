FROM ubuntu:focal-20210723

ARG CLOUDARCHIVE_REPO="deb http://ubuntu-cloud.archive.canonical.com/ubuntu focal-updates/wallaby main"

RUN apt update && \
    apt install -y jq python3 ubuntu-cloud-keyring iproute2 netcat curl bind9-host && \
    echo "${CLOUDARCHIVE_REPO}" > /etc/apt/sources.list.d/cloudarchive.list && \
    rm -rf /var/lib/apt/lists/*
