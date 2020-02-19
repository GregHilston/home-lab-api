#!/bin/bash
set -e

cd /root/

#exec ls
exec gunicorn --bind 0.0.0.0:1337 -w 4 app:app
#flask run
