#!/usr/bin/env bash
http_proxy="http://192.168.99.185:7890"
https_proxy="$http_prxoxy"

docker build --build-arg "http_proxy=$http_proxy" --build-arg "https_proxy=$https_proxy" -t yk0602/frp:0.33.0 .
docker tag yk0602/frp:0.33.0 yk0602/frp:latest
docker push yk0602/frp:0.33.0
docker push yk0602/frp:latest