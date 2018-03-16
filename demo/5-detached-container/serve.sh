#!/bin/bash

pwd="$( cd "$( dirname "$0" )" && pwd )"

if [[ $(docker container ls --format="{{.Names}}" | grep -e '^localhost$') ]]; then
  echo -e "Container with name 'localhost' existed, stopping..."
  docker container stop localhost
  echo -e "Stopped\n"
fi

if [[ $(docker container ls -a --format="{{.Names}}" | grep -e '^localhost$') ]]; then
  echo -e "Container with name 'localhost' existed, removing..."
  docker container rm localhost
  echo -e "Removed\n"
fi

docker run -dit \
  --name localhost \
  -p 8080:80 \
  -v ${pwd}/log:/var/log/nginx \
  -v ${pwd}/html:/usr/share/nginx/html \
  nginx

