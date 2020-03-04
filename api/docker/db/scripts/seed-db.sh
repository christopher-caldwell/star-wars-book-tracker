#!/bin/sh

source .env

docker exec \
  -it \
  $DB_CONTAINER_NAME \
  psql \
    -U $DB_USER \
    -d $DB_NAME \
    -f /sql-scripts/seed.sql
