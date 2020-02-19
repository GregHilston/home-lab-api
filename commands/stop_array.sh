#!/bin/bash
set -e

wget -qO /dev/null http://localhost:$(lsof -nPc emhttp | grep -Po 'TCP[^\d]*\K\d+')/update.htm?cmdStop=Stop