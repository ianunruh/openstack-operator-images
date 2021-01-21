FROM ubuntu:focal

ARG CLOUDARCHIVE_REPO="deb http://ubuntu-cloud.archive.canonical.com/ubuntu focal-updates/victoria main"

RUN apt update && \
    apt install -y ubuntu-cloud-keyring && \
    apt install -y python3 && \
    echo "${CLOUDARCHIVE_REPO}" > /etc/apt/sources.list.d/cloudarchive.list && \
    rm -rf /var/lib/apt/lists/*
