ARG BASE_IMAGE=ubuntu:jammy-20240212
FROM $BASE_IMAGE

ARG CLOUDARCHIVE_REPO="deb http://ubuntu-cloud.archive.canonical.com/ubuntu jammy-updates/bobcat main"

RUN apt update && \
    apt install -y \
        jq \
        python3 \
        ubuntu-cloud-keyring \
        iproute2 \
        netcat \
        curl \
        bind9-host \
    && apt install -y --no-install-recommends \
        python3-pip \
    && echo "${CLOUDARCHIVE_REPO}" > /etc/apt/sources.list.d/cloudarchive.list \
    && rm -rf /var/lib/apt/lists/*

RUN pip3 install --no-cache-dir jaeger-client
