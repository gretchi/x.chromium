#!/bin/bash

cd $(dirname $0)

COMMAND="xeyes"

docker-compose up -d
sleep 2s

ssh root@127.0.0.1 -X -p 20022 \
-i ./x/.ssh/id_rsa \
-o StrictHostKeyChecking=no \
-o UserKnownHostsFile=/dev/null \
"${COMMAND}"

docker-compose stop
