#!/bin/bash
set -e

SCRIPT_DIR=$(dirname "$0")
. $SCRIPT_DIR/config.sh

echo "[*] copying files to $PWD for build"
cp ../requirements.txt .

docker build -t $service .

echo "[*] cleaning up files needed for build"
rm ./requirements.txt