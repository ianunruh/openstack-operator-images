FROM ubuntu:focal-20210416

RUN apt update && \
    DEBIAN_FRONTEND=noninteractive apt install -y placement-api python3-pymysql && \
    rm -rf /var/lib/apt/lists/*
