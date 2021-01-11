FROM ubuntu:focal

ARG UBUNTU_RELEASE=focal
ARG CEPH_KEY=https://download.ceph.com/keys/release.asc
ARG CEPH_REPO=https://download.ceph.com/debian-octopus/

ADD ${CEPH_KEY} /tmp/ceph-release.key

COPY install.sh /tmp/install.sh

RUN /tmp/install.sh && rm -rf /tmp/*
