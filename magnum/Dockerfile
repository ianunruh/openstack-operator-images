FROM registry.kcloud.io/kcloud/openstack-operator-images/base:latest

ARG UID=42428

RUN groupadd -g ${UID} magnum
RUN useradd -u ${UID} -g ${UID} -r -m -d /var/lib/magnum magnum

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y \
        magnum-api \
        magnum-conductor \
        python3-magnumclient \
    && rm -rf /var/lib/apt/lists/*
