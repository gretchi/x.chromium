#!/bin/bash

cd $(dirname $0)

PRIVATEKEY=./x/.ssh/id_rsa

if [ ! -e ${PRIVATEKEY} ];then
    ssh-keygen -N "" -t rsa -f ${PRIVATEKEY}
fi

docker-compose build
