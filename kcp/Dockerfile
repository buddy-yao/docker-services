FROM alpine:latest

WORKDIR /root

RUN set -x \
	&& apk add --no-cache curl \
	&& curl -L -o kcp.tgz https://github.com/xtaci/kcptun/releases/download/v20171021/kcptun-linux-amd64-20171021.tar.gz \
	&& tar xzvf kcp.tgz \
	&& mv client_linux_amd64 /usr/local/bin/kcp-client \
	&& mv server_linux_amd64 /usr/local/bin/kcp-server \
	&& rm -rf /root/* \
	&& apk del --purge curl
