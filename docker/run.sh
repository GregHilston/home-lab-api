#!/bin/bash
set -e

SCRIPT_DIR=$(dirname "$0")
. $SCRIPT_DIR/config.sh

docker rm -f $service
docker run --name $service \
  -p $externalPort:$appPort \
  -v ${PWD}/../app:/root/app \
  -v ${PWD}/../commands:/root/commands \
  -d $service