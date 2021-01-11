#!/bin/bash
set -ex

export DEBIAN_FRONTEND=noninteractive

apt update
apt install -y --no-install-recommends ca-certificates gnupg

apt-key add /tmp/ceph-release.key
echo "deb ${CEPH_REPO} ${UBUNTU_RELEASE} main" | tee /etc/apt/sources.list.d/ceph.list

apt update
apt install -y --no-install-recommends ceph-common

rm -rf /var/lib/apt/lists/*
