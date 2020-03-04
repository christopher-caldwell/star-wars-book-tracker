#!/bin/sh

source .env

mkdir -p data/

# -p: Expose the containers port to your own localhost
# -e: Environmnet variables
# -d: Detached mode, put it in the background
# -v: Persist a volume to the container - not entirely sure how that works
# --rm Remove the container ( if present ) and re-run it
docker run \
  --name $PG_CONTAINER_NAME \
  -p 5432:$PGPORT \
  -e POSTGRES_PASSWORD=$PGPASSWORD \
  -e POSTGRES_USER=$PGUSER \
  -e POSTGRES_DB=$PGDATABASE \
  -v data:/var/lib/postgresql/data \
  -d \
  postgres # Image name