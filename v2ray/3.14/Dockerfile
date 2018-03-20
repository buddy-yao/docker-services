FROM ubuntu:16.04

WORKDIR /root

RUN apt-get update \
    && apt-get install -y --no-install-recommends curl unzip ca-certificates \
    && curl -LO https://github.com/v2ray/v2ray-core/releases/download/v3.14/v2ray-linux-64.zip \
    && unzip v2ray-linux-64.zip \
    && mv v2ray-v3.14-linux-64//v2ray v2ray-v3.14-linux-64//v2ctl  /usr/local/bin/ \
    && chmod a+x /usr/local/bin/v2ray  /usr/local/bin/v2ctl \
    && rm -rf /root/* \
    && apt-get remove --purge -y unzip curl ca-certificates \
    && apt-get autoremove -y --purge \
    && apt-get clean