#!/usr/bin/env bash

set -e

open /Applications/Docker.app
docker pull mdillon/postgis

docker run --name moovement-postgis -e POSTGRES_DB=moovement_db -d -p 5432:5432 mdillon/postgis