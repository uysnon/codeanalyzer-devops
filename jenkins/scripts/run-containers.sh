#! /bin/bash

docker stop postrges_container
docker rm  postrges_container
docker stop codeanalyzer-auth
docker rm codeanalyzer-auth

docker compose -f ./docker/docker-compose.yml up
