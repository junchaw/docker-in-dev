#!/bin/bash

# Zero downtime deployment won't update nginx configuration, so I force reloading the containe, may not be the best solution...

docker stack deploy -c docker-compose.yml localhost

docker service update --force localhost_nginx

