#!/bin/bash

# Parse the DATABASE_URL env variable provided by fly

echo "test 1"

DATABASE_USER=$(echo $DATABASE_URL | grep -oP "postgres://\K(.+?):" | cut -d: -f1)
DATABASE_PASSWORD=$(echo $DATABASE_URL | grep -oP "postgres://.*:\K(.+?)@" | cut -d@ -f1)
DATABASE_HOST=$(echo $DATABASE_URL | grep -oP "postgres://.*@\K(.+?):" | cut -d: -f1)
DATABASE_PORT=$(echo $DATABASE_URL | grep -oP "postgres://.*@.*:\K(\d+)/" | cut -d/ -f1)
DATABASE_NAME=$(echo $DATABASE_URL | grep -oP "postgres://.*@.*:.*/\K(.+?)$")

echo "test 2"
echo $DATABASE_USER
echo $DATABASE_PASSWORD
echo $DATABASE_HOST
echo $DATABASE_PORT

node ./lib/index.js
