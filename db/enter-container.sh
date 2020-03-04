#!/bin/sh

source .env

docker exec \
  -it \
  $PG_CONTAINER_NAME \
  psql \
    -U $PGUSER \
    $PGDATABASE