#!/bin/bash

export MY_UID="$(id -u)" 
export MY_GID="$(id -g)" 

docker compose -f compose.yaml -f compose-dev.yaml --env-file .env up -d

# --profile ui