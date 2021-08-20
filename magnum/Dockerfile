FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42428

RUN useradd -r -u ${UID} -d /var/lib/magnum magnum

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        magnum-api \
        magnum-conductor \
        python3-magnumclient \
    && rm -rf /var/lib/apt/lists/*
