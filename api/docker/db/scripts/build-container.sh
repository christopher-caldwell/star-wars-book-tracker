#!/bin/sh

source .env

docker build -t $DB_IMAGE_NAME docker/db/