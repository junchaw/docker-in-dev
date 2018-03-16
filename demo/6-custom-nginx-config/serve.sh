#!/bin/bash

pwd="$( cd "$( dirname "$0" )" && pwd )"

./stop.sh

docker run -dit \
  --name localhost \
  -p 8080:80 \
  -v ${pwd}/default.conf:/etc/nginx/conf.d/default.conf \
  -v ${pwd}/log:/var/log/nginx \
  -v ${pwd}/html:/usr/share/nginx/html \
  nginx

