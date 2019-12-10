FROM ubuntu:16.04

ENV DEPENDENCE='curl ca-certificates'

ENV PACKAGE='frp_0.30.0_linux_amd64'

ENV GZIP_PACKAGE="${PACKAGE}.tar.gz"

RUN cd /root && \
    apt-get update && \
    apt-get install -y --no-install-recommends ${DEPENDENCE} && \
    curl -LO https://github.com/fatedier/frp/releases/download/v0.30.0/${GZIP_PACKAGE} && \
    tar xf ${GZIP_PACKAGE} && \
    rm ${GZIP_PACKAGE} && \
    mv ${PACKAGE}/frpc /usr/local/bin/frpc && \
    mv ${PACKAGE}/frps /usr/local/bin/frps && \
    rm -rf ./* && \
    apt-get remove --purge -y ${DEPENDENCE} && \
    apt-get autoremove -y --purge && \
    apt-get clean
