ARG BASE_IMAGE=ghcr.io/ianunruh/openstack-operator-images/base:latest
FROM $BASE_IMAGE

ARG UBUNTU_RELEASE=focal
ARG CEPH_KEY=https://download.ceph.com/keys/release.asc
ARG CEPH_REPO=https://download.ceph.com/debian-pacific/

ADD ${CEPH_KEY} /tmp/ceph-release.key

COPY install.sh /tmp/install.sh

RUN /tmp/install.sh && rm -rf /tmp/*
