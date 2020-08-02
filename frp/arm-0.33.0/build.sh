#!/usr/bin/env bash
proxy="http://192.168.99.185:7890"

docker build --build-arg "http_proxy=$proxy" --build-arg "https_proxy=$proxy" -t yk0602/frp:arm-0.33.0 .
docker push yk0602/frp:arm-0.33.0
