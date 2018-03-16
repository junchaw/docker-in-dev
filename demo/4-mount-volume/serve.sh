#!/bin/bash

pwd="$( cd "$( dirname "$0" )" && pwd )"

docker run -it \
  -p 8080:80 \
  -v ${pwd}/html:/usr/share/nginx/html \
  nginx

