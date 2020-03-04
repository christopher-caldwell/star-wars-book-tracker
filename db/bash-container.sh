#!/bin/sh

source .env

docker exec \
  # Interactive mode, not just running a command  
  -it \
  # The containers name
  $PG_CONTAINER_NAME \
  # Shell env
  bash