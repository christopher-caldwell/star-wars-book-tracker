#!/bin/sh

docker container kill postgres_test

docker container rm postgres_test

sh docker/db/scripts/build-container.sh

sh docker/db/scripts/run-container.sh

sh docker/db/scripts/setup-db.sh

sh docker/db/scripts/seed-db.sh