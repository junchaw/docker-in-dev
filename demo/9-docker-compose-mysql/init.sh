#!/bin/bash

docker swarm init

cd image-php

docker build -t php:custom .

