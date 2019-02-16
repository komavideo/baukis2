#!/bin/sh
docker-compose build db
docker-compose build --build-arg UID=$(id -u) --build-arg GID=$(id -g) web
