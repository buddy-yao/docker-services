#!/usr/bin/env bash
docker build --build-arg "http_proxy=http://192.168.64.1:7890" --build-arg "https_proxy=http://192.168.64.1:7890" -t yk0602/debug:latest .
