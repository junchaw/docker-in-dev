#!/bin/bash

if [[ $(docker stack ls --format="{{.Name}}" | grep -e '^localhost$') ]]; then
  echo -e "Stack with name 'localhost' existed, removing..."
  docker stack rm localhost
  echo -e "Removed\n"
fi

