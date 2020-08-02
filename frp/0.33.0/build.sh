#!/usr/bin/env bash
proxy="http://192.168.64.1:7890"

docker build --build-arg "http_proxy=$proxy" --build-arg "https_proxy=$proxy" -t yk0602/frp:0.33.0 .
docker tag yk0602/frp:0.33.0 yk0602/frp:latest
docker push yk0602/frp:0.33.0
docker push yk0602/frp:latest