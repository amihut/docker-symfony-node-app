#!/bin/sh

set -e

# Builds application files
docker-compose up -d --build
docker-compose run --rm php-service composer install
docker-compose run --rm node-service yarn install
docker-compose run --rm node-service yarn dev