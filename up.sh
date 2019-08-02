#!/bin/bash

docker network create network-default

echo $'\n-----------------------------------------------'
echo $'------------- Up docker containers ------------'
echo $'-----------------------------------------------\n'

docker-compose -f docker-compose.yml -p bubnov up --no-build -d

echo $'\n-----------------------------------------------'
echo $'--------------------- Done --------------------'
echo $'-----------------------------------------------\n'
