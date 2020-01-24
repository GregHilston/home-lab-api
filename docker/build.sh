#!/bin/bash
set -e

SCRIPT_DIR=$(dirname "$0")
. $SCRIPT_DIR/config.sh

docker build -f docker/Dockerfile -t $service .