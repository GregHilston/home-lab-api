#!/bin/bash
set -e

SCRIPT_DIR=$(dirname "$0")
. $SCRIPT_DIR/config.sh

echo "running container $service"
docker rm -f $service
docker run --name $service --net=host $service